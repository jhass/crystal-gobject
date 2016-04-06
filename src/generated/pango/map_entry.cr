module Pango
  class MapEntry
    include GObject::WrappedType

    def initialize(@pango_map_entry)
    end

    def to_unsafe
      @pango_map_entry.not_nil!
    end

  end
end

