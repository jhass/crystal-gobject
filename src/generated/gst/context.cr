module Gst
  class Context
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Context*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Context*)
    end

    def self.new(context_type, persistent) : self
      __return_value = LibGst.context_new(context_type.to_unsafe, persistent)
      cast Gst::Context.new(__return_value)
    end

    def context_type
      __return_value = LibGst.context_get_context_type(@pointer.as(LibGst::Context*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def structure
      __return_value = LibGst.context_get_structure(@pointer.as(LibGst::Context*))
      Gst::Structure.new(__return_value)
    end

    def has_context_type(context_type)
      __return_value = LibGst.context_has_context_type(@pointer.as(LibGst::Context*), context_type.to_unsafe)
      __return_value
    end

    def persistent?
      __return_value = LibGst.context_is_persistent(@pointer.as(LibGst::Context*))
      __return_value
    end

    def writable_structure
      __return_value = LibGst.context_writable_structure(@pointer.as(LibGst::Context*))
      Gst::Structure.new(__return_value)
    end

  end
end

