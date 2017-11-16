module GLib
  class Error
    include GObject::WrappedType

    def self.new(domain : UInt32|Nil = nil, code : Int32|Nil = nil, message : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::Error*)).tap do |object|
        object.domain = domain unless domain.nil?
        object.code = code unless code.nil?
        object.message = message unless message.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Error*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Error*)
    end

    def self.new_literal(domain, code, message) : self
      __return_value = LibGLib.error_new_literal(UInt32.new(domain), Int32.new(code), message.to_unsafe)
      cast __return_value
    end

    def copy
      __return_value = LibGLib.error_copy(@pointer.as(LibGLib::Error*))
      __return_value
    end

    def free
      LibGLib.error_free(@pointer.as(LibGLib::Error*))
      nil
    end

    def matches(domain, code)
      __return_value = LibGLib.error_matches(@pointer.as(LibGLib::Error*), UInt32.new(domain), Int32.new(code))
      __return_value
    end

    def domain
      (to_unsafe.as(LibGLib::Error*).value.domain)
    end

    def domain=(value : UInt32)
      to_unsafe.as(LibGLib::Error*).value.domain = UInt32.new(value)
    end

    def code
      (to_unsafe.as(LibGLib::Error*).value.code)
    end

    def code=(value : Int32)
      to_unsafe.as(LibGLib::Error*).value.code = Int32.new(value)
    end

    def message
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Error*).value.message); ::String.new((to_unsafe.as(LibGLib::Error*).value.message)))
    end

    def message=(value : String)
      to_unsafe.as(LibGLib::Error*).value.message = value.to_unsafe
    end

  end
end

