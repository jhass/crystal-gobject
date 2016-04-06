require "./base_info"

module GIRepository
  module CallableInfo
    class FakeType
      def initialize(@definition)
      end

      def lib_definition
        @definition
      end

      def wrapper_definition(libname, indent="")
        @definition
      end

      def tag
        -1
      end

      def convert_to_crystal(variable)
        "#{@definition}.new(#{variable})"
      end

      def convert_from_crystal(variable)
        variable
      end
    end

    class SelfArgInfo
      def initialize(@container)
      end

      def lib_definition
        "this : #{@container.name}*"
      end

      def type
        FakeType.new "#{@container.name}"
      end

      def for_wrapper_definition(libname)
      end

      def for_wrapper_pass(libname)
        "(to_unsafe as #{libname}::#{@container.name}*)"
      end
    end

    class ErrorArgInfo
      def lib_definition
        "error : LibGLib::Error**"
      end

      def type
        FakeType.new "LibGLib::Error**"
      end

      def for_wrapper_definition(libname)
      end

      def for_wrapper_pass(libname)
        "pointerof(__error)"
      end
    end

    def method?
      LibGIRepository.callable_info_is_method(self)
    end

    def throws?
      LibGIRepository.callable_info_can_throw_gerror(self)
    end

    def skip_return?
      LibGIRepository.callable_info_skip_return(self)
    end

    def may_return_null?
      LibGIRepository.callable_info_may_return_null(self)
    end

    each_converted callable_info, arg, ArgInfo

    def args
      args = [] of ArgInfo|SelfArgInfo|ErrorArgInfo
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
  end
end
