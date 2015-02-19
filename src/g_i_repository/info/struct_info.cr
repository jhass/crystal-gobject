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

    def lib_definition
      String.build do |io|
        io.puts "  struct #{name} # struct"
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

    def wrapper_definition libname, indent=""
      String.build do |io|
        io.puts "#{indent}class #{name}"
        io.puts "#{indent}  include GObject::WrappedType"

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
