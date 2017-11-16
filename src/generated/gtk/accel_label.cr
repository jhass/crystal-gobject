require "./label"

module Gtk
  class AccelLabel < Label
    @pointer : Void*
    def initialize(pointer : LibGtk::AccelLabel*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AccelLabel*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def accel_closure
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_closure", gvalue)
      GObject::Closure.cast(gvalue.object)
    end

    def accel_widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def self.new(string) : self
      __return_value = LibGtk.accel_label_new(string.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def accel(accelerator_key, accelerator_mods : Gdk::ModifierType)
      LibGtk.accel_label_get_accel(@pointer.as(LibGtk::AccelLabel*), accelerator_key, accelerator_mods)
      nil
    end

    def accel_widget
      __return_value = LibGtk.accel_label_get_accel_widget(@pointer.as(LibGtk::AccelLabel*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def accel_width
      __return_value = LibGtk.accel_label_get_accel_width(@pointer.as(LibGtk::AccelLabel*))
      __return_value
    end

    def refetch
      __return_value = LibGtk.accel_label_refetch(@pointer.as(LibGtk::AccelLabel*))
      __return_value
    end

    def set_accel(accelerator_key, accelerator_mods : Gdk::ModifierType)
      LibGtk.accel_label_set_accel(@pointer.as(LibGtk::AccelLabel*), UInt32.new(accelerator_key), accelerator_mods)
      nil
    end

    def accel_closure=(accel_closure)
      LibGtk.accel_label_set_accel_closure(@pointer.as(LibGtk::AccelLabel*), accel_closure ? accel_closure.to_unsafe.as(LibGObject::Closure*) : nil)
      nil
    end

    def accel_widget=(accel_widget)
      LibGtk.accel_label_set_accel_widget(@pointer.as(LibGtk::AccelLabel*), accel_widget ? accel_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

