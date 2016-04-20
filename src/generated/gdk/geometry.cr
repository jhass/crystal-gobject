module Gdk
  class Geometry
    include GObject::WrappedType

    @gdk_geometry : LibGdk::Geometry*?
    def initialize(@gdk_geometry : LibGdk::Geometry*)
    end

    def to_unsafe
      @gdk_geometry.not_nil!
    end

  end
end

