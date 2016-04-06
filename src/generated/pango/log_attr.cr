module Pango
  class LogAttr
    include GObject::WrappedType

    def initialize(@pango_log_attr)
    end

    def to_unsafe
      @pango_log_attr.not_nil!
    end

  end
end

