module Gio
  class FileMonitorPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::FileMonitorPrivate*))
    end

    @gio_file_monitor_private : LibGio::FileMonitorPrivate*?
    def initialize(@gio_file_monitor_private : LibGio::FileMonitorPrivate*)
    end

    def to_unsafe
      @gio_file_monitor_private.not_nil!
    end

  end
end

