module Gio
  module Icon
    def self.deserialize(value)
      __return_value = LibGio.icon_deserialize((value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def self.hash(icon)
      __return_value = LibGio.icon_hash(icon)
      __return_value
    end

    def self.new_for_string(str)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.icon_new_for_string(str, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def equal(icon2)
      __return_value = LibGio.icon_equal((to_unsafe as LibGio::Icon*), icon2 && (icon2.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def serialize
      __return_value = LibGio.icon_serialize((to_unsafe as LibGio::Icon*))
      GLib::Variant.new(__return_value)
    end

    def to_string
      __return_value = LibGio.icon_to_string((to_unsafe as LibGio::Icon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

  end
end

