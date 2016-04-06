require "./widget"

module Gtk
  class Separator < Widget
    def initialize(@gtk_separator)
    end

    def to_unsafe
      @gtk_separator.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(orientation)
      __return_value = LibGtk.separator_new(orientation)
      Gtk::Widget.new(__return_value)
    end

  end
end

