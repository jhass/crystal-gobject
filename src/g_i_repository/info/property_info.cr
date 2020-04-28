require "./base_info"

module GIRepository
  class PropertyInfo < BaseInfo
    def crystal_name
      name = self.name
      name.tr("-", "_") if name
    end

    def arg_name
      name = crystal_name
      name = "_#{name}" if name[0].uppercase? if name
      name = "_#{name}" if ArgInfo::KEYWORDS.includes? name
      name.gsub(/_+$/, "") if name
      name
    end

    def type
      BaseInfo.wrap(GIRepository.property_info_get_type(self)).as(TypeInfo)
    end

    def flags
      GIRepository.property_info_get_flags self
    end

    def getter?
      flags.readable?
    end

    def setter?
      flags.writable?
    end

    def construct_only?
      flags.construct_only?
    end

    def private?
      flags.private?
    end

    def lib_definition
      "  # Property #{name} : #{type.lib_definition}"
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        this = "to_unsafe.as(#{libname}::#{container.name}*)"
        if getter?
          io.puts "#{indent}def #{crystal_name} : #{type.wrapper_definition(libname)}"
          io.puts "#{indent}  gvalue = GObject::Value.new(type: #{type.gvalue_type})"
          io.puts "#{indent}  LibGObject.object_get_property(@pointer.as(LibGObject::Object*), \"#{name}\", gvalue)"
          io.puts "#{indent}  #{type.unwrap_gvalue("gvalue")}"
          io.puts "#{indent}end"
          io.puts
        end

        if setter? && !construct_only?
          io.puts "#{indent}def #{crystal_name}=(value : #{type.wrapper_definition(libname)})"
          io.puts "#{indent}  LibGObject.object_set_property(@pointer.as(LibGObject::Object*), \"#{name}\", value.to_gvalue)"
          io.puts "#{indent}end"
          io.puts
        end
      end
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      Dumper.dump_child type
    end
  end
end
