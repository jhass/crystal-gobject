module Gdk
  class Point
    include GObject::WrappedType

    def initialize(@gdk_point)
    end

    def to_unsafe
      @gdk_point.not_nil!
    end

  end
end

