module Gio
  class DBusInterfaceSkeleton < GObject::Object
    @gio_d_bus_interface_skeleton : LibGio::DBusInterfaceSkeleton*?
    def initialize(@gio_d_bus_interface_skeleton : LibGio::DBusInterfaceSkeleton*)
    end

    def to_unsafe
      @gio_d_bus_interface_skeleton.not_nil!
    end

    # Implements DBusInterface
    def g_flags
      __return_value = LibGio.d_bus_interface_skeleton_get_g_flags(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      __return_value
    end

    def export(connection, object_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_interface_skeleton_export(to_unsafe.as(LibGio::DBusInterfaceSkeleton*), connection.to_unsafe.as(LibGio::DBusConnection*), object_path.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush
      LibGio.d_bus_interface_skeleton_flush(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      nil
    end

    def connection
      __return_value = LibGio.d_bus_interface_skeleton_get_connection(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      Gio::DBusConnection.new(__return_value)
    end

    def connections
      __return_value = LibGio.d_bus_interface_skeleton_get_connections(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      GLib::ListIterator(Gio::DBusConnection, LibGio::DBusConnection*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def flags
      __return_value = LibGio.d_bus_interface_skeleton_get_flags(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      __return_value
    end

    def info
      __return_value = LibGio.d_bus_interface_skeleton_get_info(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def object_path
      __return_value = LibGio.d_bus_interface_skeleton_get_object_path(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def properties
      __return_value = LibGio.d_bus_interface_skeleton_get_properties(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      GLib::Variant.new(__return_value)
    end

    def has_connection(connection)
      __return_value = LibGio.d_bus_interface_skeleton_has_connection(to_unsafe.as(LibGio::DBusInterfaceSkeleton*), connection.to_unsafe.as(LibGio::DBusConnection*))
      __return_value
    end

    def flags=(flags : Gio::DBusInterfaceSkeletonFlags)
      LibGio.d_bus_interface_skeleton_set_flags(to_unsafe.as(LibGio::DBusInterfaceSkeleton*), flags)
      nil
    end

    def unexport
      LibGio.d_bus_interface_skeleton_unexport(to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      nil
    end

    def unexport_from_connection(connection)
      LibGio.d_bus_interface_skeleton_unexport_from_connection(to_unsafe.as(LibGio::DBusInterfaceSkeleton*), connection.to_unsafe.as(LibGio::DBusConnection*))
      nil
    end

    alias GAuthorizeMethodSignal = DBusInterfaceSkeleton, Gio::DBusMethodInvocation -> Bool
    def on_g_authorize_method(&__block : GAuthorizeMethodSignal)
      __callback = ->(_arg0 : LibGio::DBusInterfaceSkeleton*, _arg1 : LibGio::LibGio::DBusMethodInvocation*) {
       __return_value = __block.call(DBusInterfaceSkeleton.new(_arg0), Gio::DBusMethodInvocation.new(_arg1))
       __return_value
      }
      connect("g-authorize-method", __callback)
    end

  end
end

