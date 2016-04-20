module Gdk
  class TimeCoord
    include GObject::WrappedType

    @gdk_time_coord : LibGdk::TimeCoord*?
    def initialize(@gdk_time_coord : LibGdk::TimeCoord*)
    end

    def to_unsafe
      @gdk_time_coord.not_nil!
    end

  end
end

