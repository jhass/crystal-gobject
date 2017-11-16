require "./frame"

module Gtk
  class AspectFrame < Frame
    @pointer : Void*
    def initialize(pointer : LibGtk::AspectFrame*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AspectFrame*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def obey_child
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "obey_child", gvalue)
      gvalue.boolean
    end

    def ratio
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ratio", gvalue)
      gvalue
    end

    def xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "xalign", gvalue)
      gvalue
    end

    def yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "yalign", gvalue)
      gvalue
    end

    def self.new(label, xalign, yalign, ratio, obey_child) : self
      __return_value = LibGtk.aspect_frame_new(label ? label.to_unsafe : nil, Float32.new(xalign), Float32.new(yalign), Float32.new(ratio), obey_child)
      cast Gtk::Widget.new(__return_value)
    end

    def set(xalign, yalign, ratio, obey_child)
      LibGtk.aspect_frame_set(@pointer.as(LibGtk::AspectFrame*), Float32.new(xalign), Float32.new(yalign), Float32.new(ratio), obey_child)
      nil
    end

  end
end

