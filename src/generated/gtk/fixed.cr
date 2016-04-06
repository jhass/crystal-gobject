require "./container"

module Gtk
  class Fixed < Container
    def initialize(@gtk_fixed)
    end

    def to_unsafe
      @gtk_fixed.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.fixed_new
      Gtk::Widget.new(__return_value)
    end

    def move(widget, x, y)
      __return_value = LibGtk.fixed_move((to_unsafe as LibGtk::Fixed*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def put(widget, x, y)
      __return_value = LibGtk.fixed_put((to_unsafe as LibGtk::Fixed*), (widget.to_unsafe as LibGtk::Widget*), Int32.new(x), Int32.new(y))
      __return_value
    end

  end
end

