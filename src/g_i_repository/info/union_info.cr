require "./base_info"

module GIRepository
  class UnionInfo < BaseInfo
    include WrapperGenerator

    each_converted union_info, field, FieldInfo
    each_converted union_info, method, FunctionInfo

    def name
      name = super
      'A' <= name[0] <= 'Z' ? name : "#{c_prefix}#{name}"
    end

    def lib_definition
      String.build do |io|
        io.puts "  union #{name}"
        each_field do |field|
          io.puts "  #{field.lib_definition}"
        end
        io.puts "  end"

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end

    def wrapper_definition(libname, indent="")
      String.build do |io|
        io.puts "#{indent}class #{name}"
        io.puts "#{indent}  include GObject::WrappedType"
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
  end
end
