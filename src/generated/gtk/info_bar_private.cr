module Gtk
  class InfoBarPrivate
    include GObject::WrappedType

    @gtk_info_bar_private : LibGtk::InfoBarPrivate*?
    def initialize(@gtk_info_bar_private : LibGtk::InfoBarPrivate*)
    end

    def to_unsafe
      @gtk_info_bar_private.not_nil!.as(Void*)
    end

  end
end

