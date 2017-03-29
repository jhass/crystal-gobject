module Gst
  class Iterator
    include GObject::WrappedType

    def self.new(copy : Gst::IteratorCopyFunction|Nil = nil, next next_ : Gst::IteratorNextFunction|Nil = nil, item : Gst::IteratorItemFunction|Nil = nil, resync : Gst::IteratorResyncFunction|Nil = nil, free : Gst::IteratorFreeFunction|Nil = nil, pushed : Gst::Iterator|Nil = nil, type : UInt64|Nil = nil, lock : GLib::Mutex|Nil = nil, cookie : UInt32|Nil = nil, master_cookie : UInt32|Nil = nil, size : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(120, 0u8)
      new(ptr.as(LibGst::Iterator*)).tap do |object|
        object.copy = copy unless copy.nil?
        object.next = next_ unless next_.nil?
        object.item = item unless item.nil?
        object.resync = resync unless resync.nil?
        object.free = free unless free.nil?
        object.pushed = pushed unless pushed.nil?
        object.type = type unless type.nil?
        object.lock = lock unless lock.nil?
        object.cookie = cookie unless cookie.nil?
        object.master_cookie = master_cookie unless master_cookie.nil?
        object.size = size unless size.nil?
      end
    end

    @gst_iterator : LibGst::Iterator*?
    def initialize(@gst_iterator : LibGst::Iterator*)
    end

    def to_unsafe
      @gst_iterator.not_nil!
    end

    def self.new_single(type, object) : self
      __return_value = LibGst.iterator_new_single(UInt64.new(type), object.to_unsafe.as(LibGObject::Value*))
      cast Gst::Iterator.new(__return_value)
    end

    def copy
      __return_value = LibGst.iterator_copy(to_unsafe.as(LibGst::Iterator*))
      Gst::Iterator.new(__return_value)
    end

    def filter(func, user_data)
      __return_value = LibGst.iterator_filter(to_unsafe.as(LibGst::Iterator*), func, user_data.to_unsafe.as(LibGObject::Value*))
      Gst::Iterator.new(__return_value)
    end

    def find_custom(func, elem, user_data)
      __return_value = LibGst.iterator_find_custom(to_unsafe.as(LibGst::Iterator*), func, elem, user_data ? user_data : nil)
      __return_value
    end

    def fold(func, ret, user_data)
      __return_value = LibGst.iterator_fold(to_unsafe.as(LibGst::Iterator*), func, ret.to_unsafe.as(LibGObject::Value*), user_data ? user_data : nil)
      __return_value
    end

    def foreach(func, user_data)
      __return_value = LibGst.iterator_foreach(to_unsafe.as(LibGst::Iterator*), func, user_data ? user_data : nil)
      __return_value
    end

    def free
      __return_value = LibGst.iterator_free(to_unsafe.as(LibGst::Iterator*))
      __return_value
    end

    def next(elem)
      __return_value = LibGst.iterator_next(to_unsafe.as(LibGst::Iterator*), elem)
      __return_value
    end

    def push(other)
      __return_value = LibGst.iterator_push(to_unsafe.as(LibGst::Iterator*), other.to_unsafe.as(LibGst::Iterator*))
      __return_value
    end

    def resync
      __return_value = LibGst.iterator_resync(to_unsafe.as(LibGst::Iterator*))
      __return_value
    end

    def copy
      (to_unsafe.as(LibGst::Iterator*).value.copy)
    end

    def copy=(value : Gst::IteratorCopyFunction)
      to_unsafe.as(LibGst::Iterator*).value.copy = value
    end

    def next
      (to_unsafe.as(LibGst::Iterator*).value.next_)
    end

    def next=(value : Gst::IteratorNextFunction)
      to_unsafe.as(LibGst::Iterator*).value.next_ = value
    end

    def item
      (to_unsafe.as(LibGst::Iterator*).value.item)
    end

    def item=(value : Gst::IteratorItemFunction)
      to_unsafe.as(LibGst::Iterator*).value.item = value
    end

    def resync
      (to_unsafe.as(LibGst::Iterator*).value.resync)
    end

    def resync=(value : Gst::IteratorResyncFunction)
      to_unsafe.as(LibGst::Iterator*).value.resync = value
    end

    def free
      (to_unsafe.as(LibGst::Iterator*).value.free)
    end

    def free=(value : Gst::IteratorFreeFunction)
      to_unsafe.as(LibGst::Iterator*).value.free = value
    end

    def pushed
      Gst::Iterator.new((to_unsafe.as(LibGst::Iterator*).value.pushed))
    end

    def pushed=(value : Gst::Iterator)
      to_unsafe.as(LibGst::Iterator*).value.pushed = value.to_unsafe.as(LibGst::Iterator*)
    end

    def type
      (to_unsafe.as(LibGst::Iterator*).value.type)
    end

    def type=(value : UInt64)
      to_unsafe.as(LibGst::Iterator*).value.type = UInt64.new(value)
    end

    def lock
      GLib::Mutex.new((to_unsafe.as(LibGst::Iterator*).value.lock))
    end

    def lock=(value : GLib::Mutex)
      to_unsafe.as(LibGst::Iterator*).value.lock = value.to_unsafe.as(LibGLib::Mutex*)
    end

    def cookie
      (to_unsafe.as(LibGst::Iterator*).value.cookie)
    end

    def cookie=(value : UInt32)
      to_unsafe.as(LibGst::Iterator*).value.cookie = UInt32.new(value)
    end

    def master_cookie
      (to_unsafe.as(LibGst::Iterator*).value.master_cookie)
    end

    def master_cookie=(value : UInt32)
      to_unsafe.as(LibGst::Iterator*).value.master_cookie = value
    end

    def size
      (to_unsafe.as(LibGst::Iterator*).value.size)
    end

    def size=(value : UInt32)
      to_unsafe.as(LibGst::Iterator*).value.size = UInt32.new(value)
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.as(LibGst::Iterator*).value._gst_reserved)) {|__item| __item }
    end

  end
end

