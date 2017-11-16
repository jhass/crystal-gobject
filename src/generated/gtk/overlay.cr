require "./bin"

module Gtk
  class Overlay < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Overlay*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Overlay*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.overlay_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_overlay(widget)
      LibGtk.overlay_add_overlay(@pointer.as(LibGtk::Overlay*), widget.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def overlay_pass_through(widget)
      __return_value = LibGtk.overlay_get_overlay_pass_through(@pointer.as(LibGtk::Overlay*), widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def reorder_overlay(child, position)
      LibGtk.overlay_reorder_overlay(@pointer.as(LibGtk::Overlay*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      nil
    end

    def set_overlay_pass_through(widget, pass_through)
      LibGtk.overlay_set_overlay_pass_through(@pointer.as(LibGtk::Overlay*), widget.to_unsafe.as(LibGtk::Widget*), pass_through)
      nil
    end

    alias GetChildPositionSignal = Overlay, Gtk::Widget, Gdk::Rectangle -> Bool
    def on_get_child_position(&__block : GetChildPositionSignal)
      __callback = ->(_arg0 : LibGtk::Overlay*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::LibGdk::Rectangle*) {
       __return_value = __block.call(Overlay.new(_arg0), Gtk::Widget.new(_arg1), Gdk::Rectangle.new(_arg2))
       __return_value
      }
      connect("get-child-position", __callback)
    end

  end
end

