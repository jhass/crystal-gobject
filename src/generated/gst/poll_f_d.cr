module Gst
  class PollFD
    include GObject::WrappedType

    def self.new(fd : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGst::PollFD*)).tap do |object|
        object.fd = fd unless fd.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::PollFD*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::PollFD*)
    end

    def init
      LibGst.poll_f_d_init(@pointer.as(LibGst::PollFD*))
      nil
    end

    def fd
      (to_unsafe.as(LibGst::PollFD*).value.fd)
    end

    def fd=(value : Int32)
      to_unsafe.as(LibGst::PollFD*).value.fd = Int32.new(value)
    end

    def idx
      (to_unsafe.as(LibGst::PollFD*).value.idx)
    end

  end
end

