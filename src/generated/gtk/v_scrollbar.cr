require "./scrollbar"

module Gtk
  class VScrollbar < Scrollbar
    @pointer : Void*
    def initialize(pointer : LibGtk::VScrollbar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::VScrollbar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(adjustment) : self
      __return_value = LibGtk.v_scrollbar_new(adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

