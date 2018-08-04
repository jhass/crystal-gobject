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

    @pointer : Void*
    def initialize(pointer : LibPango::ScriptForLang*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::ScriptForLang*)
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

