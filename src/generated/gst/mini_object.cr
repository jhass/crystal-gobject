module Gst
  class MiniObject
    include GObject::WrappedType

    def initialize(@gst_mini_object)
    end

    def to_unsafe
      @gst_mini_object.not_nil!
    end

    def qdata(quark)
      __return_value = LibGst.mini_object_get_qdata((to_unsafe as LibGst::MiniObject*), UInt32.new(quark))
      __return_value if __return_value
    end

    def writable?
      __return_value = LibGst.mini_object_is_writable((to_unsafe as LibGst::MiniObject*))
      __return_value
    end

    def lock(flags)
      __return_value = LibGst.mini_object_lock((to_unsafe as LibGst::MiniObject*), flags)
      __return_value
    end

    def set_qdata(quark, data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGst.mini_object_set_qdata((to_unsafe as LibGst::MiniObject*), UInt32.new(quark), data, destroy)
      __return_value
    end

    def steal_qdata(quark)
      __return_value = LibGst.mini_object_steal_qdata((to_unsafe as LibGst::MiniObject*), UInt32.new(quark))
      __return_value if __return_value
    end

    def unlock(flags)
      __return_value = LibGst.mini_object_unlock((to_unsafe as LibGst::MiniObject*), flags)
      __return_value
    end

    def self.replace(olddata, newdata)
      __return_value = LibGst.mini_object_replace(olddata && (olddata.to_unsafe as LibGst::MiniObject*), newdata && (newdata.to_unsafe as LibGst::MiniObject*))
      __return_value
    end

    def self.take(olddata, newdata)
      __return_value = LibGst.mini_object_take((olddata.to_unsafe as LibGst::MiniObject*), (newdata.to_unsafe as LibGst::MiniObject*))
      __return_value
    end

  end
end

