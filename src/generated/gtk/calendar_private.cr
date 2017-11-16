module Gtk
  class CalendarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CalendarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CalendarPrivate*)
    end

  end
end

