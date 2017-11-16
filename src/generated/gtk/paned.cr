require "./container"

module Gtk
  class Paned < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Paned*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Paned*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def max_position
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_position", gvalue)
      gvalue
    end

    def min_position
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "min_position", gvalue)
      gvalue
    end

    def position
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "position", gvalue)
      gvalue
    end

    def position_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "position_set", gvalue)
      gvalue.boolean
    end

    def wide_handle
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wide_handle", gvalue)
      gvalue.boolean
    end

    def self.new(orientation : Gtk::Orientation) : self
      __return_value = LibGtk.paned_new(orientation)
      cast Gtk::Widget.new(__return_value)
    end

    def add1(child)
      LibGtk.paned_add1(@pointer.as(LibGtk::Paned*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def add2(child)
      LibGtk.paned_add2(@pointer.as(LibGtk::Paned*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def child1
      __return_value = LibGtk.paned_get_child1(@pointer.as(LibGtk::Paned*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def child2
      __return_value = LibGtk.paned_get_child2(@pointer.as(LibGtk::Paned*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def handle_window
      __return_value = LibGtk.paned_get_handle_window(@pointer.as(LibGtk::Paned*))
      Gdk::Window.new(__return_value)
    end

    def position
      __return_value = LibGtk.paned_get_position(@pointer.as(LibGtk::Paned*))
      __return_value
    end

    def wide_handle
      __return_value = LibGtk.paned_get_wide_handle(@pointer.as(LibGtk::Paned*))
      __return_value
    end

    def pack1(child, resize, shrink)
      LibGtk.paned_pack1(@pointer.as(LibGtk::Paned*), child.to_unsafe.as(LibGtk::Widget*), resize, shrink)
      nil
    end

    def pack2(child, resize, shrink)
      LibGtk.paned_pack2(@pointer.as(LibGtk::Paned*), child.to_unsafe.as(LibGtk::Widget*), resize, shrink)
      nil
    end

    def position=(position)
      LibGtk.paned_set_position(@pointer.as(LibGtk::Paned*), Int32.new(position))
      nil
    end

    def wide_handle=(wide)
      LibGtk.paned_set_wide_handle(@pointer.as(LibGtk::Paned*), wide)
      nil
    end

    alias AcceptPositionSignal = Paned -> Bool
    def on_accept_position(&__block : AcceptPositionSignal)
      __callback = ->(_arg0 : LibGtk::Paned*) {
       __return_value = __block.call(Paned.new(_arg0))
       __return_value
      }
      connect("accept-position", __callback)
    end

    alias CancelPositionSignal = Paned -> Bool
    def on_cancel_position(&__block : CancelPositionSignal)
      __callback = ->(_arg0 : LibGtk::Paned*) {
       __return_value = __block.call(Paned.new(_arg0))
       __return_value
      }
      connect("cancel-position", __callback)
    end

    alias CycleChildFocusSignal = Paned, Bool -> Bool
    def on_cycle_child_focus(&__block : CycleChildFocusSignal)
      __callback = ->(_arg0 : LibGtk::Paned*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Paned.new(_arg0), _arg1)
       __return_value
      }
      connect("cycle-child-focus", __callback)
    end

    alias CycleHandleFocusSignal = Paned, Bool -> Bool
    def on_cycle_handle_focus(&__block : CycleHandleFocusSignal)
      __callback = ->(_arg0 : LibGtk::Paned*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Paned.new(_arg0), _arg1)
       __return_value
      }
      connect("cycle-handle-focus", __callback)
    end

    alias MoveHandleSignal = Paned, Gtk::ScrollType -> Bool
    def on_move_handle(&__block : MoveHandleSignal)
      __callback = ->(_arg0 : LibGtk::Paned*, _arg1 : LibGtk::LibGtk::ScrollType*) {
       __return_value = __block.call(Paned.new(_arg0), _arg1)
       __return_value
      }
      connect("move-handle", __callback)
    end

    alias ToggleHandleFocusSignal = Paned -> Bool
    def on_toggle_handle_focus(&__block : ToggleHandleFocusSignal)
      __callback = ->(_arg0 : LibGtk::Paned*) {
       __return_value = __block.call(Paned.new(_arg0))
       __return_value
      }
      connect("toggle-handle-focus", __callback)
    end

  end
end

