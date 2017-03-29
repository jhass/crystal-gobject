module GObject
  class EnumClass
    include GObject::WrappedType

    def self.new(g_type_class : GObject::TypeClass|Nil = nil, minimum : Int32|Nil = nil, maximum : Int32|Nil = nil, n_values : UInt32|Nil = nil, values : GObject::EnumValue|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGObject::EnumClass*)).tap do |object|
        object.g_type_class = g_type_class unless g_type_class.nil?
        object.minimum = minimum unless minimum.nil?
        object.maximum = maximum unless maximum.nil?
        object.n_values = n_values unless n_values.nil?
        object.values = values unless values.nil?
      end
    end

    @g_object_enum_class : LibGObject::EnumClass*?
    def initialize(@g_object_enum_class : LibGObject::EnumClass*)
    end

    def to_unsafe
      @g_object_enum_class.not_nil!
    end

    def g_type_class
      GObject::TypeClass.new((to_unsafe.as(LibGObject::EnumClass*).value.g_type_class))
    end

    def g_type_class=(value : GObject::TypeClass)
      to_unsafe.as(LibGObject::EnumClass*).value.g_type_class = value
    end

    def minimum
      (to_unsafe.as(LibGObject::EnumClass*).value.minimum)
    end

    def minimum=(value : Int32)
      to_unsafe.as(LibGObject::EnumClass*).value.minimum = Int32.new(value)
    end

    def maximum
      (to_unsafe.as(LibGObject::EnumClass*).value.maximum)
    end

    def maximum=(value : Int32)
      to_unsafe.as(LibGObject::EnumClass*).value.maximum = Int32.new(value)
    end

    def n_values
      (to_unsafe.as(LibGObject::EnumClass*).value.n_values)
    end

    def n_values=(value : UInt32)
      to_unsafe.as(LibGObject::EnumClass*).value.n_values = UInt32.new(value)
    end

    def values
      GObject::EnumValue.new((to_unsafe.as(LibGObject::EnumClass*).value.values))
    end

    def values=(value : GObject::EnumValue)
      to_unsafe.as(LibGObject::EnumClass*).value.values = value.to_unsafe.as(LibGObject::EnumValue*)
    end

  end
end

