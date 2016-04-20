module Pango
  class IncludedModule
    include GObject::WrappedType

    @pango_included_module : LibPango::IncludedModule*?
    def initialize(@pango_included_module : LibPango::IncludedModule*)
    end

    def to_unsafe
      @pango_included_module.not_nil!
    end

  end
end

