module GLib
  class PollFD
    include GObject::WrappedType

    def self.new(fd : Int32|Nil = nil, events : UInt16|Nil = nil, revents : UInt16|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGLib::PollFD*)).tap do |object|
        object.fd = fd unless fd.nil?
        object.events = events unless events.nil?
        object.revents = revents unless revents.nil?
      end
    end

    @g_lib_poll_f_d : LibGLib::PollFD*?
    def initialize(@g_lib_poll_f_d : LibGLib::PollFD*)
    end

    def to_unsafe
      @g_lib_poll_f_d.not_nil!
    end

    def fd
      (to_unsafe.as(LibGLib::PollFD*).value.fd)
    end

    def fd=(value : Int32)
      to_unsafe.as(LibGLib::PollFD*).value.fd = Int32.new(value)
    end

    def events
      (to_unsafe.as(LibGLib::PollFD*).value.events)
    end

    def events=(value : UInt16)
      to_unsafe.as(LibGLib::PollFD*).value.events = UInt16.new(value)
    end

    def revents
      (to_unsafe.as(LibGLib::PollFD*).value.revents)
    end

    def revents=(value : UInt16)
      to_unsafe.as(LibGLib::PollFD*).value.revents = UInt16.new(value)
    end

  end
end

