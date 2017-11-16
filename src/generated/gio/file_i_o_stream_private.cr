module Gio
  class FileIOStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::FileIOStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileIOStreamPrivate*)
    end

  end
end

