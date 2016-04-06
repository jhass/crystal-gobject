module Gtk
  class ScaleButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_scale_button_private)
    end

    def to_unsafe
      @gtk_scale_button_private.not_nil!
    end

  end
end

