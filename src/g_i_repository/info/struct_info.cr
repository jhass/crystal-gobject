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

    def wrapper_definition(libname, indent="")
      String.build do |io|
        io.puts "#{indent}class #{name}"
        io.puts "#{indent}  include GObject::WrappedType"
        io.puts

        ptr = "@#{GIRepository.filename(full_constant)}"
        ptr_type = "#{libname}::#{name}*"

        writable_fields = fields.select(&.writable?)
        if !writable_fields.empty?
          io.print "#{indent}  def self.new("
          io.print writable_fields.map {|field|
            external = "#{field.name(false)} " if field.name(false) != field.name
            "#{external}#{field.name} : #{field.type.wrapper_definition(libname)}|Nil = nil"
          }.join(", ")
          io.puts ") : self"
          io.puts "#{indent}    ptr = Pointer(UInt8).malloc(#{size}, 0u8)"
          io.puts "#{indent}    new(ptr.as(#{ptr_type})).tap do |object|"
          writable_fields.each do |field|
            io.puts "#{indent}      object.#{field.name(false)} = #{field.name} unless #{field.name}.nil?"
          end
          io.puts "#{indent}    end"
          io.puts "#{indent}  end"
          io.puts
        elsif size != 0 # if size is 0 it's opaque to us, there should be a constructor function
          io.puts "#{indent}  def self.new : self"
          io.puts "#{indent}    ptr = Pointer(UInt8).malloc(#{size}, 0u8)"
          io.puts "#{indent}    super(ptr.as(#{ptr_type}))"
          io.puts "#{indent}  end"
          io.puts
        end

        # TODO: extract redundancy with ObjectInfo

        io.puts "#{indent}  #{ptr} : #{ptr_type}?"
        io.puts "#{indent}  def initialize(#{ptr} : #{ptr_type})"
        io.puts "#{indent}  end"
        io.puts
        io.puts "#{indent}  def to_unsafe"
        io.puts "#{indent}    #{ptr}.not_nil!.as(Void*)"
        io.puts "#{indent}  end"
        io.puts

        each_method do |method|
          io.puts method.wrapper_definition libname, indent+"  "
          io.puts
        end
        each_field do |field|
          if field.readable?
            io.puts "#{indent}  def #{field.name(false)}"
            io.puts "#{indent}    #{field.type.convert_to_crystal("(to_unsafe.as(#{ptr_type}).value.#{field.name})")}"
            io.puts "#{indent}  end"
            io.puts
          end

          if field.writable?
            io.puts "#{indent}  def #{field.name(false)}=(value : #{field.type.wrapper_definition(libname)})"
            io.puts "#{indent}    to_unsafe.as(#{ptr_type}).value.#{field.name} = #{field.type.convert_from_crystal("value")}"
            io.puts "#{indent}  end"
            io.puts
          end
        end
        io.puts "#{indent}end"
      end
    end
  end
end
