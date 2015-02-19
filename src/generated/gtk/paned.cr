require "./container"

module Gtk
  class Paned < Container
    def initialize @gtk_paned
    end

    def to_unsafe
      @gtk_paned.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable


    def position=(__value)
      LibGtk.paned_set_position((to_unsafe as LibGtk::Paned*), Int32.cast(__value))
    end

    def position_set=(__value)
      LibGtk.paned_set_position_set((to_unsafe as LibGtk::Paned*), Bool.cast(__value))
    end

    def self.new_internal(orientation)
      __return_value = LibGtk.paned_new(orientation)
      Gtk::Widget.new(__return_value)
    end

    def add1(child)
      __return_value = LibGtk.paned_add1((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def add2(child)
      __return_value = LibGtk.paned_add2((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def child1
      __return_value = LibGtk.paned_get_child1((to_unsafe as LibGtk::Paned*))
      Gtk::Widget.new(__return_value)
    end

    def child2
      __return_value = LibGtk.paned_get_child2((to_unsafe as LibGtk::Paned*))
      Gtk::Widget.new(__return_value)
    end

    def handle_window
      __return_value = LibGtk.paned_get_handle_window((to_unsafe as LibGtk::Paned*))
      Gdk::Window.new(__return_value)
    end

    def position
      __return_value = LibGtk.paned_get_position((to_unsafe as LibGtk::Paned*))
      __return_value
    end

    def pack1(child, resize, shrink)
      __return_value = LibGtk.paned_pack1((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*), Bool.cast(resize), Bool.cast(shrink))
      __return_value
    end

    def pack2(child, resize, shrink)
      __return_value = LibGtk.paned_pack2((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*), Bool.cast(resize), Bool.cast(shrink))
      __return_value
    end

    def position=(position)
      __return_value = LibGtk.paned_set_position((to_unsafe as LibGtk::Paned*), Int32.cast(position))
      __return_value
    end

  end
end

