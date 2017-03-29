module GObject
  class Closure
    include GObject::WrappedType

    def self.new(in_marshal : UInt32|Nil = nil, is_invalid : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGObject::Closure*)).tap do |object|
        object.in_marshal = in_marshal unless in_marshal.nil?
        object.is_invalid = is_invalid unless is_invalid.nil?
      end
    end

    @g_object_closure : LibGObject::Closure*?
    def initialize(@g_object_closure : LibGObject::Closure*)
    end

    def to_unsafe
      @g_object_closure.not_nil!
    end

    def self.new_object(sizeof_closure, object) : self
      __return_value = LibGObject.closure_new_object(UInt32.new(sizeof_closure), object.to_unsafe.as(LibGObject::Object*))
      cast GObject::Closure.new(__return_value)
    end

    def self.new_simple(sizeof_closure, data) : self
      __return_value = LibGObject.closure_new_simple(UInt32.new(sizeof_closure), data && data)
      cast GObject::Closure.new(__return_value)
    end

    def invalidate
      __return_value = LibGObject.closure_invalidate(to_unsafe.as(LibGObject::Closure*))
      __return_value
    end

    def invoke(return_value, n_param_values, param_values, invocation_hint)
      __return_value = LibGObject.closure_invoke(to_unsafe.as(LibGObject::Closure*), return_value, UInt32.new(n_param_values), param_values, invocation_hint && invocation_hint)
      __return_value
    end

    def ref
      __return_value = LibGObject.closure_ref(to_unsafe.as(LibGObject::Closure*))
      GObject::Closure.new(__return_value)
    end

    def sink
      __return_value = LibGObject.closure_sink(to_unsafe.as(LibGObject::Closure*))
      __return_value
    end

    def unref
      __return_value = LibGObject.closure_unref(to_unsafe.as(LibGObject::Closure*))
      __return_value
    end

    def ref_count
      (to_unsafe.as(LibGObject::Closure*).value.ref_count)
    end

    def meta_marshal_nouse
      (to_unsafe.as(LibGObject::Closure*).value.meta_marshal_nouse)
    end

    def n_guards
      (to_unsafe.as(LibGObject::Closure*).value.n_guards)
    end

    def n_fnotifiers
      (to_unsafe.as(LibGObject::Closure*).value.n_fnotifiers)
    end

    def n_inotifiers
      (to_unsafe.as(LibGObject::Closure*).value.n_inotifiers)
    end

    def in_inotify
      (to_unsafe.as(LibGObject::Closure*).value.in_inotify)
    end

    def floating
      (to_unsafe.as(LibGObject::Closure*).value.floating)
    end

    def derivative_flag
      (to_unsafe.as(LibGObject::Closure*).value.derivative_flag)
    end

    def in_marshal
      (to_unsafe.as(LibGObject::Closure*).value.in_marshal)
    end

    def in_marshal=(value : UInt32)
      to_unsafe.as(LibGObject::Closure*).value.in_marshal = UInt32.new(value)
    end

    def is_invalid
      (to_unsafe.as(LibGObject::Closure*).value.is_invalid)
    end

    def is_invalid=(value : UInt32)
      to_unsafe.as(LibGObject::Closure*).value.is_invalid = UInt32.new(value)
    end

    def marshal
      (to_unsafe.as(LibGObject::Closure*).value.marshal)
    end

    def data
      (to_unsafe.as(LibGObject::Closure*).value.data)
    end

    def notifiers
      GObject::ClosureNotifyData.new((to_unsafe.as(LibGObject::Closure*).value.notifiers))
    end

  end
end

