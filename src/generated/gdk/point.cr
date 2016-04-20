module Gdk
  class Point
    include GObject::WrappedType

    @gdk_point : LibGdk::Point*?
    def initialize(@gdk_point : LibGdk::Point*)
    end

    def to_unsafe
      @gdk_point.not_nil!
    end

  end
end

