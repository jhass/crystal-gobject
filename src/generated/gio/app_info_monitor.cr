module Gio
  class AppInfoMonitor < GObject::Object
    def initialize(@gio_app_info_monitor)
    end

    def to_unsafe
      @gio_app_info_monitor.not_nil!
    end

    def self.get
      __return_value = LibGio.app_info_monitor_get
      Gio::AppInfoMonitor.new(__return_value)
    end

    alias ChangedSignal = AppInfoMonitor -> 
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGio::AppInfoMonitor*) {
       __return_value = __block.call(AppInfoMonitor.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

