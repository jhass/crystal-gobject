module Pango
  class FontFace < GObject::Object
    def initialize(@pango_font_face)
    end

    def to_unsafe
      @pango_font_face.not_nil!
    end

    def describe
      __return_value = LibPango.font_face_describe((to_unsafe as LibPango::FontFace*))
      Pango::FontDescription.new(__return_value)
    end

    def face_name
      __return_value = LibPango.font_face_get_face_name((to_unsafe as LibPango::FontFace*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def synthesized?
      __return_value = LibPango.font_face_is_synthesized((to_unsafe as LibPango::FontFace*))
      __return_value
    end

    def list_sizes(sizes, n_sizes)
      __return_value = LibPango.font_face_list_sizes((to_unsafe as LibPango::FontFace*), sizes && sizes, Int32.new(n_sizes))
      __return_value
    end

  end
end

