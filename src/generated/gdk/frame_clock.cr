module Gdk
  class FrameClock < GObject::Object
    def initialize(@gdk_frame_clock)
    end

    def to_unsafe
      @gdk_frame_clock.not_nil!
    end

    def begin_updating
      __return_value = LibGdk.frame_clock_begin_updating((to_unsafe as LibGdk::FrameClock*))
      __return_value
    end

    def end_updating
      __return_value = LibGdk.frame_clock_end_updating((to_unsafe as LibGdk::FrameClock*))
      __return_value
    end

    def current_timings
      __return_value = LibGdk.frame_clock_get_current_timings((to_unsafe as LibGdk::FrameClock*))
      Gdk::FrameTimings.new(__return_value) if __return_value
    end

    def frame_counter
      __return_value = LibGdk.frame_clock_get_frame_counter((to_unsafe as LibGdk::FrameClock*))
      __return_value
    end

    def frame_time
      __return_value = LibGdk.frame_clock_get_frame_time((to_unsafe as LibGdk::FrameClock*))
      __return_value
    end

    def history_start
      __return_value = LibGdk.frame_clock_get_history_start((to_unsafe as LibGdk::FrameClock*))
      __return_value
    end

    def refresh_info(base_time, refresh_interval_return, presentation_time_return)
      __return_value = LibGdk.frame_clock_get_refresh_info((to_unsafe as LibGdk::FrameClock*), Int64.new(base_time), refresh_interval_return, presentation_time_return)
      __return_value
    end

    def timings(frame_counter)
      __return_value = LibGdk.frame_clock_get_timings((to_unsafe as LibGdk::FrameClock*), Int64.new(frame_counter))
      Gdk::FrameTimings.new(__return_value) if __return_value
    end

    def request_phase(phase)
      __return_value = LibGdk.frame_clock_request_phase((to_unsafe as LibGdk::FrameClock*), phase)
      __return_value
    end

    alias AfterPaintSignal = FrameClock -> 
    def on_after_paint(&__block : AfterPaintSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("after-paint", __callback)
    end

    alias BeforePaintSignal = FrameClock -> 
    def on_before_paint(&__block : BeforePaintSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("before-paint", __callback)
    end

    alias FlushEventsSignal = FrameClock -> 
    def on_flush_events(&__block : FlushEventsSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("flush-events", __callback)
    end

    alias LayoutSignal = FrameClock -> 
    def on_layout(&__block : LayoutSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("layout", __callback)
    end

    alias PaintSignal = FrameClock -> 
    def on_paint(&__block : PaintSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("paint", __callback)
    end

    alias ResumeEventsSignal = FrameClock -> 
    def on_resume_events(&__block : ResumeEventsSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("resume-events", __callback)
    end

    alias UpdateSignal = FrameClock -> 
    def on_update(&__block : UpdateSignal)
      __callback = ->(_arg0 : LibGdk::FrameClock*) {
       __return_value = __block.call(FrameClock.new(_arg0))
       __return_value
      }
      connect("update", __callback)
    end

  end
end

