module Gtk
  class WindowGeometryInfo
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::WindowGeometryInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WindowGeometryInfo*)
    end

  end
end

