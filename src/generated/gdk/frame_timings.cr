module Gdk
  class FrameTimings
    include GObject::WrappedType

    def initialize(@gdk_frame_timings)
    end

    def to_unsafe
      @gdk_frame_timings.not_nil!
    end

    def complete
      __return_value = LibGdk.frame_timings_get_complete((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

    def frame_counter
      __return_value = LibGdk.frame_timings_get_frame_counter((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

    def frame_time
      __return_value = LibGdk.frame_timings_get_frame_time((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

    def predicted_presentation_time
      __return_value = LibGdk.frame_timings_get_predicted_presentation_time((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

    def presentation_time
      __return_value = LibGdk.frame_timings_get_presentation_time((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

    def refresh_interval
      __return_value = LibGdk.frame_timings_get_refresh_interval((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

    def ref
      __return_value = LibGdk.frame_timings_ref((to_unsafe as LibGdk::FrameTimings*))
      Gdk::FrameTimings.new(__return_value)
    end

    def unref
      __return_value = LibGdk.frame_timings_unref((to_unsafe as LibGdk::FrameTimings*))
      __return_value
    end

  end
end

