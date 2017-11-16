module Gdk
  class DragContext < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::DragContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::DragContext*)
    end

    def actions
      __return_value = LibGdk.drag_context_get_actions(@pointer.as(LibGdk::DragContext*))
      __return_value
    end

    def dest_window
      __return_value = LibGdk.drag_context_get_dest_window(@pointer.as(LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def device
      __return_value = LibGdk.drag_context_get_device(@pointer.as(LibGdk::DragContext*))
      Gdk::Device.new(__return_value)
    end

    def drag_window
      __return_value = LibGdk.drag_context_get_drag_window(@pointer.as(LibGdk::DragContext*))
      Gdk::Window.new(__return_value) if __return_value
    end

    def protocol
      __return_value = LibGdk.drag_context_get_protocol(@pointer.as(LibGdk::DragContext*))
      __return_value
    end

    def selected_action
      __return_value = LibGdk.drag_context_get_selected_action(@pointer.as(LibGdk::DragContext*))
      __return_value
    end

    def source_window
      __return_value = LibGdk.drag_context_get_source_window(@pointer.as(LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def suggested_action
      __return_value = LibGdk.drag_context_get_suggested_action(@pointer.as(LibGdk::DragContext*))
      __return_value
    end

    def list_targets
      __return_value = LibGdk.drag_context_list_targets(@pointer.as(LibGdk::DragContext*))
      GLib::ListIterator(Gdk::Atom, LibGdk::Atom**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def manage_dnd(ipc_window, actions : Gdk::DragAction)
      __return_value = LibGdk.drag_context_manage_dnd(@pointer.as(LibGdk::DragContext*), ipc_window.to_unsafe.as(LibGdk::Window*), actions)
      __return_value
    end

    def device=(device)
      LibGdk.drag_context_set_device(@pointer.as(LibGdk::DragContext*), device.to_unsafe.as(LibGdk::Device*))
      nil
    end

    def set_hotspot(hot_x, hot_y)
      LibGdk.drag_context_set_hotspot(@pointer.as(LibGdk::DragContext*), Int32.new(hot_x), Int32.new(hot_y))
      nil
    end

    alias ActionChangedSignal = DragContext, Gdk::DragAction ->
    def on_action_changed(&__block : ActionChangedSignal)
      __callback = ->(_arg0 : LibGdk::DragContext*, _arg1 : LibGdk::LibGdk::DragAction*) {
       __return_value = __block.call(DragContext.new(_arg0), _arg1)
       __return_value
      }
      connect("action-changed", __callback)
    end

    alias CancelSignal = DragContext, Gdk::DragCancelReason ->
    def on_cancel(&__block : CancelSignal)
      __callback = ->(_arg0 : LibGdk::DragContext*, _arg1 : LibGdk::LibGdk::DragCancelReason*) {
       __return_value = __block.call(DragContext.new(_arg0), _arg1)
       __return_value
      }
      connect("cancel", __callback)
    end

    alias DndFinishedSignal = DragContext ->
    def on_dnd_finished(&__block : DndFinishedSignal)
      __callback = ->(_arg0 : LibGdk::DragContext*) {
       __return_value = __block.call(DragContext.new(_arg0))
       __return_value
      }
      connect("dnd-finished", __callback)
    end

    alias DropPerformedSignal = DragContext, Int32 ->
    def on_drop_performed(&__block : DropPerformedSignal)
      __callback = ->(_arg0 : LibGdk::DragContext*, _arg1 : LibGdk::Int32*) {
       __return_value = __block.call(DragContext.new(_arg0), _arg1)
       __return_value
      }
      connect("drop-performed", __callback)
    end

  end
end

