module Pango
  class MapEntry
    include GObject::WrappedType

    @pango_map_entry : LibPango::MapEntry*?
    def initialize(@pango_map_entry : LibPango::MapEntry*)
    end

    def to_unsafe
      @pango_map_entry.not_nil!.as(Void*)
    end

  end
end

