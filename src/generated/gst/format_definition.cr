module Gst
  class FormatDefinition
    include GObject::WrappedType

    @gst_format_definition : LibGst::FormatDefinition*?
    def initialize(@gst_format_definition : LibGst::FormatDefinition*)
    end

    def to_unsafe
      @gst_format_definition.not_nil!
    end

  end
end

