module Gio
  class IOStreamAdapter
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::IOStreamAdapter*))
    end

    @gio_i_o_stream_adapter : LibGio::IOStreamAdapter*?
    def initialize(@gio_i_o_stream_adapter : LibGio::IOStreamAdapter*)
    end

    def to_unsafe
      @gio_i_o_stream_adapter.not_nil!.as(Void*)
    end

  end
end

