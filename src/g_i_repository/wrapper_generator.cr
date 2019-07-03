module GIRepository
  module WrapperGenerator
    def ptr_type(libname)
      "#{libname}::#{name}*"
    end

    def write_constructor(libname, io, indent="")
      io.puts "#{indent}  @pointer : Void*"
      io.puts "#{indent}  def initialize(pointer : #{ptr_type(libname)})"
      io.puts "#{indent}    @pointer = pointer.as(Void*)"         
      io.puts "#{indent}  end"
      io.puts
    end

    def write_to_unsafe(libname, io, indent="")
      io.puts "#{indent}  def to_unsafe : #{ptr_type(libname)}"
      io.puts "#{indent}    @pointer.not_nil!.as(#{ptr_type(libname)})"
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
