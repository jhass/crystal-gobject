module Gio
  class ConverterOutputStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ConverterOutputStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ConverterOutputStreamPrivate*)
    end

  end
end

