module Gtk
  class HandleBoxPrivate
    include GObject::WrappedType

    def initialize(@gtk_handle_box_private)
    end

    def to_unsafe
      @gtk_handle_box_private.not_nil!
    end

  end
end

