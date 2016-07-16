require "./widget"

module Gtk
  class DrawingArea < Widget
    @gtk_drawing_area : LibGtk::DrawingArea*?
    def initialize(@gtk_drawing_area : LibGtk::DrawingArea*)
    end

    def to_unsafe
      @gtk_drawing_area.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.drawing_area_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

