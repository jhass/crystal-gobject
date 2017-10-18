module Pango
  class Coverage
    include GObject::WrappedType

    @pango_coverage : LibPango::Coverage*?
    def initialize(@pango_coverage : LibPango::Coverage*)
    end

    def to_unsafe
      @pango_coverage.not_nil!
    end

    def get(index)
      __return_value = LibPango.coverage_get(to_unsafe.as(LibPango::Coverage*), Int32.new(index))
      __return_value
    end

    def max(other)
      LibPango.coverage_max(to_unsafe.as(LibPango::Coverage*), other.to_unsafe.as(LibPango::Coverage*))
      nil
    end

    def set(index, level : Pango::CoverageLevel)
      LibPango.coverage_set(to_unsafe.as(LibPango::Coverage*), Int32.new(index), level)
      nil
    end

    def to_bytes(bytes, n_bytes)
      LibPango.coverage_to_bytes(to_unsafe.as(LibPango::Coverage*), bytes, n_bytes)
      nil
    end

    def unref
      LibPango.coverage_unref(to_unsafe.as(LibPango::Coverage*))
      nil
    end

  end
end

