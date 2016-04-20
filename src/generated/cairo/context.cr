module Cairo
  class Context
    include GObject::WrappedType

    @cairo_context : Libcairo::Context*?
    def initialize(@cairo_context : Libcairo::Context*)
    end

    def to_unsafe
      @cairo_context.not_nil!
    end

  end
end

