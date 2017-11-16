module Gio
  class FileEnumeratorPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::FileEnumeratorPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileEnumeratorPrivate*)
    end

  end
end

