module Gtk
  class AppChooserDialogPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AppChooserDialogPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AppChooserDialogPrivate*)
    end

  end
end

