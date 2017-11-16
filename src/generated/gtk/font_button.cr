require "./button"

module Gtk
  class FontButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::FontButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements FontChooser
    def font_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "font_name", gvalue)
      gvalue.string
    end

    def show_size
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_size", gvalue)
      gvalue.boolean
    end

    def show_style
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_style", gvalue)
      gvalue.boolean
    end

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end

    def use_font
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_font", gvalue)
      gvalue.boolean
    end

    def use_size
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_size", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.font_button_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_font(fontname) : self
      __return_value = LibGtk.font_button_new_with_font(fontname.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def font_name
      __return_value = LibGtk.font_button_get_font_name(@pointer.as(LibGtk::FontButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def show_size
      __return_value = LibGtk.font_button_get_show_size(@pointer.as(LibGtk::FontButton*))
      __return_value
    end

    def show_style
      __return_value = LibGtk.font_button_get_show_style(@pointer.as(LibGtk::FontButton*))
      __return_value
    end

    def title
      __return_value = LibGtk.font_button_get_title(@pointer.as(LibGtk::FontButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def use_font
      __return_value = LibGtk.font_button_get_use_font(@pointer.as(LibGtk::FontButton*))
      __return_value
    end

    def use_size
      __return_value = LibGtk.font_button_get_use_size(@pointer.as(LibGtk::FontButton*))
      __return_value
    end

    def font_name=(fontname)
      __return_value = LibGtk.font_button_set_font_name(@pointer.as(LibGtk::FontButton*), fontname.to_unsafe)
      __return_value
    end

    def show_size=(show_size)
      LibGtk.font_button_set_show_size(@pointer.as(LibGtk::FontButton*), show_size)
      nil
    end

    def show_style=(show_style)
      LibGtk.font_button_set_show_style(@pointer.as(LibGtk::FontButton*), show_style)
      nil
    end

    def title=(title)
      LibGtk.font_button_set_title(@pointer.as(LibGtk::FontButton*), title.to_unsafe)
      nil
    end

    def use_font=(use_font)
      LibGtk.font_button_set_use_font(@pointer.as(LibGtk::FontButton*), use_font)
      nil
    end

    def use_size=(use_size)
      LibGtk.font_button_set_use_size(@pointer.as(LibGtk::FontButton*), use_size)
      nil
    end

    alias FontSetSignal = FontButton ->
    def on_font_set(&__block : FontSetSignal)
      __callback = ->(_arg0 : LibGtk::FontButton*) {
       __return_value = __block.call(FontButton.new(_arg0))
       __return_value
      }
      connect("font-set", __callback)
    end

  end
end

