module Gtk
  class WindowGroupPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::WindowGroupPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WindowGroupPrivate*)
    end

  end
end

