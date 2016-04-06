module Gio
  class UnixMountEntry
    include GObject::WrappedType

    def initialize(@gio_unix_mount_entry)
    end

    def to_unsafe
      @gio_unix_mount_entry.not_nil!
    end

  end
end

