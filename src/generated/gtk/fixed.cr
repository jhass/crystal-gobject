require "./container"

module Gtk
  class Fixed < Container
    @gtk_fixed : LibGtk::Fixed*?
    def initialize(@gtk_fixed : LibGtk::Fixed*)
    end

    def to_unsafe
      @gtk_fixed.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.fixed_new
      cast Gtk::Widget.new(__return_value)
    end

    def move(widget, x, y)
      LibGtk.fixed_move(to_unsafe.as(LibGtk::Fixed*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

    def put(widget, x, y)
      LibGtk.fixed_put(to_unsafe.as(LibGtk::Fixed*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

  end
end

