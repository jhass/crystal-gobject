module Gst
  class DebugCategory
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      super(ptr.as(LibGst::DebugCategory*))
    end

    @gst_debug_category : LibGst::DebugCategory*?
    def initialize(@gst_debug_category : LibGst::DebugCategory*)
    end

    def to_unsafe
      @gst_debug_category.not_nil!
    end

    def free
      LibGst.debug_category_free(to_unsafe.as(LibGst::DebugCategory*))
      nil
    end

    def color
      __return_value = LibGst.debug_category_get_color(to_unsafe.as(LibGst::DebugCategory*))
      __return_value
    end

    def description
      __return_value = LibGst.debug_category_get_description(to_unsafe.as(LibGst::DebugCategory*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGst.debug_category_get_name(to_unsafe.as(LibGst::DebugCategory*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def threshold
      __return_value = LibGst.debug_category_get_threshold(to_unsafe.as(LibGst::DebugCategory*))
      __return_value
    end

    def reset_threshold
      LibGst.debug_category_reset_threshold(to_unsafe.as(LibGst::DebugCategory*))
      nil
    end

    def threshold=(level : Gst::DebugLevel)
      LibGst.debug_category_set_threshold(to_unsafe.as(LibGst::DebugCategory*), level)
      nil
    end

    def threshold
      (to_unsafe.as(LibGst::DebugCategory*).value.threshold)
    end

    def color
      (to_unsafe.as(LibGst::DebugCategory*).value.color)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::DebugCategory*).value.name); ::String.new((to_unsafe.as(LibGst::DebugCategory*).value.name)))
    end

    def description
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::DebugCategory*).value.description); ::String.new((to_unsafe.as(LibGst::DebugCategory*).value.description)))
    end

  end
end

