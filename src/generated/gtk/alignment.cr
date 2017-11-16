require "./bin"

module Gtk
  class Alignment < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Alignment*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Alignment*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def bottom_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "bottom_padding", gvalue)
      gvalue
    end

    def left_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "left_padding", gvalue)
      gvalue
    end

    def right_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "right_padding", gvalue)
      gvalue
    end

    def top_padding
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "top_padding", gvalue)
      gvalue
    end

    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    def xscale
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xscale", gvalue)
      gvalue
    end

    def yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yalign", gvalue)
      gvalue
    end

    def yscale
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yscale", gvalue)
      gvalue
    end

    def self.new(xalign, yalign, xscale, yscale) : self
      __return_value = LibGtk.alignment_new(Float32.new(xalign), Float32.new(yalign), Float32.new(xscale), Float32.new(yscale))
      cast Gtk::Widget.new(__return_value)
    end

    def padding(padding_top, padding_bottom, padding_left, padding_right)
      LibGtk.alignment_get_padding(@pointer.as(LibGtk::Alignment*), padding_top, padding_bottom, padding_left, padding_right)
      nil
    end

    def set(xalign, yalign, xscale, yscale)
      LibGtk.alignment_set(@pointer.as(LibGtk::Alignment*), Float32.new(xalign), Float32.new(yalign), Float32.new(xscale), Float32.new(yscale))
      nil
    end

    def set_padding(padding_top, padding_bottom, padding_left, padding_right)
      LibGtk.alignment_set_padding(@pointer.as(LibGtk::Alignment*), UInt32.new(padding_top), UInt32.new(padding_bottom), UInt32.new(padding_left), UInt32.new(padding_right))
      nil
    end

  end
end

