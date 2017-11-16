module Gtk
  class TextBTree
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TextBTree*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextBTree*)
    end

  end
end

