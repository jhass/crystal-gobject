module Cairo
  class Pattern
    include GObject::WrappedType

    @cairo_pattern : Libcairo::Pattern*?
    def initialize(@cairo_pattern : Libcairo::Pattern*)
    end

    def to_unsafe
      @cairo_pattern.not_nil!
    end

  end
end

