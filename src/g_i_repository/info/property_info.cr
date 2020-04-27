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

    def gtype
      tag = type.tag
      case tag
      when .int32?
        # G_TYPE_INT is documented to represent gint which is documented as an alias to the
        # standard C int, which is platform dependent. However there's no fundamental
        # gtype defined for INT32 and all GIR metadata (such as g_value_set_int's) points
        # towards mapping INT32 to G_TYPE_INT being correct.
        "INT"
      when .uint32?
        # Basically same story as above
        "UINT"
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

    def wrap_in_gvalue(variable, gvalue, io, indent = "")
      io.puts "#{indent}#{gvalue} = GObject::Value.new(GObject::Type::#{gtype})"
      io.puts "#{indent}#{type.wrap_in_gvalue(gvalue, variable)}"
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        this = "to_unsafe.as(#{libname}::#{container.name}*)"
        if getter?
          io.puts "#{indent}def #{crystal_name}"
          io.puts "#{indent}  gvalue = GObject::Value.new(GObject::Type::#{gtype})"
          io.puts "#{indent}  LibGObject.object_get_property(@pointer.as(LibGObject::Object*), \"#{name}\", gvalue)"
          io.puts "#{indent}  #{type.unwrap_gvalue("gvalue")}"
          io.puts "#{indent}end"
          io.puts
        end

        if setter? && !construct_only?
          io.puts "#{indent}def #{crystal_name}=(value)"
          wrap_in_gvalue("value", "gvalue", io, indent + "  ")
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
