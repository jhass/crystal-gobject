module Gtk
  class InfoBarPrivate
    include GObject::WrappedType

    def initialize(@gtk_info_bar_private)
    end

    def to_unsafe
      @gtk_info_bar_private.not_nil!
    end

  end
end

