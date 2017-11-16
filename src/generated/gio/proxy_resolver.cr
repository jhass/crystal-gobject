module Gio
  module ProxyResolver
    def self.default
      __return_value = LibGio.proxy_resolver_get_default
      __return_value
    end

    def supported?
      __return_value = LibGio.proxy_resolver_is_supported(@pointer.as(LibGio::ProxyResolver*))
      __return_value
    end

    def lookup(uri, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.proxy_resolver_lookup(@pointer.as(LibGio::ProxyResolver*), uri.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def lookup_async(uri, cancellable, callback, user_data)
      LibGio.proxy_resolver_lookup_async(@pointer.as(LibGio::ProxyResolver*), uri.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def lookup_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.proxy_resolver_lookup_finish(@pointer.as(LibGio::ProxyResolver*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

  end
end

