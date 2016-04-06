module Pango
  class IncludedModule
    include GObject::WrappedType

    def initialize(@pango_included_module)
    end

    def to_unsafe
      @pango_included_module.not_nil!
    end

  end
end

