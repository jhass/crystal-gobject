module Gio
  class FileEnumeratorPrivate
    include GObject::WrappedType

    def initialize(@gio_file_enumerator_private)
    end

    def to_unsafe
      @gio_file_enumerator_private.not_nil!
    end

  end
end

