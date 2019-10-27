require "./base_info"

module GIRepository
  class PropertyInfo < BaseInfo
    def name
      name = super
      name.tr("-", "_") if name
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

    def lib_definition
      "  # Property #{name} : #{type.lib_definition}"
    end

    def wrapper_definition(libname, indent="")
      String.build do |io|
        this = "to_unsafe.as(#{libname}::#{container.name}*)"
        if getter?
          io.puts "#{indent}def #{name}"
          io.puts "#{indent}  gvalue = GObject::Value.new(GObject::Type::#{type.tag})"
          io.puts "#{indent}  LibGObject.object_get_property(@pointer.as(LibGObject::Object*), \"#{name}\", gvalue)"
          io.puts "#{indent}  #{type.unwrap_gvalue("gvalue")}"
          io.puts "#{indent}end"
          io.puts
        end

        if setter?
          io.puts "#{indent}def #{name}=(value)"
          io.puts "#{indent}  gvalue = GObject::Value.new(GObject::Type::#{type.tag})"
          io.puts "#{indent}  #{type.wrap_in_gvalue("gvalue", "value")}"
          io.puts "#{indent}  LibGObject.object_set_property(@pointer.as(LibGObject::Object*), \"#{name}\", gvalue)"
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
