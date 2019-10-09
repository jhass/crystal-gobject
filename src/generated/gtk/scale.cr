require "./range"

module Gtk
  class Scale < Range
    @pointer : Void*
    def initialize(pointer : LibGtk::Scale*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Scale*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def digits
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "digits", gvalue)
      gvalue
    end

    def draw_value
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "draw_value", gvalue)
      gvalue.boolean
    end

    def has_origin
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_origin", gvalue)
      gvalue.boolean
    end

    def value_pos
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value_pos", gvalue)
      gvalue.enum
    end

    def self.new(orientation : Gtk::Orientation, adjustment) : self
      __return_value = LibGtk.scale_new(orientation, adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(orientation : Gtk::Orientation, min, max, step) : self
      __return_value = LibGtk.scale_new_with_range(orientation, Float64.new(min), Float64.new(max), Float64.new(step))
      cast Gtk::Widget.new(__return_value)
    end

    def add_mark(value, position : Gtk::PositionType, markup)
      LibGtk.scale_add_mark(@pointer.as(LibGtk::Scale*), Float64.new(value), position, markup ? markup.to_unsafe : nil)
      nil
    end

    def clear_marks
      LibGtk.scale_clear_marks(@pointer.as(LibGtk::Scale*))
      nil
    end

    def digits
      __return_value = LibGtk.scale_get_digits(@pointer.as(LibGtk::Scale*))
      __return_value
    end

    def draw_value
      __return_value = LibGtk.scale_get_draw_value(@pointer.as(LibGtk::Scale*))
      __return_value
    end

    def has_origin
      __return_value = LibGtk.scale_get_has_origin(@pointer.as(LibGtk::Scale*))
      __return_value
    end

    def layout
      __return_value = LibGtk.scale_get_layout(@pointer.as(LibGtk::Scale*))
      Pango::Layout.new(__return_value) if __return_value
    end

    def layout_offsets(x, y)
      LibGtk.scale_get_layout_offsets(@pointer.as(LibGtk::Scale*), x, y)
      nil
    end

    def value_pos
      __return_value = LibGtk.scale_get_value_pos(@pointer.as(LibGtk::Scale*))
      __return_value
    end

    def digits=(digits)
      LibGtk.scale_set_digits(@pointer.as(LibGtk::Scale*), Int32.new(digits))
      nil
    end

    def draw_value=(draw_value)
      LibGtk.scale_set_draw_value(@pointer.as(LibGtk::Scale*), draw_value)
      nil
    end

    def has_origin=(has_origin)
      LibGtk.scale_set_has_origin(@pointer.as(LibGtk::Scale*), has_origin)
      nil
    end

    def value_pos=(pos : Gtk::PositionType)
      LibGtk.scale_set_value_pos(@pointer.as(LibGtk::Scale*), pos)
      nil
    end

    alias FormatValueSignal = Scale, Float64 -> String
    def on_format_value(&__block : FormatValueSignal)
      __callback = ->(_arg0 : LibGtk::Scale*, _arg1 : Float64*) {
       __return_value = __block.call(Scale.new(_arg0), _arg1)
       __return_value.to_unsafe
      }
      connect("format-value", __callback)
    end

  end
end

