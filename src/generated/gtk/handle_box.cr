require "./bin"

module Gtk
  class HandleBox < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::HandleBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HandleBox*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child_detached
      __return_value = LibGtk.handle_box_get_child_detached(to_unsafe.as(LibGtk::HandleBox*))
      __return_value
    end

    def handle_position
      __return_value = LibGtk.handle_box_get_handle_position(to_unsafe.as(LibGtk::HandleBox*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.handle_box_get_shadow_type(to_unsafe.as(LibGtk::HandleBox*))
      __return_value
    end

    def snap_edge
      __return_value = LibGtk.handle_box_get_snap_edge(to_unsafe.as(LibGtk::HandleBox*))
      __return_value
    end

    def snap_edge_set
      __return_value = LibGtk.handle_box_get_snap_edge_set(to_unsafe.as(LibGtk::HandleBox*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.handle_box_new
      cast Gtk::Widget.new(__return_value)
    end

    def child_detached
      __return_value = LibGtk.handle_box_get_child_detached(@pointer.as(LibGtk::HandleBox*))
      __return_value
    end

    def handle_position
      __return_value = LibGtk.handle_box_get_handle_position(@pointer.as(LibGtk::HandleBox*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.handle_box_get_shadow_type(@pointer.as(LibGtk::HandleBox*))
      __return_value
    end

    def snap_edge
      __return_value = LibGtk.handle_box_get_snap_edge(@pointer.as(LibGtk::HandleBox*))
      __return_value
    end

    def handle_position=(position : Gtk::PositionType)
      LibGtk.handle_box_set_handle_position(@pointer.as(LibGtk::HandleBox*), position)
      nil
    end

    def shadow_type=(type : Gtk::ShadowType)
      LibGtk.handle_box_set_shadow_type(@pointer.as(LibGtk::HandleBox*), type)
      nil
    end

    def snap_edge=(edge : Gtk::PositionType)
      LibGtk.handle_box_set_snap_edge(@pointer.as(LibGtk::HandleBox*), edge)
      nil
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

