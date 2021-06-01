require "./base_info"
require "./registered_type_info"

module GIRepository
  class InterfaceInfo < BaseInfo
    include RegisteredTypeInfo
    include WrapperGenerator

    each_converted interface_info, constant, ConstantInfo
    each_converted interface_info, method, FunctionInfo
    each_converted interface_info, prerequisite, BaseInfo
    each_converted interface_info, property, PropertyInfo, properties
    each_converted interface_info, signal, SignalInfo
    each_converted interface_info, vfunc, VFuncInfo

    def iface_struct
      ptr = LibGIRepository.interface_info_get_iface_struct(self)
      StructInfo.new ptr if ptr
    end

    def lib_definition(builder)
      builder.end_of_line_comment "interface"
      builder.def_struct(name) do
        iface_struct = self.iface_struct
        if iface_struct
          iface_struct.field_definition(builder)
        else
          field_binding "_data", "UInt8[0]"
        end

        each_prerequisite { |prerequisite| comment("Requires #{prerequisite.name}") }
        each_signal(&.lib_definition(builder))
        each_vfunc(&.lib_definition(builder))
        each_property(&.lib_definition(builder))
      end

      each_constant(&.lib_definition(builder))

      type_init_lib_definition(builder)
      each_method(&.lib_definition(builder))
    end

    def wrapper_definition(builder, libname)
      builder.def_module(name) do
        attach_to_next_section { comment ":nodoc:" }
        def_class("Wrapper", parent: "GObject::Object") do
          add_include "GObject::WrappedType"
          add_include name

          write_gtype_constant builder, libname
          write_constructor builder, libname
          write_to_unsafe builder, libname
        end

        write_interface_to_unsafe builder, libname

        each_constant &.wrapper_definition(builder, libname)
        each_method &.wrapper_definition(builder, libname)
        each_signal &.wrapper_definition(builder, libname)
      end
    end

    Dumper.def do
      Dumper.dump_child iface_struct
      Dumper.dump_childs constant
      Dumper.dump_childs prerequisite
      Dumper.dump_childs property, properties
      Dumper.dump_childs method
      Dumper.dump_childs signal
      Dumper.dump_childs vfunc
    end
  end
end
