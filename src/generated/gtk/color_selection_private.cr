module Gtk
  class ColorSelectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ColorSelectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorSelectionPrivate*)
    end

  end
end

