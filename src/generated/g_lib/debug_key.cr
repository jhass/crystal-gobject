module GLib
  class DebugKey
    include GObject::WrappedType

    def self.new(key : String|Nil = nil, value : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::DebugKey*)).tap do |object|
        object.key = key unless key.nil?
        object.value = value unless value.nil?
      end
    end

    @g_lib_debug_key : LibGLib::DebugKey*?
    def initialize(@g_lib_debug_key : LibGLib::DebugKey*)
    end

    def to_unsafe
      @g_lib_debug_key.not_nil!
    end

    def key
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::DebugKey*).value.key); ::String.new((to_unsafe.as(LibGLib::DebugKey*).value.key)))
    end

    def key=(value : String)
      to_unsafe.as(LibGLib::DebugKey*).value.key = value.to_unsafe
    end

    def value
      (to_unsafe.as(LibGLib::DebugKey*).value.value)
    end

    def value=(value : UInt32)
      to_unsafe.as(LibGLib::DebugKey*).value.value = UInt32.new(value)
    end

  end
end

