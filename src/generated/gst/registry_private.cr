module Gst
  class RegistryPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::RegistryPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::RegistryPrivate*)
    end

  end
end

