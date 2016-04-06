module Gst
  class AllocationParams
    include GObject::WrappedType

    def initialize(@gst_allocation_params)
    end

    def to_unsafe
      @gst_allocation_params.not_nil!
    end

    def copy
      __return_value = LibGst.allocation_params_copy((to_unsafe as LibGst::AllocationParams*))
      Gst::AllocationParams.new(__return_value)
    end

    def free
      __return_value = LibGst.allocation_params_free((to_unsafe as LibGst::AllocationParams*))
      __return_value
    end

    def init
      __return_value = LibGst.allocation_params_init((to_unsafe as LibGst::AllocationParams*))
      __return_value
    end

  end
end

