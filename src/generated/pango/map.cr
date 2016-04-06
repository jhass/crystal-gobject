module Pango
  class Map
    include GObject::WrappedType

    def initialize(@pango_map)
    end

    def to_unsafe
      @pango_map.not_nil!
    end

  end
end

