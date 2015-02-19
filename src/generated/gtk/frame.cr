require "./bin"

module Gtk
  class Frame < Bin
    def initialize @gtk_frame
    end

    def to_unsafe
      @gtk_frame.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def label=(__value)
      LibGtk.frame_set_label((to_unsafe as LibGtk::Frame*), __value)
    end

    def label_widget=(__value)
      LibGtk.frame_set_label_widget((to_unsafe as LibGtk::Frame*), __value)
    end

    def label_xalign=(__value)
      LibGtk.frame_set_label_xalign((to_unsafe as LibGtk::Frame*), Float32.cast(__value))
    end

    def label_yalign=(__value)
      LibGtk.frame_set_label_yalign((to_unsafe as LibGtk::Frame*), Float32.cast(__value))
    end

    def shadow_type=(__value)
      LibGtk.frame_set_shadow_type((to_unsafe as LibGtk::Frame*), __value)
    end

    def self.new_internal(label)
      __return_value = LibGtk.frame_new(label)
      Gtk::Widget.new(__return_value)
    end

    def label
      __return_value = LibGtk.frame_get_label((to_unsafe as LibGtk::Frame*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def label_align(xalign, yalign)
      __return_value = LibGtk.frame_get_label_align((to_unsafe as LibGtk::Frame*), Float32.cast(xalign), Float32.cast(yalign))
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
      __return_value = LibGtk.frame_set_label((to_unsafe as LibGtk::Frame*), label)
      __return_value
    end

    def label_align=(xalign, yalign)
      __return_value = LibGtk.frame_set_label_align((to_unsafe as LibGtk::Frame*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def label_widget=(label_widget)
      __return_value = LibGtk.frame_set_label_widget((to_unsafe as LibGtk::Frame*), (label_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def shadow_type=(type)
      __return_value = LibGtk.frame_set_shadow_type((to_unsafe as LibGtk::Frame*), type)
      __return_value
    end

  end
end

