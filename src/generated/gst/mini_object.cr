module Gst
  class MiniObject
    include GObject::WrappedType

    def self.new(type : UInt64|Nil = nil, refcount : Int32|Nil = nil, lockstate : Int32|Nil = nil, flags : UInt32|Nil = nil, copy : Void*|Nil = nil, dispose : Gst::MiniObjectDisposeFunction|Nil = nil, free : Gst::MiniObjectFreeFunction|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::MiniObject*)).tap do |object|
        object.type = type unless type.nil?
        object.refcount = refcount unless refcount.nil?
        object.lockstate = lockstate unless lockstate.nil?
        object.flags = flags unless flags.nil?
        object.copy = copy unless copy.nil?
        object.dispose = dispose unless dispose.nil?
        object.free = free unless free.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::MiniObject*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::MiniObject*)
    end

    def qdata(quark)
      LibGst.mini_object_get_qdata(@pointer.as(LibGst::MiniObject*), UInt32.new(quark))
      nil
    end

    def writable?
      __return_value = LibGst.mini_object_is_writable(@pointer.as(LibGst::MiniObject*))
      __return_value
    end

    def lock(flags : Gst::LockFlags)
      __return_value = LibGst.mini_object_lock(@pointer.as(LibGst::MiniObject*), flags)
      __return_value
    end

    def set_qdata(quark, data, destroy)
      LibGst.mini_object_set_qdata(@pointer.as(LibGst::MiniObject*), UInt32.new(quark), data ? data : nil, destroy)
      nil
    end

    def steal_qdata(quark)
      LibGst.mini_object_steal_qdata(@pointer.as(LibGst::MiniObject*), UInt32.new(quark))
      nil
    end

    def unlock(flags : Gst::LockFlags)
      LibGst.mini_object_unlock(@pointer.as(LibGst::MiniObject*), flags)
      nil
    end

    def self.replace(olddata, newdata)
      __return_value = LibGst.mini_object_replace(olddata, newdata ? newdata.to_unsafe.as(LibGst::MiniObject*) : nil)
      __return_value
    end

    def self.take(olddata, newdata)
      __return_value = LibGst.mini_object_take(olddata, newdata.to_unsafe.as(LibGst::MiniObject*))
      __return_value
    end

    def type
      (to_unsafe.as(LibGst::MiniObject*).value.type)
    end

    def type=(value : UInt64)
      to_unsafe.as(LibGst::MiniObject*).value.type = UInt64.new(value)
    end

    def refcount
      (to_unsafe.as(LibGst::MiniObject*).value.refcount)
    end

    def refcount=(value : Int32)
      to_unsafe.as(LibGst::MiniObject*).value.refcount = Int32.new(value)
    end

    def lockstate
      (to_unsafe.as(LibGst::MiniObject*).value.lockstate)
    end

    def lockstate=(value : Int32)
      to_unsafe.as(LibGst::MiniObject*).value.lockstate = Int32.new(value)
    end

    def flags
      (to_unsafe.as(LibGst::MiniObject*).value.flags)
    end

    def flags=(value : UInt32)
      to_unsafe.as(LibGst::MiniObject*).value.flags = UInt32.new(value)
    end

    def copy
      (to_unsafe.as(LibGst::MiniObject*).value.copy)
    end

    def copy=(value : Void*)
      to_unsafe.as(LibGst::MiniObject*).value.copy = value
    end

    def dispose
      (to_unsafe.as(LibGst::MiniObject*).value.dispose)
    end

    def dispose=(value : Gst::MiniObjectDisposeFunction)
      to_unsafe.as(LibGst::MiniObject*).value.dispose = value
    end

    def free
      (to_unsafe.as(LibGst::MiniObject*).value.free)
    end

    def free=(value : Gst::MiniObjectFreeFunction)
      to_unsafe.as(LibGst::MiniObject*).value.free = value
    end

    def n_qdata
      (to_unsafe.as(LibGst::MiniObject*).value.n_qdata)
    end

    def qdata
      (to_unsafe.as(LibGst::MiniObject*).value.qdata)
    end

  end
end

