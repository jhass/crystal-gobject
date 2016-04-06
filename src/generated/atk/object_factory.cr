module Atk
  class ObjectFactory < GObject::Object
    def initialize(@atk_object_factory)
    end

    def to_unsafe
      @atk_object_factory.not_nil!
    end

    def create_accessible(obj)
      __return_value = LibAtk.object_factory_create_accessible((to_unsafe as LibAtk::ObjectFactory*), (obj.to_unsafe as LibGObject::Object*))
      Atk::Object.new(__return_value)
    end

    def accessible_type
      __return_value = LibAtk.object_factory_get_accessible_type((to_unsafe as LibAtk::ObjectFactory*))
      __return_value
    end

    def invalidate
      __return_value = LibAtk.object_factory_invalidate((to_unsafe as LibAtk::ObjectFactory*))
      __return_value
    end

  end
end

