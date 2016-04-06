module Pango
  class Analysis
    include GObject::WrappedType

    def initialize(@pango_analysis)
    end

    def to_unsafe
      @pango_analysis.not_nil!
    end

  end
end

