module GObject
  class FlagsClass
    include GObject::WrappedType

    def self.new(g_type_class : GObject::TypeClass|Nil = nil, mask : UInt32|Nil = nil, n_values : UInt32|Nil = nil, values : GObject::FlagsValue|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::FlagsClass*)).tap do |object|
        object.g_type_class = g_type_class unless g_type_class.nil?
        object.mask = mask unless mask.nil?
        object.n_values = n_values unless n_values.nil?
        object.values = values unless values.nil?
      end
    end

    @g_object_flags_class : LibGObject::FlagsClass*?
    def initialize(@g_object_flags_class : LibGObject::FlagsClass*)
    end

    def to_unsafe
      @g_object_flags_class.not_nil!.as(Void*)
    end

    def g_type_class
      GObject::TypeClass.new((to_unsafe.as(LibGObject::FlagsClass*).value.g_type_class))
    end

    def g_type_class=(value : GObject::TypeClass)
      to_unsafe.as(LibGObject::FlagsClass*).value.g_type_class = value
    end

    def mask
      (to_unsafe.as(LibGObject::FlagsClass*).value.mask)
    end

    def mask=(value : UInt32)
      to_unsafe.as(LibGObject::FlagsClass*).value.mask = UInt32.new(value)
    end

    def n_values
      (to_unsafe.as(LibGObject::FlagsClass*).value.n_values)
    end

    def n_values=(value : UInt32)
      to_unsafe.as(LibGObject::FlagsClass*).value.n_values = UInt32.new(value)
    end

    def values
      GObject::FlagsValue.new((to_unsafe.as(LibGObject::FlagsClass*).value.values))
    end

    def values=(value : GObject::FlagsValue)
      to_unsafe.as(LibGObject::FlagsClass*).value.values = value.to_unsafe.as(LibGObject::FlagsValue*)
    end

  end
end

