require "./range"

module Gtk
  class Scrollbar < Range
    @gtk_scrollbar : LibGtk::Scrollbar*?
    def initialize(@gtk_scrollbar : LibGtk::Scrollbar*)
    end

    def to_unsafe
      @gtk_scrollbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(orientation : Gtk::Orientation, adjustment) : self
      __return_value = LibGtk.scrollbar_new(orientation, adjustment && adjustment.to_unsafe.as(LibGtk::Adjustment*))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

