require "./bin"

module Gtk
  class Overlay < Bin
    def initialize(@gtk_overlay)
    end

    def to_unsafe
      @gtk_overlay.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.overlay_new
      Gtk::Widget.new(__return_value)
    end

    def add_overlay(widget)
      __return_value = LibGtk.overlay_add_overlay((to_unsafe as LibGtk::Overlay*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def overlay_pass_through(widget)
      __return_value = LibGtk.overlay_get_overlay_pass_through((to_unsafe as LibGtk::Overlay*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def reorder_overlay(child, position)
      __return_value = LibGtk.overlay_reorder_overlay((to_unsafe as LibGtk::Overlay*), (child.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def set_overlay_pass_through(widget, pass_through)
      __return_value = LibGtk.overlay_set_overlay_pass_through((to_unsafe as LibGtk::Overlay*), (widget.to_unsafe as LibGtk::Widget*), pass_through)
      __return_value
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

