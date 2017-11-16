module Pango
  class Map
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::Map*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Map*)
    end

  end
end

