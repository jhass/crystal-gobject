module Gio
  class UnixFDListPrivate
    include GObject::WrappedType

    def initialize(@gio_unix_f_d_list_private)
    end

    def to_unsafe
      @gio_unix_f_d_list_private.not_nil!
    end

  end
end

