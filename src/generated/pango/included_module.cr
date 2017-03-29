module Pango
  class IncludedModule
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      super(ptr.as(LibPango::IncludedModule*))
    end

    @pango_included_module : LibPango::IncludedModule*?
    def initialize(@pango_included_module : LibPango::IncludedModule*)
    end

    def to_unsafe
      @pango_included_module.not_nil!
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

