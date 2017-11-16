module Gtk
  class UIManagerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::UIManagerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::UIManagerPrivate*)
    end

  end
end

