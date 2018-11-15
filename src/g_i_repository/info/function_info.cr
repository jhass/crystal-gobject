require "./base_info"

module GIRepository
  class FunctionInfo < BaseInfo
    include CallableInfo

    def name
      name = super
      name = name.sub(/^_/, "") unless symbol.includes?("__")
      name = "new" if name.empty?
      name = "init" if name == "initialize"
      name
    end

    def symbol
      String.new LibGIRepository.function_info_get_symbol(self)
    end

    def constructor?
      LibGIRepository.function_info_get_flags(self).is_constructor?
    end

    def lib_definition
      String.build do |io|
        io << "  fun #{prefix}#{name} = #{symbol}("
        io << args.map(&.lib_definition).join(", ")
        io << ") : #{return_type.lib_definition}"
      end
    end

    def wrapper_definition(libname, indent="")
      method_name = name
      if method_name.starts_with?("get_")
        method_name = method_name[4..-1]
      elsif method_name.starts_with?("set_") && args.size == 2 && method?
        method_name = "#{method_name[4..-1]}="
      elsif method_name.starts_with?("is_")
        method_name = "#{method_name[3..-1]}?"
      end

      String.build do |io|
        io << "#{indent}def "
        io << "self." unless method?
        io << method_name

        wrapper_args = args.map(&.for_wrapper_definition(libname)).compact.join(", ")
        io << "(#{wrapper_args})" unless wrapper_args.empty?

        io << " : self" if constructor?

        io << "\n#{indent}  __error = Pointer(LibGLib::Error).null" if throws?

        io << "\n#{indent}  "
        io << "__return_value = " unless skip_return?
        io << "#{libname}.#{prefix}#{name}"

        lib_args = args.map(&.for_wrapper_pass(libname)).compact.join(", ")
        io << "(#{lib_args})" unless lib_args.empty?

        io << "\n#{indent}  GLib::Error.assert __error" if throws?

        unless skip_return?
          io << "\n#{indent} ins=#{"cast " if constructor?}#{return_type.convert_to_crystal("__return_value")}"
          io << " if __return_value" if may_return_null?
          if constructor?
            io << "\n#{indent} unless ins.has_wrapper?"
            io << "\n#{indent}   ins.set_wrapped"
            io << "\n#{indent}   ins.instantiate"      
            io << "\n#{indent} end"
            io << " if __return_value" if may_return_null?
          end
          io << "\n#{indent} ins"
          io << ".as(self)" if constructor?
          io << " if __return_value" if may_return_null?          
          io << '\n'
        else
          io << "\n#{indent}  nil\n"
        end

        io << "#{indent}end\n"
      end
    end
  end
end
