module GObject
  class Parameter
    include GObject::WrappedType

    def self.new(name : String|Nil = nil, value : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGObject::Parameter*)).tap do |object|
        object.name = name unless name.nil?
        object.value = value unless value.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::Parameter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::Parameter*)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::Parameter*).value.name); ::String.new((to_unsafe.as(LibGObject::Parameter*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGObject::Parameter*).value.name = value.to_unsafe
    end

    def value
      GObject::Value.new((to_unsafe.as(LibGObject::Parameter*).value.value))
    end

    def value=(value : GObject::Value)
      to_unsafe.as(LibGObject::Parameter*).value.value = value
    end

  end
end

