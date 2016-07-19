require "./box"

module Gtk
  class ButtonBox < Box
    @gtk_button_box : LibGtk::ButtonBox*?
    def initialize(@gtk_button_box : LibGtk::ButtonBox*)
    end

    def to_unsafe
      @gtk_button_box.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable

    def self.new(orientation : Gtk::Orientation) : self
      __return_value = LibGtk.button_box_new(orientation)
      cast Gtk::Widget.new(__return_value)
    end

    def child_non_homogeneous(child)
      __return_value = LibGtk.button_box_get_child_non_homogeneous(to_unsafe.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def child_secondary(child)
      __return_value = LibGtk.button_box_get_child_secondary(to_unsafe.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def layout
      __return_value = LibGtk.button_box_get_layout(to_unsafe.as(LibGtk::ButtonBox*))
      __return_value
    end

    def set_child_non_homogeneous(child, non_homogeneous)
      __return_value = LibGtk.button_box_set_child_non_homogeneous(to_unsafe.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*), non_homogeneous)
      __return_value
    end

    def set_child_secondary(child, is_secondary)
      __return_value = LibGtk.button_box_set_child_secondary(to_unsafe.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*), is_secondary)
      __return_value
    end

    def layout=(layout_style : Gtk::ButtonBoxStyle)
      __return_value = LibGtk.button_box_set_layout(to_unsafe.as(LibGtk::ButtonBox*), layout_style)
      __return_value
    end

  end
end

