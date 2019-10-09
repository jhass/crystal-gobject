require "./widget"

module Gtk
  class LevelBar < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::LevelBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LevelBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def inverted
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inverted", gvalue)
      gvalue.boolean
    end

    def max_value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_value", gvalue)
      gvalue
    end

    def min_value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "min_value", gvalue)
      gvalue
    end

    def mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "mode", gvalue)
      gvalue.enum
    end

    def value
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.level_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_interval(min_value, max_value) : self
      __return_value = LibGtk.level_bar_new_for_interval(Float64.new(min_value), Float64.new(max_value))
      cast Gtk::Widget.new(__return_value)
    end

    def add_offset_value(name, value)
      LibGtk.level_bar_add_offset_value(@pointer.as(LibGtk::LevelBar*), name.to_unsafe, Float64.new(value))
      nil
    end

    def inverted
      __return_value = LibGtk.level_bar_get_inverted(@pointer.as(LibGtk::LevelBar*))
      __return_value
    end

    def max_value
      __return_value = LibGtk.level_bar_get_max_value(@pointer.as(LibGtk::LevelBar*))
      __return_value
    end

    def min_value
      __return_value = LibGtk.level_bar_get_min_value(@pointer.as(LibGtk::LevelBar*))
      __return_value
    end

    def mode
      __return_value = LibGtk.level_bar_get_mode(@pointer.as(LibGtk::LevelBar*))
      __return_value
    end

    def offset_value(name, value)
      __return_value = LibGtk.level_bar_get_offset_value(@pointer.as(LibGtk::LevelBar*), name ? name.to_unsafe : nil, value)
      __return_value
    end

    def value
      __return_value = LibGtk.level_bar_get_value(@pointer.as(LibGtk::LevelBar*))
      __return_value
    end

    def remove_offset_value(name)
      LibGtk.level_bar_remove_offset_value(@pointer.as(LibGtk::LevelBar*), name ? name.to_unsafe : nil)
      nil
    end

    def inverted=(inverted)
      LibGtk.level_bar_set_inverted(@pointer.as(LibGtk::LevelBar*), inverted)
      nil
    end

    def max_value=(value)
      LibGtk.level_bar_set_max_value(@pointer.as(LibGtk::LevelBar*), Float64.new(value))
      nil
    end

    def min_value=(value)
      LibGtk.level_bar_set_min_value(@pointer.as(LibGtk::LevelBar*), Float64.new(value))
      nil
    end

    def mode=(mode : Gtk::LevelBarMode)
      LibGtk.level_bar_set_mode(@pointer.as(LibGtk::LevelBar*), mode)
      nil
    end

    def value=(value)
      LibGtk.level_bar_set_value(@pointer.as(LibGtk::LevelBar*), Float64.new(value))
      nil
    end

    alias OffsetChangedSignal = LevelBar, String ->
    def on_offset_changed(&__block : OffsetChangedSignal)
      __callback = ->(_arg0 : LibGtk::LevelBar*, _arg1 : UInt8**) {
       __return_value = __block.call(LevelBar.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("offset-changed", __callback)
    end

  end
end

