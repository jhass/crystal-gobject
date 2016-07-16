module Gst
  class RegistryPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::RegistryPrivate*))
    end

    @gst_registry_private : LibGst::RegistryPrivate*?
    def initialize(@gst_registry_private : LibGst::RegistryPrivate*)
    end

    def to_unsafe
      @gst_registry_private.not_nil!
    end

  end
end

