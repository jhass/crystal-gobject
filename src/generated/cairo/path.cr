module Cairo
  class Path
    include GObject::WrappedType

    def initialize(@cairo_path)
    end

    def to_unsafe
      @cairo_path.not_nil!
    end

  end
end

