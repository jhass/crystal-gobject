module Gtk
  class ActionBarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ActionBarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ActionBarPrivate*)
    end

  end
end

