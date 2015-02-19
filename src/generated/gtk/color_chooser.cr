module Gtk
  module ColorChooser
    def add_palette(orientation, colors_per_line, n_colors, colors)
      __return_value = LibGtk.color_chooser_add_palette((to_unsafe as LibGtk::ColorChooser*), orientation, Int32.cast(colors_per_line), Int32.cast(n_colors), colors)
      __return_value
    end

    def rgba(color)
      __return_value = LibGtk.color_chooser_get_rgba((to_unsafe as LibGtk::ColorChooser*), color)
      __return_value
    end

    def use_alpha
      __return_value = LibGtk.color_chooser_get_use_alpha((to_unsafe as LibGtk::ColorChooser*))
      __return_value
    end

    def rgba=(color)
      __return_value = LibGtk.color_chooser_set_rgba((to_unsafe as LibGtk::ColorChooser*), (color.to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def use_alpha=(use_alpha)
      __return_value = LibGtk.color_chooser_set_use_alpha((to_unsafe as LibGtk::ColorChooser*), Bool.cast(use_alpha))
      __return_value
    end

  end
end

