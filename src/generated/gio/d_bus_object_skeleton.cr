module Gio
  class DBusObjectSkeleton < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectSkeleton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectSkeleton*)
    end

    # Implements DBusObject
    def g_object_path
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_object_path", gvalue)
      gvalue.string
    end

    def self.new(object_path) : self
      __return_value = LibGio.d_bus_object_skeleton_new(object_path.to_unsafe)
      cast Gio::DBusObjectSkeleton.new(__return_value)
    end

    def add_interface(interface)
      LibGio.d_bus_object_skeleton_add_interface(@pointer.as(LibGio::DBusObjectSkeleton*), interface.to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      nil
    end

    def flush
      LibGio.d_bus_object_skeleton_flush(@pointer.as(LibGio::DBusObjectSkeleton*))
      nil
    end

    def remove_interface(interface)
      LibGio.d_bus_object_skeleton_remove_interface(@pointer.as(LibGio::DBusObjectSkeleton*), interface.to_unsafe.as(LibGio::DBusInterfaceSkeleton*))
      nil
    end

    def remove_interface_by_name(interface_name)
      LibGio.d_bus_object_skeleton_remove_interface_by_name(@pointer.as(LibGio::DBusObjectSkeleton*), interface_name.to_unsafe)
      nil
    end

    def object_path=(object_path)
      LibGio.d_bus_object_skeleton_set_object_path(@pointer.as(LibGio::DBusObjectSkeleton*), object_path.to_unsafe)
      nil
    end

    alias AuthorizeMethodSignal = DBusObjectSkeleton, Gio::DBusInterfaceSkeleton, Gio::DBusMethodInvocation -> Bool
    def on_authorize_method(&__block : AuthorizeMethodSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectSkeleton*, _arg1 : LibGio::LibGio::DBusInterfaceSkeleton**, _arg2 : LibGio::LibGio::DBusMethodInvocation**) {
       __return_value = __block.call(DBusObjectSkeleton.new(_arg0), Gio::DBusInterfaceSkeleton.new(_arg1), Gio::DBusMethodInvocation.new(_arg2))
       __return_value
      }
      connect("authorize-method", __callback)
    end

  end
end

