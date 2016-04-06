module Gst
  class FormatDefinition
    include GObject::WrappedType

    def initialize(@gst_format_definition)
    end

    def to_unsafe
      @gst_format_definition.not_nil!
    end

  end
end

