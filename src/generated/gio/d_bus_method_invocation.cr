module Gio
  class DBusMethodInvocation < GObject::Object
    def initialize(@gio_d_bus_method_invocation)
    end

    def to_unsafe
      @gio_d_bus_method_invocation.not_nil!
    end

    def connection
      __return_value = LibGio.d_bus_method_invocation_get_connection((to_unsafe as LibGio::DBusMethodInvocation*))
      Gio::DBusConnection.new(__return_value)
    end

    def interface_name
      __return_value = LibGio.d_bus_method_invocation_get_interface_name((to_unsafe as LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def message
      __return_value = LibGio.d_bus_method_invocation_get_message((to_unsafe as LibGio::DBusMethodInvocation*))
      Gio::DBusMessage.new(__return_value)
    end

    def method_info
      __return_value = LibGio.d_bus_method_invocation_get_method_info((to_unsafe as LibGio::DBusMethodInvocation*))
      Gio::DBusMethodInfo.new(__return_value)
    end

    def method_name
      __return_value = LibGio.d_bus_method_invocation_get_method_name((to_unsafe as LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def object_path
      __return_value = LibGio.d_bus_method_invocation_get_object_path((to_unsafe as LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def parameters
      __return_value = LibGio.d_bus_method_invocation_get_parameters((to_unsafe as LibGio::DBusMethodInvocation*))
      GLib::Variant.new(__return_value)
    end

    def property_info
      __return_value = LibGio.d_bus_method_invocation_get_property_info((to_unsafe as LibGio::DBusMethodInvocation*))
      Gio::DBusPropertyInfo.new(__return_value)
    end

    def sender
      __return_value = LibGio.d_bus_method_invocation_get_sender((to_unsafe as LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def return_dbus_error(error_name, error_message)
      __return_value = LibGio.d_bus_method_invocation_return_dbus_error((to_unsafe as LibGio::DBusMethodInvocation*), error_name, error_message)
      __return_value
    end

    def return_error_literal(domain, code, message)
      __return_value = LibGio.d_bus_method_invocation_return_error_literal((to_unsafe as LibGio::DBusMethodInvocation*), UInt32.new(domain), Int32.new(code), message)
      __return_value
    end

    def return_gerror(error)
      __return_value = LibGio.d_bus_method_invocation_return_gerror((to_unsafe as LibGio::DBusMethodInvocation*), error)
      __return_value
    end

    def return_value(parameters)
      __return_value = LibGio.d_bus_method_invocation_return_value((to_unsafe as LibGio::DBusMethodInvocation*), parameters && (parameters.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def return_value_with_unix_fd_list(parameters, fd_list)
      __return_value = LibGio.d_bus_method_invocation_return_value_with_unix_fd_list((to_unsafe as LibGio::DBusMethodInvocation*), parameters && (parameters.to_unsafe as LibGLib::Variant*), fd_list && (fd_list.to_unsafe as LibGio::UnixFDList*))
      __return_value
    end

  end
end

