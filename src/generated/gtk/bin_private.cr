module Gtk
  class BinPrivate
    include GObject::WrappedType

    def initialize(@gtk_bin_private)
    end

    def to_unsafe
      @gtk_bin_private.not_nil!
    end

  end
end

