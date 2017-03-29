module Gio
  class UnixMountEntry
    include GObject::WrappedType

    @gio_unix_mount_entry : LibGio::UnixMountEntry*?
    def initialize(@gio_unix_mount_entry : LibGio::UnixMountEntry*)
    end

    def to_unsafe
      @gio_unix_mount_entry.not_nil!
    end

  end
end

