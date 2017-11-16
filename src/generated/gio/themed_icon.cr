module Gio
  class ThemedIcon < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::ThemedIcon*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ThemedIcon*)
    end

    # Implements Icon

    def names
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "names", gvalue)
      gvalue
    end

    def use_default_fallbacks
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_default_fallbacks", gvalue)
      gvalue.boolean
    end

    def self.new(iconname) : self
      __return_value = LibGio.themed_icon_new(iconname.to_unsafe)
      cast Gio::ThemedIcon.new(__return_value)
    end

    def self.new_from_names(iconnames, len) : self
      __return_value = LibGio.themed_icon_new_from_names(iconnames, Int32.new(len))
      cast Gio::ThemedIcon.new(__return_value)
    end

    def self.new_with_default_fallbacks(iconname) : self
      __return_value = LibGio.themed_icon_new_with_default_fallbacks(iconname.to_unsafe)
      cast Gio::ThemedIcon.new(__return_value)
    end

    def append_name(iconname)
      LibGio.themed_icon_append_name(@pointer.as(LibGio::ThemedIcon*), iconname.to_unsafe)
      nil
    end

    def names
      __return_value = LibGio.themed_icon_get_names(@pointer.as(LibGio::ThemedIcon*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def prepend_name(iconname)
      LibGio.themed_icon_prepend_name(@pointer.as(LibGio::ThemedIcon*), iconname.to_unsafe)
      nil
    end

  end
end

