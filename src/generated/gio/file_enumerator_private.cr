module Gio
  class FileEnumeratorPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::FileEnumeratorPrivate*))
    end

    @gio_file_enumerator_private : LibGio::FileEnumeratorPrivate*?
    def initialize(@gio_file_enumerator_private : LibGio::FileEnumeratorPrivate*)
    end

    def to_unsafe
      @gio_file_enumerator_private.not_nil!
    end

  end
end

