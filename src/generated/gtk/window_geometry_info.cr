module Gtk
  class WindowGeometryInfo
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WindowGeometryInfo*))
    end

    @gtk_window_geometry_info : LibGtk::WindowGeometryInfo*?
    def initialize(@gtk_window_geometry_info : LibGtk::WindowGeometryInfo*)
    end

    def to_unsafe
      @gtk_window_geometry_info.not_nil!.as(Void*)
    end

  end
end

