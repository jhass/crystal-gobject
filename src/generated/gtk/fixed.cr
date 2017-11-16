require "./container"

module Gtk
  class Fixed < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Fixed*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Fixed*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.fixed_new
      cast Gtk::Widget.new(__return_value)
    end

    def move(widget, x, y)
      LibGtk.fixed_move(@pointer.as(LibGtk::Fixed*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

    def put(widget, x, y)
      LibGtk.fixed_put(@pointer.as(LibGtk::Fixed*), widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

  end
end

