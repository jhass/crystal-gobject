module GObject
  class CClosure
    include GObject::WrappedType

    def initialize(@g_object_c_closure)
    end

    def to_unsafe
      @g_object_c_closure.not_nil!
    end

    def self.marshal_BOOLEAN__BOXED_BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_BOOLEAN__BOXED_BOXED((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_BOOLEAN__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_BOOLEAN__FLAGS((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_STRING__OBJECT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_STRING__OBJECT_POINTER((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__BOOLEAN(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__BOOLEAN((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__BOXED((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__CHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__CHAR((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__DOUBLE(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__DOUBLE((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__ENUM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__ENUM((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__FLAGS((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__FLOAT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__FLOAT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__INT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__INT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__LONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__LONG((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__OBJECT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__OBJECT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__PARAM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__PARAM((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__POINTER((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__STRING(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__STRING((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__UCHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__UCHAR((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__UINT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__UINT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__UINT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__UINT_POINTER((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__ULONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__ULONG((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__VARIANT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__VARIANT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_VOID__VOID(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_VOID__VOID((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

    def self.marshal_generic(closure, return_gvalue, n_param_values, param_values, invocation_hint, marshal_data)
      __return_value = LibGObject.c_closure_marshal_generic((closure.to_unsafe as LibGObject::Closure*), (return_gvalue.to_unsafe as LibGObject::Value*), UInt32.new(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
      __return_value
    end

  end
end

