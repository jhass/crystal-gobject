module Gtk
  class TextViewPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TextViewPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextViewPrivate*)
    end

  end
end

