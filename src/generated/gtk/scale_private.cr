module Gtk
  class ScalePrivate
    include GObject::WrappedType

    def initialize(@gtk_scale_private)
    end

    def to_unsafe
      @gtk_scale_private.not_nil!
    end

  end
end

