module Gtk
  class ApplicationPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ApplicationPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ApplicationPrivate*)
    end

  end
end

