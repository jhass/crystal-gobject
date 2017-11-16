require "./box"

module Gtk
  class ColorSelection < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ColorSelection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorSelection*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def current_alpha
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "current_alpha", gvalue)
      gvalue
    end

    def current_color
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "current_color", gvalue)
      Gdk::Color.cast(gvalue.object)
    end

    def current_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "current_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def has_opacity_control
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_opacity_control", gvalue)
      gvalue.boolean
    end

    def has_palette
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_palette", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.color_selection_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.palette_from_string(str, colors, n_colors)
      __return_value = LibGtk.color_selection_palette_from_string(str.to_unsafe, colors, n_colors)
      __return_value
    end

    def self.palette_to_string(colors, n_colors)
      __return_value = LibGtk.color_selection_palette_to_string(colors, Int32.new(n_colors))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def current_alpha
      __return_value = LibGtk.color_selection_get_current_alpha(@pointer.as(LibGtk::ColorSelection*))
      __return_value
    end

    def current_color(color)
      LibGtk.color_selection_get_current_color(@pointer.as(LibGtk::ColorSelection*), color)
      nil
    end

    def current_rgba(rgba)
      LibGtk.color_selection_get_current_rgba(@pointer.as(LibGtk::ColorSelection*), rgba)
      nil
    end

    def has_opacity_control
      __return_value = LibGtk.color_selection_get_has_opacity_control(@pointer.as(LibGtk::ColorSelection*))
      __return_value
    end

    def has_palette
      __return_value = LibGtk.color_selection_get_has_palette(@pointer.as(LibGtk::ColorSelection*))
      __return_value
    end

    def previous_alpha
      __return_value = LibGtk.color_selection_get_previous_alpha(@pointer.as(LibGtk::ColorSelection*))
      __return_value
    end

    def previous_color(color)
      LibGtk.color_selection_get_previous_color(@pointer.as(LibGtk::ColorSelection*), color)
      nil
    end

    def previous_rgba(rgba)
      LibGtk.color_selection_get_previous_rgba(@pointer.as(LibGtk::ColorSelection*), rgba)
      nil
    end

    def adjusting?
      __return_value = LibGtk.color_selection_is_adjusting(@pointer.as(LibGtk::ColorSelection*))
      __return_value
    end

    def current_alpha=(alpha)
      LibGtk.color_selection_set_current_alpha(@pointer.as(LibGtk::ColorSelection*), UInt16.new(alpha))
      nil
    end

    def current_color=(color)
      LibGtk.color_selection_set_current_color(@pointer.as(LibGtk::ColorSelection*), color.to_unsafe.as(LibGdk::Color*))
      nil
    end

    def current_rgba=(rgba)
      LibGtk.color_selection_set_current_rgba(@pointer.as(LibGtk::ColorSelection*), rgba.to_unsafe.as(LibGdk::RGBA*))
      nil
    end

    def has_opacity_control=(has_opacity)
      LibGtk.color_selection_set_has_opacity_control(@pointer.as(LibGtk::ColorSelection*), has_opacity)
      nil
    end

    def has_palette=(has_palette)
      LibGtk.color_selection_set_has_palette(@pointer.as(LibGtk::ColorSelection*), has_palette)
      nil
    end

    def previous_alpha=(alpha)
      LibGtk.color_selection_set_previous_alpha(@pointer.as(LibGtk::ColorSelection*), UInt16.new(alpha))
      nil
    end

    def previous_color=(color)
      LibGtk.color_selection_set_previous_color(@pointer.as(LibGtk::ColorSelection*), color.to_unsafe.as(LibGdk::Color*))
      nil
    end

    def previous_rgba=(rgba)
      LibGtk.color_selection_set_previous_rgba(@pointer.as(LibGtk::ColorSelection*), rgba.to_unsafe.as(LibGdk::RGBA*))
      nil
    end

    alias ColorChangedSignal = ColorSelection ->
    def on_color_changed(&__block : ColorChangedSignal)
      __callback = ->(_arg0 : LibGtk::ColorSelection*) {
       __return_value = __block.call(ColorSelection.new(_arg0))
       __return_value
      }
      connect("color-changed", __callback)
    end

  end
end

