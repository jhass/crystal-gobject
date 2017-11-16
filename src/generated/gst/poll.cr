module Gst
  class Poll
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Poll*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Poll*)
    end

    def add_fd(fd)
      __return_value = LibGst.poll_add_fd(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def fd_can_read(fd)
      __return_value = LibGst.poll_fd_can_read(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def fd_can_write(fd)
      __return_value = LibGst.poll_fd_can_write(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def fd_ctl_read(fd, active)
      __return_value = LibGst.poll_fd_ctl_read(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*), active)
      __return_value
    end

    def fd_ctl_write(fd, active)
      __return_value = LibGst.poll_fd_ctl_write(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*), active)
      __return_value
    end

    def fd_has_closed(fd)
      __return_value = LibGst.poll_fd_has_closed(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def fd_has_error(fd)
      __return_value = LibGst.poll_fd_has_error(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def fd_ignored(fd)
      LibGst.poll_fd_ignored(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      nil
    end

    def free
      LibGst.poll_free(@pointer.as(LibGst::Poll*))
      nil
    end

    def read_gpollfd(fd)
      LibGst.poll_get_read_gpollfd(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGLib::PollFD*))
      nil
    end

    def read_control
      __return_value = LibGst.poll_read_control(@pointer.as(LibGst::Poll*))
      __return_value
    end

    def remove_fd(fd)
      __return_value = LibGst.poll_remove_fd(@pointer.as(LibGst::Poll*), fd.to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def restart
      LibGst.poll_restart(@pointer.as(LibGst::Poll*))
      nil
    end

    def controllable=(controllable)
      __return_value = LibGst.poll_set_controllable(@pointer.as(LibGst::Poll*), controllable)
      __return_value
    end

    def flushing=(flushing)
      LibGst.poll_set_flushing(@pointer.as(LibGst::Poll*), flushing)
      nil
    end

    def wait(timeout)
      __return_value = LibGst.poll_wait(@pointer.as(LibGst::Poll*), UInt64.new(timeout))
      __return_value
    end

    def write_control
      __return_value = LibGst.poll_write_control(@pointer.as(LibGst::Poll*))
      __return_value
    end

  end
end

