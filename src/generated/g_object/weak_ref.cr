module GObject
  class WeakRef
    include GObject::WrappedType

    @g_object_weak_ref : LibGObject::WeakRef*?
    def initialize(@g_object_weak_ref : LibGObject::WeakRef*)
    end

    def to_unsafe
      @g_object_weak_ref.not_nil!
    end

  end
end

