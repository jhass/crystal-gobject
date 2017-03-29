module Pango
  class Map
    include GObject::WrappedType

    @pango_map : LibPango::Map*?
    def initialize(@pango_map : LibPango::Map*)
    end

    def to_unsafe
      @pango_map.not_nil!
    end

  end
end

