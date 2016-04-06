module GLib
  class PollFD
    include GObject::WrappedType

    def initialize(@g_lib_poll_f_d)
    end

    def to_unsafe
      @g_lib_poll_f_d.not_nil!
    end

  end
end

