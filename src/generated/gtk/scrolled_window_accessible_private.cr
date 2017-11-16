module Gtk
  class ScrolledWindowAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ScrolledWindowAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScrolledWindowAccessiblePrivate*)
    end

  end
end

