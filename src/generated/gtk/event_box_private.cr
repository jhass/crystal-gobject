module Gtk
  class EventBoxPrivate
    include GObject::WrappedType

    def initialize(@gtk_event_box_private)
    end

    def to_unsafe
      @gtk_event_box_private.not_nil!
    end

  end
end

