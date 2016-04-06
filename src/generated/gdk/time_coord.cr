module Gdk
  class TimeCoord
    include GObject::WrappedType

    def initialize(@gdk_time_coord)
    end

    def to_unsafe
      @gdk_time_coord.not_nil!
    end

  end
end

