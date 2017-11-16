module Pango
  class Coverage
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::Coverage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Coverage*)
    end

    def get(index)
      __return_value = LibPango.coverage_get(@pointer.as(LibPango::Coverage*), Int32.new(index))
      __return_value
    end

    def max(other)
      LibPango.coverage_max(@pointer.as(LibPango::Coverage*), other.to_unsafe.as(LibPango::Coverage*))
      nil
    end

    def set(index, level : Pango::CoverageLevel)
      LibPango.coverage_set(@pointer.as(LibPango::Coverage*), Int32.new(index), level)
      nil
    end

    def to_bytes(bytes, n_bytes)
      LibPango.coverage_to_bytes(@pointer.as(LibPango::Coverage*), bytes, n_bytes)
      nil
    end

    def unref
      LibPango.coverage_unref(@pointer.as(LibPango::Coverage*))
      nil
    end

  end
end

