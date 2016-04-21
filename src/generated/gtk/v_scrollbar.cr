require "./scrollbar"

module Gtk
  class VScrollbar < Scrollbar
    @gtk_v_scrollbar : LibGtk::VScrollbar*?
    def initialize(@gtk_v_scrollbar : LibGtk::VScrollbar*)
    end

    def to_unsafe
      @gtk_v_scrollbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(adjustment) : self
      __return_value = LibGtk.v_scrollbar_new(adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

