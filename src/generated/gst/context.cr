module Gst
  class Context
    include GObject::WrappedType

    def initialize(@gst_context)
    end

    def to_unsafe
      @gst_context.not_nil!
    end

    def self.new_internal(context_type, persistent)
      __return_value = LibGst.context_new(context_type, persistent)
      Gst::Context.new(__return_value)
    end

    def context_type
      __return_value = LibGst.context_get_context_type((to_unsafe as LibGst::Context*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def structure
      __return_value = LibGst.context_get_structure((to_unsafe as LibGst::Context*))
      Gst::Structure.new(__return_value)
    end

    def has_context_type(context_type)
      __return_value = LibGst.context_has_context_type((to_unsafe as LibGst::Context*), context_type)
      __return_value
    end

    def persistent?
      __return_value = LibGst.context_is_persistent((to_unsafe as LibGst::Context*))
      __return_value
    end

    def writable_structure
      __return_value = LibGst.context_writable_structure((to_unsafe as LibGst::Context*))
      Gst::Structure.new(__return_value)
    end

  end
end

