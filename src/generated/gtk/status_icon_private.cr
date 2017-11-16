module Gtk
  class StatusIconPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::StatusIconPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StatusIconPrivate*)
    end

  end
end

