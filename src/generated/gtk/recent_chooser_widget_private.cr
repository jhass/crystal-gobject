module Gtk
  class RecentChooserWidgetPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RecentChooserWidgetPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentChooserWidgetPrivate*)
    end

  end
end

