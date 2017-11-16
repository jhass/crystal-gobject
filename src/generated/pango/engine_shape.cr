require "./engine"

module Pango
  class EngineShape < Engine
    @pointer : Void*
    def initialize(pointer : LibPango::EngineShape*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::EngineShape*)
    end

  end
end

