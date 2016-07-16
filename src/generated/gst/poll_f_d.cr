module Gst
  class PollFD
    include GObject::WrappedType

    def self.new(fd : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGst::PollFD*)).tap do |object|
        object.fd = fd unless fd.nil?
      end
    end

    @gst_poll_f_d : LibGst::PollFD*?
    def initialize(@gst_poll_f_d : LibGst::PollFD*)
    end

    def to_unsafe
      @gst_poll_f_d.not_nil!
    end

    def init
      __return_value = LibGst.poll_f_d_init(to_unsafe.as(LibGst::PollFD*))
      __return_value
    end

    def fd
      (to_unsafe.value.fd)
    end

    def fd=(value : Int32)
      to_unsafe.value.fd = Int32.new(value)
    end

    def idx
      (to_unsafe.value.idx)
    end

  end
end

