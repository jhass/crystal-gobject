module Pango
  class Fontset < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::Fontset*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Fontset*)
    end

    def foreach(func, data)
      LibPango.fontset_foreach(@pointer.as(LibPango::Fontset*), func, data ? data : nil)
      nil
    end

    def font(wc)
      __return_value = LibPango.fontset_get_font(@pointer.as(LibPango::Fontset*), UInt32.new(wc))
      Pango::Font.new(__return_value)
    end

    def metrics
      __return_value = LibPango.fontset_get_metrics(@pointer.as(LibPango::Fontset*))
      Pango::FontMetrics.new(__return_value)
    end

  end
end

