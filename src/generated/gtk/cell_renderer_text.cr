require "./cell_renderer"

module Gtk
  class CellRendererText < CellRenderer
    def initialize @gtk_cell_renderer_text
    end

    def to_unsafe
      @gtk_cell_renderer_text.not_nil!
    end

    def align_set=(__value)
      LibGtk.cell_renderer_text_set_align_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def alignment=(__value)
      LibGtk.cell_renderer_text_set_alignment((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def attributes=(__value)
      LibGtk.cell_renderer_text_set_attributes((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def background=(__value)
      LibGtk.cell_renderer_text_set_background((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def background_gdk=(__value)
      LibGtk.cell_renderer_text_set_background_gdk((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def background_rgba=(__value)
      LibGtk.cell_renderer_text_set_background_rgba((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def background_set=(__value)
      LibGtk.cell_renderer_text_set_background_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def editable=(__value)
      LibGtk.cell_renderer_text_set_editable((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def editable_set=(__value)
      LibGtk.cell_renderer_text_set_editable_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def ellipsize=(__value)
      LibGtk.cell_renderer_text_set_ellipsize((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def ellipsize_set=(__value)
      LibGtk.cell_renderer_text_set_ellipsize_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def family=(__value)
      LibGtk.cell_renderer_text_set_family((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def family_set=(__value)
      LibGtk.cell_renderer_text_set_family_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def font=(__value)
      LibGtk.cell_renderer_text_set_font((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def font_desc=(__value)
      LibGtk.cell_renderer_text_set_font_desc((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def foreground=(__value)
      LibGtk.cell_renderer_text_set_foreground((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def foreground_gdk=(__value)
      LibGtk.cell_renderer_text_set_foreground_gdk((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def foreground_rgba=(__value)
      LibGtk.cell_renderer_text_set_foreground_rgba((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def foreground_set=(__value)
      LibGtk.cell_renderer_text_set_foreground_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def language=(__value)
      LibGtk.cell_renderer_text_set_language((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def language_set=(__value)
      LibGtk.cell_renderer_text_set_language_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def markup=(__value)
      LibGtk.cell_renderer_text_set_markup((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def max_width_chars=(__value)
      LibGtk.cell_renderer_text_set_max_width_chars((to_unsafe as LibGtk::CellRendererText*), Int32.cast(__value))
    end

    def placeholder_text=(__value)
      LibGtk.cell_renderer_text_set_placeholder_text((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def rise=(__value)
      LibGtk.cell_renderer_text_set_rise((to_unsafe as LibGtk::CellRendererText*), Int32.cast(__value))
    end

    def rise_set=(__value)
      LibGtk.cell_renderer_text_set_rise_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def scale=(__value)
      LibGtk.cell_renderer_text_set_scale((to_unsafe as LibGtk::CellRendererText*), Float64.cast(__value))
    end

    def scale_set=(__value)
      LibGtk.cell_renderer_text_set_scale_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def single_paragraph_mode=(__value)
      LibGtk.cell_renderer_text_set_single_paragraph_mode((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def size=(__value)
      LibGtk.cell_renderer_text_set_size((to_unsafe as LibGtk::CellRendererText*), Int32.cast(__value))
    end

    def size_points=(__value)
      LibGtk.cell_renderer_text_set_size_points((to_unsafe as LibGtk::CellRendererText*), Float64.cast(__value))
    end

    def size_set=(__value)
      LibGtk.cell_renderer_text_set_size_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def stretch=(__value)
      LibGtk.cell_renderer_text_set_stretch((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def stretch_set=(__value)
      LibGtk.cell_renderer_text_set_stretch_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def strikethrough=(__value)
      LibGtk.cell_renderer_text_set_strikethrough((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def strikethrough_set=(__value)
      LibGtk.cell_renderer_text_set_strikethrough_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def style=(__value)
      LibGtk.cell_renderer_text_set_style((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def style_set=(__value)
      LibGtk.cell_renderer_text_set_style_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def text=(__value)
      LibGtk.cell_renderer_text_set_text((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def underline=(__value)
      LibGtk.cell_renderer_text_set_underline((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def underline_set=(__value)
      LibGtk.cell_renderer_text_set_underline_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def variant=(__value)
      LibGtk.cell_renderer_text_set_variant((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def variant_set=(__value)
      LibGtk.cell_renderer_text_set_variant_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def weight=(__value)
      LibGtk.cell_renderer_text_set_weight((to_unsafe as LibGtk::CellRendererText*), Int32.cast(__value))
    end

    def weight_set=(__value)
      LibGtk.cell_renderer_text_set_weight_set((to_unsafe as LibGtk::CellRendererText*), Bool.cast(__value))
    end

    def width_chars=(__value)
      LibGtk.cell_renderer_text_set_width_chars((to_unsafe as LibGtk::CellRendererText*), Int32.cast(__value))
    end

    def wrap_mode=(__value)
      LibGtk.cell_renderer_text_set_wrap_mode((to_unsafe as LibGtk::CellRendererText*), __value)
    end

    def wrap_width=(__value)
      LibGtk.cell_renderer_text_set_wrap_width((to_unsafe as LibGtk::CellRendererText*), Int32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_text_new
      Gtk::CellRenderer.new(__return_value)
    end

    def fixed_height_from_font=(number_of_rows)
      __return_value = LibGtk.cell_renderer_text_set_fixed_height_from_font((to_unsafe as LibGtk::CellRendererText*), Int32.cast(number_of_rows))
      __return_value
    end

  end
end

