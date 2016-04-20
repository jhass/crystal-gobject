module Pango
  class RendererPrivate
    include GObject::WrappedType

    @pango_renderer_private : LibPango::RendererPrivate*?
    def initialize(@pango_renderer_private : LibPango::RendererPrivate*)
    end

    def to_unsafe
      @pango_renderer_private.not_nil!
    end

  end
end

