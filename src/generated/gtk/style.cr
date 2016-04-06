module Gtk
  class Style < GObject::Object
    def initialize(@gtk_style)
    end

    def to_unsafe
      @gtk_style.not_nil!
    end


    def self.new_internal
      __return_value = LibGtk.style_new
      Gtk::Style.new(__return_value)
    end

    def apply_default_background(cr, window, state_type, x, y, width, height)
      __return_value = LibGtk.style_apply_default_background((to_unsafe as LibGtk::Style*), (cr.to_unsafe as LibCairo::Context*), (window.to_unsafe as LibGdk::Window*), state_type, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      __return_value
    end

    def copy
      __return_value = LibGtk.style_copy((to_unsafe as LibGtk::Style*))
      Gtk::Style.new(__return_value)
    end

    def detach
      __return_value = LibGtk.style_detach((to_unsafe as LibGtk::Style*))
      __return_value
    end

    def style_property(widget_type, property_name, value)
      __return_value = LibGtk.style_get_style_property((to_unsafe as LibGtk::Style*), UInt64.new(widget_type), property_name, value)
      __return_value
    end

    def has_context
      __return_value = LibGtk.style_has_context((to_unsafe as LibGtk::Style*))
      __return_value
    end

    def lookup_color(color_name, color)
      __return_value = LibGtk.style_lookup_color((to_unsafe as LibGtk::Style*), color_name, color)
      __return_value
    end

    def lookup_icon_set(stock_id)
      __return_value = LibGtk.style_lookup_icon_set((to_unsafe as LibGtk::Style*), stock_id)
      Gtk::IconSet.new(__return_value)
    end

    def render_icon(source, direction, state, size, widget, detail)
      __return_value = LibGtk.style_render_icon((to_unsafe as LibGtk::Style*), (source.to_unsafe as LibGtk::IconSource*), direction, state, Int32.new(size), widget && (widget.to_unsafe as LibGtk::Widget*), detail && detail)
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def set_background(window, state_type)
      __return_value = LibGtk.style_set_background((to_unsafe as LibGtk::Style*), (window.to_unsafe as LibGdk::Window*), state_type)
      __return_value
    end

    alias RealizeSignal = Style -> 
    def on_realize(&__block : RealizeSignal)
      __callback = ->(_arg0 : LibGtk::Style*) {
       __return_value = __block.call(Style.new(_arg0))
       __return_value
      }
      connect("realize", __callback)
    end

    alias UnrealizeSignal = Style -> 
    def on_unrealize(&__block : UnrealizeSignal)
      __callback = ->(_arg0 : LibGtk::Style*) {
       __return_value = __block.call(Style.new(_arg0))
       __return_value
      }
      connect("unrealize", __callback)
    end

  end
end

