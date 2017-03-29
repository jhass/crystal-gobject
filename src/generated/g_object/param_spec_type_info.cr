module GObject
  class ParamSpecTypeInfo
    include GObject::WrappedType

    def self.new(instance_size : UInt16|Nil = nil, n_preallocs : UInt16|Nil = nil, value_type : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGObject::ParamSpecTypeInfo*)).tap do |object|
        object.instance_size = instance_size unless instance_size.nil?
        object.n_preallocs = n_preallocs unless n_preallocs.nil?
        object.value_type = value_type unless value_type.nil?
      end
    end

    @g_object_param_spec_type_info : LibGObject::ParamSpecTypeInfo*?
    def initialize(@g_object_param_spec_type_info : LibGObject::ParamSpecTypeInfo*)
    end

    def to_unsafe
      @g_object_param_spec_type_info.not_nil!
    end

    def instance_size
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.instance_size)
    end

    def instance_size=(value : UInt16)
      to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.instance_size = UInt16.new(value)
    end

    def n_preallocs
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.n_preallocs)
    end

    def n_preallocs=(value : UInt16)
      to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.n_preallocs = UInt16.new(value)
    end

    def instance_init
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.instance_init)
    end

    def value_type
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.value_type)
    end

    def value_type=(value : UInt64)
      to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.value_type = UInt64.new(value)
    end

    def finalize
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.finalize)
    end

    def value_set_default
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.value_set_default)
    end

    def value_validate
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.value_validate)
    end

    def values_cmp
      (to_unsafe.as(LibGObject::ParamSpecTypeInfo*).value.values_cmp)
    end

  end
end

