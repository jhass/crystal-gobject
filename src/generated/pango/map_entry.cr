module Pango
  class MapEntry
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibPango::MapEntry*))
    end

    @pango_map_entry : LibPango::MapEntry*?
    def initialize(@pango_map_entry : LibPango::MapEntry*)
    end

    def to_unsafe
      @pango_map_entry.not_nil!
    end

  end
end

