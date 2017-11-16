module Gtk
  class FontChooserWidgetPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FontChooserWidgetPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontChooserWidgetPrivate*)
    end

  end
end

