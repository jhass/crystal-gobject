module Gtk
  class EventBoxPrivate
    include GObject::WrappedType

    @gtk_event_box_private : LibGtk::EventBoxPrivate*?
    def initialize(@gtk_event_box_private : LibGtk::EventBoxPrivate*)
    end

    def to_unsafe
      @gtk_event_box_private.not_nil!.as(Void*)
    end

  end
end

