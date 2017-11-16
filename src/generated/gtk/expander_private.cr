module Gtk
  class ExpanderPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ExpanderPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ExpanderPrivate*)
    end

  end
end

