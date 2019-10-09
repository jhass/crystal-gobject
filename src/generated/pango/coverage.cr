module Pango
  class Coverage < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::Coverage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Coverage*)
    end

    def self.new : self
      __return_value = LibPango.coverage_new
      cast Pango::Coverage.new(__return_value)
    end

    def self.from_bytes(bytes, n_bytes)
      __return_value = LibPango.coverage_from_bytes(bytes, Int32.new(n_bytes))
      Pango::Coverage.new(__return_value) if __return_value
    end

    def copy
      __return_value = LibPango.coverage_copy(@pointer.as(LibPango::Coverage*))
      Pango::Coverage.new(__return_value)
    end

    def get(index)
      __return_value = LibPango.coverage_get(@pointer.as(LibPango::Coverage*), Int32.new(index))
      __return_value
    end

    def max(other)
      LibPango.coverage_max(@pointer.as(LibPango::Coverage*), other.to_unsafe.as(LibPango::Coverage*))
      nil
    end

    def ref
      __return_value = LibPango.coverage_ref(@pointer.as(LibPango::Coverage*))
      Pango::Coverage.new(__return_value)
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

