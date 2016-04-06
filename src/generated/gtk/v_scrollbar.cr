require "./scrollbar"

module Gtk
  class VScrollbar < Scrollbar
    def initialize(@gtk_v_scrollbar)
    end

    def to_unsafe
      @gtk_v_scrollbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(adjustment)
      __return_value = LibGtk.v_scrollbar_new(adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

  end
end

