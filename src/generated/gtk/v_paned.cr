require "./paned"

module Gtk
  class VPaned < Paned
    def initialize(@gtk_v_paned)
    end

    def to_unsafe
      @gtk_v_paned.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal
      __return_value = LibGtk.v_paned_new
      Gtk::Widget.new(__return_value)
    end

  end
end

