module Gst
  class PollFD
    include GObject::WrappedType

    def initialize(@gst_poll_f_d)
    end

    def to_unsafe
      @gst_poll_f_d.not_nil!
    end

    def init
      __return_value = LibGst.poll_f_d_init((to_unsafe as LibGst::PollFD*))
      __return_value
    end

  end
end

