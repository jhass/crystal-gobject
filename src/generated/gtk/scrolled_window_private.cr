module Gtk
  class ScrolledWindowPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ScrolledWindowPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScrolledWindowPrivate*)
    end

  end
end

