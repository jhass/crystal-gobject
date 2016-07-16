module Pango
  class Map
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibPango::Map*))
    end

    @pango_map : LibPango::Map*?
    def initialize(@pango_map : LibPango::Map*)
    end

    def to_unsafe
      @pango_map.not_nil!.as(Void*)
    end

  end
end

