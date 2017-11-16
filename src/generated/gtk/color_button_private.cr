module Gtk
  class ColorButtonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ColorButtonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorButtonPrivate*)
    end

  end
end

