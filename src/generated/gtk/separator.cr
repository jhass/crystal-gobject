require "./widget"

module Gtk
  class Separator < Widget
    @gtk_separator : LibGtk::Separator*?
    def initialize(@gtk_separator : LibGtk::Separator*)
    end

    def to_unsafe
      @gtk_separator.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(orientation : Gtk::Orientation) : self
      __return_value = LibGtk.separator_new(orientation)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

