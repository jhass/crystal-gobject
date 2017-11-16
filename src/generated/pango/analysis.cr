module Pango
  class Analysis
    include GObject::WrappedType

    def self.new(shape_engine : Pango::EngineShape|Nil = nil, lang_engine : Pango::EngineLang|Nil = nil, font : Pango::Font|Nil = nil, level : UInt8|Nil = nil, gravity : UInt8|Nil = nil, flags : UInt8|Nil = nil, script : UInt8|Nil = nil, language : Pango::Language|Nil = nil, extra_attrs : Void*|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibPango::Analysis*)).tap do |object|
        object.shape_engine = shape_engine unless shape_engine.nil?
        object.lang_engine = lang_engine unless lang_engine.nil?
        object.font = font unless font.nil?
        object.level = level unless level.nil?
        object.gravity = gravity unless gravity.nil?
        object.flags = flags unless flags.nil?
        object.script = script unless script.nil?
        object.language = language unless language.nil?
        object.extra_attrs = extra_attrs unless extra_attrs.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::Analysis*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Analysis*)
    end

    def shape_engine
      Pango::EngineShape.new((to_unsafe.as(LibPango::Analysis*).value.shape_engine))
    end

    def shape_engine=(value : Pango::EngineShape)
      to_unsafe.as(LibPango::Analysis*).value.shape_engine = value.to_unsafe.as(LibPango::EngineShape*)
    end

    def lang_engine
      Pango::EngineLang.new((to_unsafe.as(LibPango::Analysis*).value.lang_engine))
    end

    def lang_engine=(value : Pango::EngineLang)
      to_unsafe.as(LibPango::Analysis*).value.lang_engine = value.to_unsafe.as(LibPango::EngineLang*)
    end

    def font
      Pango::Font.new((to_unsafe.as(LibPango::Analysis*).value.font))
    end

    def font=(value : Pango::Font)
      to_unsafe.as(LibPango::Analysis*).value.font = value.to_unsafe.as(LibPango::Font*)
    end

    def level
      (to_unsafe.as(LibPango::Analysis*).value.level)
    end

    def level=(value : UInt8)
      to_unsafe.as(LibPango::Analysis*).value.level = UInt8.new(value)
    end

    def gravity
      (to_unsafe.as(LibPango::Analysis*).value.gravity)
    end

    def gravity=(value : UInt8)
      to_unsafe.as(LibPango::Analysis*).value.gravity = UInt8.new(value)
    end

    def flags
      (to_unsafe.as(LibPango::Analysis*).value.flags)
    end

    def flags=(value : UInt8)
      to_unsafe.as(LibPango::Analysis*).value.flags = UInt8.new(value)
    end

    def script
      (to_unsafe.as(LibPango::Analysis*).value.script)
    end

    def script=(value : UInt8)
      to_unsafe.as(LibPango::Analysis*).value.script = UInt8.new(value)
    end

    def language
      Pango::Language.new((to_unsafe.as(LibPango::Analysis*).value.language))
    end

    def language=(value : Pango::Language)
      to_unsafe.as(LibPango::Analysis*).value.language = value.to_unsafe.as(LibPango::Language*)
    end

    def extra_attrs
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new((to_unsafe.as(LibPango::Analysis*).value.extra_attrs).as(LibGLib::SList*)))
    end

    def extra_attrs=(value : Void*)
      to_unsafe.as(LibPango::Analysis*).value.extra_attrs = value
    end

  end
end

