module Gio
  class UnixMountEntry
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixMountEntry*))
    end

    @gio_unix_mount_entry : LibGio::UnixMountEntry*?
    def initialize(@gio_unix_mount_entry : LibGio::UnixMountEntry*)
    end

    def to_unsafe
      @gio_unix_mount_entry.not_nil!.as(Void*)
    end

  end
end

