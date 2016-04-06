module Gtk
  class DialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_dialog_private)
    end

    def to_unsafe
      @gtk_dialog_private.not_nil!
    end

  end
end

