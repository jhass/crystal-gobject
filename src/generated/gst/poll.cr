module Gst
  class Poll
    include GObject::WrappedType

    def initialize(@gst_poll)
    end

    def to_unsafe
      @gst_poll.not_nil!
    end

    def add_fd(fd)
      __return_value = LibGst.poll_add_fd((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def fd_can_read(fd)
      __return_value = LibGst.poll_fd_can_read((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def fd_can_write(fd)
      __return_value = LibGst.poll_fd_can_write((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def fd_ctl_read(fd, active)
      __return_value = LibGst.poll_fd_ctl_read((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*), active)
      __return_value
    end

    def fd_ctl_write(fd, active)
      __return_value = LibGst.poll_fd_ctl_write((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*), active)
      __return_value
    end

    def fd_has_closed(fd)
      __return_value = LibGst.poll_fd_has_closed((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def fd_has_error(fd)
      __return_value = LibGst.poll_fd_has_error((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def fd_ignored(fd)
      __return_value = LibGst.poll_fd_ignored((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def free
      __return_value = LibGst.poll_free((to_unsafe as LibGst::Poll*))
      __return_value
    end

    def read_gpollfd(fd)
      __return_value = LibGst.poll_get_read_gpollfd((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGLib::PollFD*))
      __return_value
    end

    def read_control
      __return_value = LibGst.poll_read_control((to_unsafe as LibGst::Poll*))
      __return_value
    end

    def remove_fd(fd)
      __return_value = LibGst.poll_remove_fd((to_unsafe as LibGst::Poll*), (fd.to_unsafe as LibGst::PollFD*))
      __return_value
    end

    def restart
      __return_value = LibGst.poll_restart((to_unsafe as LibGst::Poll*))
      __return_value
    end

    def controllable=(controllable)
      __return_value = LibGst.poll_set_controllable((to_unsafe as LibGst::Poll*), controllable)
      __return_value
    end

    def flushing=(flushing)
      __return_value = LibGst.poll_set_flushing((to_unsafe as LibGst::Poll*), flushing)
      __return_value
    end

    def wait(timeout)
      __return_value = LibGst.poll_wait((to_unsafe as LibGst::Poll*), UInt64.new(timeout))
      __return_value
    end

    def write_control
      __return_value = LibGst.poll_write_control((to_unsafe as LibGst::Poll*))
      __return_value
    end

  end
end

