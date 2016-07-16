module Gdk
  class DragContext < GObject::Object
    @gdk_drag_context : LibGdk::DragContext*?
    def initialize(@gdk_drag_context : LibGdk::DragContext*)
    end

    def to_unsafe
      @gdk_drag_context.not_nil!.as(Void*)
    end

    def actions
      __return_value = LibGdk.drag_context_get_actions(to_unsafe.as(LibGdk::DragContext*))
      __return_value
    end

    def dest_window
      __return_value = LibGdk.drag_context_get_dest_window(to_unsafe.as(LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def device
      __return_value = LibGdk.drag_context_get_device(to_unsafe.as(LibGdk::DragContext*))
      Gdk::Device.new(__return_value)
    end

    def drag_window
      __return_value = LibGdk.drag_context_get_drag_window(to_unsafe.as(LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def protocol
      __return_value = LibGdk.drag_context_get_protocol(to_unsafe.as(LibGdk::DragContext*))
      __return_value
    end

    def selected_action
      __return_value = LibGdk.drag_context_get_selected_action(to_unsafe.as(LibGdk::DragContext*))
      __return_value
    end

    def source_window
      __return_value = LibGdk.drag_context_get_source_window(to_unsafe.as(LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def suggested_action
      __return_value = LibGdk.drag_context_get_suggested_action(to_unsafe.as(LibGdk::DragContext*))
      __return_value
    end

    def list_targets
      __return_value = LibGdk.drag_context_list_targets(to_unsafe.as(LibGdk::DragContext*))
      __return_value
    end

    def manage_dnd(ipc_window, actions)
      __return_value = LibGdk.drag_context_manage_dnd(to_unsafe.as(LibGdk::DragContext*), ipc_window.to_unsafe.as(LibGdk::Window*), actions)
      __return_value
    end

    def device=(device)
      __return_value = LibGdk.drag_context_set_device(to_unsafe.as(LibGdk::DragContext*), device.to_unsafe.as(LibGdk::Device*))
      __return_value
    end

    def set_hotspot(hot_x, hot_y)
      __return_value = LibGdk.drag_context_set_hotspot(to_unsafe.as(LibGdk::DragContext*), Int32.new(hot_x), Int32.new(hot_y))
      __return_value
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

