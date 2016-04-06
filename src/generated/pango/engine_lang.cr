require "./engine"

module Pango
  class EngineLang < Engine
    def initialize(@pango_engine_lang)
    end

    def to_unsafe
      @pango_engine_lang.not_nil!
    end

  end
end

