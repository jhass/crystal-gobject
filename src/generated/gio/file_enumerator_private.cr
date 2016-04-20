module Gio
  class FileEnumeratorPrivate
    include GObject::WrappedType

    @gio_file_enumerator_private : LibGio::FileEnumeratorPrivate*?
    def initialize(@gio_file_enumerator_private : LibGio::FileEnumeratorPrivate*)
    end

    def to_unsafe
      @gio_file_enumerator_private.not_nil!
    end

  end
end

