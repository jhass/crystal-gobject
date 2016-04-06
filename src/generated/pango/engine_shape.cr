require "./engine"

module Pango
  class EngineShape < Engine
    def initialize(@pango_engine_shape)
    end

    def to_unsafe
      @pango_engine_shape.not_nil!
    end

  end
end

