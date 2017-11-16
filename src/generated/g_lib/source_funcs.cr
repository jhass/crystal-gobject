module GLib
  class SourceFuncs
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      super(ptr.as(LibGLib::SourceFuncs*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::SourceFuncs*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::SourceFuncs*)
    end

    def prepare
      (to_unsafe.as(LibGLib::SourceFuncs*).value.prepare)
    end

    def check
      (to_unsafe.as(LibGLib::SourceFuncs*).value.check)
    end

    def dispatch
      (to_unsafe.as(LibGLib::SourceFuncs*).value.dispatch)
    end

    def finalize
      (to_unsafe.as(LibGLib::SourceFuncs*).value.finalize)
    end

    def closure_callback
      (to_unsafe.as(LibGLib::SourceFuncs*).value.closure_callback)
    end

    def closure_marshal
      (to_unsafe.as(LibGLib::SourceFuncs*).value.closure_marshal)
    end

  end
end

