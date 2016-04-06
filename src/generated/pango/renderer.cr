module Pango
  class Renderer < GObject::Object
    def initialize(@pango_renderer)
    end

    def to_unsafe
      @pango_renderer.not_nil!
    end

    def activate
      __return_value = LibPango.renderer_activate((to_unsafe as LibPango::Renderer*))
      __return_value
    end

    def deactivate
      __return_value = LibPango.renderer_deactivate((to_unsafe as LibPango::Renderer*))
      __return_value
    end

    def draw_error_underline(x, y, width, height)
      __return_value = LibPango.renderer_draw_error_underline((to_unsafe as LibPango::Renderer*), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      __return_value
    end

    def draw_glyph(font, glyph, x, y)
      __return_value = LibPango.renderer_draw_glyph((to_unsafe as LibPango::Renderer*), (font.to_unsafe as LibPango::Font*), UInt32.new(glyph), Float64.new(x), Float64.new(y))
      __return_value
    end

    def draw_glyph_item(text, glyph_item, x, y)
      __return_value = LibPango.renderer_draw_glyph_item((to_unsafe as LibPango::Renderer*), text && text, (glyph_item.to_unsafe as LibPango::GlyphItem*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def draw_glyphs(font, glyphs, x, y)
      __return_value = LibPango.renderer_draw_glyphs((to_unsafe as LibPango::Renderer*), (font.to_unsafe as LibPango::Font*), (glyphs.to_unsafe as LibPango::GlyphString*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def draw_layout(layout, x, y)
      __return_value = LibPango.renderer_draw_layout((to_unsafe as LibPango::Renderer*), (layout.to_unsafe as LibPango::Layout*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def draw_layout_line(line, x, y)
      __return_value = LibPango.renderer_draw_layout_line((to_unsafe as LibPango::Renderer*), (line.to_unsafe as LibPango::LayoutLine*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def draw_rectangle(part, x, y, width, height)
      __return_value = LibPango.renderer_draw_rectangle((to_unsafe as LibPango::Renderer*), part, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      __return_value
    end

    def draw_trapezoid(part, y1, x11, x21, y2, x12, x22)
      __return_value = LibPango.renderer_draw_trapezoid((to_unsafe as LibPango::Renderer*), part, Float64.new(y1), Float64.new(x11), Float64.new(x21), Float64.new(y2), Float64.new(x12), Float64.new(x22))
      __return_value
    end

    def alpha(part)
      __return_value = LibPango.renderer_get_alpha((to_unsafe as LibPango::Renderer*), part)
      __return_value
    end

    def color(part)
      __return_value = LibPango.renderer_get_color((to_unsafe as LibPango::Renderer*), part)
      Pango::Color.new(__return_value) if __return_value
    end

    def layout
      __return_value = LibPango.renderer_get_layout((to_unsafe as LibPango::Renderer*))
      Pango::Layout.new(__return_value) if __return_value
    end

    def layout_line
      __return_value = LibPango.renderer_get_layout_line((to_unsafe as LibPango::Renderer*))
      Pango::LayoutLine.new(__return_value) if __return_value
    end

    def matrix
      __return_value = LibPango.renderer_get_matrix((to_unsafe as LibPango::Renderer*))
      Pango::Matrix.new(__return_value) if __return_value
    end

    def part_changed(part)
      __return_value = LibPango.renderer_part_changed((to_unsafe as LibPango::Renderer*), part)
      __return_value
    end

    def set_alpha(part, alpha)
      __return_value = LibPango.renderer_set_alpha((to_unsafe as LibPango::Renderer*), part, UInt16.new(alpha))
      __return_value
    end

    def set_color(part, color)
      __return_value = LibPango.renderer_set_color((to_unsafe as LibPango::Renderer*), part, color && (color.to_unsafe as LibPango::Color*))
      __return_value
    end

    def matrix=(matrix)
      __return_value = LibPango.renderer_set_matrix((to_unsafe as LibPango::Renderer*), matrix && (matrix.to_unsafe as LibPango::Matrix*))
      __return_value
    end

  end
end

