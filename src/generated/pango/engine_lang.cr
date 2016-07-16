require "./engine"

module Pango
  class EngineLang < Engine
    @pango_engine_lang : LibPango::EngineLang*?
    def initialize(@pango_engine_lang : LibPango::EngineLang*)
    end

    def to_unsafe
      @pango_engine_lang.not_nil!.as(Void*)
    end

  end
end

