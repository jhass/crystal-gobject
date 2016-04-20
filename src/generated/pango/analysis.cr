module Pango
  class Analysis
    include GObject::WrappedType

    @pango_analysis : LibPango::Analysis*?
    def initialize(@pango_analysis : LibPango::Analysis*)
    end

    def to_unsafe
      @pango_analysis.not_nil!
    end

  end
end

