module Pango
  class FontMetrics
    include GObject::WrappedType

    @pango_font_metrics : LibPango::FontMetrics*?
    def initialize(@pango_font_metrics : LibPango::FontMetrics*)
    end

    def to_unsafe
      @pango_font_metrics.not_nil!
    end

    def self.new : self
      __return_value = LibPango.font_metrics_new
      cast Pango::FontMetrics.new(__return_value)
    end

    def approximate_char_width
      __return_value = LibPango.font_metrics_get_approximate_char_width(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def approximate_digit_width
      __return_value = LibPango.font_metrics_get_approximate_digit_width(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def ascent
      __return_value = LibPango.font_metrics_get_ascent(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def descent
      __return_value = LibPango.font_metrics_get_descent(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def strikethrough_position
      __return_value = LibPango.font_metrics_get_strikethrough_position(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def strikethrough_thickness
      __return_value = LibPango.font_metrics_get_strikethrough_thickness(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def underline_position
      __return_value = LibPango.font_metrics_get_underline_position(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def underline_thickness
      __return_value = LibPango.font_metrics_get_underline_thickness(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

    def ref
      __return_value = LibPango.font_metrics_ref(to_unsafe.as(LibPango::FontMetrics*))
      Pango::FontMetrics.new(__return_value) if __return_value
    end

    def unref
      __return_value = LibPango.font_metrics_unref(to_unsafe.as(LibPango::FontMetrics*))
      __return_value
    end

  end
end

