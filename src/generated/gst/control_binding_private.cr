module Gst
  class ControlBindingPrivate
    include GObject::WrappedType

    @gst_control_binding_private : LibGst::ControlBindingPrivate*?
    def initialize(@gst_control_binding_private : LibGst::ControlBindingPrivate*)
    end

    def to_unsafe
      @gst_control_binding_private.not_nil!
    end

  end
end

