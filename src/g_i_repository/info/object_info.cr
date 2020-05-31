require "./base_info"
require "./registered_type_info"

module GIRepository
  class ObjectInfo < BaseInfo
    include RegisteredTypeInfo
    include WrapperGenerator

    each_converted object_info, constant, ConstantInfo
    each_converted object_info, field, FieldInfo
    each_converted object_info, method, FunctionInfo
    each_converted object_info, interface, InterfaceInfo
    each_converted object_info, property, PropertyInfo, properties
    each_converted object_info, signal, SignalInfo
    each_converted object_info, vfunc, VFuncInfo

    def parent
      ptr = GIRepository.object_info_get_parent self
      BaseInfo.wrap(ptr).as(ObjectInfo) if ptr
    end

    def abstract?
      GIRepository.object_info_get_abstract self
    end

    # Including those of ancestors
    def all_properties
      properties = self.properties # start with our own

      # Then walk parents
      parent = self.parent
      while parent
        parent.properties.each do |property|
          # Avoid duplicates, let child properties of the same name shadow the parent ones
          properties << property unless properties.any?(&.name.==(property.name))
        end

        parent = parent.parent
      end

      # Finally walk interfaces
      each_interface do |interface|
        interface.properties.each do |property|
          # Avoid duplicates, let child properties of the same name shadow the interface ones
          properties << property unless properties.any?(&.name.==(property.name))
        end

        # TODO: find an example interface with a prequisite and see if we handle that correctly
      end

      properties.sort_by(&.name.not_nil!)
    end

    def class_struct
      info = GIRepository.object_info_get_class_struct(self)
      BaseInfo.wrap(info).as(StructInfo) if info
    end

    def lib_definition(builder)
      builder.end_of_line_comment "object"
      builder.def_struct(name) do
        each_field &.lib_definition(builder)
        field_binding "_data", "UInt8[0]" if fields_size == 0

        each_signal &.lib_definition(builder)
        each_vfunc &.lib_definition(builder)
        each_property &.lib_definition(builder)
      end

      builder.fun_binding type_init, name: "_#{type_init}", return_type: "UInt64" unless type_init == "intern"
      each_method &.lib_definition(builder)
    end

    def wrapper_definition(builder, libname)
      parent_object = parent
      parent = parent_object.constant if parent_object && parent_object.namespace == namespace
      parent ||= parent_object.full_constant if parent_object

      builder.def_class(name, parent: parent) do
        section do
          add_include "GObject::WrappedType" unless parent

          each_interface do |interface|
            add_include(interface.full_constant) unless interface.info_type.unresolved?
          end
        end

        write_constructor builder, libname
        write_to_unsafe builder, libname

        unless abstract?
          constructor_properties = all_properties.select { |property| property.setter? }
          gtype = type_init == "intern" ? call("type_from_name", literal(type_name), receiver: "GObject") : call("_#{type_init}", receiver: libname)
          constructor_args = constructor_properties.map { |property|
            arg(property.arg_name, type: "#{property.type.wrapper_definition(libname)}?", default: literal(nil))
          }

          if !constructor_properties.empty?
            constructor_args.unshift arg("", prefix: :splat)
            def_method("initialize", constructor_args) do
              names = line assign_var "[] of UInt8*"
              values = line assign_var "[] of LibGObject::Value"

              constructor_properties.each do |property|
                line def_if(negate(call("nil?", receiver: property.arg_name))) { |b|
                  b.line b.call("<<", b.call("to_unsafe", receiver: b.literal(property.name)), receiver: names)
                  gvalue = b.call("to_gvalue", receiver: property.arg_name)
                  ptr = b.call("to_unsafe", receiver: gvalue)
                  strct = b.call("value", receiver: ptr)
                  b.line b.call("<<", strct, receiver: values)
                }
              end

              names_size = call "size", receiver: names
              object = call("new_with_properties", gtype, names_size, names, values, receiver: "LibGObject")
              ptr = call("as", "Void*", receiver: object)
              line assign "@pointer", ptr
            end
          elsif !has_any_constructor?
            def_method("initialize") do
              object = call("new_with_properties", gtype, literal(0), literal(nil), literal(nil), receiver: "LibGObject")
              ptr = call("as", "Void*", receiver: object)
              line assign "@pointer", ptr
            end
          end
        end

        write_methods builder, libname

        each_property do |property|
          next if has_method_getter_or_setter?(property.crystal_name)
          next if property.private?
          property.wrapper_definition builder, libname
        end

        each_signal(&.wrapper_definition(builder, libname))
      end
    end

    Dumper.def do |dumper|
      dumper.puts "* abstract = #{abstract?}"
      Dumper.dump_child parent
      Dumper.dump_child class_struct
      Dumper.dump_childs constant
      Dumper.dump_childs interface
      Dumper.dump_childs field
      Dumper.dump_childs property, properties
      Dumper.dump_childs method
      Dumper.dump_childs vfunc
      Dumper.dump_childs signal
    end
  end
end
