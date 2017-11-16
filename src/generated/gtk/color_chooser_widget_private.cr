module Gtk
  class ColorChooserWidgetPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ColorChooserWidgetPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorChooserWidgetPrivate*)
    end

  end
end

