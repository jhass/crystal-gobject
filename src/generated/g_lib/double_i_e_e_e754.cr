module GLib
  class DoubleIEEE754
    include GObject::WrappedType

    def v_double
      (to_unsafe.as(LibGLib::DoubleIEEE754*).value.v_double)
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::DoubleIEEE754*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::DoubleIEEE754*)
    end

  end
end

