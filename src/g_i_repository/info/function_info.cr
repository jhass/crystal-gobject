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

      return unless method_name

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

    def lib_definition
      String.build do |io|
        io << "  fun #{prefix}#{name} = #{symbol}("
        io << args.map(&.lib_definition).join(", ")
        io << ") : #{return_type.lib_definition}"
      end
    end

    def wrapper_definition(libname, indent = "")
      method_name = wrapper_name

      String.build do |io|
        closure_arg = args.find &.closure? if closure_arg?
        gvalue_out_arg = args.find &.gvalue_out? if gvalue_out?
        wrapper_args = gvalue_out? ? args.tap &.delete(gvalue_out_arg) : args
        collection_args = wrapper_args.select { |candidate|
          !candidate.out? && !candidate.inout? &&
            wrapper_args.any? { |arg| arg.name == "n_#{candidate.name}" }
        }
        collection_args_size_args = collection_args.map { |arg| "n_#{arg.name}" }
        wrapper_args = wrapper_args.reject { |arg| collection_args_size_args.includes?(arg.name) }

        method_header(io, indent, libname, wrapper_args.map(&.for_wrapper_definition(libname)).compact, gvalue_out_arg)

        io << "\n#{indent}  __error = Pointer(LibGLib::Error).null" if throws?

        collection_args.each do |arg|
          current_indent = indent
          if arg.nilable?
            indent += "  "
            io.puts "\n#{indent}if #{arg.name}"
          else
            io.puts
          end

          io.puts "#{indent}  __#{arg.name} = #{arg.for_wrapper_pass(libname)}"
          io << "#{indent}  n_#{arg.name} = __#{arg.name}_ary.size"

          if arg.nilable?
            io.puts "\n#{indent}else"
            io.puts "#{indent}  n_#{arg.name} = 0"
            io << "#{indent}  end"
          end

          indent = current_indent
        end

        io << "\n#{indent}  "
        io << "#{gvalue_out_arg.name} = GObject::Value.new\n#{indent}  " if gvalue_out_arg
        io << "__return_value = " unless skip_return?
        io << "#{libname}.#{prefix}#{name}"
        lib_args = args.map { |arg| collection_args.includes?(arg) ? "__#{arg.name}" : arg.for_wrapper_pass(libname) }.compact.join(", ")
        io << "(#{lib_args})" unless lib_args.empty?

        io << "\n#{indent}  GLib::Error.assert __error" if throws?

        if gvalue_out_arg
          io << "\n#{indent}  #{gvalue_out_arg.name}\n"
        elsif !skip_return?
          io << "\n#{indent}  #{"cast " if constructor?}#{return_type.convert_to_crystal("__return_value")}"
          io << " if __return_value" if may_return_null?
          io << '\n'
        else
          io << "\n#{indent}  nil\n"
        end

        io << "#{indent}end\n"

        if closure_arg
          io.puts
          closure_wrapper_args = wrapper_args.reject(&.==(closure_arg)).map(&.for_wrapper_definition(libname)).compact
          closure_wrapper_args << "&#{closure_arg.name}"
          method_header(io, indent, libname, closure_wrapper_args, gvalue_out_arg)
          io << "\n#{indent}  #{closure_arg.name} = GObject::Closure.new(#{closure_arg.name})"
          io << "\n#{indent}  #{method_name}(#{wrapper_args.reject(&.is_a?(SelfArgInfo)).map(&.name).join(", ")})"
          io << "\n#{indent}end\n"
        end
      end
    end

    def method_header(io, indent, libname, wrapper_args, gvalue_out_arg)
      method_name = wrapper_name
      io << "#{indent}def "
      io << "self." unless method?
      io << method_name

      io << "(#{wrapper_args.join(", ")})" unless wrapper_args.empty?

      if constructor?
        io << " : self"
      elsif gvalue_out_arg
        io << " : #{gvalue_out_arg.type.wrapper_definition(libname)}"
      end
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      dumper.puts "* symbol = #{symbol}"
      dumper.puts "* constructor = #{constructor?}"
    end
  end
end
