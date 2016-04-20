module Pango
  class EngineInfo
    include GObject::WrappedType

    @pango_engine_info : LibPango::EngineInfo*?
    def initialize(@pango_engine_info : LibPango::EngineInfo*)
    end

    def to_unsafe
      @pango_engine_info.not_nil!
    end

  end
end

