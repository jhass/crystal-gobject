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

    @gst_mini_object : LibGst::MiniObject*?
    def initialize(@gst_mini_object : LibGst::MiniObject*)
    end

    def to_unsafe
      @gst_mini_object.not_nil!
    end

    def qdata(quark)
      __return_value = LibGst.mini_object_get_qdata(to_unsafe.as(LibGst::MiniObject*), UInt32.new(quark))
      __return_value if __return_value
    end

    def writable?
      __return_value = LibGst.mini_object_is_writable(to_unsafe.as(LibGst::MiniObject*))
      __return_value
    end

    def lock(flags)
      __return_value = LibGst.mini_object_lock(to_unsafe.as(LibGst::MiniObject*), flags)
      __return_value
    end

    def set_qdata(quark, data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGst.mini_object_set_qdata(to_unsafe.as(LibGst::MiniObject*), UInt32.new(quark), data && data, destroy)
      __return_value
    end

    def steal_qdata(quark)
      __return_value = LibGst.mini_object_steal_qdata(to_unsafe.as(LibGst::MiniObject*), UInt32.new(quark))
      __return_value if __return_value
    end

    def unlock(flags)
      __return_value = LibGst.mini_object_unlock(to_unsafe.as(LibGst::MiniObject*), flags)
      __return_value
    end

    def self.replace(olddata, newdata)
      __return_value = LibGst.mini_object_replace(olddata && olddata.to_unsafe.as(LibGst::MiniObject*), newdata && newdata.to_unsafe.as(LibGst::MiniObject*))
      __return_value
    end

    def self.take(olddata, newdata)
      __return_value = LibGst.mini_object_take(olddata.to_unsafe.as(LibGst::MiniObject*), newdata.to_unsafe.as(LibGst::MiniObject*))
      __return_value
    end

    def type
      (to_unsafe.value.type)
    end

    def type=(value : UInt64)
      to_unsafe.value.type = UInt64.new(value)
    end

    def refcount
      (to_unsafe.value.refcount)
    end

    def refcount=(value : Int32)
      to_unsafe.value.refcount = Int32.new(value)
    end

    def lockstate
      (to_unsafe.value.lockstate)
    end

    def lockstate=(value : Int32)
      to_unsafe.value.lockstate = Int32.new(value)
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : UInt32)
      to_unsafe.value.flags = UInt32.new(value)
    end

    def copy
      (to_unsafe.value.copy)
    end

    def copy=(value : Void*)
      to_unsafe.value.copy = value
    end

    def dispose
      (to_unsafe.value.dispose)
    end

    def dispose=(value : Gst::MiniObjectDisposeFunction)
      to_unsafe.value.dispose = value
    end

    def free
      (to_unsafe.value.free)
    end

    def free=(value : Gst::MiniObjectFreeFunction)
      to_unsafe.value.free = value
    end

    def n_qdata
      (to_unsafe.value.n_qdata)
    end

    def qdata
      (to_unsafe.value.qdata)
    end

  end
end

