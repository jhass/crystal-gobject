module Cairo
  class Context
    include GObject::WrappedType

    @cairo_context : LibCairo::Context*?
    def initialize(@cairo_context : LibCairo::Context*)
    end

    def to_unsafe
      @cairo_context.not_nil!.as(Void*)
    end

  end
end

