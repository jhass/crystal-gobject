module Gtk
  class EventBoxPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::EventBoxPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EventBoxPrivate*)
    end

  end
end

