module Gtk
  class StyleContext < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::StyleContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StyleContext*)
    end

    def direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "direction", gvalue)
      gvalue.enum
    end

    def paint_clock
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "paint_clock", gvalue)
      Gdk::FrameClock.cast(gvalue.object)
    end

    def parent
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "parent", gvalue)
      Gtk::StyleContext.cast(gvalue.object)
    end

    def screen
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "screen", gvalue)
      Gdk::Screen.cast(gvalue.object)
    end

    def self.new : self
      __return_value = LibGtk.style_context_new
      cast Gtk::StyleContext.new(__return_value)
    end

    def self.add_provider_for_screen(screen, provider, priority)
      LibGtk.style_context_add_provider_for_screen(screen.to_unsafe.as(LibGdk::Screen*), provider.to_unsafe.as(LibGtk::StyleProvider*), UInt32.new(priority))
      nil
    end

    def self.remove_provider_for_screen(screen, provider)
      LibGtk.style_context_remove_provider_for_screen(screen.to_unsafe.as(LibGdk::Screen*), provider.to_unsafe.as(LibGtk::StyleProvider*))
      nil
    end

    def self.reset_widgets(screen)
      LibGtk.style_context_reset_widgets(screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

    def add_class(class_name)
      LibGtk.style_context_add_class(@pointer.as(LibGtk::StyleContext*), class_name.to_unsafe)
      nil
    end

    def add_provider(provider, priority)
      LibGtk.style_context_add_provider(@pointer.as(LibGtk::StyleContext*), provider.to_unsafe.as(LibGtk::StyleProvider*), UInt32.new(priority))
      nil
    end

    def add_region(region_name, flags : Gtk::RegionFlags)
      LibGtk.style_context_add_region(@pointer.as(LibGtk::StyleContext*), region_name.to_unsafe, flags)
      nil
    end

    def cancel_animations(region_id)
      LibGtk.style_context_cancel_animations(@pointer.as(LibGtk::StyleContext*), region_id ? region_id : nil)
      nil
    end

    def background_color(state : Gtk::StateFlags, color)
      LibGtk.style_context_get_background_color(@pointer.as(LibGtk::StyleContext*), state, color)
      nil
    end

    def border(state : Gtk::StateFlags, border)
      LibGtk.style_context_get_border(@pointer.as(LibGtk::StyleContext*), state, border)
      nil
    end

    def border_color(state : Gtk::StateFlags, color)
      LibGtk.style_context_get_border_color(@pointer.as(LibGtk::StyleContext*), state, color)
      nil
    end

    def color(state : Gtk::StateFlags, color)
      LibGtk.style_context_get_color(@pointer.as(LibGtk::StyleContext*), state, color)
      nil
    end

    def direction
      __return_value = LibGtk.style_context_get_direction(@pointer.as(LibGtk::StyleContext*))
      __return_value
    end

    def font(state : Gtk::StateFlags)
      __return_value = LibGtk.style_context_get_font(@pointer.as(LibGtk::StyleContext*), state)
      Pango::FontDescription.new(__return_value)
    end

    def frame_clock
      __return_value = LibGtk.style_context_get_frame_clock(@pointer.as(LibGtk::StyleContext*))
      Gdk::FrameClock.new(__return_value) if __return_value
    end

    def junction_sides
      __return_value = LibGtk.style_context_get_junction_sides(@pointer.as(LibGtk::StyleContext*))
      __return_value
    end

    def margin(state : Gtk::StateFlags, margin)
      LibGtk.style_context_get_margin(@pointer.as(LibGtk::StyleContext*), state, margin)
      nil
    end

    def padding(state : Gtk::StateFlags, padding)
      LibGtk.style_context_get_padding(@pointer.as(LibGtk::StyleContext*), state, padding)
      nil
    end

    def parent
      __return_value = LibGtk.style_context_get_parent(@pointer.as(LibGtk::StyleContext*))
      Gtk::StyleContext.new(__return_value) if __return_value
    end

    def path
      __return_value = LibGtk.style_context_get_path(@pointer.as(LibGtk::StyleContext*))
      Gtk::WidgetPath.new(__return_value)
    end

    def property(property, state : Gtk::StateFlags, value)
      LibGtk.style_context_get_property(@pointer.as(LibGtk::StyleContext*), property.to_unsafe, state, value)
      nil
    end

    def scale
      __return_value = LibGtk.style_context_get_scale(@pointer.as(LibGtk::StyleContext*))
      __return_value
    end

    def screen
      __return_value = LibGtk.style_context_get_screen(@pointer.as(LibGtk::StyleContext*))
      Gdk::Screen.new(__return_value)
    end

    def section(property)
      __return_value = LibGtk.style_context_get_section(@pointer.as(LibGtk::StyleContext*), property.to_unsafe)
      Gtk::CssSection.new(__return_value) if __return_value
    end

    def state
      __return_value = LibGtk.style_context_get_state(@pointer.as(LibGtk::StyleContext*))
      __return_value
    end

    def style_property(property_name, value)
      LibGtk.style_context_get_style_property(@pointer.as(LibGtk::StyleContext*), property_name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def has_class(class_name)
      __return_value = LibGtk.style_context_has_class(@pointer.as(LibGtk::StyleContext*), class_name.to_unsafe)
      __return_value
    end

    def has_region(region_name, flags_return : Gtk::RegionFlags?)
      __return_value = LibGtk.style_context_has_region(@pointer.as(LibGtk::StyleContext*), region_name.to_unsafe, flags_return)
      __return_value
    end

    def invalidate
      LibGtk.style_context_invalidate(@pointer.as(LibGtk::StyleContext*))
      nil
    end

    def list_classes
      __return_value = LibGtk.style_context_list_classes(@pointer.as(LibGtk::StyleContext*))
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def list_regions
      __return_value = LibGtk.style_context_list_regions(@pointer.as(LibGtk::StyleContext*))
      GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup_color(color_name, color)
      __return_value = LibGtk.style_context_lookup_color(@pointer.as(LibGtk::StyleContext*), color_name.to_unsafe, color)
      __return_value
    end

    def lookup_icon_set(stock_id)
      __return_value = LibGtk.style_context_lookup_icon_set(@pointer.as(LibGtk::StyleContext*), stock_id.to_unsafe)
      Gtk::IconSet.new(__return_value) if __return_value
    end

    def notify_state_change(window, region_id, state : Gtk::StateType, state_value)
      LibGtk.style_context_notify_state_change(@pointer.as(LibGtk::StyleContext*), window.to_unsafe.as(LibGdk::Window*), region_id ? region_id : nil, state, state_value)
      nil
    end

    def pop_animatable_region
      LibGtk.style_context_pop_animatable_region(@pointer.as(LibGtk::StyleContext*))
      nil
    end

    def push_animatable_region(region_id)
      LibGtk.style_context_push_animatable_region(@pointer.as(LibGtk::StyleContext*), region_id ? region_id : nil)
      nil
    end

    def remove_class(class_name)
      LibGtk.style_context_remove_class(@pointer.as(LibGtk::StyleContext*), class_name.to_unsafe)
      nil
    end

    def remove_provider(provider)
      LibGtk.style_context_remove_provider(@pointer.as(LibGtk::StyleContext*), provider.to_unsafe.as(LibGtk::StyleProvider*))
      nil
    end

    def remove_region(region_name)
      LibGtk.style_context_remove_region(@pointer.as(LibGtk::StyleContext*), region_name.to_unsafe)
      nil
    end

    def restore
      LibGtk.style_context_restore(@pointer.as(LibGtk::StyleContext*))
      nil
    end

    def save
      LibGtk.style_context_save(@pointer.as(LibGtk::StyleContext*))
      nil
    end

    def scroll_animations(window, dx, dy)
      LibGtk.style_context_scroll_animations(@pointer.as(LibGtk::StyleContext*), window.to_unsafe.as(LibGdk::Window*), Int32.new(dx), Int32.new(dy))
      nil
    end

    def background=(window)
      LibGtk.style_context_set_background(@pointer.as(LibGtk::StyleContext*), window.to_unsafe.as(LibGdk::Window*))
      nil
    end

    def direction=(direction : Gtk::TextDirection)
      LibGtk.style_context_set_direction(@pointer.as(LibGtk::StyleContext*), direction)
      nil
    end

    def frame_clock=(frame_clock)
      LibGtk.style_context_set_frame_clock(@pointer.as(LibGtk::StyleContext*), frame_clock.to_unsafe.as(LibGdk::FrameClock*))
      nil
    end

    def junction_sides=(sides : Gtk::JunctionSides)
      LibGtk.style_context_set_junction_sides(@pointer.as(LibGtk::StyleContext*), sides)
      nil
    end

    def parent=(parent)
      LibGtk.style_context_set_parent(@pointer.as(LibGtk::StyleContext*), parent ? parent.to_unsafe.as(LibGtk::StyleContext*) : nil)
      nil
    end

    def path=(path)
      LibGtk.style_context_set_path(@pointer.as(LibGtk::StyleContext*), path.to_unsafe.as(LibGtk::WidgetPath*))
      nil
    end

    def scale=(scale)
      LibGtk.style_context_set_scale(@pointer.as(LibGtk::StyleContext*), Int32.new(scale))
      nil
    end

    def screen=(screen)
      LibGtk.style_context_set_screen(@pointer.as(LibGtk::StyleContext*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

    def state=(flags : Gtk::StateFlags)
      LibGtk.style_context_set_state(@pointer.as(LibGtk::StyleContext*), flags)
      nil
    end

    def state_is_running(state : Gtk::StateType, progress)
      __return_value = LibGtk.style_context_state_is_running(@pointer.as(LibGtk::StyleContext*), state, progress)
      __return_value
    end

    def to_string(flags : Gtk::StyleContextPrintFlags)
      __return_value = LibGtk.style_context_to_string(@pointer.as(LibGtk::StyleContext*), flags)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    alias ChangedSignal = StyleContext ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::StyleContext*) {
       __return_value = __block.call(StyleContext.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

