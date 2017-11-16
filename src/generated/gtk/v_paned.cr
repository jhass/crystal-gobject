require "./paned"

module Gtk
  class VPaned < Paned
    @pointer : Void*
    def initialize(pointer : LibGtk::VPaned*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::VPaned*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new : self
      __return_value = LibGtk.v_paned_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

