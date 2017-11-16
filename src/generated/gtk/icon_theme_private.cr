module Gtk
  class IconThemePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IconThemePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconThemePrivate*)
    end

  end
end

