module Gio
  class AppInfoMonitor < GObject::Object
    def initialize @gio_app_info_monitor
    end

    def to_unsafe
      @gio_app_info_monitor.not_nil!
    end

    def self.get
      __return_value = LibGio.app_info_monitor_get
      Gio::AppInfoMonitor.new(__return_value)
    end

  end
end

