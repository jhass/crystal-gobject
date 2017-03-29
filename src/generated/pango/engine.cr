module Pango
  class Engine < GObject::Object
    @pango_engine : LibPango::Engine*?
    def initialize(@pango_engine : LibPango::Engine*)
    end

    def to_unsafe
      @pango_engine.not_nil!
    end

  end
end

