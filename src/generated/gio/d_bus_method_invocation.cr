module Gio
  class DBusMethodInvocation < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusMethodInvocation*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusMethodInvocation*)
    end

    def connection
      __return_value = LibGio.d_bus_method_invocation_get_connection(@pointer.as(LibGio::DBusMethodInvocation*))
      Gio::DBusConnection.new(__return_value)
    end

    def interface_name
      __return_value = LibGio.d_bus_method_invocation_get_interface_name(@pointer.as(LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def message
      __return_value = LibGio.d_bus_method_invocation_get_message(@pointer.as(LibGio::DBusMethodInvocation*))
      Gio::DBusMessage.new(__return_value)
    end

    def method_info
      __return_value = LibGio.d_bus_method_invocation_get_method_info(@pointer.as(LibGio::DBusMethodInvocation*))
      Gio::DBusMethodInfo.new(__return_value)
    end

    def method_name
      __return_value = LibGio.d_bus_method_invocation_get_method_name(@pointer.as(LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def object_path
      __return_value = LibGio.d_bus_method_invocation_get_object_path(@pointer.as(LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parameters
      __return_value = LibGio.d_bus_method_invocation_get_parameters(@pointer.as(LibGio::DBusMethodInvocation*))
      GLib::Variant.new(__return_value)
    end

    def property_info
      __return_value = LibGio.d_bus_method_invocation_get_property_info(@pointer.as(LibGio::DBusMethodInvocation*))
      Gio::DBusPropertyInfo.new(__return_value)
    end

    def sender
      __return_value = LibGio.d_bus_method_invocation_get_sender(@pointer.as(LibGio::DBusMethodInvocation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def return_dbus_error(error_name, error_message)
      LibGio.d_bus_method_invocation_return_dbus_error(@pointer.as(LibGio::DBusMethodInvocation*), error_name.to_unsafe, error_message.to_unsafe)
      nil
    end

    def return_error_literal(domain, code, message)
      LibGio.d_bus_method_invocation_return_error_literal(@pointer.as(LibGio::DBusMethodInvocation*), UInt32.new(domain), Int32.new(code), message.to_unsafe)
      nil
    end

    def return_gerror(error)
      LibGio.d_bus_method_invocation_return_gerror(@pointer.as(LibGio::DBusMethodInvocation*), error)
      nil
    end

    def return_value(parameters)
      LibGio.d_bus_method_invocation_return_value(@pointer.as(LibGio::DBusMethodInvocation*), parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def return_value_with_unix_fd_list(parameters, fd_list)
      LibGio.d_bus_method_invocation_return_value_with_unix_fd_list(@pointer.as(LibGio::DBusMethodInvocation*), parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil)
      nil
    end

  end
end

