module GObject
  class WeakRef
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGObject::WeakRef*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::WeakRef*)
    end

  end
end

