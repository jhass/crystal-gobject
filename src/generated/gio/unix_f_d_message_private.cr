module Gio
  class UnixFDMessagePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixFDMessagePrivate*))
    end

    @gio_unix_f_d_message_private : LibGio::UnixFDMessagePrivate*?
    def initialize(@gio_unix_f_d_message_private : LibGio::UnixFDMessagePrivate*)
    end

    def to_unsafe
      @gio_unix_f_d_message_private.not_nil!.as(Void*)
    end

  end
end

