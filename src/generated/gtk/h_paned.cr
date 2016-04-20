require "./paned"

module Gtk
  class HPaned < Paned
    @gtk_h_paned : LibGtk::HPaned*?
    def initialize(@gtk_h_paned : LibGtk::HPaned*)
    end

    def to_unsafe
      @gtk_h_paned.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new
      __return_value = LibGtk.h_paned_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

