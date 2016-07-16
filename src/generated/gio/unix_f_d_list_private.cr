module Gio
  class UnixFDListPrivate
    include GObject::WrappedType

    @gio_unix_f_d_list_private : LibGio::UnixFDListPrivate*?
    def initialize(@gio_unix_f_d_list_private : LibGio::UnixFDListPrivate*)
    end

    def to_unsafe
      @gio_unix_f_d_list_private.not_nil!.as(Void*)
    end

  end
end

