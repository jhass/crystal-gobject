module GIRepository
  class Typelib
    include GObject::WrappedType

    @g_i_repository_typelib : LibGIRepository::Typelib*?
    def initialize(@g_i_repository_typelib : LibGIRepository::Typelib*)
    end

    def to_unsafe
      @g_i_repository_typelib.not_nil!
    end

    def free
      __return_value = LibGIRepository.typelib_free(to_unsafe.as(LibGIRepository::Typelib*))
      __return_value
    end

    def namespace
      __return_value = LibGIRepository.typelib_get_namespace(to_unsafe.as(LibGIRepository::Typelib*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def symbol(symbol_name, symbol)
      __return_value = LibGIRepository.typelib_symbol(to_unsafe.as(LibGIRepository::Typelib*), symbol_name.to_unsafe, symbol ? symbol : nil)
      __return_value
    end

  end
end

