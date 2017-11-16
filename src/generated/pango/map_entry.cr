module Pango
  class MapEntry
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::MapEntry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::MapEntry*)
    end

  end
end

