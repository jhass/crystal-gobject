module Pango
  class EngineScriptInfo
    include GObject::WrappedType

    def self.new(script : Pango::Script|Nil = nil, langs : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibPango::EngineScriptInfo*)).tap do |object|
        object.script = script unless script.nil?
        object.langs = langs unless langs.nil?
      end
    end

    @pango_engine_script_info : LibPango::EngineScriptInfo*?
    def initialize(@pango_engine_script_info : LibPango::EngineScriptInfo*)
    end

    def to_unsafe
      @pango_engine_script_info.not_nil!
    end

    def script
      (to_unsafe.as(LibPango::EngineScriptInfo*).value.script)
    end

    def script=(value : Pango::Script)
      to_unsafe.as(LibPango::EngineScriptInfo*).value.script = value
    end

    def langs
      (raise "Expected string but got null" unless (to_unsafe.as(LibPango::EngineScriptInfo*).value.langs); ::String.new((to_unsafe.as(LibPango::EngineScriptInfo*).value.langs)))
    end

    def langs=(value : String)
      to_unsafe.as(LibPango::EngineScriptInfo*).value.langs = value
    end

  end
end

