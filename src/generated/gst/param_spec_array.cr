module Gst
  class ParamSpecArray
    include GObject::WrappedType

    def self.new(parent_instance : GObject::ParamSpec|Nil = nil, element_spec : GObject::ParamSpec|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(80, 0u8)
      new(ptr.as(LibGst::ParamSpecArray*)).tap do |object|
        object.parent_instance = parent_instance unless parent_instance.nil?
        object.element_spec = element_spec unless element_spec.nil?
      end
    end

    @gst_param_spec_array : LibGst::ParamSpecArray*?
    def initialize(@gst_param_spec_array : LibGst::ParamSpecArray*)
    end

    def to_unsafe
      @gst_param_spec_array.not_nil!
    end

    def parent_instance
      GObject::ParamSpec.new((to_unsafe.as(LibGst::ParamSpecArray*).value.parent_instance))
    end

    def parent_instance=(value : GObject::ParamSpec)
      to_unsafe.as(LibGst::ParamSpecArray*).value.parent_instance = value
    end

    def element_spec
      GObject::ParamSpec.new((to_unsafe.as(LibGst::ParamSpecArray*).value.element_spec))
    end

    def element_spec=(value : GObject::ParamSpec)
      to_unsafe.as(LibGst::ParamSpecArray*).value.element_spec = value.to_unsafe.as(LibGObject::ParamSpec*)
    end

  end
end

