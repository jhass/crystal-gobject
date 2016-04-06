require "./widget"

module Gtk
  class Container < Widget
    def initialize(@gtk_container)
    end

    def to_unsafe
      @gtk_container.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable



    def add(widget)
      __return_value = LibGtk.container_add((to_unsafe as LibGtk::Container*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def check_resize
      __return_value = LibGtk.container_check_resize((to_unsafe as LibGtk::Container*))
      __return_value
    end

    def child_get_property(child, property_name, value)
      __return_value = LibGtk.container_child_get_property((to_unsafe as LibGtk::Container*), (child.to_unsafe as LibGtk::Widget*), property_name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def child_notify(child, child_property)
      __return_value = LibGtk.container_child_notify((to_unsafe as LibGtk::Container*), (child.to_unsafe as LibGtk::Widget*), child_property)
      __return_value
    end

    def child_notify_by_pspec(child, pspec)
      __return_value = LibGtk.container_child_notify_by_pspec((to_unsafe as LibGtk::Container*), (child.to_unsafe as LibGtk::Widget*), (pspec.to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def child_set_property(child, property_name, value)
      __return_value = LibGtk.container_child_set_property((to_unsafe as LibGtk::Container*), (child.to_unsafe as LibGtk::Widget*), property_name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def child_type
      __return_value = LibGtk.container_child_type((to_unsafe as LibGtk::Container*))
      __return_value
    end

    def forall(callback : LibGtk::Callback, callback_data)
      __return_value = LibGtk.container_forall((to_unsafe as LibGtk::Container*), callback, callback_data)
      __return_value
    end

    def foreach(callback : LibGtk::Callback, callback_data)
      __return_value = LibGtk.container_foreach((to_unsafe as LibGtk::Container*), callback, callback_data)
      __return_value
    end

    def border_width
      __return_value = LibGtk.container_get_border_width((to_unsafe as LibGtk::Container*))
      __return_value
    end

    def children
      __return_value = LibGtk.container_get_children((to_unsafe as LibGtk::Container*))
      __return_value
    end

    def focus_chain(focusable_widgets)
      __return_value = LibGtk.container_get_focus_chain((to_unsafe as LibGtk::Container*), focusable_widgets)
      __return_value
    end

    def focus_child
      __return_value = LibGtk.container_get_focus_child((to_unsafe as LibGtk::Container*))
      Gtk::Widget.new(__return_value)
    end

    def focus_hadjustment
      __return_value = LibGtk.container_get_focus_hadjustment((to_unsafe as LibGtk::Container*))
      Gtk::Adjustment.new(__return_value)
    end

    def focus_vadjustment
      __return_value = LibGtk.container_get_focus_vadjustment((to_unsafe as LibGtk::Container*))
      Gtk::Adjustment.new(__return_value)
    end

    def path_for_child(child)
      __return_value = LibGtk.container_get_path_for_child((to_unsafe as LibGtk::Container*), (child.to_unsafe as LibGtk::Widget*))
      Gtk::WidgetPath.new(__return_value)
    end

    def resize_mode
      __return_value = LibGtk.container_get_resize_mode((to_unsafe as LibGtk::Container*))
      __return_value
    end

    def propagate_draw(child, cr)
      __return_value = LibGtk.container_propagate_draw((to_unsafe as LibGtk::Container*), (child.to_unsafe as LibGtk::Widget*), (cr.to_unsafe as LibCairo::Context*))
      __return_value
    end

    def remove(widget)
      __return_value = LibGtk.container_remove((to_unsafe as LibGtk::Container*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def resize_children
      __return_value = LibGtk.container_resize_children((to_unsafe as LibGtk::Container*))
      __return_value
    end

    def border_width=(border_width)
      __return_value = LibGtk.container_set_border_width((to_unsafe as LibGtk::Container*), UInt32.new(border_width))
      __return_value
    end

    def focus_chain=(focusable_widgets)
      __return_value = LibGtk.container_set_focus_chain((to_unsafe as LibGtk::Container*), focusable_widgets)
      __return_value
    end

    def focus_child=(child)
      __return_value = LibGtk.container_set_focus_child((to_unsafe as LibGtk::Container*), child && (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def focus_hadjustment=(adjustment)
      __return_value = LibGtk.container_set_focus_hadjustment((to_unsafe as LibGtk::Container*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def focus_vadjustment=(adjustment)
      __return_value = LibGtk.container_set_focus_vadjustment((to_unsafe as LibGtk::Container*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def reallocate_redraws=(needs_redraws)
      __return_value = LibGtk.container_set_reallocate_redraws((to_unsafe as LibGtk::Container*), needs_redraws)
      __return_value
    end

    def resize_mode=(resize_mode)
      __return_value = LibGtk.container_set_resize_mode((to_unsafe as LibGtk::Container*), resize_mode)
      __return_value
    end

    def unset_focus_chain
      __return_value = LibGtk.container_unset_focus_chain((to_unsafe as LibGtk::Container*))
      __return_value
    end

    alias AddSignal = Container, Gtk::Widget -> 
    def on_add(&__block : AddSignal)
      __callback = ->(_arg0 : LibGtk::Container*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Container.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("add", __callback)
    end

    alias CheckResizeSignal = Container -> 
    def on_check_resize(&__block : CheckResizeSignal)
      __callback = ->(_arg0 : LibGtk::Container*) {
       __return_value = __block.call(Container.new(_arg0))
       __return_value
      }
      connect("check-resize", __callback)
    end

    alias RemoveSignal = Container, Gtk::Widget -> 
    def on_remove(&__block : RemoveSignal)
      __callback = ->(_arg0 : LibGtk::Container*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Container.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("remove", __callback)
    end

    alias SetFocusChildSignal = Container, Gtk::Widget -> 
    def on_set_focus_child(&__block : SetFocusChildSignal)
      __callback = ->(_arg0 : LibGtk::Container*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Container.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("set-focus-child", __callback)
    end

  end
end

