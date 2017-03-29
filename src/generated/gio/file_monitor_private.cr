module Gio
  class FileMonitorPrivate
    include GObject::WrappedType

    @gio_file_monitor_private : LibGio::FileMonitorPrivate*?
    def initialize(@gio_file_monitor_private : LibGio::FileMonitorPrivate*)
    end

    def to_unsafe
      @gio_file_monitor_private.not_nil!
    end

  end
end

