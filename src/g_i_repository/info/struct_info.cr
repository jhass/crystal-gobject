require "./base_info"

module GIRepository
  class StructInfo < BaseInfo
    each_converted struct_info, field, FieldInfo
    each_converted struct_info, method, FunctionInfo

    def gtype?
      LibGIRepository.struct_info_is_gtype_struct(self)
    end

    def name
      name = super
      'A' <= name[0] <= 'Z' ? name : "#{namespace}#{name}"
    end

    def size
      LibGIRepository.struct_info_get_size(self)
    end

    def lib_definition
      String.build do |io|
        io.puts "  struct #{name} # struct"
        field_definition(io)
        io.puts "  end"

        each_method do |method|
          io.puts method.lib_definition
        end

        io.puts
      end
    end

    def field_definition(io)
      each_field do |field|
        io.puts "  #{field.lib_definition}"
      end
      io.puts "    _data : UInt8[#{size}]" if fields_size == 0
    end

    def wrapper_definition libname, indent=""
      String.build do |io|
        io.puts "#{indent}class #{name}"
        io.puts "#{indent}  include GObject::WrappedType"
        io.puts

        ptr = "@#{GIRepository.filename(full_constant)}"
        io.puts "#{indent}  def initialize #{ptr}"
        io.puts "#{indent}  end"
        io.puts
        io.puts "#{indent}  def to_unsafe"
        io.puts "#{indent}    #{ptr}.not_nil!"
        io.puts "#{indent}  end"
        io.puts

        each_method do |method|
          io.puts method.wrapper_definition libname, indent+"  "
          io.puts
        end
        io.puts "#{indent}end"
      end
    end
  end
end
