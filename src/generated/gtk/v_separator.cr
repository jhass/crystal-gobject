require "./separator"

module Gtk
  class VSeparator < Separator
    def initialize(@gtk_v_separator)
    end

    def to_unsafe
      @gtk_v_separator.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new
      __return_value = LibGtk.v_separator_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

