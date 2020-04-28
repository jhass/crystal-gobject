require "./base_info"

module GIRepository
  module CallableInfo
    class FakeContainer
      getter name

      def initialize(@name : String)
      end

      def type_lib_definition
        name
      end
    end

    class FakeType
      def initialize(@container : BaseInfo | FakeContainer)
      end

      def lib_definition
        case container = @container
        when RegisteredTypeInfo
          container.type_lib_definition
        else
          container.name
        end
      end

      def signal_lib_definition
        base = lib_definition
        if base && @container.is_a?(StructInfo)
          base += "*"
        end
        base
      end

      def wrapper_definition(libname, indent = "")
        @container.name
      end

      def tag
        -1
      end

      def convert_to_crystal(variable)
        "#{@container.name}.new(#{variable})"
      end

      def convert_from_crystal(variable)
        variable
      end

      def gvalue_type
        case @container
        when RegisteredTypeInfo
          "GObject::Type::OBJECT"
        else
          "GObject::Type::NONE"
        end
      end
    end

    class SelfArgInfo
      def initialize(@container : BaseInfo)
      end

      def lib_definition
        "this : #{@container.name}*"
      end

      def name
        "this"
      end

      def type
        FakeType.new(@container)
      end

      def for_wrapper_definition(libname)
      end

      def for_wrapper_pass(libname)
        "@pointer.as(#{libname}::#{@container.name}*)"
      end

      def from_wrapper_pass
        "#{@container.name}.new(this)"
      end

      def gvalue_out?
        false
      end
    end

    class ErrorArgInfo
      def lib_definition
        "error : LibGLib::Error**"
      end

      def name
        "error"
      end

      def type
        FakeType.new FakeContainer.new("LibGLib::Error*")
      end

      def for_wrapper_definition(libname)
      end

      def for_wrapper_pass(libname)
        "pointerof(__error)"
      end

      def from_wrapper_pass
        "error"
      end

      def gvalue_out?
        false
      end
    end

    def method?
      GIRepository.callable_info_is_method(self)
    end

    def throws?
      GIRepository.callable_info_can_throw_gerror(self)
    end

    def skip_return?
      GIRepository.callable_info_skip_return(self) || return_type.void?
    end

    def may_return_null?
      GIRepository.callable_info_may_return_null(self)
    end

    each_converted callable_info, arg, ArgInfo

    def args
      args = [] of ArgInfo | SelfArgInfo | ErrorArgInfo
      args << SelfArgInfo.new(container) if method?
      each_arg do |arg|
        args << arg
      end
      args << ErrorArgInfo.new if throws?
      args
    end

    def return_type
      TypeInfo.new LibGIRepository.callable_info_get_return_type(self)
    end

    def each_return_attribute
      iter = AttributeIter.new
      while LibGIRepository.callable_info_iterate_return_attributes(self, iter, out name, out value)
        yield name, value
      end
    end

    Dumper.def do
      dumper.puts "* method = #{method?}"
      dumper.puts "* throws = #{throws?}"
      dumper.puts "* skip_return = #{skip_return?}"
      dumper.puts "* may_return_null = #{may_return_null?}"
      print_header = true
      each_return_attribute do |name, value|
        dumper.puts "* return_attributes" if print_header
        print_header = false
        dumper.puts "  - #{name} = #{value}"
      end
      Dumper.dump_child return_type
      Dumper.dump_childs arg
    end
  end
end
