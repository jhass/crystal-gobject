module Gio
  class Resolver < GObject::Object
    @gio_resolver : LibGio::Resolver*?
    def initialize(@gio_resolver : LibGio::Resolver*)
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
      __return_value = LibGio.resolver_lookup_by_address(to_unsafe.as(LibGio::Resolver*), address.to_unsafe.as(LibGio::InetAddress*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def lookup_by_address_async(address, cancellable, callback, user_data)
      LibGio.resolver_lookup_by_address_async(to_unsafe.as(LibGio::Resolver*), address.to_unsafe.as(LibGio::InetAddress*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_by_address_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_address_finish(to_unsafe.as(LibGio::Resolver*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def lookup_by_name(hostname, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_name(to_unsafe.as(LibGio::Resolver*), hostname.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::InetAddress, LibGio::InetAddress*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_by_name_async(hostname, cancellable, callback, user_data)
      LibGio.resolver_lookup_by_name_async(to_unsafe.as(LibGio::Resolver*), hostname.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_by_name_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_by_name_finish(to_unsafe.as(LibGio::Resolver*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::InetAddress, LibGio::InetAddress*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_records(rrname, record_type : Gio::ResolverRecordType, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_records(to_unsafe.as(LibGio::Resolver*), rrname.to_unsafe, record_type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(GLib::Variant, LibGLib::Variant*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_records_async(rrname, record_type : Gio::ResolverRecordType, cancellable, callback, user_data)
      LibGio.resolver_lookup_records_async(to_unsafe.as(LibGio::Resolver*), rrname.to_unsafe, record_type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_records_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_records_finish(to_unsafe.as(LibGio::Resolver*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(GLib::Variant, LibGLib::Variant*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_service(service, protocol, domain, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_service(to_unsafe.as(LibGio::Resolver*), service.to_unsafe, protocol.to_unsafe, domain.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::SrvTarget, LibGio::SrvTarget*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_service_async(service, protocol, domain, cancellable, callback, user_data)
      LibGio.resolver_lookup_service_async(to_unsafe.as(LibGio::Resolver*), service.to_unsafe, protocol.to_unsafe, domain.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_service_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.resolver_lookup_service_finish(to_unsafe.as(LibGio::Resolver*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::SrvTarget, LibGio::SrvTarget*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def set_default
      LibGio.resolver_set_default(to_unsafe.as(LibGio::Resolver*))
      nil
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

