module Cairo
  class Context
    include GObject::WrappedType

    def initialize(@cairo_context)
    end

    def to_unsafe
      @cairo_context.not_nil!
    end

  end
end

