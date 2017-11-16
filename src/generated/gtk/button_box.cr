require "./box"

module Gtk
  class ButtonBox < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ButtonBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ButtonBox*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def layout_style
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "layout_style", gvalue)
      gvalue.enum
    end

    def self.new(orientation : Gtk::Orientation) : self
      __return_value = LibGtk.button_box_new(orientation)
      cast Gtk::Widget.new(__return_value)
    end

    def child_non_homogeneous(child)
      __return_value = LibGtk.button_box_get_child_non_homogeneous(@pointer.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def child_secondary(child)
      __return_value = LibGtk.button_box_get_child_secondary(@pointer.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def layout
      __return_value = LibGtk.button_box_get_layout(@pointer.as(LibGtk::ButtonBox*))
      __return_value
    end

    def set_child_non_homogeneous(child, non_homogeneous)
      LibGtk.button_box_set_child_non_homogeneous(@pointer.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*), non_homogeneous)
      nil
    end

    def set_child_secondary(child, is_secondary)
      LibGtk.button_box_set_child_secondary(@pointer.as(LibGtk::ButtonBox*), child.to_unsafe.as(LibGtk::Widget*), is_secondary)
      nil
    end

    def layout=(layout_style : Gtk::ButtonBoxStyle)
      LibGtk.button_box_set_layout(@pointer.as(LibGtk::ButtonBox*), layout_style)
      nil
    end

  end
end

