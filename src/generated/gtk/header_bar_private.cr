module Gtk
  class HeaderBarPrivate
    include GObject::WrappedType

    @gtk_header_bar_private : LibGtk::HeaderBarPrivate*?
    def initialize(@gtk_header_bar_private : LibGtk::HeaderBarPrivate*)
    end

    def to_unsafe
      @gtk_header_bar_private.not_nil!.as(Void*)
    end

  end
end

