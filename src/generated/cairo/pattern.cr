module Cairo
  class Pattern
    include GObject::WrappedType

    def initialize(@cairo_pattern)
    end

    def to_unsafe
      @cairo_pattern.not_nil!
    end

  end
end

