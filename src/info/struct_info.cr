require "./base_info"

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

  def definition
    String.build do |io|
      io.puts "  struct #{name} # struct"
      each_field do |field|
        io.puts "  #{field.definition}"
      end
      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end

      io.puts
    end
  end

  def declaration
    "  struct #{name}; end; # struct"
  end
end
