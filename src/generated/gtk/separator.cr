require "./widget"

module Gtk
  class Separator < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Separator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Separator*)
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

