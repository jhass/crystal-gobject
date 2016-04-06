module Gtk
  class StyleContext < GObject::Object
    def initialize(@gtk_style_context)
    end

    def to_unsafe
      @gtk_style_context.not_nil!
    end





    def self.new_internal
      __return_value = LibGtk.style_context_new
      Gtk::StyleContext.new(__return_value)
    end

    def self.add_provider_for_screen(screen, provider, priority)
      __return_value = LibGtk.style_context_add_provider_for_screen((screen.to_unsafe as LibGdk::Screen*), (provider.to_unsafe as LibGtk::StyleProvider*), UInt32.new(priority))
      __return_value
    end

    def self.remove_provider_for_screen(screen, provider)
      __return_value = LibGtk.style_context_remove_provider_for_screen((screen.to_unsafe as LibGdk::Screen*), (provider.to_unsafe as LibGtk::StyleProvider*))
      __return_value
    end

    def self.reset_widgets(screen)
      __return_value = LibGtk.style_context_reset_widgets((screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def add_class(class_name)
      __return_value = LibGtk.style_context_add_class((to_unsafe as LibGtk::StyleContext*), class_name)
      __return_value
    end

    def add_provider(provider, priority)
      __return_value = LibGtk.style_context_add_provider((to_unsafe as LibGtk::StyleContext*), (provider.to_unsafe as LibGtk::StyleProvider*), UInt32.new(priority))
      __return_value
    end

    def add_region(region_name, flags)
      __return_value = LibGtk.style_context_add_region((to_unsafe as LibGtk::StyleContext*), region_name, flags)
      __return_value
    end

    def cancel_animations(region_id)
      __return_value = LibGtk.style_context_cancel_animations((to_unsafe as LibGtk::StyleContext*), region_id && region_id)
      __return_value
    end

    def background_color(state, color)
      __return_value = LibGtk.style_context_get_background_color((to_unsafe as LibGtk::StyleContext*), state, color)
      __return_value
    end

    def border(state, border)
      __return_value = LibGtk.style_context_get_border((to_unsafe as LibGtk::StyleContext*), state, border)
      __return_value
    end

    def border_color(state, color)
      __return_value = LibGtk.style_context_get_border_color((to_unsafe as LibGtk::StyleContext*), state, color)
      __return_value
    end

    def color(state, color)
      __return_value = LibGtk.style_context_get_color((to_unsafe as LibGtk::StyleContext*), state, color)
      __return_value
    end

    def direction
      __return_value = LibGtk.style_context_get_direction((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def font(state)
      __return_value = LibGtk.style_context_get_font((to_unsafe as LibGtk::StyleContext*), state)
      Pango::FontDescription.new(__return_value)
    end

    def frame_clock
      __return_value = LibGtk.style_context_get_frame_clock((to_unsafe as LibGtk::StyleContext*))
      Gdk::FrameClock.new(__return_value)
    end

    def junction_sides
      __return_value = LibGtk.style_context_get_junction_sides((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def margin(state, margin)
      __return_value = LibGtk.style_context_get_margin((to_unsafe as LibGtk::StyleContext*), state, margin)
      __return_value
    end

    def padding(state, padding)
      __return_value = LibGtk.style_context_get_padding((to_unsafe as LibGtk::StyleContext*), state, padding)
      __return_value
    end

    def parent
      __return_value = LibGtk.style_context_get_parent((to_unsafe as LibGtk::StyleContext*))
      Gtk::StyleContext.new(__return_value)
    end

    def path
      __return_value = LibGtk.style_context_get_path((to_unsafe as LibGtk::StyleContext*))
      Gtk::WidgetPath.new(__return_value)
    end

    def property(property, state, value)
      __return_value = LibGtk.style_context_get_property((to_unsafe as LibGtk::StyleContext*), property, state, value)
      __return_value
    end

    def scale
      __return_value = LibGtk.style_context_get_scale((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def screen
      __return_value = LibGtk.style_context_get_screen((to_unsafe as LibGtk::StyleContext*))
      Gdk::Screen.new(__return_value)
    end

    def section(property)
      __return_value = LibGtk.style_context_get_section((to_unsafe as LibGtk::StyleContext*), property)
      Gtk::CssSection.new(__return_value)
    end

    def state
      __return_value = LibGtk.style_context_get_state((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def style_property(property_name, value)
      __return_value = LibGtk.style_context_get_style_property((to_unsafe as LibGtk::StyleContext*), property_name, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def has_class(class_name)
      __return_value = LibGtk.style_context_has_class((to_unsafe as LibGtk::StyleContext*), class_name)
      __return_value
    end

    def has_region(region_name, flags_return)
      __return_value = LibGtk.style_context_has_region((to_unsafe as LibGtk::StyleContext*), region_name, flags_return)
      __return_value
    end

    def invalidate
      __return_value = LibGtk.style_context_invalidate((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def list_classes
      __return_value = LibGtk.style_context_list_classes((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def list_regions
      __return_value = LibGtk.style_context_list_regions((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def lookup_color(color_name, color)
      __return_value = LibGtk.style_context_lookup_color((to_unsafe as LibGtk::StyleContext*), color_name, color)
      __return_value
    end

    def lookup_icon_set(stock_id)
      __return_value = LibGtk.style_context_lookup_icon_set((to_unsafe as LibGtk::StyleContext*), stock_id)
      Gtk::IconSet.new(__return_value)
    end

    def notify_state_change(window, region_id, state, state_value)
      __return_value = LibGtk.style_context_notify_state_change((to_unsafe as LibGtk::StyleContext*), (window.to_unsafe as LibGdk::Window*), region_id && region_id, state, state_value)
      __return_value
    end

    def pop_animatable_region
      __return_value = LibGtk.style_context_pop_animatable_region((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def push_animatable_region(region_id)
      __return_value = LibGtk.style_context_push_animatable_region((to_unsafe as LibGtk::StyleContext*), region_id)
      __return_value
    end

    def remove_class(class_name)
      __return_value = LibGtk.style_context_remove_class((to_unsafe as LibGtk::StyleContext*), class_name)
      __return_value
    end

    def remove_provider(provider)
      __return_value = LibGtk.style_context_remove_provider((to_unsafe as LibGtk::StyleContext*), (provider.to_unsafe as LibGtk::StyleProvider*))
      __return_value
    end

    def remove_region(region_name)
      __return_value = LibGtk.style_context_remove_region((to_unsafe as LibGtk::StyleContext*), region_name)
      __return_value
    end

    def restore
      __return_value = LibGtk.style_context_restore((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def save
      __return_value = LibGtk.style_context_save((to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def scroll_animations(window, dx, dy)
      __return_value = LibGtk.style_context_scroll_animations((to_unsafe as LibGtk::StyleContext*), (window.to_unsafe as LibGdk::Window*), Int32.new(dx), Int32.new(dy))
      __return_value
    end

    def background=(window)
      __return_value = LibGtk.style_context_set_background((to_unsafe as LibGtk::StyleContext*), (window.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def direction=(direction)
      __return_value = LibGtk.style_context_set_direction((to_unsafe as LibGtk::StyleContext*), direction)
      __return_value
    end

    def frame_clock=(frame_clock)
      __return_value = LibGtk.style_context_set_frame_clock((to_unsafe as LibGtk::StyleContext*), (frame_clock.to_unsafe as LibGdk::FrameClock*))
      __return_value
    end

    def junction_sides=(sides)
      __return_value = LibGtk.style_context_set_junction_sides((to_unsafe as LibGtk::StyleContext*), sides)
      __return_value
    end

    def parent=(parent)
      __return_value = LibGtk.style_context_set_parent((to_unsafe as LibGtk::StyleContext*), parent && (parent.to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def path=(path)
      __return_value = LibGtk.style_context_set_path((to_unsafe as LibGtk::StyleContext*), (path.to_unsafe as LibGtk::WidgetPath*))
      __return_value
    end

    def scale=(scale)
      __return_value = LibGtk.style_context_set_scale((to_unsafe as LibGtk::StyleContext*), Int32.new(scale))
      __return_value
    end

    def screen=(screen)
      __return_value = LibGtk.style_context_set_screen((to_unsafe as LibGtk::StyleContext*), (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

    def state=(flags)
      __return_value = LibGtk.style_context_set_state((to_unsafe as LibGtk::StyleContext*), flags)
      __return_value
    end

    def state_is_running(state, progress)
      __return_value = LibGtk.style_context_state_is_running((to_unsafe as LibGtk::StyleContext*), state, Float64.new(progress))
      __return_value
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

