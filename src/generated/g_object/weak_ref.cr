module GObject
  class WeakRef
    include GObject::WrappedType

    def initialize(@g_object_weak_ref)
    end

    def to_unsafe
      @g_object_weak_ref.not_nil!
    end

  end
end

