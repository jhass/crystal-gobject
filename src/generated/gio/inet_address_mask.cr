module Gio
  class InetAddressMask < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::InetAddressMask*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InetAddressMask*)
    end

    # Implements Initable
    def address
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "address", gvalue)
      Gio::InetAddress.cast(gvalue.object)
    end

    def family
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "family", gvalue)
      gvalue.enum
    end

    def length
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "length", gvalue)
      gvalue
    end

    def self.new(addr, length) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.inet_address_mask_new(addr.to_unsafe.as(LibGio::InetAddress*), UInt32.new(length), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::InetAddressMask.new(__return_value)
    end

    def self.new_from_string(mask_string) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.inet_address_mask_new_from_string(mask_string.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::InetAddressMask.new(__return_value)
    end

    def equal(mask2)
      __return_value = LibGio.inet_address_mask_equal(@pointer.as(LibGio::InetAddressMask*), mask2.to_unsafe.as(LibGio::InetAddressMask*))
      __return_value
    end

    def address
      __return_value = LibGio.inet_address_mask_get_address(@pointer.as(LibGio::InetAddressMask*))
      Gio::InetAddress.new(__return_value)
    end

    def family
      __return_value = LibGio.inet_address_mask_get_family(@pointer.as(LibGio::InetAddressMask*))
      __return_value
    end

    def length
      __return_value = LibGio.inet_address_mask_get_length(@pointer.as(LibGio::InetAddressMask*))
      __return_value
    end

    def matches(address)
      __return_value = LibGio.inet_address_mask_matches(@pointer.as(LibGio::InetAddressMask*), address.to_unsafe.as(LibGio::InetAddress*))
      __return_value
    end

    def to_string
      __return_value = LibGio.inet_address_mask_to_string(@pointer.as(LibGio::InetAddressMask*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

