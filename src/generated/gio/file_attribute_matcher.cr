module Gio
  class FileAttributeMatcher
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::FileAttributeMatcher*))
    end

    @gio_file_attribute_matcher : LibGio::FileAttributeMatcher*?
    def initialize(@gio_file_attribute_matcher : LibGio::FileAttributeMatcher*)
    end

    def to_unsafe
      @gio_file_attribute_matcher.not_nil!.as(Void*)
    end

    def self.new(attributes) : self
      __return_value = LibGio.file_attribute_matcher_new(attributes.to_unsafe)
      cast Gio::FileAttributeMatcher.new(__return_value)
    end

    def enumerate_namespace(ns)
      __return_value = LibGio.file_attribute_matcher_enumerate_namespace(to_unsafe.as(LibGio::FileAttributeMatcher*), ns.to_unsafe)
      __return_value
    end

    def enumerate_next
      __return_value = LibGio.file_attribute_matcher_enumerate_next(to_unsafe.as(LibGio::FileAttributeMatcher*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def matches(attribute)
      __return_value = LibGio.file_attribute_matcher_matches(to_unsafe.as(LibGio::FileAttributeMatcher*), attribute.to_unsafe)
      __return_value
    end

    def matches_only(attribute)
      __return_value = LibGio.file_attribute_matcher_matches_only(to_unsafe.as(LibGio::FileAttributeMatcher*), attribute.to_unsafe)
      __return_value
    end

    def ref
      __return_value = LibGio.file_attribute_matcher_ref(to_unsafe.as(LibGio::FileAttributeMatcher*))
      Gio::FileAttributeMatcher.new(__return_value)
    end

    def subtract(subtract)
      __return_value = LibGio.file_attribute_matcher_subtract(to_unsafe.as(LibGio::FileAttributeMatcher*), subtract.to_unsafe.as(LibGio::FileAttributeMatcher*))
      Gio::FileAttributeMatcher.new(__return_value)
    end

    def to_string
      __return_value = LibGio.file_attribute_matcher_to_string(to_unsafe.as(LibGio::FileAttributeMatcher*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      __return_value = LibGio.file_attribute_matcher_unref(to_unsafe.as(LibGio::FileAttributeMatcher*))
      __return_value
    end

  end
end

