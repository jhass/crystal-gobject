require "./widget"

module Gtk
  class LevelBar < Widget
    def initialize(@gtk_level_bar)
    end

    def to_unsafe
      @gtk_level_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable





    def self.new_internal
      __return_value = LibGtk.level_bar_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_interval(min_value, max_value)
      __return_value = LibGtk.level_bar_new_for_interval(Float64.new(min_value), Float64.new(max_value))
      Gtk::Widget.new(__return_value)
    end

    def add_offset_value(name, value)
      __return_value = LibGtk.level_bar_add_offset_value((to_unsafe as LibGtk::LevelBar*), name, Float64.new(value))
      __return_value
    end

    def inverted
      __return_value = LibGtk.level_bar_get_inverted((to_unsafe as LibGtk::LevelBar*))
      __return_value
    end

    def max_value
      __return_value = LibGtk.level_bar_get_max_value((to_unsafe as LibGtk::LevelBar*))
      __return_value
    end

    def min_value
      __return_value = LibGtk.level_bar_get_min_value((to_unsafe as LibGtk::LevelBar*))
      __return_value
    end

    def mode
      __return_value = LibGtk.level_bar_get_mode((to_unsafe as LibGtk::LevelBar*))
      __return_value
    end

    def offset_value(name, value)
      __return_value = LibGtk.level_bar_get_offset_value((to_unsafe as LibGtk::LevelBar*), name && name, Float64.new(value))
      __return_value
    end

    def value
      __return_value = LibGtk.level_bar_get_value((to_unsafe as LibGtk::LevelBar*))
      __return_value
    end

    def remove_offset_value(name)
      __return_value = LibGtk.level_bar_remove_offset_value((to_unsafe as LibGtk::LevelBar*), name && name)
      __return_value
    end

    def inverted=(inverted)
      __return_value = LibGtk.level_bar_set_inverted((to_unsafe as LibGtk::LevelBar*), inverted)
      __return_value
    end

    def max_value=(value)
      __return_value = LibGtk.level_bar_set_max_value((to_unsafe as LibGtk::LevelBar*), Float64.new(value))
      __return_value
    end

    def min_value=(value)
      __return_value = LibGtk.level_bar_set_min_value((to_unsafe as LibGtk::LevelBar*), Float64.new(value))
      __return_value
    end

    def mode=(mode)
      __return_value = LibGtk.level_bar_set_mode((to_unsafe as LibGtk::LevelBar*), mode)
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.level_bar_set_value((to_unsafe as LibGtk::LevelBar*), Float64.new(value))
      __return_value
    end

    alias OffsetChangedSignal = LevelBar, UInt8 -> 
    def on_offset_changed(&__block : OffsetChangedSignal)
      __callback = ->(_arg0 : LibGtk::LevelBar*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(LevelBar.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("offset-changed", __callback)
    end

  end
end

