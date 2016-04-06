module Gio
  class FileMonitorPrivate
    include GObject::WrappedType

    def initialize(@gio_file_monitor_private)
    end

    def to_unsafe
      @gio_file_monitor_private.not_nil!
    end

  end
end

