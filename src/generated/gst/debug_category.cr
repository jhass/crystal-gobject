module Gst
  class DebugCategory
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      super(ptr.as(LibGst::DebugCategory*))
    end

    @pointer : Void*
    def initialize(pointer : LibGst::DebugCategory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DebugCategory*)
    end

    def free
      LibGst.debug_category_free(@pointer.as(LibGst::DebugCategory*))
      nil
    end

    def color
      __return_value = LibGst.debug_category_get_color(@pointer.as(LibGst::DebugCategory*))
      __return_value
    end

    def description
      __return_value = LibGst.debug_category_get_description(@pointer.as(LibGst::DebugCategory*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGst.debug_category_get_name(@pointer.as(LibGst::DebugCategory*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def threshold
      __return_value = LibGst.debug_category_get_threshold(@pointer.as(LibGst::DebugCategory*))
      __return_value
    end

    def reset_threshold
      LibGst.debug_category_reset_threshold(@pointer.as(LibGst::DebugCategory*))
      nil
    end

    def threshold=(level : Gst::DebugLevel)
      LibGst.debug_category_set_threshold(@pointer.as(LibGst::DebugCategory*), level)
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

