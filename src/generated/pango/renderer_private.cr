module Pango
  class RendererPrivate
    include GObject::WrappedType

    def initialize(@pango_renderer_private)
    end

    def to_unsafe
      @pango_renderer_private.not_nil!
    end

  end
end

