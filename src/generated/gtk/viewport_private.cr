module Gtk
  class ViewportPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ViewportPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ViewportPrivate*)
    end

  end
end

