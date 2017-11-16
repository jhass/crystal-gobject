module GLib
  class FloatIEEE754
    include GObject::WrappedType

    def v_float
      (to_unsafe.as(LibGLib::FloatIEEE754*).value.v_float)
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::FloatIEEE754*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::FloatIEEE754*)
    end

  end
end

