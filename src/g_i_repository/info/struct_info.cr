require "./base_info"
require "./registered_type_info"

module GIRepository
  class StructInfo < BaseInfo
    include RegisteredTypeInfo
    include WrapperGenerator

    each_converted struct_info, field, FieldInfo
    each_converted struct_info, method, FunctionInfo

    def gtype?
      GIRepository.struct_info_is_gtype_struct(self)
    end

    def name
      name = super
      'A' <= name[0] <= 'Z' ? name : "#{namespace}#{name}" if name
    end

    def size
      GIRepository.struct_info_get_size(self)
    end

    def alignment
      GIRepository.struct_info_get_alignment(self)
    end

    def foreign?
      GIRepository.struct_info_is_foreign(self)
    end

    def lib_definition(builder)
      builder.end_of_line_comment "struct"
      builder.def_struct(name) do
        field_definition(builder)
      end
      each_method &.lib_definition(builder)
    end

    def field_definition(builder)
      each_field &.lib_definition(builder)
      builder.field_binding "_data", "UInt8[#{size}]" if fields_size == 0
    end

    def wrapper_definition(builder, libname)
      builder.def_class(name) do
        section { add_include "GObject::WrappedType" }

        writable_fields = fields.select(&.writable?)
        if !writable_fields.empty?
          constructor_args = writable_fields.map { |field|
            arg(field.name,
              external: field.wrapper_name != field.name ? field.wrapper_name : nil,
              default: literal(nil),
              type: "#{field.type.wrapper_definition(libname)}?")
          }
          def_method("new", constructor_args, class_method: true, return_type: "self") do
            ptr = call("malloc", literal(size), literal(0u8), receiver: "Pointer(UInt8)")
            ptr = call("as", ptr_type(libname), receiver: ptr)
            object = line assign_var call("new", ptr)
            writable_fields.each do |field|
              not_nil = negate(call("nil?", receiver: field.name))
              conditional_line not_nil, assign("#{object}.#{field.wrapper_name}", field.name)
            end
            line object
          end
        elsif size != 0 # if size is 0 it's opaque to us, there should be a constructor function
          def_method("new", class_method: true, return_type: "self") do
            ptr = call("malloc", literal(size), literal(0u8), receiver: "Pointer(UInt8)")
            ptr = call("as", ptr_type(libname), receiver: ptr)
            line call("new", ptr)
          end
        end

        write_constructor builder, libname
        write_to_unsafe builder, libname
        write_methods builder, libname

        each_field do |field|
          next if has_method_getter_or_setter?(field.name)

          if field.readable?
            def_method(field.wrapper_name) do
              ptr = call("to_unsafe")
              ptr = call("as", ptr_type(libname), receiver: ptr)
              strct = call("value", receiver: ptr)
              value = call(field.name, receiver: strct)
              line field.type.convert_to_crystal(builder, value)
            end
          end

          if field.writable?
            def_method("#{field.wrapper_name}=", arg("value", type: field.type.wrapper_definition(libname))) do
              ptr = call("to_unsafe")
              ptr = call("as", ptr_type(libname), receiver: ptr)
              strct = call("value", receiver: ptr)
              line assign call(field.name, receiver: strct), field.type.convert_from_crystal("value")
            end
          end
        end
      end
    end

    Dumper.def do
      dumper.puts "* size = #{size}"
      dumper.puts "* alignment = #{alignment}"
      dumper.puts "* foreign = #{foreign?}"
      dumper.puts "* gtype = #{gtype?}"
      Dumper.dump_childs field
      Dumper.dump_childs method
    end
  end
end
