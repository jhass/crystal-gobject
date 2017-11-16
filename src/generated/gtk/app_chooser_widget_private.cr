module Gtk
  class AppChooserWidgetPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AppChooserWidgetPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AppChooserWidgetPrivate*)
    end

  end
end

