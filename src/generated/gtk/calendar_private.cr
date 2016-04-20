module Gtk
  class CalendarPrivate
    include GObject::WrappedType

    @gtk_calendar_private : LibGtk::CalendarPrivate*?
    def initialize(@gtk_calendar_private : LibGtk::CalendarPrivate*)
    end

    def to_unsafe
      @gtk_calendar_private.not_nil!
    end

  end
end

