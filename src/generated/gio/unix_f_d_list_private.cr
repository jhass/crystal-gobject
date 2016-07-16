module Gio
  class UnixFDListPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixFDListPrivate*))
    end

    @gio_unix_f_d_list_private : LibGio::UnixFDListPrivate*?
    def initialize(@gio_unix_f_d_list_private : LibGio::UnixFDListPrivate*)
    end

    def to_unsafe
      @gio_unix_f_d_list_private.not_nil!
    end

  end
end

