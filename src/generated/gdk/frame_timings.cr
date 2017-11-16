module Gdk
  class FrameTimings
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGdk::FrameTimings*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::FrameTimings*)
    end

    def complete
      __return_value = LibGdk.frame_timings_get_complete(@pointer.as(LibGdk::FrameTimings*))
      __return_value
    end

    def frame_counter
      __return_value = LibGdk.frame_timings_get_frame_counter(@pointer.as(LibGdk::FrameTimings*))
      __return_value
    end

    def frame_time
      __return_value = LibGdk.frame_timings_get_frame_time(@pointer.as(LibGdk::FrameTimings*))
      __return_value
    end

    def predicted_presentation_time
      __return_value = LibGdk.frame_timings_get_predicted_presentation_time(@pointer.as(LibGdk::FrameTimings*))
      __return_value
    end

    def presentation_time
      __return_value = LibGdk.frame_timings_get_presentation_time(@pointer.as(LibGdk::FrameTimings*))
      __return_value
    end

    def refresh_interval
      __return_value = LibGdk.frame_timings_get_refresh_interval(@pointer.as(LibGdk::FrameTimings*))
      __return_value
    end

    def ref
      __return_value = LibGdk.frame_timings_ref(@pointer.as(LibGdk::FrameTimings*))
      Gdk::FrameTimings.new(__return_value)
    end

    def unref
      LibGdk.frame_timings_unref(@pointer.as(LibGdk::FrameTimings*))
      nil
    end

  end
end

