require "./separator"

module Gtk
  class VSeparator < Separator
    @gtk_v_separator : LibGtk::VSeparator*?
    def initialize(@gtk_v_separator : LibGtk::VSeparator*)
    end

    def to_unsafe
      @gtk_v_separator.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new : self
      __return_value = LibGtk.v_separator_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

