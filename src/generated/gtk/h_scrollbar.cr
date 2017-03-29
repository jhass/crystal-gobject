require "./scrollbar"

module Gtk
  class HScrollbar < Scrollbar
    @gtk_h_scrollbar : LibGtk::HScrollbar*?
    def initialize(@gtk_h_scrollbar : LibGtk::HScrollbar*)
    end

    def to_unsafe
      @gtk_h_scrollbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(adjustment) : self
      __return_value = LibGtk.h_scrollbar_new(adjustment && adjustment.to_unsafe.as(LibGtk::Adjustment*))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

