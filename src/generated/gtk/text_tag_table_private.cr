module Gtk
  class TextTagTablePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TextTagTablePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextTagTablePrivate*)
    end

  end
end

