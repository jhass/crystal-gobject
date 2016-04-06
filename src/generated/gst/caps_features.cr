module Gst
  class CapsFeatures
    include GObject::WrappedType

    def initialize(@gst_caps_features)
    end

    def to_unsafe
      @gst_caps_features.not_nil!
    end

    def self.new_any
      __return_value = LibGst.caps_features_new_any
      Gst::CapsFeatures.new(__return_value)
    end

    def self.new_empty
      __return_value = LibGst.caps_features_new_empty
      Gst::CapsFeatures.new(__return_value)
    end

    def add(feature)
      __return_value = LibGst.caps_features_add((to_unsafe as LibGst::CapsFeatures*), feature)
      __return_value
    end

    def add_id(feature)
      __return_value = LibGst.caps_features_add_id((to_unsafe as LibGst::CapsFeatures*), UInt32.new(feature))
      __return_value
    end

    def contains(feature)
      __return_value = LibGst.caps_features_contains((to_unsafe as LibGst::CapsFeatures*), feature)
      __return_value
    end

    def contains_id(feature)
      __return_value = LibGst.caps_features_contains_id((to_unsafe as LibGst::CapsFeatures*), UInt32.new(feature))
      __return_value
    end

    def copy
      __return_value = LibGst.caps_features_copy((to_unsafe as LibGst::CapsFeatures*))
      Gst::CapsFeatures.new(__return_value)
    end

    def free
      __return_value = LibGst.caps_features_free((to_unsafe as LibGst::CapsFeatures*))
      __return_value
    end

    def nth(i)
      __return_value = LibGst.caps_features_get_nth((to_unsafe as LibGst::CapsFeatures*), UInt32.new(i))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def nth_id(i)
      __return_value = LibGst.caps_features_get_nth_id((to_unsafe as LibGst::CapsFeatures*), UInt32.new(i))
      __return_value
    end

    def size
      __return_value = LibGst.caps_features_get_size((to_unsafe as LibGst::CapsFeatures*))
      __return_value
    end

    def any?
      __return_value = LibGst.caps_features_is_any((to_unsafe as LibGst::CapsFeatures*))
      __return_value
    end

    def equal?(features2)
      __return_value = LibGst.caps_features_is_equal((to_unsafe as LibGst::CapsFeatures*), (features2.to_unsafe as LibGst::CapsFeatures*))
      __return_value
    end

    def remove(feature)
      __return_value = LibGst.caps_features_remove((to_unsafe as LibGst::CapsFeatures*), feature)
      __return_value
    end

    def remove_id(feature)
      __return_value = LibGst.caps_features_remove_id((to_unsafe as LibGst::CapsFeatures*), UInt32.new(feature))
      __return_value
    end

    def parent_refcount=(refcount)
      __return_value = LibGst.caps_features_set_parent_refcount((to_unsafe as LibGst::CapsFeatures*), refcount)
      __return_value
    end

    def to_string
      __return_value = LibGst.caps_features_to_string((to_unsafe as LibGst::CapsFeatures*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.from_string(features)
      __return_value = LibGst.caps_features_from_string(features)
      Gst::CapsFeatures.new(__return_value) if __return_value
    end

  end
end

