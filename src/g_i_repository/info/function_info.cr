require "./base_info"

module GIRepository
  class FunctionInfo < BaseInfo
    include CallableInfo

    def name
      name = super
      if name
        name = name.sub(/^_/, "") unless symbol.includes?("__")
        name = "new" if name.empty?
        name = "init" if name == "initialize"
      end
      name
    end

    def wrapper_name
      method_name = name

      raise "Cannot handle method without a name" unless method_name

      method_name = method_name.underscore

      if method_name.starts_with?("get_")
        method_prefix = "get_"
        method_name = method_name[4..-1]
      elsif method_name.starts_with?("set_") && args.size == 2 && method?
        method_prefix = "set_"
        method_name = "#{method_name[4..-1]}="
      elsif method_name.starts_with?("is_")
        method_prefix = "is_"
        method_name = "#{method_name[3..-1]}?"
      end

      method_name = "#{method_prefix}#{method_name}" if ('0'..'9').includes? method_name[0]

      method_name
    end

    def flags
      GIRepository.function_info_get_flags(self)
    end

    def symbol
      GIRepository.function_info_get_symbol(self)
    end

    def constructor?
      flags.is_constructor?
    end

    def setter?
      (name = wrapper_name) && name.ends_with?('=')
    end

    def gvalue_out?
      return false if constructor? || setter?

      args.count(&.gvalue_out?) == 1
    end

    def closure_arg?
      return false if setter?

      args.count(&.closure?) == 1
    end

    def lib_definition(builder)
      builder.fun_binding symbol,
        args.map(&.lib_definition(builder)),
        name: "#{prefix}#{name}",
        return_type: return_type.lib_definition(builder)
    end

    def wrapper_definition(builder, libname)
      method_name = wrapper_name

      wrapper_args = args

      sizable_args = wrapper_args.select { |candidate|
        !candidate.out? && !candidate.inout? &&
          candidate.type.tag.array? && candidate.type.array_length_param >= 0
      }
      offset = wrapper_args.first?.is_a?(SelfArgInfo) ? 1 : 0
      sizable_args_size_args = sizable_args.map { |arg| wrapper_args[arg.type.array_length_param + offset] }

      closure_arg = wrapper_args.find &.closure? if closure_arg?

      gvalue_out_arg = wrapper_args.find &.gvalue_out? if gvalue_out?
      wrapper_args.delete(gvalue_out_arg) if gvalue_out?

      collection_args = wrapper_args.select { |candidate|
        !candidate.out? && !candidate.inout? &&
          wrapper_args.any? { |arg| arg.name == "n_#{candidate.name}" }
      }
      collection_args_size_args = collection_args.map { |arg| "n_#{arg.name}" }

      primitive_out_args = wrapper_args.select { |candidate| candidate.out? && candidate.type.primitive? }

      wrapper_args = wrapper_args.reject { |arg|
        sizable_args_size_args.includes?(arg) ||
          primitive_out_args.includes?(arg) ||
          collection_args_size_args.includes?(arg.name)
      }

      def_method(builder, libname, wrapper_args.map(&.for_wrapper_definition(builder, libname)).compact, gvalue_out_arg) do
        sizable_args.zip(sizable_args_size_args) do |arg, size_arg|
          size = call("size", receiver: builder.var(arg.name))
          if arg.nilable?
            line assign size_arg.name, ternary(builder.var(arg.name), size, literal(0))
          else
            line assign size_arg.name, size
          end
        end

        collection_args.each do |arg|
          line assign "__#{arg.name}", arg.for_wrapper_pass(builder, libname)
          if arg.nilable?
            line def_if(arg.name) { |b|
              size = b.call("size", receiver: "__#{arg.name}_ary")
              b.line b.assign "n_#{arg.name}", b.ternary(builder.var("__#{arg.name}_ary"), size, b.literal(0))
            }.else { |b|
              b.line b.assign "n_#{arg.name}", b.literal(0)
            }
          else
            line assign "n_#{arg.name}", call("size", receiver: "__#{arg.name}_ary")
          end
        end

        line assign gvalue_out_arg.name, call("new", receiver: "GObject::Value") if gvalue_out_arg

        error = line assign_var call "null", receiver: "Pointer(LibGLib::Error)" if throws?

        lib_args = args.map { |arg|
          if collection_args.includes?(arg)
            "__#{arg.name}"
          elsif primitive_out_args.includes?(arg)
            "out #{arg.name}"
          elsif arg.is_a?(ErrorArgInfo)
            arg.for_wrapper_pass(builder, error)
          else
            arg.for_wrapper_pass(builder, libname)
          end
        }.compact.join(", ")

        libcall = call("#{prefix}#{name}", lib_args, receiver: libname)
        if skip_return?
          line libcall
        else
          return_value = line assign_var(libcall)
        end

        line call("assert", error, receiver: "GLib::Error") if throws?

        if gvalue_out_arg
          return_value = gvalue_out_arg.name
        elsif !skip_return? && return_value
          if return_type.pointer? && !may_return_null?
            conditional_line call("null?", receiver: return_value), call("raise_unexpected_null", literal(symbol), receiver: "GObject")
          end

          ptr = return_value
          return_value = return_type.convert_to_crystal(builder, ptr)
          return_value = call("cast", return_value) if constructor?
          return_value = conditional_line ptr, assign_var(return_value) if may_return_null?

          if primitive_out_args.any?
            # TODO arrays could be handled too with a bit more logic (or maybe no additional logic at all? Find a test case)
            return_values = primitive_out_args.map { |arg| arg.type.convert_to_crystal(builder, arg.name) }
            return_values.unshift return_value
            return_value = tuple(return_values)
          end
        elsif primitive_out_args.size == 1
          arg = primitive_out_args.first
          return_value = arg.type.convert_to_crystal(builder, arg.name)
        elsif primitive_out_args.any?
          return_value = tuple(primitive_out_args.map { |arg| arg.type.convert_to_crystal(builder, arg.name) })
        else
          return_value = literal(nil)
        end

        line return_value if return_value
      end

      if closure_arg
        closure_wrapper_args = wrapper_args.reject(&.==(closure_arg)).map(&.for_wrapper_definition(builder, libname)).compact
        closure_wrapper_args << builder.arg closure_arg.name, prefix: :block_capture
        def_method(builder, libname, closure_wrapper_args, gvalue_out_arg) do
          line assign closure_arg.name, call("new", var(closure_arg.name), receiver: "GObject::Closure")
          line call method_name, wrapper_args.reject(&.is_a?(SelfArgInfo)).map(&.name)
        end
      end
    end

    def def_method(builder, libname, wrapper_args, gvalue_out_arg)
      method_name = wrapper_name
      return_type = if constructor?
                      "self"
                    elsif gvalue_out_arg
                      gvalue_out_arg.type.wrapper_definition(builder, libname)
                    end

      builder.def_method(method_name, wrapper_args, class_method: !method?, return_type: return_type) do
        with builder yield builder
      end
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      dumper.puts "* symbol = #{symbol}"
      dumper.puts "* constructor = #{constructor?}"
    end
  end
end
