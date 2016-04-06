module Pango
  class ScriptForLang
    include GObject::WrappedType

    def initialize(@pango_script_for_lang)
    end

    def to_unsafe
      @pango_script_for_lang.not_nil!
    end

  end
end

