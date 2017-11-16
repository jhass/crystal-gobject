module Gtk
  class IMMulticontextPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::IMMulticontextPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IMMulticontextPrivate*)
    end

  end
end

