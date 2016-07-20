module GLib
  class FloatIEEE754
    include GObject::WrappedType

    def v_float
      (to_unsafe.as(LibGLib::FloatIEEE754*).value.v_float)
    end

    @g_lib_float_i_e_e_e754 : LibGLib::FloatIEEE754*?
    def initialize(@g_lib_float_i_e_e_e754 : LibGLib::FloatIEEE754*)
    end

    def to_unsafe
      @g_lib_float_i_e_e_e754.not_nil!.as(Void*)
    end

  end
end

