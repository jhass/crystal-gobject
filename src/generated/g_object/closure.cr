module GObject
  class Closure
    include GObject::WrappedType

    def initialize(@g_object_closure)
    end

    def to_unsafe
      @g_object_closure.not_nil!
    end

    def self.new_object(sizeof_closure, object)
      __return_value = LibGObject.closure_new_object(UInt32.new(sizeof_closure), (object.to_unsafe as LibGObject::Object*))
      GObject::Closure.new(__return_value)
    end

    def self.new_simple(sizeof_closure, data)
      __return_value = LibGObject.closure_new_simple(UInt32.new(sizeof_closure), data)
      GObject::Closure.new(__return_value)
    end

    def invalidate
      __return_value = LibGObject.closure_invalidate((to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def invoke(return_value, n_param_values, param_values, invocation_hint)
      __return_value = LibGObject.closure_invoke((to_unsafe as LibGObject::Closure*), return_value && (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), param_values, invocation_hint && invocation_hint)
      __return_value
    end

    def ref
      __return_value = LibGObject.closure_ref((to_unsafe as LibGObject::Closure*))
      GObject::Closure.new(__return_value)
    end

    def sink
      __return_value = LibGObject.closure_sink((to_unsafe as LibGObject::Closure*))
      __return_value
    end

    def unref
      __return_value = LibGObject.closure_unref((to_unsafe as LibGObject::Closure*))
      __return_value
    end

  end
end

