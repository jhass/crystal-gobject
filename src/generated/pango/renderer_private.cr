module Pango
  class RendererPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::RendererPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::RendererPrivate*)
    end

  end
end

