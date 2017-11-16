module Gtk
  class StylePropertiesPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::StylePropertiesPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StylePropertiesPrivate*)
    end

  end
end

