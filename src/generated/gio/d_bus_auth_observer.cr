module Gio
  class DBusAuthObserver < GObject::Object
    def initialize @gio_d_bus_auth_observer
    end

    def to_unsafe
      @gio_d_bus_auth_observer.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.d_bus_auth_observer_new
      Gio::DBusAuthObserver.new(__return_value)
    end

    def allow_mechanism(mechanism)
      __return_value = LibGio.d_bus_auth_observer_allow_mechanism((to_unsafe as LibGio::DBusAuthObserver*), mechanism)
      __return_value
    end

    def authorize_authenticated_peer(stream, credentials)
      __return_value = LibGio.d_bus_auth_observer_authorize_authenticated_peer((to_unsafe as LibGio::DBusAuthObserver*), (stream.to_unsafe as LibGio::IOStream*), credentials && (credentials.to_unsafe as LibGio::Credentials*))
      __return_value
    end

  end
end

