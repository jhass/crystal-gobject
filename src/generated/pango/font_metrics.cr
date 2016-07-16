module Pango
  class FontMetrics
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(36, 0u8)
      super(ptr.as(LibPango::FontMetrics*))
    end

    @pango_font_metrics : LibPango::FontMetrics*?
    def initialize(@pango_font_metrics : LibPango::FontMetrics*)
    end

    def to_unsafe
      @pango_font_metrics.not_nil!.as(Void*)
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

    def ref_count
      (to_unsafe.as(LibPango::FontMetrics*).value.ref_count)
    end

    def ascent
      (to_unsafe.as(LibPango::FontMetrics*).value.ascent)
    end

    def descent
      (to_unsafe.as(LibPango::FontMetrics*).value.descent)
    end

    def approximate_char_width
      (to_unsafe.as(LibPango::FontMetrics*).value.approximate_char_width)
    end

    def approximate_digit_width
      (to_unsafe.as(LibPango::FontMetrics*).value.approximate_digit_width)
    end

    def underline_position
      (to_unsafe.as(LibPango::FontMetrics*).value.underline_position)
    end

    def underline_thickness
      (to_unsafe.as(LibPango::FontMetrics*).value.underline_thickness)
    end

    def strikethrough_position
      (to_unsafe.as(LibPango::FontMetrics*).value.strikethrough_position)
    end

    def strikethrough_thickness
      (to_unsafe.as(LibPango::FontMetrics*).value.strikethrough_thickness)
    end

  end
end

