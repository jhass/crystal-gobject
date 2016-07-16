module GObject
  class WeakRef
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGObject::WeakRef*))
    end

    @g_object_weak_ref : LibGObject::WeakRef*?
    def initialize(@g_object_weak_ref : LibGObject::WeakRef*)
    end

    def to_unsafe
      @g_object_weak_ref.not_nil!
    end

  end
end

