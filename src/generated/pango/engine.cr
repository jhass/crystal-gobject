module Pango
  class Engine < GObject::Object
    def initialize(@pango_engine)
    end

    def to_unsafe
      @pango_engine.not_nil!
    end

  end
end

