module Pango
  class FontFace < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::FontFace*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::FontFace*)
    end

    def describe
      __return_value = LibPango.font_face_describe(@pointer.as(LibPango::FontFace*))
      Pango::FontDescription.new(__return_value)
    end

    def face_name
      __return_value = LibPango.font_face_get_face_name(@pointer.as(LibPango::FontFace*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def synthesized?
      __return_value = LibPango.font_face_is_synthesized(@pointer.as(LibPango::FontFace*))
      __return_value
    end

    def list_sizes(sizes, n_sizes)
      LibPango.font_face_list_sizes(@pointer.as(LibPango::FontFace*), sizes, n_sizes)
      nil
    end

  end
end

