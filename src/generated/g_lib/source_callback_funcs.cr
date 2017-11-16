module GLib
  class SourceCallbackFuncs
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      super(ptr.as(LibGLib::SourceCallbackFuncs*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::SourceCallbackFuncs*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::SourceCallbackFuncs*)
    end

    def ref
      (to_unsafe.as(LibGLib::SourceCallbackFuncs*).value.ref)
    end

    def unref
      (to_unsafe.as(LibGLib::SourceCallbackFuncs*).value.unref)
    end

    def get
      (to_unsafe.as(LibGLib::SourceCallbackFuncs*).value.get)
    end

  end
end

