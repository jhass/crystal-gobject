require "./container"

module Gtk
  class Paned < Container
    def initialize(@gtk_paned)
    end

    def to_unsafe
      @gtk_paned.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable





    def self.new_internal(orientation)
      __return_value = LibGtk.paned_new(orientation)
      Gtk::Widget.new(__return_value)
    end

    def add1(child)
      __return_value = LibGtk.paned_add1((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def add2(child)
      __return_value = LibGtk.paned_add2((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def child1
      __return_value = LibGtk.paned_get_child1((to_unsafe as LibGtk::Paned*))
      Gtk::Widget.new(__return_value)
    end

    def child2
      __return_value = LibGtk.paned_get_child2((to_unsafe as LibGtk::Paned*))
      Gtk::Widget.new(__return_value)
    end

    def handle_window
      __return_value = LibGtk.paned_get_handle_window((to_unsafe as LibGtk::Paned*))
      Gdk::Window.new(__return_value)
    end

    def position
      __return_value = LibGtk.paned_get_position((to_unsafe as LibGtk::Paned*))
      __return_value
    end

    def wide_handle
      __return_value = LibGtk.paned_get_wide_handle((to_unsafe as LibGtk::Paned*))
      __return_value
    end

    def pack1(child, resize, shrink)
      __return_value = LibGtk.paned_pack1((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*), resize, shrink)
      __return_value
    end

    def pack2(child, resize, shrink)
      __return_value = LibGtk.paned_pack2((to_unsafe as LibGtk::Paned*), (child.to_unsafe as LibGtk::Widget*), resize, shrink)
      __return_value
    end

    def position=(position)
      __return_value = LibGtk.paned_set_position((to_unsafe as LibGtk::Paned*), Int32.new(position))
      __return_value
    end

    def wide_handle=(wide)
      __return_value = LibGtk.paned_set_wide_handle((to_unsafe as LibGtk::Paned*), wide)
      __return_value
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

