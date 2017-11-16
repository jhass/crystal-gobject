module Gtk
  class FontSelectionDialogPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FontSelectionDialogPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontSelectionDialogPrivate*)
    end

  end
end

