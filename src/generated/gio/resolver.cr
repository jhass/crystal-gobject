module Gio
  class Resolver < GObject::Object
    def initialize(@gio_resolver)
    end

    def to_unsafe
      @gio_resolver.not_nil!
    end

    def self.default
      __return_value = LibGio.resolver_get_default
      Gio::Resolver.new(__return_value)
    end

    def lookup_by_address(address, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_address((to_unsafe as LibGio::Resolver*), (address.to_unsafe as LibGio::InetAddress*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def lookup_by_address_async(address, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.resolver_lookup_by_address_async((to_unsafe as LibGio::Resolver*), (address.to_unsafe as LibGio::InetAddress*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_by_address_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_address_finish((to_unsafe as LibGio::Resolver*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def lookup_by_name(hostname, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_name((to_unsafe as LibGio::Resolver*), hostname, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_by_name_async(hostname, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.resolver_lookup_by_name_async((to_unsafe as LibGio::Resolver*), hostname, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_by_name_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_name_finish((to_unsafe as LibGio::Resolver*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_records(rrname, record_type, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_records((to_unsafe as LibGio::Resolver*), rrname, record_type, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_records_async(rrname, record_type, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.resolver_lookup_records_async((to_unsafe as LibGio::Resolver*), rrname, record_type, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_records_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_records_finish((to_unsafe as LibGio::Resolver*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_service(service, protocol, domain, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_service((to_unsafe as LibGio::Resolver*), service, protocol, domain, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def lookup_service_async(service, protocol, domain, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.resolver_lookup_service_async((to_unsafe as LibGio::Resolver*), service, protocol, domain, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_service_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_service_finish((to_unsafe as LibGio::Resolver*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_default
      __return_value = LibGio.resolver_set_default((to_unsafe as LibGio::Resolver*))
      __return_value
    end

    alias ReloadSignal = Resolver -> 
    def on_reload(&__block : ReloadSignal)
      __callback = ->(_arg0 : LibGio::Resolver*) {
       __return_value = __block.call(Resolver.new(_arg0))
       __return_value
      }
      connect("reload", __callback)
    end

  end
end

