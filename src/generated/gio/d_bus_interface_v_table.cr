module Gio
  class DBusInterfaceVTable
    include GObject::WrappedType

    def self.new(method_call : Gio::DBusInterfaceMethodCallFunc|Nil = nil, get_property : Gio::DBusInterfaceGetPropertyFunc|Nil = nil, set_property : Gio::DBusInterfaceSetPropertyFunc|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(88, 0u8)
      new(ptr.as(LibGio::DBusInterfaceVTable*)).tap do |object|
        object.method_call = method_call unless method_call.nil?
        object.get_property = get_property unless get_property.nil?
        object.set_property = set_property unless set_property.nil?
      end
    end

    @gio_d_bus_interface_v_table : LibGio::DBusInterfaceVTable*?
    def initialize(@gio_d_bus_interface_v_table : LibGio::DBusInterfaceVTable*)
    end

    def to_unsafe
      @gio_d_bus_interface_v_table.not_nil!
    end

    def method_call
      (to_unsafe.value.method_call)
    end

    def method_call=(value : Gio::DBusInterfaceMethodCallFunc)
      to_unsafe.value.method_call = value
    end

    def get_property
      (to_unsafe.value.get_property)
    end

    def get_property=(value : Gio::DBusInterfaceGetPropertyFunc)
      to_unsafe.value.get_property = value
    end

    def set_property
      (to_unsafe.value.set_property)
    end

    def set_property=(value : Gio::DBusInterfaceSetPropertyFunc)
      to_unsafe.value.set_property = value
    end

    def padding
      PointerIterator.new((to_unsafe.value.padding)) {|__item| __item }
    end

  end
end

