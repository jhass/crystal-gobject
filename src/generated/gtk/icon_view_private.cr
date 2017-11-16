module Gtk
  class IconViewPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IconViewPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconViewPrivate*)
    end

  end
end

