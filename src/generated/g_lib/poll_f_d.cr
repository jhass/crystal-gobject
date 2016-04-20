module GLib
  class PollFD
    include GObject::WrappedType

    @g_lib_poll_f_d : LibGLib::PollFD*?
    def initialize(@g_lib_poll_f_d : LibGLib::PollFD*)
    end

    def to_unsafe
      @g_lib_poll_f_d.not_nil!
    end

  end
end

