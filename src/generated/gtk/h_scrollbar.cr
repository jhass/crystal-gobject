require "./scrollbar"

module Gtk
  class HScrollbar < Scrollbar
    @pointer : Void*
    def initialize(pointer : LibGtk::HScrollbar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HScrollbar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(adjustment) : self
      __return_value = LibGtk.h_scrollbar_new(adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

