module Gtk
  class ImagePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ImagePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ImagePrivate*)
    end

  end
end

