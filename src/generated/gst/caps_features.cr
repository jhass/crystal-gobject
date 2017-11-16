module Gst
  class CapsFeatures
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::CapsFeatures*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::CapsFeatures*)
    end

    def self.new_any : self
      __return_value = LibGst.caps_features_new_any
      cast Gst::CapsFeatures.new(__return_value)
    end

    def self.new_empty : self
      __return_value = LibGst.caps_features_new_empty
      cast Gst::CapsFeatures.new(__return_value)
    end

    def add(feature)
      LibGst.caps_features_add(@pointer.as(LibGst::CapsFeatures*), feature.to_unsafe)
      nil
    end

    def add_id(feature)
      LibGst.caps_features_add_id(@pointer.as(LibGst::CapsFeatures*), UInt32.new(feature))
      nil
    end

    def contains(feature)
      __return_value = LibGst.caps_features_contains(@pointer.as(LibGst::CapsFeatures*), feature.to_unsafe)
      __return_value
    end

    def contains_id(feature)
      __return_value = LibGst.caps_features_contains_id(@pointer.as(LibGst::CapsFeatures*), UInt32.new(feature))
      __return_value
    end

    def copy
      __return_value = LibGst.caps_features_copy(@pointer.as(LibGst::CapsFeatures*))
      Gst::CapsFeatures.new(__return_value)
    end

    def free
      LibGst.caps_features_free(@pointer.as(LibGst::CapsFeatures*))
      nil
    end

    def nth(i)
      __return_value = LibGst.caps_features_get_nth(@pointer.as(LibGst::CapsFeatures*), UInt32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def nth_id(i)
      __return_value = LibGst.caps_features_get_nth_id(@pointer.as(LibGst::CapsFeatures*), UInt32.new(i))
      __return_value
    end

    def size
      __return_value = LibGst.caps_features_get_size(@pointer.as(LibGst::CapsFeatures*))
      __return_value
    end

    def any?
      __return_value = LibGst.caps_features_is_any(@pointer.as(LibGst::CapsFeatures*))
      __return_value
    end

    def equal?(features2)
      __return_value = LibGst.caps_features_is_equal(@pointer.as(LibGst::CapsFeatures*), features2.to_unsafe.as(LibGst::CapsFeatures*))
      __return_value
    end

    def remove(feature)
      LibGst.caps_features_remove(@pointer.as(LibGst::CapsFeatures*), feature.to_unsafe)
      nil
    end

    def remove_id(feature)
      LibGst.caps_features_remove_id(@pointer.as(LibGst::CapsFeatures*), UInt32.new(feature))
      nil
    end

    def parent_refcount=(refcount)
      __return_value = LibGst.caps_features_set_parent_refcount(@pointer.as(LibGst::CapsFeatures*), refcount)
      __return_value
    end

    def to_string
      __return_value = LibGst.caps_features_to_string(@pointer.as(LibGst::CapsFeatures*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.from_string(features)
      __return_value = LibGst.caps_features_from_string(features.to_unsafe)
      Gst::CapsFeatures.new(__return_value) if __return_value
    end

  end
end

