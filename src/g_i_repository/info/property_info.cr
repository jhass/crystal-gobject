require "./base_info"

module GIRepository
  class PropertyInfo < BaseInfo
    def name
      super.tr("-", "_")
    end

    def type
      TypeInfo.new LibGIRepository.property_info_get_type(self)
    end

    def flags
      LibGIRepository.property_info_get_flags self
    end

    def getter?
      flags == LibGObject::ParamFlags::READABLE || flags == LibGObject::ParamFlags::READWRITE
    end

    def setter?
      flags == LibGObject::ParamFlags::WRITABLE || flags == LibGObject::ParamFlags::READWRITE
    end

    def lib_definition
      "  # Property #{name} : #{type.lib_definition}"
    end

    # Use gobject_get/set_property instead
    def wrapper_definition libname, indent=""
      String.build do |io|
        this = "(to_unsafe as #{libname}::#{container.name}*)"

        if getter?
          io.puts "#{indent}def #{name}"
          io.puts "#{indent}  __return_value = #{libname}.#{prefix}get_#{name}(#{this})"
          io.puts "#{indent}  #{type.convert_to_crystal("__return_value")}"
          io.puts "#{indent}end"
          io.puts
        end

        if setter?
          io.puts "#{indent}def #{name}=(__value)"
          io.puts "#{indent}  #{libname}.#{prefix}set_#{name}(#{this}, #{type.convert_from_crystal("__value")})"
          io.puts "#{indent}end\n"
          io.puts
        end
      end
    end
  end
end
