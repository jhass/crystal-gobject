module GLib
  class DoubleIEEE754
    include GObject::WrappedType

    @g_lib_double_i_e_e_e754 : LibGLib::DoubleIEEE754*?
    def initialize(@g_lib_double_i_e_e_e754 : LibGLib::DoubleIEEE754*)
    end

    def to_unsafe
      @g_lib_double_i_e_e_e754.not_nil!.as(Void*)
    end

  end
end

