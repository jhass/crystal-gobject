module Gtk
  class ColorSelectionDialogPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ColorSelectionDialogPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorSelectionDialogPrivate*)
    end

  end
end

