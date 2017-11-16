module Atk
  class ObjectFactory < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::ObjectFactory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::ObjectFactory*)
    end

    def create_accessible(obj)
      __return_value = LibAtk.object_factory_create_accessible(@pointer.as(LibAtk::ObjectFactory*), obj.to_unsafe.as(LibGObject::Object*))
      Atk::Object.new(__return_value)
    end

    def accessible_type
      __return_value = LibAtk.object_factory_get_accessible_type(@pointer.as(LibAtk::ObjectFactory*))
      __return_value
    end

    def invalidate
      LibAtk.object_factory_invalidate(@pointer.as(LibAtk::ObjectFactory*))
      nil
    end

  end
end

