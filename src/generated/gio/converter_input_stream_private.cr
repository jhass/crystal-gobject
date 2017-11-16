module Gio
  class ConverterInputStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ConverterInputStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ConverterInputStreamPrivate*)
    end

  end
end

