module GLib
  class IConv
    include GObject::WrappedType

    def initialize(@g_lib_i_conv)
    end

    def to_unsafe
      @g_lib_i_conv.not_nil!
    end

    def new(inbuf, inbytes_left, outbuf, outbytes_left)
      __return_value = LibGLib.i_conv_new((to_unsafe as LibGLib::IConv*), inbuf, inbytes_left, outbuf, outbytes_left)
      __return_value
    end

    def close
      __return_value = LibGLib.i_conv_close((to_unsafe as LibGLib::IConv*))
      __return_value
    end

  end
end

