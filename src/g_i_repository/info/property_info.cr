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

    def gtype
      tag = type.tag
      case tag
      when .int32?
        # G_TYPE_INT is documented to represent gint which is documented as an alias to the
        # standard C int, which is platform dependent. However there's no fundamental
        # gtype defined for INT32 and all GIR metadata (such as g_value_set_int's) points
        # towards mapping INT32 to G_TYPE_INT being correct.
        "INT"
      when .interface?
        interface = type.interface
        case interface
        when ObjectInfo, StructInfo, UnionInfo
          "OBJECT"
        when InterfaceInfo
          "INTERFACE"
        when EnumInfo
          "ENUM"
        else
          "INTERFACE"
        end
      when .ghash?
        "POINTER"
      else
        tag.to_s
      end
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        this = "to_unsafe.as(#{libname}::#{container.name}*)"
        if getter?
          io.puts "#{indent}def #{name}"
          io.puts "#{indent}  gvalue = GObject::Value.new(GObject::Type::#{gtype})"
          io.puts "#{indent}  LibGObject.object_get_property(@pointer.as(LibGObject::Object*), \"#{name}\", gvalue)"
          io.puts "#{indent}  #{type.unwrap_gvalue("gvalue")}"
          io.puts "#{indent}end"
          io.puts
        end

        if setter?
          io.puts "#{indent}def #{name}=(value)"
          io.puts "#{indent}  gvalue = GObject::Value.new(GObject::Type::#{gtype})"
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
