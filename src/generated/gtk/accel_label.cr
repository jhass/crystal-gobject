require "./label"

module Gtk
  class AccelLabel < Label
    @gtk_accel_label : LibGtk::AccelLabel*?
    def initialize(@gtk_accel_label : LibGtk::AccelLabel*)
    end

    def to_unsafe
      @gtk_accel_label.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new(string) : self
      __return_value = LibGtk.accel_label_new(string.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def accel(accelerator_key, accelerator_mods : Gdk::ModifierType)
      __return_value = LibGtk.accel_label_get_accel(to_unsafe.as(LibGtk::AccelLabel*), accelerator_key, accelerator_mods)
      __return_value
    end

    def accel_widget
      __return_value = LibGtk.accel_label_get_accel_widget(to_unsafe.as(LibGtk::AccelLabel*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def accel_width
      __return_value = LibGtk.accel_label_get_accel_width(to_unsafe.as(LibGtk::AccelLabel*))
      __return_value
    end

    def refetch
      __return_value = LibGtk.accel_label_refetch(to_unsafe.as(LibGtk::AccelLabel*))
      __return_value
    end

    def set_accel(accelerator_key, accelerator_mods : Gdk::ModifierType)
      __return_value = LibGtk.accel_label_set_accel(to_unsafe.as(LibGtk::AccelLabel*), UInt32.new(accelerator_key), accelerator_mods)
      __return_value
    end

    def accel_closure=(accel_closure)
      __return_value = LibGtk.accel_label_set_accel_closure(to_unsafe.as(LibGtk::AccelLabel*), accel_closure.to_unsafe.as(LibGObject::Closure*))
      __return_value
    end

    def accel_widget=(accel_widget)
      __return_value = LibGtk.accel_label_set_accel_widget(to_unsafe.as(LibGtk::AccelLabel*), accel_widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

  end
end

