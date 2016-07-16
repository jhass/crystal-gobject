module Pango
  class RendererPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibPango::RendererPrivate*))
    end

    @pango_renderer_private : LibPango::RendererPrivate*?
    def initialize(@pango_renderer_private : LibPango::RendererPrivate*)
    end

    def to_unsafe
      @pango_renderer_private.not_nil!.as(Void*)
    end

  end
end

