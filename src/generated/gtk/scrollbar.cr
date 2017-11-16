require "./range"

module Gtk
  class Scrollbar < Range
    @pointer : Void*
    def initialize(pointer : LibGtk::Scrollbar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Scrollbar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(orientation : Gtk::Orientation, adjustment) : self
      __return_value = LibGtk.scrollbar_new(orientation, adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

