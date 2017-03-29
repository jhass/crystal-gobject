module GObject
  class ObjectConstructParam
    include GObject::WrappedType

    def self.new(pspec : GObject::ParamSpec|Nil = nil, value : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGObject::ObjectConstructParam*)).tap do |object|
        object.pspec = pspec unless pspec.nil?
        object.value = value unless value.nil?
      end
    end

    @g_object_object_construct_param : LibGObject::ObjectConstructParam*?
    def initialize(@g_object_object_construct_param : LibGObject::ObjectConstructParam*)
    end

    def to_unsafe
      @g_object_object_construct_param.not_nil!
    end

    def pspec
      GObject::ParamSpec.new((to_unsafe.as(LibGObject::ObjectConstructParam*).value.pspec))
    end

    def pspec=(value : GObject::ParamSpec)
      to_unsafe.as(LibGObject::ObjectConstructParam*).value.pspec = value.to_unsafe.as(LibGObject::ParamSpec*)
    end

    def value
      GObject::Value.new((to_unsafe.as(LibGObject::ObjectConstructParam*).value.value))
    end

    def value=(value : GObject::Value)
      to_unsafe.as(LibGObject::ObjectConstructParam*).value.value = value.to_unsafe.as(LibGObject::Value*)
    end

  end
end

