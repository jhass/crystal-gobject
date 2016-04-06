module Pango
  class EngineInfo
    include GObject::WrappedType

    def initialize(@pango_engine_info)
    end

    def to_unsafe
      @pango_engine_info.not_nil!
    end

  end
end

