module Gtk
  class FontSelectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::FontSelectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontSelectionPrivate*)
    end

  end
end

