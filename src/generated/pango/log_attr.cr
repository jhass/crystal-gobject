module Pango
  class LogAttr
    include GObject::WrappedType

    @pango_log_attr : LibPango::LogAttr*?
    def initialize(@pango_log_attr : LibPango::LogAttr*)
    end

    def to_unsafe
      @pango_log_attr.not_nil!
    end

  end
end

