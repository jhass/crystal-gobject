module Gdk
  class DragContext < GObject::Object
    def initialize(@gdk_drag_context)
    end

    def to_unsafe
      @gdk_drag_context.not_nil!
    end

    def actions
      __return_value = LibGdk.drag_context_get_actions((to_unsafe as LibGdk::DragContext*))
      __return_value
    end

    def dest_window
      __return_value = LibGdk.drag_context_get_dest_window((to_unsafe as LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def device
      __return_value = LibGdk.drag_context_get_device((to_unsafe as LibGdk::DragContext*))
      Gdk::Device.new(__return_value)
    end

    def protocol
      __return_value = LibGdk.drag_context_get_protocol((to_unsafe as LibGdk::DragContext*))
      __return_value
    end

    def selected_action
      __return_value = LibGdk.drag_context_get_selected_action((to_unsafe as LibGdk::DragContext*))
      __return_value
    end

    def source_window
      __return_value = LibGdk.drag_context_get_source_window((to_unsafe as LibGdk::DragContext*))
      Gdk::Window.new(__return_value)
    end

    def suggested_action
      __return_value = LibGdk.drag_context_get_suggested_action((to_unsafe as LibGdk::DragContext*))
      __return_value
    end

    def list_targets
      __return_value = LibGdk.drag_context_list_targets((to_unsafe as LibGdk::DragContext*))
      __return_value
    end

    def device=(device)
      __return_value = LibGdk.drag_context_set_device((to_unsafe as LibGdk::DragContext*), (device.to_unsafe as LibGdk::Device*))
      __return_value
    end

  end
end

