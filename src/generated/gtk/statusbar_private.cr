module Gtk
  class StatusbarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::StatusbarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StatusbarPrivate*)
    end

  end
end

