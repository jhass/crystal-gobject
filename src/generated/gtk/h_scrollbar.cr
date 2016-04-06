require "./scrollbar"

module Gtk
  class HScrollbar < Scrollbar
    def initialize(@gtk_h_scrollbar)
    end

    def to_unsafe
      @gtk_h_scrollbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(adjustment)
      __return_value = LibGtk.h_scrollbar_new(adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

  end
end

