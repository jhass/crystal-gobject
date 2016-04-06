module Gst
  class ValueTable
    include GObject::WrappedType

    def initialize(@gst_value_table)
    end

    def to_unsafe
      @gst_value_table.not_nil!
    end

  end
end

