require "./object"

module Atk
  class GObjectAccessible < Object
    def initialize(@atk_g_object_accessible)
    end

    def to_unsafe
      @atk_g_object_accessible.not_nil!
    end

    def self.for_object(obj)
      __return_value = LibAtk.g_object_accessible_for_object((obj.to_unsafe as LibGObject::Object*))
      Atk::Object.new(__return_value)
    end

    def object
      __return_value = LibAtk.g_object_accessible_get_object((to_unsafe as LibAtk::GObjectAccessible*))
      GObject::Object.new(__return_value)
    end

  end
end

