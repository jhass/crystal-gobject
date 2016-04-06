module Gtk
  class ViewportPrivate
    include GObject::WrappedType

    def initialize(@gtk_viewport_private)
    end

    def to_unsafe
      @gtk_viewport_private.not_nil!
    end

  end
end

