module Gio
  class DBusErrorEntry
    include GObject::WrappedType

    def self.new(error_code : Int32|Nil = nil, dbus_error_name : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGio::DBusErrorEntry*)).tap do |object|
        object.error_code = error_code unless error_code.nil?
        object.dbus_error_name = dbus_error_name unless dbus_error_name.nil?
      end
    end

    @gio_d_bus_error_entry : LibGio::DBusErrorEntry*?
    def initialize(@gio_d_bus_error_entry : LibGio::DBusErrorEntry*)
    end

    def to_unsafe
      @gio_d_bus_error_entry.not_nil!
    end

    def error_code
      (to_unsafe.as(LibGio::DBusErrorEntry*).value.error_code)
    end

    def error_code=(value : Int32)
      to_unsafe.as(LibGio::DBusErrorEntry*).value.error_code = Int32.new(value)
    end

    def dbus_error_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusErrorEntry*).value.dbus_error_name); ::String.new((to_unsafe.as(LibGio::DBusErrorEntry*).value.dbus_error_name)))
    end

    def dbus_error_name=(value : String)
      to_unsafe.as(LibGio::DBusErrorEntry*).value.dbus_error_name = value.to_unsafe
    end

  end
end

