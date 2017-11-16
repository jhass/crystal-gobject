module Gio
  class EmblemedIcon < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::EmblemedIcon*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::EmblemedIcon*)
    end

    # Implements Icon
    def gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gicon", gvalue)
      gvalue
    end

    def self.new(icon, emblem) : self
      __return_value = LibGio.emblemed_icon_new(icon.to_unsafe.as(LibGio::Icon*), emblem ? emblem.to_unsafe.as(LibGio::Emblem*) : nil)
      cast Gio::EmblemedIcon.new(__return_value)
    end

    def add_emblem(emblem)
      LibGio.emblemed_icon_add_emblem(@pointer.as(LibGio::EmblemedIcon*), emblem.to_unsafe.as(LibGio::Emblem*))
      nil
    end

    def clear_emblems
      LibGio.emblemed_icon_clear_emblems(@pointer.as(LibGio::EmblemedIcon*))
      nil
    end

    def emblems
      __return_value = LibGio.emblemed_icon_get_emblems(@pointer.as(LibGio::EmblemedIcon*))
      GLib::ListIterator(Gio::Emblem, LibGio::Emblem**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def icon
      __return_value = LibGio.emblemed_icon_get_icon(@pointer.as(LibGio::EmblemedIcon*))
      __return_value
    end

  end
end

