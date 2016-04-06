require "./container"

module Gtk
  class Stack < Container
    def initialize(@gtk_stack)
    end

    def to_unsafe
      @gtk_stack.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable









    def self.new_internal
      __return_value = LibGtk.stack_new
      Gtk::Widget.new(__return_value)
    end

    def add_named(child, name)
      __return_value = LibGtk.stack_add_named((to_unsafe as LibGtk::Stack*), (child.to_unsafe as LibGtk::Widget*), name)
      __return_value
    end

    def add_titled(child, name, title)
      __return_value = LibGtk.stack_add_titled((to_unsafe as LibGtk::Stack*), (child.to_unsafe as LibGtk::Widget*), name, title)
      __return_value
    end

    def child_by_name(name)
      __return_value = LibGtk.stack_get_child_by_name((to_unsafe as LibGtk::Stack*), name)
      Gtk::Widget.new(__return_value)
    end

    def hhomogeneous
      __return_value = LibGtk.stack_get_hhomogeneous((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.stack_get_homogeneous((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def interpolate_size
      __return_value = LibGtk.stack_get_interpolate_size((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def transition_duration
      __return_value = LibGtk.stack_get_transition_duration((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def transition_running
      __return_value = LibGtk.stack_get_transition_running((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def transition_type
      __return_value = LibGtk.stack_get_transition_type((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def vhomogeneous
      __return_value = LibGtk.stack_get_vhomogeneous((to_unsafe as LibGtk::Stack*))
      __return_value
    end

    def visible_child
      __return_value = LibGtk.stack_get_visible_child((to_unsafe as LibGtk::Stack*))
      Gtk::Widget.new(__return_value)
    end

    def visible_child_name
      __return_value = LibGtk.stack_get_visible_child_name((to_unsafe as LibGtk::Stack*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def hhomogeneous=(hhomogeneous)
      __return_value = LibGtk.stack_set_hhomogeneous((to_unsafe as LibGtk::Stack*), hhomogeneous)
      __return_value
    end

    def homogeneous=(homogeneous)
      __return_value = LibGtk.stack_set_homogeneous((to_unsafe as LibGtk::Stack*), homogeneous)
      __return_value
    end

    def interpolate_size=(interpolate_size)
      __return_value = LibGtk.stack_set_interpolate_size((to_unsafe as LibGtk::Stack*), interpolate_size)
      __return_value
    end

    def transition_duration=(duration)
      __return_value = LibGtk.stack_set_transition_duration((to_unsafe as LibGtk::Stack*), UInt32.new(duration))
      __return_value
    end

    def transition_type=(transition)
      __return_value = LibGtk.stack_set_transition_type((to_unsafe as LibGtk::Stack*), transition)
      __return_value
    end

    def vhomogeneous=(vhomogeneous)
      __return_value = LibGtk.stack_set_vhomogeneous((to_unsafe as LibGtk::Stack*), vhomogeneous)
      __return_value
    end

    def visible_child=(child)
      __return_value = LibGtk.stack_set_visible_child((to_unsafe as LibGtk::Stack*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def set_visible_child_full(name, transition)
      __return_value = LibGtk.stack_set_visible_child_full((to_unsafe as LibGtk::Stack*), name, transition)
      __return_value
    end

    def visible_child_name=(name)
      __return_value = LibGtk.stack_set_visible_child_name((to_unsafe as LibGtk::Stack*), name)
      __return_value
    end

  end
end

