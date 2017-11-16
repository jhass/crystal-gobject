require "./bin"

module Gtk
  class ScrolledWindow < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::ScrolledWindow*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScrolledWindow*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def hadjustment
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "hadjustment", gvalue)
      Gtk::Adjustment.cast(gvalue.object)
    end

    def hscrollbar_policy
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "hscrollbar_policy", gvalue)
      gvalue.enum
    end

    def kinetic_scrolling
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "kinetic_scrolling", gvalue)
      gvalue.boolean
    end

    def max_content_height
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_content_height", gvalue)
      gvalue
    end

    def max_content_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_content_width", gvalue)
      gvalue
    end

    def min_content_height
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "min_content_height", gvalue)
      gvalue
    end

    def min_content_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "min_content_width", gvalue)
      gvalue
    end

    def overlay_scrolling
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "overlay_scrolling", gvalue)
      gvalue.boolean
    end

    def propagate_natural_height
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "propagate_natural_height", gvalue)
      gvalue.boolean
    end

    def propagate_natural_width
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "propagate_natural_width", gvalue)
      gvalue.boolean
    end

    def shadow_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "shadow_type", gvalue)
      gvalue.enum
    end

    def vadjustment
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "vadjustment", gvalue)
      Gtk::Adjustment.cast(gvalue.object)
    end

    def vscrollbar_policy
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "vscrollbar_policy", gvalue)
      gvalue.enum
    end

    def window_placement
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "window_placement", gvalue)
      gvalue.enum
    end

    def window_placement_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "window_placement_set", gvalue)
      gvalue.boolean
    end

    def self.new(hadjustment, vadjustment) : self
      __return_value = LibGtk.scrolled_window_new(hadjustment ? hadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, vadjustment ? vadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def add_with_viewport(child)
      LibGtk.scrolled_window_add_with_viewport(@pointer.as(LibGtk::ScrolledWindow*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def capture_button_press
      __return_value = LibGtk.scrolled_window_get_capture_button_press(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.scrolled_window_get_hadjustment(@pointer.as(LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def hscrollbar
      __return_value = LibGtk.scrolled_window_get_hscrollbar(@pointer.as(LibGtk::ScrolledWindow*))
      Gtk::Widget.new(__return_value)
    end

    def kinetic_scrolling
      __return_value = LibGtk.scrolled_window_get_kinetic_scrolling(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def max_content_height
      __return_value = LibGtk.scrolled_window_get_max_content_height(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def max_content_width
      __return_value = LibGtk.scrolled_window_get_max_content_width(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_height
      __return_value = LibGtk.scrolled_window_get_min_content_height(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def min_content_width
      __return_value = LibGtk.scrolled_window_get_min_content_width(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def overlay_scrolling
      __return_value = LibGtk.scrolled_window_get_overlay_scrolling(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def placement
      __return_value = LibGtk.scrolled_window_get_placement(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def policy(hscrollbar_policy : Gtk::PolicyType?, vscrollbar_policy : Gtk::PolicyType?)
      LibGtk.scrolled_window_get_policy(@pointer.as(LibGtk::ScrolledWindow*), hscrollbar_policy, vscrollbar_policy)
      nil
    end

    def propagate_natural_height
      __return_value = LibGtk.scrolled_window_get_propagate_natural_height(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def propagate_natural_width
      __return_value = LibGtk.scrolled_window_get_propagate_natural_width(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.scrolled_window_get_shadow_type(@pointer.as(LibGtk::ScrolledWindow*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.scrolled_window_get_vadjustment(@pointer.as(LibGtk::ScrolledWindow*))
      Gtk::Adjustment.new(__return_value)
    end

    def vscrollbar
      __return_value = LibGtk.scrolled_window_get_vscrollbar(@pointer.as(LibGtk::ScrolledWindow*))
      Gtk::Widget.new(__return_value)
    end

    def capture_button_press=(capture_button_press)
      LibGtk.scrolled_window_set_capture_button_press(@pointer.as(LibGtk::ScrolledWindow*), capture_button_press)
      nil
    end

    def hadjustment=(hadjustment)
      LibGtk.scrolled_window_set_hadjustment(@pointer.as(LibGtk::ScrolledWindow*), hadjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def kinetic_scrolling=(kinetic_scrolling)
      LibGtk.scrolled_window_set_kinetic_scrolling(@pointer.as(LibGtk::ScrolledWindow*), kinetic_scrolling)
      nil
    end

    def max_content_height=(height)
      LibGtk.scrolled_window_set_max_content_height(@pointer.as(LibGtk::ScrolledWindow*), Int32.new(height))
      nil
    end

    def max_content_width=(width)
      LibGtk.scrolled_window_set_max_content_width(@pointer.as(LibGtk::ScrolledWindow*), Int32.new(width))
      nil
    end

    def min_content_height=(height)
      LibGtk.scrolled_window_set_min_content_height(@pointer.as(LibGtk::ScrolledWindow*), Int32.new(height))
      nil
    end

    def min_content_width=(width)
      LibGtk.scrolled_window_set_min_content_width(@pointer.as(LibGtk::ScrolledWindow*), Int32.new(width))
      nil
    end

    def overlay_scrolling=(overlay_scrolling)
      LibGtk.scrolled_window_set_overlay_scrolling(@pointer.as(LibGtk::ScrolledWindow*), overlay_scrolling)
      nil
    end

    def placement=(window_placement : Gtk::CornerType)
      LibGtk.scrolled_window_set_placement(@pointer.as(LibGtk::ScrolledWindow*), window_placement)
      nil
    end

    def set_policy(hscrollbar_policy : Gtk::PolicyType, vscrollbar_policy : Gtk::PolicyType)
      LibGtk.scrolled_window_set_policy(@pointer.as(LibGtk::ScrolledWindow*), hscrollbar_policy, vscrollbar_policy)
      nil
    end

    def propagate_natural_height=(propagate)
      LibGtk.scrolled_window_set_propagate_natural_height(@pointer.as(LibGtk::ScrolledWindow*), propagate)
      nil
    end

    def propagate_natural_width=(propagate)
      LibGtk.scrolled_window_set_propagate_natural_width(@pointer.as(LibGtk::ScrolledWindow*), propagate)
      nil
    end

    def shadow_type=(type : Gtk::ShadowType)
      LibGtk.scrolled_window_set_shadow_type(@pointer.as(LibGtk::ScrolledWindow*), type)
      nil
    end

    def vadjustment=(vadjustment)
      LibGtk.scrolled_window_set_vadjustment(@pointer.as(LibGtk::ScrolledWindow*), vadjustment.to_unsafe.as(LibGtk::Adjustment*))
      nil
    end

    def unset_placement
      LibGtk.scrolled_window_unset_placement(@pointer.as(LibGtk::ScrolledWindow*))
      nil
    end

    alias EdgeOvershotSignal = ScrolledWindow, Gtk::PositionType ->
    def on_edge_overshot(&__block : EdgeOvershotSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::PositionType*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1)
       __return_value
      }
      connect("edge-overshot", __callback)
    end

    alias EdgeReachedSignal = ScrolledWindow, Gtk::PositionType ->
    def on_edge_reached(&__block : EdgeReachedSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::PositionType*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1)
       __return_value
      }
      connect("edge-reached", __callback)
    end

    alias MoveFocusOutSignal = ScrolledWindow, Gtk::DirectionType ->
    def on_move_focus_out(&__block : MoveFocusOutSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::DirectionType*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1)
       __return_value
      }
      connect("move-focus-out", __callback)
    end

    alias ScrollChildSignal = ScrolledWindow, Gtk::ScrollType, Bool -> Bool
    def on_scroll_child(&__block : ScrollChildSignal)
      __callback = ->(_arg0 : LibGtk::ScrolledWindow*, _arg1 : LibGtk::LibGtk::ScrollType*, _arg2 : LibGtk::Bool*) {
       __return_value = __block.call(ScrolledWindow.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("scroll-child", __callback)
    end

  end
end

