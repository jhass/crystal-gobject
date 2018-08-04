module Gst
  class Promise
    include GObject::WrappedType

    def self.new(parent : Gst::MiniObject|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::Promise*)).tap do |object|
        object.parent = parent unless parent.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::Promise*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Promise*)
    end

    def self.new : self
      __return_value = LibGst.promise_new
      cast Gst::Promise.new(__return_value)
    end

    def self.new_with_change_func(func, user_data, notify) : self
      __return_value = LibGst.promise_new_with_change_func(func, user_data ? user_data : nil, notify)
      cast Gst::Promise.new(__return_value)
    end

    def expire
      LibGst.promise_expire(@pointer.as(LibGst::Promise*))
      nil
    end

    def reply
      __return_value = LibGst.promise_get_reply(@pointer.as(LibGst::Promise*))
      Gst::Structure.new(__return_value)
    end

    def interrupt
      LibGst.promise_interrupt(@pointer.as(LibGst::Promise*))
      nil
    end

    def reply(s)
      LibGst.promise_reply(@pointer.as(LibGst::Promise*), s.to_unsafe.as(LibGst::Structure*))
      nil
    end

    def wait
      __return_value = LibGst.promise_wait(@pointer.as(LibGst::Promise*))
      __return_value
    end

    def parent
      Gst::MiniObject.new((to_unsafe.as(LibGst::Promise*).value.parent))
    end

    def parent=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::Promise*).value.parent = value
    end

  end
end

