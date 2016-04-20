require "./separator"

module Gtk
  class HSeparator < Separator
    @gtk_h_separator : LibGtk::HSeparator*?
    def initialize(@gtk_h_separator : LibGtk::HSeparator*)
    end

    def to_unsafe
      @gtk_h_separator.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new
      __return_value = LibGtk.h_separator_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

