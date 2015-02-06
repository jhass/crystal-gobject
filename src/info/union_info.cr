require "./base_info"

class UnionInfo < BaseInfo
  each_converted union_info, field, FieldInfo
  each_converted union_info, method, FunctionInfo

  def name
    name = super
    'A' <= name[0] <= 'Z' ? name : "#{c_prefix}#{name}"
  end

  def definition
    String.build do |io|
      io.puts "  union #{name}"
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
    "  union #{name}; end"
  end
end
