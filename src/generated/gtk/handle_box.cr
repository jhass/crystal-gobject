require "./bin"

module Gtk
  class HandleBox < Bin
    def initialize @gtk_handle_box
    end

    def to_unsafe
      @gtk_handle_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

    def handle_position=(__value)
      LibGtk.handle_box_set_handle_position((to_unsafe as LibGtk::HandleBox*), __value)
    end

    def shadow_type=(__value)
      LibGtk.handle_box_set_shadow_type((to_unsafe as LibGtk::HandleBox*), __value)
    end

    def snap_edge=(__value)
      LibGtk.handle_box_set_snap_edge((to_unsafe as LibGtk::HandleBox*), __value)
    end

    def snap_edge_set=(__value)
      LibGtk.handle_box_set_snap_edge_set((to_unsafe as LibGtk::HandleBox*), Bool.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.handle_box_new
      Gtk::Widget.new(__return_value)
    end

    def child_detached
      __return_value = LibGtk.handle_box_get_child_detached((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def handle_position
      __return_value = LibGtk.handle_box_get_handle_position((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.handle_box_get_shadow_type((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def snap_edge
      __return_value = LibGtk.handle_box_get_snap_edge((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def handle_position=(position)
      __return_value = LibGtk.handle_box_set_handle_position((to_unsafe as LibGtk::HandleBox*), position)
      __return_value
    end

    def shadow_type=(type)
      __return_value = LibGtk.handle_box_set_shadow_type((to_unsafe as LibGtk::HandleBox*), type)
      __return_value
    end

    def snap_edge=(edge)
      __return_value = LibGtk.handle_box_set_snap_edge((to_unsafe as LibGtk::HandleBox*), edge)
      __return_value
    end

  end
end

