module Gtk
  class FontButtonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FontButtonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontButtonPrivate*)
    end

  end
end

