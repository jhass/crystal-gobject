module GObject
  class TypeInfo
    include GObject::WrappedType

    def self.new(class_size : UInt16|Nil = nil, base_init : GObject::BaseInitFunc|Nil = nil, base_finalize : GObject::BaseFinalizeFunc|Nil = nil, class_init : GObject::ClassInitFunc|Nil = nil, class_finalize : GObject::ClassFinalizeFunc|Nil = nil, class_data : Void*|Nil = nil, instance_size : UInt16|Nil = nil, n_preallocs : UInt16|Nil = nil, instance_init : GObject::InstanceInitFunc|Nil = nil, value_table : GObject::TypeValueTable|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(72, 0u8)
      new(ptr.as(LibGObject::TypeInfo*)).tap do |object|
        object.class_size = class_size unless class_size.nil?
        object.base_init = base_init unless base_init.nil?
        object.base_finalize = base_finalize unless base_finalize.nil?
        object.class_init = class_init unless class_init.nil?
        object.class_finalize = class_finalize unless class_finalize.nil?
        object.class_data = class_data unless class_data.nil?
        object.instance_size = instance_size unless instance_size.nil?
        object.n_preallocs = n_preallocs unless n_preallocs.nil?
        object.instance_init = instance_init unless instance_init.nil?
        object.value_table = value_table unless value_table.nil?
      end
    end

    @g_object_type_info : LibGObject::TypeInfo*?
    def initialize(@g_object_type_info : LibGObject::TypeInfo*)
    end

    def to_unsafe
      @g_object_type_info.not_nil!.as(Void*)
    end

    def class_size
      (to_unsafe.as(LibGObject::TypeInfo*).value.class_size)
    end

    def class_size=(value : UInt16)
      to_unsafe.as(LibGObject::TypeInfo*).value.class_size = UInt16.new(value)
    end

    def base_init
      (to_unsafe.as(LibGObject::TypeInfo*).value.base_init)
    end

    def base_init=(value : GObject::BaseInitFunc)
      to_unsafe.as(LibGObject::TypeInfo*).value.base_init = value
    end

    def base_finalize
      (to_unsafe.as(LibGObject::TypeInfo*).value.base_finalize)
    end

    def base_finalize=(value : GObject::BaseFinalizeFunc)
      to_unsafe.as(LibGObject::TypeInfo*).value.base_finalize = value
    end

    def class_init
      (to_unsafe.as(LibGObject::TypeInfo*).value.class_init)
    end

    def class_init=(value : GObject::ClassInitFunc)
      to_unsafe.as(LibGObject::TypeInfo*).value.class_init = value
    end

    def class_finalize
      (to_unsafe.as(LibGObject::TypeInfo*).value.class_finalize)
    end

    def class_finalize=(value : GObject::ClassFinalizeFunc)
      to_unsafe.as(LibGObject::TypeInfo*).value.class_finalize = value
    end

    def class_data
      (to_unsafe.as(LibGObject::TypeInfo*).value.class_data)
    end

    def class_data=(value : Void*)
      to_unsafe.as(LibGObject::TypeInfo*).value.class_data = value
    end

    def instance_size
      (to_unsafe.as(LibGObject::TypeInfo*).value.instance_size)
    end

    def instance_size=(value : UInt16)
      to_unsafe.as(LibGObject::TypeInfo*).value.instance_size = UInt16.new(value)
    end

    def n_preallocs
      (to_unsafe.as(LibGObject::TypeInfo*).value.n_preallocs)
    end

    def n_preallocs=(value : UInt16)
      to_unsafe.as(LibGObject::TypeInfo*).value.n_preallocs = UInt16.new(value)
    end

    def instance_init
      (to_unsafe.as(LibGObject::TypeInfo*).value.instance_init)
    end

    def instance_init=(value : GObject::InstanceInitFunc)
      to_unsafe.as(LibGObject::TypeInfo*).value.instance_init = value
    end

    def value_table
      GObject::TypeValueTable.new((to_unsafe.as(LibGObject::TypeInfo*).value.value_table))
    end

    def value_table=(value : GObject::TypeValueTable)
      to_unsafe.as(LibGObject::TypeInfo*).value.value_table = value.to_unsafe.as(LibGObject::TypeValueTable*)
    end

  end
end

