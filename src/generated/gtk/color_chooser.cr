module Gtk
  module ColorChooser
    def add_palette(orientation : Gtk::Orientation, colors_per_line, n_colors, colors)
      LibGtk.color_chooser_add_palette(@pointer.as(LibGtk::ColorChooser*), orientation, Int32.new(colors_per_line), Int32.new(n_colors), colors ? colors : nil)
      nil
    end

    def rgba(color)
      LibGtk.color_chooser_get_rgba(@pointer.as(LibGtk::ColorChooser*), color)
      nil
    end

    def use_alpha
      __return_value = LibGtk.color_chooser_get_use_alpha(@pointer.as(LibGtk::ColorChooser*))
      __return_value
    end

    def rgba=(color)
      LibGtk.color_chooser_set_rgba(@pointer.as(LibGtk::ColorChooser*), color.to_unsafe.as(LibGdk::RGBA*))
      nil
    end

    def use_alpha=(use_alpha)
      LibGtk.color_chooser_set_use_alpha(@pointer.as(LibGtk::ColorChooser*), use_alpha)
      nil
    end

    alias ColorActivatedSignal = ColorChooser, Gdk::RGBA ->
    def on_color_activated(&__block : ColorActivatedSignal)
      __callback = ->(_arg0 : LibGtk::ColorChooser*, _arg1 : LibGdk::RGBA*) {
       __return_value = __block.call(ColorChooser.new(_arg0), Gdk::RGBA.new(_arg1))
       __return_value
      }
      connect("color-activated", __callback)
    end

  end
end

