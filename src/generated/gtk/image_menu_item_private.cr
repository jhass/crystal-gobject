module Gtk
  class ImageMenuItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ImageMenuItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ImageMenuItemPrivate*)
    end

  end
end

