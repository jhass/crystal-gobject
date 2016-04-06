module Gdk
  class Geometry
    include GObject::WrappedType

    def initialize(@gdk_geometry)
    end

    def to_unsafe
      @gdk_geometry.not_nil!
    end

  end
end

