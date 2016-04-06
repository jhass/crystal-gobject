require "./separator"

module Gtk
  class HSeparator < Separator
    def initialize(@gtk_h_separator)
    end

    def to_unsafe
      @gtk_h_separator.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal
      __return_value = LibGtk.h_separator_new
      Gtk::Widget.new(__return_value)
    end

  end
end

