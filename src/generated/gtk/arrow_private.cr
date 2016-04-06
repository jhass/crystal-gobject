module Gtk
  class ArrowPrivate
    include GObject::WrappedType

    def initialize(@gtk_arrow_private)
    end

    def to_unsafe
      @gtk_arrow_private.not_nil!
    end

  end
end

