require "./paned"

module Gtk
  class HPaned < Paned
    @gtk_h_paned : LibGtk::HPaned*?
    def initialize(@gtk_h_paned : LibGtk::HPaned*)
    end

    def to_unsafe
      @gtk_h_paned.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new : self
      __return_value = LibGtk.h_paned_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

