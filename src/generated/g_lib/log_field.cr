module GLib
  class LogField
    include GObject::WrappedType

    def self.new(key : String|Nil = nil, value : Void*|Nil = nil, length : Int64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGLib::LogField*)).tap do |object|
        object.key = key unless key.nil?
        object.value = value unless value.nil?
        object.length = length unless length.nil?
      end
    end

    @g_lib_log_field : LibGLib::LogField*?
    def initialize(@g_lib_log_field : LibGLib::LogField*)
    end

    def to_unsafe
      @g_lib_log_field.not_nil!
    end

    def key
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::LogField*).value.key); ::String.new((to_unsafe.as(LibGLib::LogField*).value.key)))
    end

    def key=(value : String)
      to_unsafe.as(LibGLib::LogField*).value.key = value
    end

    def value
      (to_unsafe.as(LibGLib::LogField*).value.value)
    end

    def value=(value : Void*)
      to_unsafe.as(LibGLib::LogField*).value.value = value
    end

    def length
      (to_unsafe.as(LibGLib::LogField*).value.length)
    end

    def length=(value : Int64)
      to_unsafe.as(LibGLib::LogField*).value.length = Int64.new(value)
    end

  end
end

