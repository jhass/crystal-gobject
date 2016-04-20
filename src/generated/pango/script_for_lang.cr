module Pango
  class ScriptForLang
    include GObject::WrappedType

    @pango_script_for_lang : LibPango::ScriptForLang*?
    def initialize(@pango_script_for_lang : LibPango::ScriptForLang*)
    end

    def to_unsafe
      @pango_script_for_lang.not_nil!
    end

  end
end

