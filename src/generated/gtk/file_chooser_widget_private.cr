module Gtk
  class FileChooserWidgetPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FileChooserWidgetPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FileChooserWidgetPrivate*)
    end

  end
end

