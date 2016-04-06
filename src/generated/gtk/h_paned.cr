require "./paned"

module Gtk
  class HPaned < Paned
    def initialize(@gtk_h_paned)
    end

    def to_unsafe
      @gtk_h_paned.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal
      __return_value = LibGtk.h_paned_new
      Gtk::Widget.new(__return_value)
    end

  end
end

