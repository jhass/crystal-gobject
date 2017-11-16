module Gtk
  class ColorChooserDialogPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ColorChooserDialogPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorChooserDialogPrivate*)
    end

  end
end

