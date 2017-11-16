require "./separator"

module Gtk
  class HSeparator < Separator
    @pointer : Void*
    def initialize(pointer : LibGtk::HSeparator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HSeparator*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new : self
      __return_value = LibGtk.h_separator_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

