module Gtk
  class ApplicationWindowPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ApplicationWindowPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ApplicationWindowPrivate*)
    end

  end
end

