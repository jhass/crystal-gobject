module Gtk
  class CalendarPrivate
    include GObject::WrappedType

    def initialize(@gtk_calendar_private)
    end

    def to_unsafe
      @gtk_calendar_private.not_nil!
    end

  end
end

