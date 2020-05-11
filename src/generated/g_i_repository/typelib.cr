module GIRepository
  class Typelib
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGIRepository::Typelib*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::Typelib*)
    end

    def to_unsafe_typelib
      @pointer.not_nil!.as(LibGIRepository::Typelib*)
    end

    def free
      LibGIRepository.typelib_free(@pointer.as(LibGIRepository::Typelib*))
      nil
    end

    def namespace
      __return_value = LibGIRepository.typelib_get_namespace(@pointer.as(LibGIRepository::Typelib*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def symbol(symbol_name : ::String, symbol : Void*?)
      __return_value = LibGIRepository.typelib_symbol(@pointer.as(LibGIRepository::Typelib*), symbol_name.to_unsafe, symbol ? symbol : nil)
      __return_value
    end

  end
end

