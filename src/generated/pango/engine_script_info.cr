module Pango
  class EngineScriptInfo
    include GObject::WrappedType

    def initialize(@pango_engine_script_info)
    end

    def to_unsafe
      @pango_engine_script_info.not_nil!
    end

  end
end

