require "./paned"

module Gtk
  class HPaned < Paned
    @pointer : Void*
    def initialize(pointer : LibGtk::HPaned*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HPaned*)
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

