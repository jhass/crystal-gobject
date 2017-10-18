module Gst
  class Caps
    include GObject::WrappedType

    def self.new(mini_object : Gst::MiniObject|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::Caps*)).tap do |object|
        object.mini_object = mini_object unless mini_object.nil?
      end
    end

    @gst_caps : LibGst::Caps*?
    def initialize(@gst_caps : LibGst::Caps*)
    end

    def to_unsafe
      @gst_caps.not_nil!
    end

    def self.new_any : self
      __return_value = LibGst.caps_new_any
      cast Gst::Caps.new(__return_value)
    end

    def self.new_empty : self
      __return_value = LibGst.caps_new_empty
      cast Gst::Caps.new(__return_value)
    end

    def self.new_empty_simple(media_type) : self
      __return_value = LibGst.caps_new_empty_simple(media_type.to_unsafe)
      cast Gst::Caps.new(__return_value)
    end

    def append(caps2)
      LibGst.caps_append(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      nil
    end

    def append_structure(structure)
      LibGst.caps_append_structure(to_unsafe.as(LibGst::Caps*), structure.to_unsafe.as(LibGst::Structure*))
      nil
    end

    def append_structure_full(structure, features)
      LibGst.caps_append_structure_full(to_unsafe.as(LibGst::Caps*), structure.to_unsafe.as(LibGst::Structure*), features ? features.to_unsafe.as(LibGst::CapsFeatures*) : nil)
      nil
    end

    def can_intersect(caps2)
      __return_value = LibGst.caps_can_intersect(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def copy_nth(nth)
      __return_value = LibGst.caps_copy_nth(to_unsafe.as(LibGst::Caps*), UInt32.new(nth))
      Gst::Caps.new(__return_value)
    end

    def filter_and_map_in_place(func, user_data)
      LibGst.caps_filter_and_map_in_place(to_unsafe.as(LibGst::Caps*), func, user_data ? user_data : nil)
      nil
    end

    def fixate
      __return_value = LibGst.caps_fixate(to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def foreach(func, user_data)
      __return_value = LibGst.caps_foreach(to_unsafe.as(LibGst::Caps*), func, user_data ? user_data : nil)
      __return_value
    end

    def features(index)
      __return_value = LibGst.caps_get_features(to_unsafe.as(LibGst::Caps*), UInt32.new(index))
      Gst::CapsFeatures.new(__return_value)
    end

    def size
      __return_value = LibGst.caps_get_size(to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def structure(index)
      __return_value = LibGst.caps_get_structure(to_unsafe.as(LibGst::Caps*), UInt32.new(index))
      Gst::Structure.new(__return_value)
    end

    def intersect(caps2)
      __return_value = LibGst.caps_intersect(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def intersect_full(caps2, mode : Gst::CapsIntersectMode)
      __return_value = LibGst.caps_intersect_full(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*), mode)
      Gst::Caps.new(__return_value)
    end

    def always_compatible?(caps2)
      __return_value = LibGst.caps_is_always_compatible(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def any?
      __return_value = LibGst.caps_is_any(to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def empty?
      __return_value = LibGst.caps_is_empty(to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def equal?(caps2)
      __return_value = LibGst.caps_is_equal(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def equal_fixed?(caps2)
      __return_value = LibGst.caps_is_equal_fixed(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def fixed?
      __return_value = LibGst.caps_is_fixed(to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def strictly_equal?(caps2)
      __return_value = LibGst.caps_is_strictly_equal(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def subset?(superset)
      __return_value = LibGst.caps_is_subset(to_unsafe.as(LibGst::Caps*), superset.to_unsafe.as(LibGst::Caps*))
      __return_value
    end

    def subset_structure?(structure)
      __return_value = LibGst.caps_is_subset_structure(to_unsafe.as(LibGst::Caps*), structure.to_unsafe.as(LibGst::Structure*))
      __return_value
    end

    def subset_structure_full?(structure, features)
      __return_value = LibGst.caps_is_subset_structure_full(to_unsafe.as(LibGst::Caps*), structure.to_unsafe.as(LibGst::Structure*), features ? features.to_unsafe.as(LibGst::CapsFeatures*) : nil)
      __return_value
    end

    def map_in_place(func, user_data)
      __return_value = LibGst.caps_map_in_place(to_unsafe.as(LibGst::Caps*), func, user_data ? user_data : nil)
      __return_value
    end

    def merge(caps2)
      __return_value = LibGst.caps_merge(to_unsafe.as(LibGst::Caps*), caps2.to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def merge_structure(structure)
      __return_value = LibGst.caps_merge_structure(to_unsafe.as(LibGst::Caps*), structure.to_unsafe.as(LibGst::Structure*))
      Gst::Caps.new(__return_value)
    end

    def merge_structure_full(structure, features)
      __return_value = LibGst.caps_merge_structure_full(to_unsafe.as(LibGst::Caps*), structure.to_unsafe.as(LibGst::Structure*), features ? features.to_unsafe.as(LibGst::CapsFeatures*) : nil)
      Gst::Caps.new(__return_value)
    end

    def normalize
      __return_value = LibGst.caps_normalize(to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def remove_structure(idx)
      LibGst.caps_remove_structure(to_unsafe.as(LibGst::Caps*), UInt32.new(idx))
      nil
    end

    def set_features(index, features)
      LibGst.caps_set_features(to_unsafe.as(LibGst::Caps*), UInt32.new(index), features ? features.to_unsafe.as(LibGst::CapsFeatures*) : nil)
      nil
    end

    def set_value(field, value)
      LibGst.caps_set_value(to_unsafe.as(LibGst::Caps*), field.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def simplify
      __return_value = LibGst.caps_simplify(to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def steal_structure(index)
      __return_value = LibGst.caps_steal_structure(to_unsafe.as(LibGst::Caps*), UInt32.new(index))
      Gst::Structure.new(__return_value)
    end

    def subtract(subtrahend)
      __return_value = LibGst.caps_subtract(to_unsafe.as(LibGst::Caps*), subtrahend.to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def to_string
      __return_value = LibGst.caps_to_string(to_unsafe.as(LibGst::Caps*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def truncate
      __return_value = LibGst.caps_truncate(to_unsafe.as(LibGst::Caps*))
      Gst::Caps.new(__return_value)
    end

    def self.from_string(string)
      __return_value = LibGst.caps_from_string(string.to_unsafe)
      Gst::Caps.new(__return_value)
    end

    def mini_object
      Gst::MiniObject.new((to_unsafe.as(LibGst::Caps*).value.mini_object))
    end

    def mini_object=(value : Gst::MiniObject)
      to_unsafe.as(LibGst::Caps*).value.mini_object = value
    end

  end
end

