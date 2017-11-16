require "./separator"

module Gtk
  class VSeparator < Separator
    @pointer : Void*
    def initialize(pointer : LibGtk::VSeparator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::VSeparator*)
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

