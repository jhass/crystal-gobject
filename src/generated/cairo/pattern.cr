module Cairo
  class Pattern
    include GObject::WrappedType

    @cairo_pattern : LibCairo::Pattern*?
    def initialize(@cairo_pattern : LibCairo::Pattern*)
    end

    def to_unsafe
      @cairo_pattern.not_nil!.as(Void*)
    end

  end
end

