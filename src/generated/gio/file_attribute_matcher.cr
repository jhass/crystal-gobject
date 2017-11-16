module Gio
  class FileAttributeMatcher
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::FileAttributeMatcher*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileAttributeMatcher*)
    end

    def self.new(attributes) : self
      __return_value = LibGio.file_attribute_matcher_new(attributes.to_unsafe)
      cast Gio::FileAttributeMatcher.new(__return_value)
    end

    def enumerate_namespace(ns)
      __return_value = LibGio.file_attribute_matcher_enumerate_namespace(@pointer.as(LibGio::FileAttributeMatcher*), ns.to_unsafe)
      __return_value
    end

    def enumerate_next
      __return_value = LibGio.file_attribute_matcher_enumerate_next(@pointer.as(LibGio::FileAttributeMatcher*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def matches(attribute)
      __return_value = LibGio.file_attribute_matcher_matches(@pointer.as(LibGio::FileAttributeMatcher*), attribute.to_unsafe)
      __return_value
    end

    def matches_only(attribute)
      __return_value = LibGio.file_attribute_matcher_matches_only(@pointer.as(LibGio::FileAttributeMatcher*), attribute.to_unsafe)
      __return_value
    end

    def ref
      __return_value = LibGio.file_attribute_matcher_ref(@pointer.as(LibGio::FileAttributeMatcher*))
      Gio::FileAttributeMatcher.new(__return_value)
    end

    def subtract(subtract)
      __return_value = LibGio.file_attribute_matcher_subtract(@pointer.as(LibGio::FileAttributeMatcher*), subtract.to_unsafe.as(LibGio::FileAttributeMatcher*))
      Gio::FileAttributeMatcher.new(__return_value)
    end

    def to_string
      __return_value = LibGio.file_attribute_matcher_to_string(@pointer.as(LibGio::FileAttributeMatcher*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGio.file_attribute_matcher_unref(@pointer.as(LibGio::FileAttributeMatcher*))
      nil
    end

  end
end

