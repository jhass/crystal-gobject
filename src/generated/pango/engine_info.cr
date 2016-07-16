module Pango
  class EngineInfo
    include GObject::WrappedType

    def self.new(id : String|Nil = nil, engine_type : String|Nil = nil, render_type : String|Nil = nil, scripts : Pango::EngineScriptInfo|Nil = nil, n_scripts : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibPango::EngineInfo*)).tap do |object|
        object.id = id unless id.nil?
        object.engine_type = engine_type unless engine_type.nil?
        object.render_type = render_type unless render_type.nil?
        object.scripts = scripts unless scripts.nil?
        object.n_scripts = n_scripts unless n_scripts.nil?
      end
    end

    @pango_engine_info : LibPango::EngineInfo*?
    def initialize(@pango_engine_info : LibPango::EngineInfo*)
    end

    def to_unsafe
      @pango_engine_info.not_nil!.as(Void*)
    end

    def id
      (raise "Expected string but got null" unless (to_unsafe.value.id); ::String.new((to_unsafe.value.id)))
    end

    def id=(value : String)
      to_unsafe.value.id = value.to_unsafe
    end

    def engine_type
      (raise "Expected string but got null" unless (to_unsafe.value.engine_type); ::String.new((to_unsafe.value.engine_type)))
    end

    def engine_type=(value : String)
      to_unsafe.value.engine_type = value.to_unsafe
    end

    def render_type
      (raise "Expected string but got null" unless (to_unsafe.value.render_type); ::String.new((to_unsafe.value.render_type)))
    end

    def render_type=(value : String)
      to_unsafe.value.render_type = value.to_unsafe
    end

    def scripts
      Pango::EngineScriptInfo.new((to_unsafe.value.scripts))
    end

    def scripts=(value : Pango::EngineScriptInfo)
      to_unsafe.value.scripts = value.to_unsafe.as(LibPango::EngineScriptInfo*)
    end

    def n_scripts
      (to_unsafe.value.n_scripts)
    end

    def n_scripts=(value : Int32)
      to_unsafe.value.n_scripts = Int32.new(value)
    end

  end
end

