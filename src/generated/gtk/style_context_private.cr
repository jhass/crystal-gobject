module Gtk
  class StyleContextPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::StyleContextPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StyleContextPrivate*)
    end

  end
end

