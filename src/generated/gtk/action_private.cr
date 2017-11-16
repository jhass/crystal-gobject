module Gtk
  class ActionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ActionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ActionPrivate*)
    end

  end
end

