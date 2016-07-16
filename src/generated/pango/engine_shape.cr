require "./engine"

module Pango
  class EngineShape < Engine
    @pango_engine_shape : LibPango::EngineShape*?
    def initialize(@pango_engine_shape : LibPango::EngineShape*)
    end

    def to_unsafe
      @pango_engine_shape.not_nil!.as(Void*)
    end

  end
end

