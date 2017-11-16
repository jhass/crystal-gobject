module GLib
  class MarkupParser
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      super(ptr.as(LibGLib::MarkupParser*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::MarkupParser*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MarkupParser*)
    end

    def start_element
      (to_unsafe.as(LibGLib::MarkupParser*).value.start_element)
    end

    def end_element
      (to_unsafe.as(LibGLib::MarkupParser*).value.end_element)
    end

    def text
      (to_unsafe.as(LibGLib::MarkupParser*).value.text)
    end

    def passthrough
      (to_unsafe.as(LibGLib::MarkupParser*).value.passthrough)
    end

    def error
      (to_unsafe.as(LibGLib::MarkupParser*).value.error)
    end

  end
end

