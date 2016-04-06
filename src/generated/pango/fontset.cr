module Pango
  class Fontset < GObject::Object
    def initialize(@pango_fontset)
    end

    def to_unsafe
      @pango_fontset.not_nil!
    end

    def foreach(func : LibPango::FontsetForeachFunc, data)
      __return_value = LibPango.fontset_foreach((to_unsafe as LibPango::Fontset*), func, data)
      __return_value
    end

    def font(wc)
      __return_value = LibPango.fontset_get_font((to_unsafe as LibPango::Fontset*), UInt32.new(wc))
      Pango::Font.new(__return_value)
    end

    def metrics
      __return_value = LibPango.fontset_get_metrics((to_unsafe as LibPango::Fontset*))
      Pango::FontMetrics.new(__return_value)
    end

  end
end

