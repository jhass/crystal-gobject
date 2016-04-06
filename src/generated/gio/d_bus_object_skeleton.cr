module Gio
  class DBusObjectSkeleton < GObject::Object
    def initialize(@gio_d_bus_object_skeleton)
    end

    def to_unsafe
      @gio_d_bus_object_skeleton.not_nil!
    end

    # Implements DBusObject

    def self.new_internal(object_path)
      __return_value = LibGio.d_bus_object_skeleton_new(object_path)
      Gio::DBusObjectSkeleton.new(__return_value)
    end

    def add_interface(interface)
      __return_value = LibGio.d_bus_object_skeleton_add_interface((to_unsafe as LibGio::DBusObjectSkeleton*), (interface.to_unsafe as LibGio::DBusInterfaceSkeleton*))
      __return_value
    end

    def flush
      __return_value = LibGio.d_bus_object_skeleton_flush((to_unsafe as LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def remove_interface(interface)
      __return_value = LibGio.d_bus_object_skeleton_remove_interface((to_unsafe as LibGio::DBusObjectSkeleton*), (interface.to_unsafe as LibGio::DBusInterfaceSkeleton*))
      __return_value
    end

    def remove_interface_by_name(interface_name)
      __return_value = LibGio.d_bus_object_skeleton_remove_interface_by_name((to_unsafe as LibGio::DBusObjectSkeleton*), interface_name)
      __return_value
    end

    def object_path=(object_path)
      __return_value = LibGio.d_bus_object_skeleton_set_object_path((to_unsafe as LibGio::DBusObjectSkeleton*), object_path)
      __return_value
    end

    alias AuthorizeMethodSignal = DBusObjectSkeleton, Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation -> Bool
    def on_authorize_method(&__block : AuthorizeMethodSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectSkeleton*, _arg1 : LibGio::LibGio::DBusInterfaceSkeleton*, _arg2 : LibGio::LibGio::DBusMethodInvocation*) {
       __return_value = __block.call(DBusObjectSkeleton.new(_arg0), Gio::DBusInterfaceSkeleton.new(_arg1), Gio::DBusMethodInvocation.new(_arg2))
       __return_value
      }
      connect("authorize-method", __callback)
    end

  end
end

