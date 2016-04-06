module Gst
  class Iterator
    include GObject::WrappedType

    def initialize(@gst_iterator)
    end

    def to_unsafe
      @gst_iterator.not_nil!
    end

    def self.new_single(type, object)
      __return_value = LibGst.iterator_new_single(UInt64.new(type), (object.to_unsafe as LibGObject::Value*))
      Gst::Iterator.new(__return_value)
    end

    def copy
      __return_value = LibGst.iterator_copy((to_unsafe as LibGst::Iterator*))
      Gst::Iterator.new(__return_value)
    end

    def filter(func : LibGLib::CompareFunc, user_data)
      __return_value = LibGst.iterator_filter((to_unsafe as LibGst::Iterator*), func, (user_data.to_unsafe as LibGObject::Value*))
      Gst::Iterator.new(__return_value)
    end

    def find_custom(func : LibGLib::CompareFunc, elem, user_data)
      __return_value = LibGst.iterator_find_custom((to_unsafe as LibGst::Iterator*), func, elem, user_data)
      __return_value
    end

    def fold(func : LibGst::IteratorFoldFunction, ret, user_data)
      __return_value = LibGst.iterator_fold((to_unsafe as LibGst::Iterator*), func, (ret.to_unsafe as LibGObject::Value*), user_data)
      __return_value
    end

    def foreach(func : LibGst::IteratorForeachFunction, user_data)
      __return_value = LibGst.iterator_foreach((to_unsafe as LibGst::Iterator*), func, user_data)
      __return_value
    end

    def free
      __return_value = LibGst.iterator_free((to_unsafe as LibGst::Iterator*))
      __return_value
    end

    def next(elem)
      __return_value = LibGst.iterator_next((to_unsafe as LibGst::Iterator*), elem)
      __return_value
    end

    def push(other)
      __return_value = LibGst.iterator_push((to_unsafe as LibGst::Iterator*), (other.to_unsafe as LibGst::Iterator*))
      __return_value
    end

    def resync
      __return_value = LibGst.iterator_resync((to_unsafe as LibGst::Iterator*))
      __return_value
    end

  end
end

