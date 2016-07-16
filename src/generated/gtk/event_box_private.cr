module Gtk
  class EventBoxPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::EventBoxPrivate*))
    end

    @gtk_event_box_private : LibGtk::EventBoxPrivate*?
    def initialize(@gtk_event_box_private : LibGtk::EventBoxPrivate*)
    end

    def to_unsafe
      @gtk_event_box_private.not_nil!
    end

  end
end

