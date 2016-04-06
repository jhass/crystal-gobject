module Gst
  class DebugCategory
    include GObject::WrappedType

    def initialize(@gst_debug_category)
    end

    def to_unsafe
      @gst_debug_category.not_nil!
    end

    def free
      __return_value = LibGst.debug_category_free((to_unsafe as LibGst::DebugCategory*))
      __return_value
    end

    def color
      __return_value = LibGst.debug_category_get_color((to_unsafe as LibGst::DebugCategory*))
      __return_value
    end

    def description
      __return_value = LibGst.debug_category_get_description((to_unsafe as LibGst::DebugCategory*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name
      __return_value = LibGst.debug_category_get_name((to_unsafe as LibGst::DebugCategory*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def threshold
      __return_value = LibGst.debug_category_get_threshold((to_unsafe as LibGst::DebugCategory*))
      __return_value
    end

    def reset_threshold
      __return_value = LibGst.debug_category_reset_threshold((to_unsafe as LibGst::DebugCategory*))
      __return_value
    end

    def threshold=(level)
      __return_value = LibGst.debug_category_set_threshold((to_unsafe as LibGst::DebugCategory*), level)
      __return_value
    end

  end
end

