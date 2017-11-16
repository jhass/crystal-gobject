module Gtk
  class TextTagPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TextTagPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextTagPrivate*)
    end

  end
end

