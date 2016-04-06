require "./container"

module Gtk
  class Box < Container
    def initialize(@gtk_box)
    end

    def to_unsafe
      @gtk_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable



    def self.new_internal(orientation, spacing)
      __return_value = LibGtk.box_new(orientation, Int32.new(spacing))
      Gtk::Widget.new(__return_value)
    end

    def baseline_position
      __return_value = LibGtk.box_get_baseline_position((to_unsafe as LibGtk::Box*))
      __return_value
    end

    def center_widget
      __return_value = LibGtk.box_get_center_widget((to_unsafe as LibGtk::Box*))
      Gtk::Widget.new(__return_value)
    end

    def homogeneous
      __return_value = LibGtk.box_get_homogeneous((to_unsafe as LibGtk::Box*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.box_get_spacing((to_unsafe as LibGtk::Box*))
      __return_value
    end

    def pack_end(child, expand, fill, padding)
      __return_value = LibGtk.box_pack_end((to_unsafe as LibGtk::Box*), (child.to_unsafe as LibGtk::Widget*), expand, fill, UInt32.new(padding))
      __return_value
    end

    def pack_start(child, expand, fill, padding)
      __return_value = LibGtk.box_pack_start((to_unsafe as LibGtk::Box*), (child.to_unsafe as LibGtk::Widget*), expand, fill, UInt32.new(padding))
      __return_value
    end

    def query_child_packing(child, expand, fill, padding, pack_type)
      __return_value = LibGtk.box_query_child_packing((to_unsafe as LibGtk::Box*), (child.to_unsafe as LibGtk::Widget*), expand, fill, UInt32.new(padding), pack_type)
      __return_value
    end

    def reorder_child(child, position)
      __return_value = LibGtk.box_reorder_child((to_unsafe as LibGtk::Box*), (child.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def baseline_position=(position)
      __return_value = LibGtk.box_set_baseline_position((to_unsafe as LibGtk::Box*), position)
      __return_value
    end

    def center_widget=(widget)
      __return_value = LibGtk.box_set_center_widget((to_unsafe as LibGtk::Box*), widget && (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def set_child_packing(child, expand, fill, padding, pack_type)
      __return_value = LibGtk.box_set_child_packing((to_unsafe as LibGtk::Box*), (child.to_unsafe as LibGtk::Widget*), expand, fill, UInt32.new(padding), pack_type)
      __return_value
    end

    def homogeneous=(homogeneous)
      __return_value = LibGtk.box_set_homogeneous((to_unsafe as LibGtk::Box*), homogeneous)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibGtk.box_set_spacing((to_unsafe as LibGtk::Box*), Int32.new(spacing))
      __return_value
    end

  end
end

