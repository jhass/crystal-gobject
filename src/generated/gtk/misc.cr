require "./widget"

module Gtk
  class Misc < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Misc*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Misc*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    def xpad
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xpad", gvalue)
      gvalue
    end

    def yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yalign", gvalue)
      gvalue
    end

    def ypad
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ypad", gvalue)
      gvalue
    end

    def alignment(xalign, yalign)
      LibGtk.misc_get_alignment(@pointer.as(LibGtk::Misc*), xalign, yalign)
      nil
    end

    def padding(xpad, ypad)
      LibGtk.misc_get_padding(@pointer.as(LibGtk::Misc*), xpad, ypad)
      nil
    end

    def set_alignment(xalign, yalign)
      LibGtk.misc_set_alignment(@pointer.as(LibGtk::Misc*), Float32.new(xalign), Float32.new(yalign))
      nil
    end

    def set_padding(xpad, ypad)
      LibGtk.misc_set_padding(@pointer.as(LibGtk::Misc*), Int32.new(xpad), Int32.new(ypad))
      nil
    end

  end
end

