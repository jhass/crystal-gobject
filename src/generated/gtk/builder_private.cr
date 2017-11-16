module Gtk
  class BuilderPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::BuilderPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::BuilderPrivate*)
    end

  end
end

