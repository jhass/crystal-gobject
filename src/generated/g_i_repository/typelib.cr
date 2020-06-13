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
      __var0 = LibGIRepository.typelib_get_namespace(@pointer.as(LibGIRepository::Typelib*))
      GObject.raise_unexpected_null("g_typelib_get_namespace") if __var0.null?
      ::String.new(__var0)
    end

    def symbol(symbol_name : ::String, symbol : Void*?)
      __var0 = LibGIRepository.typelib_symbol(@pointer.as(LibGIRepository::Typelib*), symbol_name.to_unsafe, symbol ? symbol : nil)
      (__var0 == 1)
    end
  end
end
