require "./widget"

module Gtk
  class LevelBar < Widget
    def initialize @gtk_level_bar
    end

    def to_unsafe
      @gtk_level_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def inverted=(__value)
      LibGtk.level_bar_set_inverted((to_unsafe as LibGtk::LevelBar*), Bool.cast(__value))
    end

    def max_value=(__value)
      LibGtk.level_bar_set_max_value((to_unsafe as LibGtk::LevelBar*), Float64.cast(__value))
    end

    def min_value=(__value)
      LibGtk.level_bar_set_min_value((to_unsafe as LibGtk::LevelBar*), Float64.cast(__value))
    end

    def mode=(__value)
      LibGtk.level_bar_set_mode((to_unsafe as LibGtk::LevelBar*), __value)
    end

    def value=(__value)
      LibGtk.level_bar_set_value((to_unsafe as LibGtk::LevelBar*), Float64.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.level_bar_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_interval(min_value, max_value)
      __return_value = LibGtk.level_bar_new_for_interval(Float64.cast(min_value), Float64.cast(max_value))
      Gtk::Widget.new(__return_value)
    end

    def add_offset_value(name, value)
      __return_value = LibGtk.level_bar_add_offset_value((to_unsafe as LibGtk::LevelBar*), name, Float64.cast(value))
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
      __return_value = LibGtk.level_bar_get_offset_value((to_unsafe as LibGtk::LevelBar*), name, Float64.cast(value))
      __return_value
    end

    def value
      __return_value = LibGtk.level_bar_get_value((to_unsafe as LibGtk::LevelBar*))
      __return_value
    end

    def remove_offset_value(name)
      __return_value = LibGtk.level_bar_remove_offset_value((to_unsafe as LibGtk::LevelBar*), name)
      __return_value
    end

    def inverted=(inverted)
      __return_value = LibGtk.level_bar_set_inverted((to_unsafe as LibGtk::LevelBar*), Bool.cast(inverted))
      __return_value
    end

    def max_value=(value)
      __return_value = LibGtk.level_bar_set_max_value((to_unsafe as LibGtk::LevelBar*), Float64.cast(value))
      __return_value
    end

    def min_value=(value)
      __return_value = LibGtk.level_bar_set_min_value((to_unsafe as LibGtk::LevelBar*), Float64.cast(value))
      __return_value
    end

    def mode=(mode)
      __return_value = LibGtk.level_bar_set_mode((to_unsafe as LibGtk::LevelBar*), mode)
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.level_bar_set_value((to_unsafe as LibGtk::LevelBar*), Float64.cast(value))
      __return_value
    end

  end
end

