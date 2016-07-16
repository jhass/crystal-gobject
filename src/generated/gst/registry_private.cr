module Gst
  class RegistryPrivate
    include GObject::WrappedType

    @gst_registry_private : LibGst::RegistryPrivate*?
    def initialize(@gst_registry_private : LibGst::RegistryPrivate*)
    end

    def to_unsafe
      @gst_registry_private.not_nil!.as(Void*)
    end

  end
end

