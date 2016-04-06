module Gtk
  class WindowGeometryInfo
    include GObject::WrappedType

    def initialize(@gtk_window_geometry_info)
    end

    def to_unsafe
      @gtk_window_geometry_info.not_nil!
    end

  end
end

