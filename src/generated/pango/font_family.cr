module Pango
  class FontFamily < GObject::Object
    def initialize(@pango_font_family)
    end

    def to_unsafe
      @pango_font_family.not_nil!
    end

    def name
      __return_value = LibPango.font_family_get_name((to_unsafe as LibPango::FontFamily*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def monospace?
      __return_value = LibPango.font_family_is_monospace((to_unsafe as LibPango::FontFamily*))
      __return_value
    end

    def list_faces(faces, n_faces)
      __return_value = LibPango.font_family_list_faces((to_unsafe as LibPango::FontFamily*), faces, Int32.new(n_faces))
      __return_value
    end

  end
end

