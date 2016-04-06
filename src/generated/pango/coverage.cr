module Pango
  class Coverage
    include GObject::WrappedType

    def initialize(@pango_coverage)
    end

    def to_unsafe
      @pango_coverage.not_nil!
    end

    def get(index)
      __return_value = LibPango.coverage_get((to_unsafe as LibPango::Coverage*), Int32.new(index))
      __return_value
    end

    def max(other)
      __return_value = LibPango.coverage_max((to_unsafe as LibPango::Coverage*), (other.to_unsafe as LibPango::Coverage*))
      __return_value
    end

    def set(index, level)
      __return_value = LibPango.coverage_set((to_unsafe as LibPango::Coverage*), Int32.new(index), level)
      __return_value
    end

    def to_bytes(bytes, n_bytes)
      __return_value = LibPango.coverage_to_bytes((to_unsafe as LibPango::Coverage*), bytes, Int32.new(n_bytes))
      __return_value
    end

    def unref
      __return_value = LibPango.coverage_unref((to_unsafe as LibPango::Coverage*))
      __return_value
    end

  end
end

