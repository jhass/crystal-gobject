require "./widget"

module Gtk
  class DrawingArea < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::DrawingArea*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::DrawingArea*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.drawing_area_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

