module Gtk
  class RadioActionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RadioActionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioActionPrivate*)
    end

  end
end

