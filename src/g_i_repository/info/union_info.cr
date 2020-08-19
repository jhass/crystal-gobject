require "./base_info"
require "./registered_type_info"

module GIRepository
  class UnionInfo < BaseInfo
    include RegisteredTypeInfo
    include WrapperGenerator

    each_converted union_info, field, FieldInfo
    each_converted union_info, method, FunctionInfo

    def name
      name = super
      name = 'A' <= name[0] <= 'Z' ? name : "#{c_prefix}#{name}" if name
      name = 'A' <= name[0] <= 'Z' ? name : "#{name[0].upcase}#{name[1..]}"  if name
      name.not_nil!
    end

    def size
      GIRepository.union_info_get_size(self)
    end

    def alignment
      GIRepository.union_info_get_alignment(self)
    end

    def discriminated?
      GIRepository.union_info_is_discriminated(self)
    end

    def discriminators
      discriminators = Hash(String, ConstantInfo).new

      fields.each_with_index do |field, i|
        info = ConstantInfo.wrap GIRepository.union_info_get_discriminator(self, i)
        name = field.name
        discriminators[name] = info.as(ConstantInfo) if name && info
      end

      discriminators
    end

    def discriminator_type
      TypeInfo.wrap GIRepository.union_info_get_discriminator_type(self)
    end

    def discriminator_offset
      GIRepository.union_info_get_discriminator_offset(self)
    end

    def lib_definition(builder)
      if fields_size > 0
        builder.def_union(name) do
          each_field &.lib_definition(builder)
        end
      else
        builder.def_alias name, "Void*"
      end

      each_method &.lib_definition(builder)
    end

    def wrapper_definition(builder, libname)
      builder.def_class(name) do
        section { add_include "GObject::WrappedType" }

        union_members = [name].concat fields.map { |field| field.type.wrapper_definition(libname) }
        def_alias "Union", union_members.join("|")

        each_field do |field|
          if field.readable?
            def_method(field.wrapper_name) do
              ptr = call("to_unsafe")
              value = if field.type.tag.interface? && !field.type.pointer?
                        call("as", "Lib#{field.type.namespace}::#{field.type.interface.name}*", receiver: ptr)
                      else
                        ptr = call("as", ptr_type(libname), receiver: ptr)
                        strct = call("value", receiver: ptr)
                        call(field.name, receiver: strct)
                      end

              line field.type.convert_to_crystal(builder, value)
            end
          end
        end

        write_constructor builder, libname
        write_to_unsafe builder, libname
        write_methods builder, libname
      end
    end

    Dumper.def do
      dumper.puts "* size = #{size}"
      dumper.puts "* alignment = #{alignment}"
      dumper.puts "* discriminated = #{discriminated?}"
      if discriminated?
        dumper.puts "*  discriminator_offset = #{discriminator_offset}"
        Dumper.dump_child discriminator_type
        dumper.puts "* discriminators:"
        dumper.nest(2) do
          discriminators.each do |field, constant|
            dumper.puts "- #{field}"
            dumper.nest(2) { yield constant }
          end
        end
      end
      Dumper.dump_childs field
      Dumper.dump_childs method
    end
  end
end
