module Pango
  class FontFamily < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::FontFamily*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::FontFamily*)
    end

    def name
      __return_value = LibPango.font_family_get_name(@pointer.as(LibPango::FontFamily*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def monospace?
      __return_value = LibPango.font_family_is_monospace(@pointer.as(LibPango::FontFamily*))
      __return_value
    end

    def variable?
      __return_value = LibPango.font_family_is_variable(@pointer.as(LibPango::FontFamily*))
      __return_value
    end

    def list_faces(faces, n_faces)
      LibPango.font_family_list_faces(@pointer.as(LibPango::FontFamily*), faces, n_faces)
      nil
    end

  end
end

