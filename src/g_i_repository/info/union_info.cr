require "./base_info"

module GIRepository
  class UnionInfo < BaseInfo
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
      "#{indent}alias #{name} = #{libname}::#{name}"
    end
  end
end
