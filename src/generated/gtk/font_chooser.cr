module Gtk
  module FontChooser
    def font
      __return_value = LibGtk.font_chooser_get_font((to_unsafe as LibGtk::FontChooser*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def font_desc
      __return_value = LibGtk.font_chooser_get_font_desc((to_unsafe as LibGtk::FontChooser*))
      Pango::FontDescription.new(__return_value)
    end

    def font_face
      __return_value = LibGtk.font_chooser_get_font_face((to_unsafe as LibGtk::FontChooser*))
      Pango::FontFace.new(__return_value)
    end

    def font_family
      __return_value = LibGtk.font_chooser_get_font_family((to_unsafe as LibGtk::FontChooser*))
      Pango::FontFamily.new(__return_value)
    end

    def font_size
      __return_value = LibGtk.font_chooser_get_font_size((to_unsafe as LibGtk::FontChooser*))
      __return_value
    end

    def preview_text
      __return_value = LibGtk.font_chooser_get_preview_text((to_unsafe as LibGtk::FontChooser*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def show_preview_entry
      __return_value = LibGtk.font_chooser_get_show_preview_entry((to_unsafe as LibGtk::FontChooser*))
      __return_value
    end

    def set_filter_func(filter : LibGtk::FontFilterFunc?, user_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.font_chooser_set_filter_func((to_unsafe as LibGtk::FontChooser*), filter && filter, user_data, destroy)
      __return_value
    end

    def font=(fontname)
      __return_value = LibGtk.font_chooser_set_font((to_unsafe as LibGtk::FontChooser*), fontname)
      __return_value
    end

    def font_desc=(font_desc)
      __return_value = LibGtk.font_chooser_set_font_desc((to_unsafe as LibGtk::FontChooser*), (font_desc.to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def preview_text=(text)
      __return_value = LibGtk.font_chooser_set_preview_text((to_unsafe as LibGtk::FontChooser*), text)
      __return_value
    end

    def show_preview_entry=(show_preview_entry)
      __return_value = LibGtk.font_chooser_set_show_preview_entry((to_unsafe as LibGtk::FontChooser*), show_preview_entry)
      __return_value
    end

    alias FontActivatedSignal = FontChooser, UInt8 -> 
    def on_font_activated(&__block : FontActivatedSignal)
      __callback = ->(_arg0 : LibGtk::FontChooser*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(FontChooser.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("font-activated", __callback)
    end

  end
end

