module GLib
  class IConv
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::IConv*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::IConv*)
    end

    def new(inbuf, inbytes_left, outbuf, outbytes_left)
      __return_value = LibGLib.i_conv_new(@pointer.as(LibGLib::IConv*), inbuf.to_unsafe, inbytes_left, outbuf.to_unsafe, outbytes_left)
      __return_value
    end

    def close
      __return_value = LibGLib.i_conv_close(@pointer.as(LibGLib::IConv*))
      __return_value
    end

  end
end

