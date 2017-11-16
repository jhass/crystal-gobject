module Gst
  class TagList
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::TagList*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::TagList*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TagList*)
    end

    def self.new_empty : self
      __return_value = LibGst.tag_list_new_empty
      cast Gst::TagList.new(__return_value)
    end

    def self.new_from_string(str) : self
      __return_value = LibGst.tag_list_new_from_string(str.to_unsafe)
      cast Gst::TagList.new(__return_value) if __return_value
    end

    def add_value(mode : Gst::TagMergeMode, tag, value)
      LibGst.tag_list_add_value(@pointer.as(LibGst::TagList*), mode, tag.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def foreach(func, user_data)
      LibGst.tag_list_foreach(@pointer.as(LibGst::TagList*), func, user_data ? user_data : nil)
      nil
    end

    def boolean(tag, value)
      __return_value = LibGst.tag_list_get_boolean(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def boolean_index(tag, index, value)
      __return_value = LibGst.tag_list_get_boolean_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def date(tag, value)
      __return_value = LibGst.tag_list_get_date(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def date_index(tag, index, value)
      __return_value = LibGst.tag_list_get_date_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def date_time(tag, value)
      __return_value = LibGst.tag_list_get_date_time(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def date_time_index(tag, index, value)
      __return_value = LibGst.tag_list_get_date_time_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def double(tag, value)
      __return_value = LibGst.tag_list_get_double(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def double_index(tag, index, value)
      __return_value = LibGst.tag_list_get_double_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def float(tag, value)
      __return_value = LibGst.tag_list_get_float(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def float_index(tag, index, value)
      __return_value = LibGst.tag_list_get_float_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def int(tag, value)
      __return_value = LibGst.tag_list_get_int(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def int64(tag, value)
      __return_value = LibGst.tag_list_get_int64(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def int64_index(tag, index, value)
      __return_value = LibGst.tag_list_get_int64_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def int_index(tag, index, value)
      __return_value = LibGst.tag_list_get_int_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def pointer(tag, value)
      __return_value = LibGst.tag_list_get_pointer(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def pointer_index(tag, index, value)
      __return_value = LibGst.tag_list_get_pointer_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def sample(tag, sample)
      __return_value = LibGst.tag_list_get_sample(@pointer.as(LibGst::TagList*), tag.to_unsafe, sample)
      __return_value
    end

    def sample_index(tag, index, sample)
      __return_value = LibGst.tag_list_get_sample_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), sample)
      __return_value
    end

    def scope
      __return_value = LibGst.tag_list_get_scope(@pointer.as(LibGst::TagList*))
      __return_value
    end

    def string(tag, value)
      __return_value = LibGst.tag_list_get_string(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def string_index(tag, index, value)
      __return_value = LibGst.tag_list_get_string_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def tag_size(tag)
      __return_value = LibGst.tag_list_get_tag_size(@pointer.as(LibGst::TagList*), tag.to_unsafe)
      __return_value
    end

    def uint(tag, value)
      __return_value = LibGst.tag_list_get_uint(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def uint64(tag, value)
      __return_value = LibGst.tag_list_get_uint64(@pointer.as(LibGst::TagList*), tag.to_unsafe, value)
      __return_value
    end

    def uint64_index(tag, index, value)
      __return_value = LibGst.tag_list_get_uint64_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def uint_index(tag, index, value)
      __return_value = LibGst.tag_list_get_uint_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def value_index(tag, index)
      __return_value = LibGst.tag_list_get_value_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index))
      GObject::Value.new(__return_value) if __return_value
    end

    def insert(from, mode : Gst::TagMergeMode)
      LibGst.tag_list_insert(@pointer.as(LibGst::TagList*), from.to_unsafe.as(LibGst::TagList*), mode)
      nil
    end

    def empty?
      __return_value = LibGst.tag_list_is_empty(@pointer.as(LibGst::TagList*))
      __return_value
    end

    def equal?(list2)
      __return_value = LibGst.tag_list_is_equal(@pointer.as(LibGst::TagList*), list2.to_unsafe.as(LibGst::TagList*))
      __return_value
    end

    def merge(list2, mode : Gst::TagMergeMode)
      __return_value = LibGst.tag_list_merge(@pointer.as(LibGst::TagList*), list2 ? list2.to_unsafe.as(LibGst::TagList*) : nil, mode)
      Gst::TagList.new(__return_value) if __return_value
    end

    def n_tags
      __return_value = LibGst.tag_list_n_tags(@pointer.as(LibGst::TagList*))
      __return_value
    end

    def nth_tag_name(index)
      __return_value = LibGst.tag_list_nth_tag_name(@pointer.as(LibGst::TagList*), UInt32.new(index))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def peek_string_index(tag, index, value)
      __return_value = LibGst.tag_list_peek_string_index(@pointer.as(LibGst::TagList*), tag.to_unsafe, UInt32.new(index), value)
      __return_value
    end

    def remove_tag(tag)
      LibGst.tag_list_remove_tag(@pointer.as(LibGst::TagList*), tag.to_unsafe)
      nil
    end

    def scope=(scope : Gst::TagScope)
      LibGst.tag_list_set_scope(@pointer.as(LibGst::TagList*), scope)
      nil
    end

    def to_string
      __return_value = LibGst.tag_list_to_string(@pointer.as(LibGst::TagList*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def self.copy_value(dest, list, tag)
      __return_value = LibGst.tag_list_copy_value(dest, list.to_unsafe.as(LibGst::TagList*), tag.to_unsafe)
      __return_value
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.as(LibGst::TagList*).value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::TagList*).value.mini_object = value
    end

  end
end

