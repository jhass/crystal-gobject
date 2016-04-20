module Pango
  class EngineScriptInfo
    include GObject::WrappedType

    @pango_engine_script_info : LibPango::EngineScriptInfo*?
    def initialize(@pango_engine_script_info : LibPango::EngineScriptInfo*)
    end

    def to_unsafe
      @pango_engine_script_info.not_nil!
    end

  end
end

