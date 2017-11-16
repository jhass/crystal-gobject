require "./bin"

module Gtk
  class Frame < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Frame*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Frame*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def label
      __return_value = LibGtk.frame_get_label(to_unsafe.as(LibGtk::Frame*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def label_widget
      __return_value = LibGtk.frame_get_label_widget(to_unsafe.as(LibGtk::Frame*))
      Gtk::Widget.new(__return_value)
    end

    def label_xalign
      __return_value = LibGtk.frame_get_label_xalign(to_unsafe.as(LibGtk::Frame*))
      __return_value
    end

    def label_yalign
      __return_value = LibGtk.frame_get_label_yalign(to_unsafe.as(LibGtk::Frame*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.frame_get_shadow_type(to_unsafe.as(LibGtk::Frame*))
      __return_value
    end

    def self.new(label) : self
      __return_value = LibGtk.frame_new(label ? label.to_unsafe : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def label
      __return_value = LibGtk.frame_get_label(@pointer.as(LibGtk::Frame*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def label_align(xalign, yalign)
      LibGtk.frame_get_label_align(@pointer.as(LibGtk::Frame*), xalign, yalign)
      nil
    end

    def label_widget
      __return_value = LibGtk.frame_get_label_widget(@pointer.as(LibGtk::Frame*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def shadow_type
      __return_value = LibGtk.frame_get_shadow_type(@pointer.as(LibGtk::Frame*))
      __return_value
    end

    def label=(label)
      LibGtk.frame_set_label(@pointer.as(LibGtk::Frame*), label ? label.to_unsafe : nil)
      nil
    end

    def set_label_align(xalign, yalign)
      LibGtk.frame_set_label_align(@pointer.as(LibGtk::Frame*), Float32.new(xalign), Float32.new(yalign))
      nil
    end

    def label_widget=(label_widget)
      LibGtk.frame_set_label_widget(@pointer.as(LibGtk::Frame*), label_widget ? label_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def shadow_type=(type : Gtk::ShadowType)
      LibGtk.frame_set_shadow_type(@pointer.as(LibGtk::Frame*), type)
      nil
    end

  end
end

