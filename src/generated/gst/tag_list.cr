module Gst
  class TagList
    include GObject::WrappedType

    def initialize(@gst_tag_list)
    end

    def to_unsafe
      @gst_tag_list.not_nil!
    end

    def self.new_empty
      __return_value = LibGst.tag_list_new_empty
      Gst::TagList.new(__return_value)
    end

    def self.new_from_string(str)
      __return_value = LibGst.tag_list_new_from_string(str)
      Gst::TagList.new(__return_value) if __return_value
    end

    def add_value(mode, tag, value)
      __return_value = LibGst.tag_list_add_value((to_unsafe as LibGst::TagList*), mode, tag, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def foreach(func : LibGst::TagForeachFunc, user_data)
      __return_value = LibGst.tag_list_foreach((to_unsafe as LibGst::TagList*), func, user_data)
      __return_value
    end

    def boolean(tag, value)
      __return_value = LibGst.tag_list_get_boolean((to_unsafe as LibGst::TagList*), tag, value)
      __return_value
    end

    def boolean_index(tag, index, value)
      __return_value = LibGst.tag_list_get_boolean_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), value)
      __return_value
    end

    def date(tag, value)
      __return_value = LibGst.tag_list_get_date((to_unsafe as LibGst::TagList*), tag, (value.to_unsafe as LibGLib::Date*))
      __return_value
    end

    def date_index(tag, index, value)
      __return_value = LibGst.tag_list_get_date_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), (value.to_unsafe as LibGLib::Date*))
      __return_value
    end

    def date_time(tag, value)
      __return_value = LibGst.tag_list_get_date_time((to_unsafe as LibGst::TagList*), tag, (value.to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def date_time_index(tag, index, value)
      __return_value = LibGst.tag_list_get_date_time_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), (value.to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def double(tag, value)
      __return_value = LibGst.tag_list_get_double((to_unsafe as LibGst::TagList*), tag, Float64.new(value))
      __return_value
    end

    def double_index(tag, index, value)
      __return_value = LibGst.tag_list_get_double_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), Float64.new(value))
      __return_value
    end

    def float(tag, value)
      __return_value = LibGst.tag_list_get_float((to_unsafe as LibGst::TagList*), tag, Float32.new(value))
      __return_value
    end

    def float_index(tag, index, value)
      __return_value = LibGst.tag_list_get_float_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), Float32.new(value))
      __return_value
    end

    def int(tag, value)
      __return_value = LibGst.tag_list_get_int((to_unsafe as LibGst::TagList*), tag, Int32.new(value))
      __return_value
    end

    def int64(tag, value)
      __return_value = LibGst.tag_list_get_int64((to_unsafe as LibGst::TagList*), tag, value)
      __return_value
    end

    def int64_index(tag, index, value)
      __return_value = LibGst.tag_list_get_int64_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), Int64.new(value))
      __return_value
    end

    def int_index(tag, index, value)
      __return_value = LibGst.tag_list_get_int_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), Int32.new(value))
      __return_value
    end

    def pointer(tag, value)
      __return_value = LibGst.tag_list_get_pointer((to_unsafe as LibGst::TagList*), tag, value)
      __return_value
    end

    def pointer_index(tag, index, value)
      __return_value = LibGst.tag_list_get_pointer_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), value)
      __return_value
    end

    def sample(tag, sample)
      __return_value = LibGst.tag_list_get_sample((to_unsafe as LibGst::TagList*), tag, (sample.to_unsafe as LibGst::Sample*))
      __return_value
    end

    def sample_index(tag, index, sample)
      __return_value = LibGst.tag_list_get_sample_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), (sample.to_unsafe as LibGst::Sample*))
      __return_value
    end

    def scope
      __return_value = LibGst.tag_list_get_scope((to_unsafe as LibGst::TagList*))
      __return_value
    end

    def string(tag, value)
      __return_value = LibGst.tag_list_get_string((to_unsafe as LibGst::TagList*), tag, value)
      __return_value
    end

    def string_index(tag, index, value)
      __return_value = LibGst.tag_list_get_string_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), value)
      __return_value
    end

    def tag_size(tag)
      __return_value = LibGst.tag_list_get_tag_size((to_unsafe as LibGst::TagList*), tag)
      __return_value
    end

    def uint(tag, value)
      __return_value = LibGst.tag_list_get_uint((to_unsafe as LibGst::TagList*), tag, UInt32.new(value))
      __return_value
    end

    def uint64(tag, value)
      __return_value = LibGst.tag_list_get_uint64((to_unsafe as LibGst::TagList*), tag, UInt64.new(value))
      __return_value
    end

    def uint64_index(tag, index, value)
      __return_value = LibGst.tag_list_get_uint64_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), UInt64.new(value))
      __return_value
    end

    def uint_index(tag, index, value)
      __return_value = LibGst.tag_list_get_uint_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), UInt32.new(value))
      __return_value
    end

    def value_index(tag, index)
      __return_value = LibGst.tag_list_get_value_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index))
      GObject::Value.new(__return_value) if __return_value
    end

    def insert(from, mode)
      __return_value = LibGst.tag_list_insert((to_unsafe as LibGst::TagList*), (from.to_unsafe as LibGst::TagList*), mode)
      __return_value
    end

    def empty?
      __return_value = LibGst.tag_list_is_empty((to_unsafe as LibGst::TagList*))
      __return_value
    end

    def equal?(list2)
      __return_value = LibGst.tag_list_is_equal((to_unsafe as LibGst::TagList*), (list2.to_unsafe as LibGst::TagList*))
      __return_value
    end

    def merge(list2, mode)
      __return_value = LibGst.tag_list_merge((to_unsafe as LibGst::TagList*), list2 && (list2.to_unsafe as LibGst::TagList*), mode)
      Gst::TagList.new(__return_value) if __return_value
    end

    def n_tags
      __return_value = LibGst.tag_list_n_tags((to_unsafe as LibGst::TagList*))
      __return_value
    end

    def nth_tag_name(index)
      __return_value = LibGst.tag_list_nth_tag_name((to_unsafe as LibGst::TagList*), UInt32.new(index))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def peek_string_index(tag, index, value)
      __return_value = LibGst.tag_list_peek_string_index((to_unsafe as LibGst::TagList*), tag, UInt32.new(index), value)
      __return_value
    end

    def remove_tag(tag)
      __return_value = LibGst.tag_list_remove_tag((to_unsafe as LibGst::TagList*), tag)
      __return_value
    end

    def scope=(scope)
      __return_value = LibGst.tag_list_set_scope((to_unsafe as LibGst::TagList*), scope)
      __return_value
    end

    def to_string
      __return_value = LibGst.tag_list_to_string((to_unsafe as LibGst::TagList*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def self.copy_value(dest, list, tag)
      __return_value = LibGst.tag_list_copy_value(dest, (list.to_unsafe as LibGst::TagList*), tag)
      __return_value
    end

  end
end

