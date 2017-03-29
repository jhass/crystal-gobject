module GIRepository
  module WrapperGenerator
    def ptr_name
      "@#{GIRepository.filename(full_constant)}"
    end

    def ptr_type(libname)
      "#{libname}::#{name}*"
    end

    def write_constructor(libname, io, indent="")
      io.puts "#{indent}  #{ptr_name} : #{ptr_type(libname)}?"
      io.puts "#{indent}  def initialize(#{ptr_name} : #{ptr_type(libname)})"
      io.puts "#{indent}  end"
      io.puts
    end

    def write_to_unsafe(libname, io, indent="")
      io.puts "#{indent}  def to_unsafe"
      io.puts "#{indent}    #{ptr_name}.not_nil!"
      io.puts "#{indent}  end"
      io.puts
    end

    def write_methods(libname, io, indent="")
      each_method do |method|
        io.puts method.wrapper_definition libname, indent+"  "
        io.puts
      end
    end
  end
end
