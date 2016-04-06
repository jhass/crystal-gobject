module Gtk
  class HeaderBarPrivate
    include GObject::WrappedType

    def initialize(@gtk_header_bar_private)
    end

    def to_unsafe
      @gtk_header_bar_private.not_nil!
    end

  end
end

