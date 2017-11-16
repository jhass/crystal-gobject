module Gio
  class Emblem < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Emblem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Emblem*)
    end

    # Implements Icon
    def icon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon", gvalue)
      GObject::Object.cast(gvalue.object)
    end

    def origin
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "origin", gvalue)
      gvalue.enum
    end

    def self.new(icon) : self
      __return_value = LibGio.emblem_new(icon.to_unsafe.as(LibGio::Icon*))
      cast Gio::Emblem.new(__return_value)
    end

    def self.new_with_origin(icon, origin : Gio::EmblemOrigin) : self
      __return_value = LibGio.emblem_new_with_origin(icon.to_unsafe.as(LibGio::Icon*), origin)
      cast Gio::Emblem.new(__return_value)
    end

    def icon
      __return_value = LibGio.emblem_get_icon(@pointer.as(LibGio::Emblem*))
      __return_value
    end

    def origin
      __return_value = LibGio.emblem_get_origin(@pointer.as(LibGio::Emblem*))
      __return_value
    end

  end
end

