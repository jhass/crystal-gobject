module Pango
  class IncludedModule
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      super(ptr.as(LibPango::IncludedModule*))
    end

    @pointer : Void*
    def initialize(pointer : LibPango::IncludedModule*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::IncludedModule*)
    end

    def list
      (to_unsafe.as(LibPango::IncludedModule*).value.list)
    end

    def init
      (to_unsafe.as(LibPango::IncludedModule*).value.init)
    end

    def exit
      (to_unsafe.as(LibPango::IncludedModule*).value.exit)
    end

    def create
      (to_unsafe.as(LibPango::IncludedModule*).value.create)
    end

  end
end

