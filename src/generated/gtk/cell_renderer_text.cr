require "./cell_renderer"

module Gtk
  class CellRendererText < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererText*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererText*)
    end

    def align_set
      __return_value = LibGtk.cell_renderer_text_get_align_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def alignment
      __return_value = LibGtk.cell_renderer_text_get_alignment(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def attributes
      __return_value = LibGtk.cell_renderer_text_get_attributes(to_unsafe.as(LibGtk::CellRendererText*))
      Pango::AttrList.new(__return_value)
    end


    def background_gdk
      __return_value = LibGtk.cell_renderer_text_get_background_gdk(to_unsafe.as(LibGtk::CellRendererText*))
      Gdk::Color.new(__return_value)
    end

    def background_rgba
      __return_value = LibGtk.cell_renderer_text_get_background_rgba(to_unsafe.as(LibGtk::CellRendererText*))
      Gdk::RGBA.new(__return_value)
    end

    def background_set
      __return_value = LibGtk.cell_renderer_text_get_background_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def editable
      __return_value = LibGtk.cell_renderer_text_get_editable(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def editable_set
      __return_value = LibGtk.cell_renderer_text_get_editable_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def ellipsize
      __return_value = LibGtk.cell_renderer_text_get_ellipsize(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def ellipsize_set
      __return_value = LibGtk.cell_renderer_text_get_ellipsize_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def family
      __return_value = LibGtk.cell_renderer_text_get_family(to_unsafe.as(LibGtk::CellRendererText*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def family_set
      __return_value = LibGtk.cell_renderer_text_get_family_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def font
      __return_value = LibGtk.cell_renderer_text_get_font(to_unsafe.as(LibGtk::CellRendererText*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def font_desc
      __return_value = LibGtk.cell_renderer_text_get_font_desc(to_unsafe.as(LibGtk::CellRendererText*))
      Pango::FontDescription.new(__return_value)
    end


    def foreground_gdk
      __return_value = LibGtk.cell_renderer_text_get_foreground_gdk(to_unsafe.as(LibGtk::CellRendererText*))
      Gdk::Color.new(__return_value)
    end

    def foreground_rgba
      __return_value = LibGtk.cell_renderer_text_get_foreground_rgba(to_unsafe.as(LibGtk::CellRendererText*))
      Gdk::RGBA.new(__return_value)
    end

    def foreground_set
      __return_value = LibGtk.cell_renderer_text_get_foreground_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def language
      __return_value = LibGtk.cell_renderer_text_get_language(to_unsafe.as(LibGtk::CellRendererText*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def language_set
      __return_value = LibGtk.cell_renderer_text_get_language_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end


    def max_width_chars
      __return_value = LibGtk.cell_renderer_text_get_max_width_chars(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def placeholder_text
      __return_value = LibGtk.cell_renderer_text_get_placeholder_text(to_unsafe.as(LibGtk::CellRendererText*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def rise
      __return_value = LibGtk.cell_renderer_text_get_rise(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def rise_set
      __return_value = LibGtk.cell_renderer_text_get_rise_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def scale
      __return_value = LibGtk.cell_renderer_text_get_scale(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def scale_set
      __return_value = LibGtk.cell_renderer_text_get_scale_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def single_paragraph_mode
      __return_value = LibGtk.cell_renderer_text_get_single_paragraph_mode(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def size
      __return_value = LibGtk.cell_renderer_text_get_size(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def size_points
      __return_value = LibGtk.cell_renderer_text_get_size_points(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def size_set
      __return_value = LibGtk.cell_renderer_text_get_size_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def stretch
      __return_value = LibGtk.cell_renderer_text_get_stretch(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def stretch_set
      __return_value = LibGtk.cell_renderer_text_get_stretch_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def strikethrough
      __return_value = LibGtk.cell_renderer_text_get_strikethrough(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def strikethrough_set
      __return_value = LibGtk.cell_renderer_text_get_strikethrough_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def style
      __return_value = LibGtk.cell_renderer_text_get_style(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def style_set
      __return_value = LibGtk.cell_renderer_text_get_style_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def text
      __return_value = LibGtk.cell_renderer_text_get_text(to_unsafe.as(LibGtk::CellRendererText*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def underline
      __return_value = LibGtk.cell_renderer_text_get_underline(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def underline_set
      __return_value = LibGtk.cell_renderer_text_get_underline_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def variant
      __return_value = LibGtk.cell_renderer_text_get_variant(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def variant_set
      __return_value = LibGtk.cell_renderer_text_get_variant_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def weight
      __return_value = LibGtk.cell_renderer_text_get_weight(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def weight_set
      __return_value = LibGtk.cell_renderer_text_get_weight_set(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def width_chars
      __return_value = LibGtk.cell_renderer_text_get_width_chars(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def wrap_mode
      __return_value = LibGtk.cell_renderer_text_get_wrap_mode(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def wrap_width
      __return_value = LibGtk.cell_renderer_text_get_wrap_width(to_unsafe.as(LibGtk::CellRendererText*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_text_new
      cast Gtk::CellRenderer.new(__return_value)
    end

    def fixed_height_from_font=(number_of_rows)
      LibGtk.cell_renderer_text_set_fixed_height_from_font(@pointer.as(LibGtk::CellRendererText*), Int32.new(number_of_rows))
      nil
    end

    alias EditedSignal = CellRendererText, String, String ->
    def on_edited(&__block : EditedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererText*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRendererText.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)))
       __return_value
      }
      connect("edited", __callback)
    end

  end
end

