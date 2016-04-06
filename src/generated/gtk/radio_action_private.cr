module Gtk
  class RadioActionPrivate
    include GObject::WrappedType

    def initialize(@gtk_radio_action_private)
    end

    def to_unsafe
      @gtk_radio_action_private.not_nil!
    end

  end
end

