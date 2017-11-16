require "./object"

module Atk
  class GObjectAccessible < Object
    @pointer : Void*
    def initialize(pointer : LibAtk::GObjectAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::GObjectAccessible*)
    end

    def self.for_object(obj)
      __return_value = LibAtk.g_object_accessible_for_object(obj.to_unsafe.as(LibGObject::Object*))
      Atk::Object.new(__return_value)
    end

    def object
      __return_value = LibAtk.g_object_accessible_get_object(@pointer.as(LibAtk::GObjectAccessible*))
      GObject::Object.new(__return_value)
    end

  end
end

