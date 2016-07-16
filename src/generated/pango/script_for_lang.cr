module Pango
  class ScriptForLang
    include GObject::WrappedType

    def self.new(lang : Array(Int8)|Nil = nil, scripts : Array(Pango::Script)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(20, 0u8)
      new(ptr.as(LibPango::ScriptForLang*)).tap do |object|
        object.lang = lang unless lang.nil?
        object.scripts = scripts unless scripts.nil?
      end
    end

    @pango_script_for_lang : LibPango::ScriptForLang*?
    def initialize(@pango_script_for_lang : LibPango::ScriptForLang*)
    end

    def to_unsafe
      @pango_script_for_lang.not_nil!.as(Void*)
    end

    def lang
      PointerIterator.new((to_unsafe.as(LibPango::ScriptForLang*).value.lang)) {|__item| __item }
    end

    def lang=(value : Array(Int8))
      to_unsafe.as(LibPango::ScriptForLang*).value.lang = value
    end

    def scripts
      PointerIterator.new((to_unsafe.as(LibPango::ScriptForLang*).value.scripts)) {|__item| __item }
    end

    def scripts=(value : Array(Pango::Script))
      to_unsafe.as(LibPango::ScriptForLang*).value.scripts = value
    end

  end
end

