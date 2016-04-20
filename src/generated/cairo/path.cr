module Cairo
  class Path
    include GObject::WrappedType

    @cairo_path : Libcairo::Path*?
    def initialize(@cairo_path : Libcairo::Path*)
    end

    def to_unsafe
      @cairo_path.not_nil!
    end

  end
end

