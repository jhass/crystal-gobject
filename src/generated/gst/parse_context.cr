module Gst
  class ParseContext
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::ParseContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ParseContext*)
    end

    def self.new : self
      __return_value = LibGst.parse_context_new
      cast Gst::ParseContext.new(__return_value)
    end

    def copy
      __return_value = LibGst.parse_context_copy(@pointer.as(LibGst::ParseContext*))
      Gst::ParseContext.new(__return_value)
    end

    def free
      LibGst.parse_context_free(@pointer.as(LibGst::ParseContext*))
      nil
    end

    def missing_elements
      __return_value = LibGst.parse_context_get_missing_elements(@pointer.as(LibGst::ParseContext*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

  end
end

