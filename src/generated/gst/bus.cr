require "./object"

module Gst
  class Bus < Object
    def initialize(@gst_bus)
    end

    def to_unsafe
      @gst_bus.not_nil!
    end


    def self.new_internal
      __return_value = LibGst.bus_new
      Gst::Bus.new(__return_value)
    end

    def add_signal_watch
      __return_value = LibGst.bus_add_signal_watch((to_unsafe as LibGst::Bus*))
      __return_value
    end

    def add_signal_watch_full(priority)
      __return_value = LibGst.bus_add_signal_watch_full((to_unsafe as LibGst::Bus*), Int32.new(priority))
      __return_value
    end

    def add_watch(priority, func : LibGst::BusFunc, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.bus_add_watch((to_unsafe as LibGst::Bus*), Int32.new(priority), func, user_data, notify)
      __return_value
    end

    def async_signal_func(message, data)
      __return_value = LibGst.bus_async_signal_func((to_unsafe as LibGst::Bus*), (message.to_unsafe as LibGst::Message*), data)
      __return_value
    end

    def create_watch
      __return_value = LibGst.bus_create_watch((to_unsafe as LibGst::Bus*))
      GLib::Source.new(__return_value)
    end

    def disable_sync_message_emission
      __return_value = LibGst.bus_disable_sync_message_emission((to_unsafe as LibGst::Bus*))
      __return_value
    end

    def enable_sync_message_emission
      __return_value = LibGst.bus_enable_sync_message_emission((to_unsafe as LibGst::Bus*))
      __return_value
    end

    def have_pending
      __return_value = LibGst.bus_have_pending((to_unsafe as LibGst::Bus*))
      __return_value
    end

    def peek
      __return_value = LibGst.bus_peek((to_unsafe as LibGst::Bus*))
      Gst::Message.new(__return_value) if __return_value
    end

    def poll(events, timeout)
      __return_value = LibGst.bus_poll((to_unsafe as LibGst::Bus*), events, UInt64.new(timeout))
      Gst::Message.new(__return_value) if __return_value
    end

    def pop
      __return_value = LibGst.bus_pop((to_unsafe as LibGst::Bus*))
      Gst::Message.new(__return_value) if __return_value
    end

    def pop_filtered(types)
      __return_value = LibGst.bus_pop_filtered((to_unsafe as LibGst::Bus*), types)
      Gst::Message.new(__return_value) if __return_value
    end

    def post(message)
      __return_value = LibGst.bus_post((to_unsafe as LibGst::Bus*), (message.to_unsafe as LibGst::Message*))
      __return_value
    end

    def remove_signal_watch
      __return_value = LibGst.bus_remove_signal_watch((to_unsafe as LibGst::Bus*))
      __return_value
    end

    def remove_watch
      __return_value = LibGst.bus_remove_watch((to_unsafe as LibGst::Bus*))
      __return_value
    end

    def flushing=(flushing)
      __return_value = LibGst.bus_set_flushing((to_unsafe as LibGst::Bus*), flushing)
      __return_value
    end

    def set_sync_handler(func : LibGst::BusSyncHandler?, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.bus_set_sync_handler((to_unsafe as LibGst::Bus*), func && func, user_data, notify)
      __return_value
    end

    def sync_signal_handler(message, data)
      __return_value = LibGst.bus_sync_signal_handler((to_unsafe as LibGst::Bus*), (message.to_unsafe as LibGst::Message*), data)
      __return_value
    end

    def timed_pop(timeout)
      __return_value = LibGst.bus_timed_pop((to_unsafe as LibGst::Bus*), UInt64.new(timeout))
      Gst::Message.new(__return_value) if __return_value
    end

    def timed_pop_filtered(timeout, types)
      __return_value = LibGst.bus_timed_pop_filtered((to_unsafe as LibGst::Bus*), UInt64.new(timeout), types)
      Gst::Message.new(__return_value) if __return_value
    end

    alias MessageSignal = Bus, Gst::Message -> 
    def on_message(&__block : MessageSignal)
      __callback = ->(_arg0 : LibGst::Bus*, _arg1 : LibGst::LibGst::Message*) {
       __return_value = __block.call(Bus.new(_arg0), Gst::Message.new(_arg1))
       __return_value
      }
      connect("message", __callback)
    end

    alias SyncMessageSignal = Bus, Gst::Message -> 
    def on_sync_message(&__block : SyncMessageSignal)
      __callback = ->(_arg0 : LibGst::Bus*, _arg1 : LibGst::LibGst::Message*) {
       __return_value = __block.call(Bus.new(_arg0), Gst::Message.new(_arg1))
       __return_value
      }
      connect("sync-message", __callback)
    end

  end
end

