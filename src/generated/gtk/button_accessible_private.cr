module Gtk
  class ButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_button_accessible_private)
    end

    def to_unsafe
      @gtk_button_accessible_private.not_nil!
    end

  end
end

