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
      'A' <= name[0] <= 'Z' ? name : "#{c_prefix}#{name}" if name
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

    def lib_definition
      String.build do |io|
        if fields_size > 0
          io.puts "  union #{name}"
          each_field do |field|
            io.puts "  #{field.lib_definition}"
          end
          io.puts "  end"
        else
          io.puts "  alias #{name} = Void*"
        end

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        io.puts "#{indent}class #{name}"
        io.puts "#{indent}  include GObject::WrappedType"
        io.puts

        union_members = [name].concat fields.map { |field| field.type.wrapper_definition(libname) }
        io.puts "#{indent}  alias Union = #{union_members.join("|")}"
        io.puts

        each_field do |field|
          if field.readable?
            if field.type.tag.interface? && !field.type.pointer?
              field_access = "to_unsafe.as(Lib#{field.type.namespace}::#{field.type.interface.name}*)"
            else
              field_access = "to_unsafe.as(#{ptr_type(libname)}).value.#{field.name}"
            end
            io.puts "#{indent}  def #{field.name(false)}"
            io.puts "#{indent}    #{field.type.convert_to_crystal("(#{field_access})")}"
            io.puts "#{indent}  end"
            io.puts
          end
        end

        write_constructor libname, io, indent
        write_to_unsafe libname, io, indent
        write_methods libname, io, indent

        io.puts "#{indent}end"
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
