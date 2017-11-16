module Gtk
  class ActionGroupPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ActionGroupPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ActionGroupPrivate*)
    end

  end
end

