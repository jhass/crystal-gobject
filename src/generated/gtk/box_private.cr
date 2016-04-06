module Gtk
  class BoxPrivate
    include GObject::WrappedType

    def initialize(@gtk_box_private)
    end

    def to_unsafe
      @gtk_box_private.not_nil!
    end

  end
end

