module Gtk
  class AssistantPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AssistantPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AssistantPrivate*)
    end

  end
end

