module Gtk
  module FontChooser
    def font
      __return_value = LibGtk.font_chooser_get_font(@pointer.as(LibGtk::FontChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def font_desc
      __return_value = LibGtk.font_chooser_get_font_desc(@pointer.as(LibGtk::FontChooser*))
      Pango::FontDescription.new(__return_value) if __return_value
    end

    def font_face
      __return_value = LibGtk.font_chooser_get_font_face(@pointer.as(LibGtk::FontChooser*))
      Pango::FontFace.new(__return_value) if __return_value
    end

    def font_family
      __return_value = LibGtk.font_chooser_get_font_family(@pointer.as(LibGtk::FontChooser*))
      Pango::FontFamily.new(__return_value) if __return_value
    end

    def font_features
      __return_value = LibGtk.font_chooser_get_font_features(@pointer.as(LibGtk::FontChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def font_map
      __return_value = LibGtk.font_chooser_get_font_map(@pointer.as(LibGtk::FontChooser*))
      Pango::FontMap.new(__return_value) if __return_value
    end

    def font_size
      __return_value = LibGtk.font_chooser_get_font_size(@pointer.as(LibGtk::FontChooser*))
      __return_value
    end

    def language
      __return_value = LibGtk.font_chooser_get_language(@pointer.as(LibGtk::FontChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def level
      __return_value = LibGtk.font_chooser_get_level(@pointer.as(LibGtk::FontChooser*))
      __return_value
    end

    def preview_text
      __return_value = LibGtk.font_chooser_get_preview_text(@pointer.as(LibGtk::FontChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def show_preview_entry
      __return_value = LibGtk.font_chooser_get_show_preview_entry(@pointer.as(LibGtk::FontChooser*))
      __return_value
    end

    def set_filter_func(filter, user_data, destroy)
      LibGtk.font_chooser_set_filter_func(@pointer.as(LibGtk::FontChooser*), filter ? filter : nil, user_data ? user_data : nil, destroy)
      nil
    end

    def font=(fontname)
      LibGtk.font_chooser_set_font(@pointer.as(LibGtk::FontChooser*), fontname.to_unsafe)
      nil
    end

    def font_desc=(font_desc)
      LibGtk.font_chooser_set_font_desc(@pointer.as(LibGtk::FontChooser*), font_desc.to_unsafe.as(LibPango::FontDescription*))
      nil
    end

    def font_map=(fontmap)
      LibGtk.font_chooser_set_font_map(@pointer.as(LibGtk::FontChooser*), fontmap ? fontmap.to_unsafe.as(LibPango::FontMap*) : nil)
      nil
    end

    def language=(language)
      LibGtk.font_chooser_set_language(@pointer.as(LibGtk::FontChooser*), language.to_unsafe)
      nil
    end

    def level=(level : Gtk::FontChooserLevel)
      LibGtk.font_chooser_set_level(@pointer.as(LibGtk::FontChooser*), level)
      nil
    end

    def preview_text=(text)
      LibGtk.font_chooser_set_preview_text(@pointer.as(LibGtk::FontChooser*), text.to_unsafe)
      nil
    end

    def show_preview_entry=(show_preview_entry)
      LibGtk.font_chooser_set_show_preview_entry(@pointer.as(LibGtk::FontChooser*), show_preview_entry)
      nil
    end

    alias FontActivatedSignal = FontChooser, String ->
    def on_font_activated(&__block : FontActivatedSignal)
      __callback = ->(_arg0 : LibGtk::FontChooser*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(FontChooser.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("font-activated", __callback)
    end

  end
end

