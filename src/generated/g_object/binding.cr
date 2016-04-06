require "./object"

module GObject
  class Binding < Object
    def initialize(@g_object_binding)
    end

    def to_unsafe
      @g_object_binding.not_nil!
    end






    def flags
      __return_value = LibGObject.binding_get_flags((to_unsafe as LibGObject::Binding*))
      __return_value
    end

    def source
      __return_value = LibGObject.binding_get_source((to_unsafe as LibGObject::Binding*))
      GObject::Object.new(__return_value)
    end

    def source_property
      __return_value = LibGObject.binding_get_source_property((to_unsafe as LibGObject::Binding*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def target
      __return_value = LibGObject.binding_get_target((to_unsafe as LibGObject::Binding*))
      GObject::Object.new(__return_value)
    end

    def target_property
      __return_value = LibGObject.binding_get_target_property((to_unsafe as LibGObject::Binding*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unbind
      __return_value = LibGObject.binding_unbind((to_unsafe as LibGObject::Binding*))
      __return_value
    end

  end
end

