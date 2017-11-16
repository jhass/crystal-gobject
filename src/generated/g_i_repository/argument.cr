module GIRepository
  class Argument
    include GObject::WrappedType

    def v_boolean
      (to_unsafe.as(LibGIRepository::Argument*).value.v_boolean)
    end

    def v_int8
      (to_unsafe.as(LibGIRepository::Argument*).value.v_int8)
    end

    def v_uint8
      (to_unsafe.as(LibGIRepository::Argument*).value.v_uint8)
    end

    def v_int16
      (to_unsafe.as(LibGIRepository::Argument*).value.v_int16)
    end

    def v_uint16
      (to_unsafe.as(LibGIRepository::Argument*).value.v_uint16)
    end

    def v_int32
      (to_unsafe.as(LibGIRepository::Argument*).value.v_int32)
    end

    def v_uint32
      (to_unsafe.as(LibGIRepository::Argument*).value.v_uint32)
    end

    def v_int64
      (to_unsafe.as(LibGIRepository::Argument*).value.v_int64)
    end

    def v_uint64
      (to_unsafe.as(LibGIRepository::Argument*).value.v_uint64)
    end

    def v_float
      (to_unsafe.as(LibGIRepository::Argument*).value.v_float)
    end

    def v_double
      (to_unsafe.as(LibGIRepository::Argument*).value.v_double)
    end

    def v_short
      (to_unsafe.as(LibGIRepository::Argument*).value.v_short)
    end

    def v_ushort
      (to_unsafe.as(LibGIRepository::Argument*).value.v_ushort)
    end

    def v_int
      (to_unsafe.as(LibGIRepository::Argument*).value.v_int)
    end

    def v_uint
      (to_unsafe.as(LibGIRepository::Argument*).value.v_uint)
    end

    def v_long
      (to_unsafe.as(LibGIRepository::Argument*).value.v_long)
    end

    def v_ulong
      (to_unsafe.as(LibGIRepository::Argument*).value.v_ulong)
    end

    def v_ssize
      (to_unsafe.as(LibGIRepository::Argument*).value.v_ssize)
    end

    def v_size
      (to_unsafe.as(LibGIRepository::Argument*).value.v_size)
    end

    def v_string
      (raise "Expected string but got null" unless (to_unsafe.as(LibGIRepository::Argument*).value.v_string); ::String.new((to_unsafe.as(LibGIRepository::Argument*).value.v_string)))
    end

    def v_pointer
      (to_unsafe.as(LibGIRepository::Argument*).value.v_pointer)
    end

    @pointer : Void*
    def initialize(pointer : LibGIRepository::Argument*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGIRepository::Argument*)
    end

  end
end

