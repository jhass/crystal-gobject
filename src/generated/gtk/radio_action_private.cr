module Gtk
  class RadioActionPrivate
    include GObject::WrappedType

    @gtk_radio_action_private : LibGtk::RadioActionPrivate*?
    def initialize(@gtk_radio_action_private : LibGtk::RadioActionPrivate*)
    end

    def to_unsafe
      @gtk_radio_action_private.not_nil!.as(Void*)
    end

  end
end

