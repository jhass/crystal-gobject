module Cairo
  class Path
    include GObject::WrappedType

    @cairo_path : LibCairo::Path*?
    def initialize(@cairo_path : LibCairo::Path*)
    end

    def to_unsafe
      @cairo_path.not_nil!.as(Void*)
    end

  end
end

