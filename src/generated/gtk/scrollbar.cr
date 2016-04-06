require "./range"

module Gtk
  class Scrollbar < Range
    def initialize(@gtk_scrollbar)
    end

    def to_unsafe
      @gtk_scrollbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(orientation, adjustment)
      __return_value = LibGtk.scrollbar_new(orientation, adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

  end
end

