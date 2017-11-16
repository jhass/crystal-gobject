module Pango
  class Renderer < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::Renderer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Renderer*)
    end

    def activate
      LibPango.renderer_activate(@pointer.as(LibPango::Renderer*))
      nil
    end

    def deactivate
      LibPango.renderer_deactivate(@pointer.as(LibPango::Renderer*))
      nil
    end

    def draw_error_underline(x, y, width, height)
      LibPango.renderer_draw_error_underline(@pointer.as(LibPango::Renderer*), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      nil
    end

    def draw_glyph(font, glyph, x, y)
      LibPango.renderer_draw_glyph(@pointer.as(LibPango::Renderer*), font.to_unsafe.as(LibPango::Font*), UInt32.new(glyph), Float64.new(x), Float64.new(y))
      nil
    end

    def draw_glyph_item(text, glyph_item, x, y)
      LibPango.renderer_draw_glyph_item(@pointer.as(LibPango::Renderer*), text ? text.to_unsafe : nil, glyph_item.to_unsafe.as(LibPango::GlyphItem*), Int32.new(x), Int32.new(y))
      nil
    end

    def draw_glyphs(font, glyphs, x, y)
      LibPango.renderer_draw_glyphs(@pointer.as(LibPango::Renderer*), font.to_unsafe.as(LibPango::Font*), glyphs.to_unsafe.as(LibPango::GlyphString*), Int32.new(x), Int32.new(y))
      nil
    end

    def draw_layout(layout, x, y)
      LibPango.renderer_draw_layout(@pointer.as(LibPango::Renderer*), layout.to_unsafe.as(LibPango::Layout*), Int32.new(x), Int32.new(y))
      nil
    end

    def draw_layout_line(line, x, y)
      LibPango.renderer_draw_layout_line(@pointer.as(LibPango::Renderer*), line.to_unsafe.as(LibPango::LayoutLine*), Int32.new(x), Int32.new(y))
      nil
    end

    def draw_rectangle(part : Pango::RenderPart, x, y, width, height)
      LibPango.renderer_draw_rectangle(@pointer.as(LibPango::Renderer*), part, Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height))
      nil
    end

    def draw_trapezoid(part : Pango::RenderPart, y1, x11, x21, y2, x12, x22)
      LibPango.renderer_draw_trapezoid(@pointer.as(LibPango::Renderer*), part, Float64.new(y1), Float64.new(x11), Float64.new(x21), Float64.new(y2), Float64.new(x12), Float64.new(x22))
      nil
    end

    def alpha(part : Pango::RenderPart)
      __return_value = LibPango.renderer_get_alpha(@pointer.as(LibPango::Renderer*), part)
      __return_value
    end

    def color(part : Pango::RenderPart)
      __return_value = LibPango.renderer_get_color(@pointer.as(LibPango::Renderer*), part)
      Pango::Color.new(__return_value) if __return_value
    end

    def layout
      __return_value = LibPango.renderer_get_layout(@pointer.as(LibPango::Renderer*))
      Pango::Layout.new(__return_value) if __return_value
    end

    def layout_line
      __return_value = LibPango.renderer_get_layout_line(@pointer.as(LibPango::Renderer*))
      Pango::LayoutLine.new(__return_value) if __return_value
    end

    def matrix
      __return_value = LibPango.renderer_get_matrix(@pointer.as(LibPango::Renderer*))
      Pango::Matrix.new(__return_value) if __return_value
    end

    def part_changed(part : Pango::RenderPart)
      LibPango.renderer_part_changed(@pointer.as(LibPango::Renderer*), part)
      nil
    end

    def set_alpha(part : Pango::RenderPart, alpha)
      LibPango.renderer_set_alpha(@pointer.as(LibPango::Renderer*), part, UInt16.new(alpha))
      nil
    end

    def set_color(part : Pango::RenderPart, color)
      LibPango.renderer_set_color(@pointer.as(LibPango::Renderer*), part, color ? color.to_unsafe.as(LibPango::Color*) : nil)
      nil
    end

    def matrix=(matrix)
      LibPango.renderer_set_matrix(@pointer.as(LibPango::Renderer*), matrix ? matrix.to_unsafe.as(LibPango::Matrix*) : nil)
      nil
    end

  end
end

