module Gst
  class StaticCaps
    include GObject::WrappedType

    def initialize(@gst_static_caps)
    end

    def to_unsafe
      @gst_static_caps.not_nil!
    end

    def cleanup
      __return_value = LibGst.static_caps_cleanup((to_unsafe as LibGst::StaticCaps*))
      __return_value
    end

    def get
      __return_value = LibGst.static_caps_get((to_unsafe as LibGst::StaticCaps*))
      Gst::Caps.new(__return_value)
    end

  end
end

