module Gio
  module NetworkMonitor
    def self.default
      __return_value = LibGio.network_monitor_get_default
      __return_value
    end

    def can_reach(connectable, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.network_monitor_can_reach(@pointer.as(LibGio::NetworkMonitor*), connectable.to_unsafe.as(LibGio::SocketConnectable*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def can_reach_async(connectable, cancellable, callback, user_data)
      LibGio.network_monitor_can_reach_async(@pointer.as(LibGio::NetworkMonitor*), connectable.to_unsafe.as(LibGio::SocketConnectable*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def can_reach_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.network_monitor_can_reach_finish(@pointer.as(LibGio::NetworkMonitor*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connectivity
      __return_value = LibGio.network_monitor_get_connectivity(@pointer.as(LibGio::NetworkMonitor*))
      __return_value
    end

    def network_available
      __return_value = LibGio.network_monitor_get_network_available(@pointer.as(LibGio::NetworkMonitor*))
      __return_value
    end

    def network_metered
      __return_value = LibGio.network_monitor_get_network_metered(@pointer.as(LibGio::NetworkMonitor*))
      __return_value
    end

    alias NetworkChangedSignal = NetworkMonitor, Bool ->
    def on_network_changed(&__block : NetworkChangedSignal)
      __callback = ->(_arg0 : LibGio::NetworkMonitor*, _arg1 : Bool*) {
       __return_value = __block.call(NetworkMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("network-changed", __callback)
    end

  end
end

