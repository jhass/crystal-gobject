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

    @pointer : Void*
    def initialize(pointer : LibGst::ParamSpecArray*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ParamSpecArray*)
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

