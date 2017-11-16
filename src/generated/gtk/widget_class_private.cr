module Gtk
  class WidgetClassPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::WidgetClassPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WidgetClassPrivate*)
    end

  end
end

