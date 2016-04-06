require "./bin"

module Gtk
  class Frame < Bin
    def initialize(@gtk_frame)
    end

    def to_unsafe
      @gtk_frame.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable





    def self.new_internal(label)
      __return_value = LibGtk.frame_new(label && label)
      Gtk::Widget.new(__return_value)
    end

    def label
      __return_value = LibGtk.frame_get_label((to_unsafe as LibGtk::Frame*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def label_align(xalign, yalign)
      __return_value = LibGtk.frame_get_label_align((to_unsafe as LibGtk::Frame*), Float32.new(xalign), Float32.new(yalign))
      __return_value
    end

    def label_widget
      __return_value = LibGtk.frame_get_label_widget((to_unsafe as LibGtk::Frame*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def shadow_type
      __return_value = LibGtk.frame_get_shadow_type((to_unsafe as LibGtk::Frame*))
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.frame_set_label((to_unsafe as LibGtk::Frame*), label && label)
      __return_value
    end

    def set_label_align(xalign, yalign)
      __return_value = LibGtk.frame_set_label_align((to_unsafe as LibGtk::Frame*), Float32.new(xalign), Float32.new(yalign))
      __return_value
    end

    def label_widget=(label_widget)
      __return_value = LibGtk.frame_set_label_widget((to_unsafe as LibGtk::Frame*), label_widget && (label_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def shadow_type=(type)
      __return_value = LibGtk.frame_set_shadow_type((to_unsafe as LibGtk::Frame*), type)
      __return_value
    end

  end
end

