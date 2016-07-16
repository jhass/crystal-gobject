module Gtk
  class CalendarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CalendarPrivate*))
    end

    @gtk_calendar_private : LibGtk::CalendarPrivate*?
    def initialize(@gtk_calendar_private : LibGtk::CalendarPrivate*)
    end

    def to_unsafe
      @gtk_calendar_private.not_nil!
    end

  end
end

