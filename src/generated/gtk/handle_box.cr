require "./bin"

module Gtk
  class HandleBox < Bin
    def initialize(@gtk_handle_box)
    end

    def to_unsafe
      @gtk_handle_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable





    def self.new_internal
      __return_value = LibGtk.handle_box_new
      Gtk::Widget.new(__return_value)
    end

    def child_detached
      __return_value = LibGtk.handle_box_get_child_detached((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def handle_position
      __return_value = LibGtk.handle_box_get_handle_position((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.handle_box_get_shadow_type((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def snap_edge
      __return_value = LibGtk.handle_box_get_snap_edge((to_unsafe as LibGtk::HandleBox*))
      __return_value
    end

    def handle_position=(position)
      __return_value = LibGtk.handle_box_set_handle_position((to_unsafe as LibGtk::HandleBox*), position)
      __return_value
    end

    def shadow_type=(type)
      __return_value = LibGtk.handle_box_set_shadow_type((to_unsafe as LibGtk::HandleBox*), type)
      __return_value
    end

    def snap_edge=(edge)
      __return_value = LibGtk.handle_box_set_snap_edge((to_unsafe as LibGtk::HandleBox*), edge)
      __return_value
    end

    alias ChildAttachedSignal = HandleBox, Gtk::Widget -> 
    def on_child_attached(&__block : ChildAttachedSignal)
      __callback = ->(_arg0 : LibGtk::HandleBox*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(HandleBox.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("child-attached", __callback)
    end

    alias ChildDetachedSignal = HandleBox, Gtk::Widget -> 
    def on_child_detached(&__block : ChildDetachedSignal)
      __callback = ->(_arg0 : LibGtk::HandleBox*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(HandleBox.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("child-detached", __callback)
    end

  end
end

