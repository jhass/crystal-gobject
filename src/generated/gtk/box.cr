require "./container"

module Gtk
  class Box < Container
    @gtk_box : LibGtk::Box*?
    def initialize(@gtk_box : LibGtk::Box*)
    end

    def to_unsafe
      @gtk_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def baseline_position
      __return_value = LibGtk.box_get_baseline_position(to_unsafe.as(LibGtk::Box*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.box_get_homogeneous(to_unsafe.as(LibGtk::Box*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.box_get_spacing(to_unsafe.as(LibGtk::Box*))
      __return_value
    end

    def self.new(orientation : Gtk::Orientation, spacing) : self
      __return_value = LibGtk.box_new(orientation, Int32.new(spacing))
      cast Gtk::Widget.new(__return_value)
    end

    def baseline_position
      __return_value = LibGtk.box_get_baseline_position(to_unsafe.as(LibGtk::Box*))
      __return_value
    end

    def center_widget
      __return_value = LibGtk.box_get_center_widget(to_unsafe.as(LibGtk::Box*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def homogeneous
      __return_value = LibGtk.box_get_homogeneous(to_unsafe.as(LibGtk::Box*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.box_get_spacing(to_unsafe.as(LibGtk::Box*))
      __return_value
    end

    def pack_end(child, expand, fill, padding)
      LibGtk.box_pack_end(to_unsafe.as(LibGtk::Box*), child.to_unsafe.as(LibGtk::Widget*), expand, fill, UInt32.new(padding))
      nil
    end

    def pack_start(child, expand, fill, padding)
      LibGtk.box_pack_start(to_unsafe.as(LibGtk::Box*), child.to_unsafe.as(LibGtk::Widget*), expand, fill, UInt32.new(padding))
      nil
    end

    def query_child_packing(child, expand, fill, padding, pack_type : Gtk::PackType)
      LibGtk.box_query_child_packing(to_unsafe.as(LibGtk::Box*), child.to_unsafe.as(LibGtk::Widget*), expand, fill, padding, pack_type)
      nil
    end

    def reorder_child(child, position)
      LibGtk.box_reorder_child(to_unsafe.as(LibGtk::Box*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      nil
    end

    def baseline_position=(position : Gtk::BaselinePosition)
      LibGtk.box_set_baseline_position(to_unsafe.as(LibGtk::Box*), position)
      nil
    end

    def center_widget=(widget)
      LibGtk.box_set_center_widget(to_unsafe.as(LibGtk::Box*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def set_child_packing(child, expand, fill, padding, pack_type : Gtk::PackType)
      LibGtk.box_set_child_packing(to_unsafe.as(LibGtk::Box*), child.to_unsafe.as(LibGtk::Widget*), expand, fill, UInt32.new(padding), pack_type)
      nil
    end

    def homogeneous=(homogeneous)
      LibGtk.box_set_homogeneous(to_unsafe.as(LibGtk::Box*), homogeneous)
      nil
    end

    def spacing=(spacing)
      LibGtk.box_set_spacing(to_unsafe.as(LibGtk::Box*), Int32.new(spacing))
      nil
    end

  end
end

