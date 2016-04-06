module Gst
  class RegistryPrivate
    include GObject::WrappedType

    def initialize(@gst_registry_private)
    end

    def to_unsafe
      @gst_registry_private.not_nil!
    end

  end
end

