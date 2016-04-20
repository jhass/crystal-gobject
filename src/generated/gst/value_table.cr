module Gst
  class ValueTable
    include GObject::WrappedType

    @gst_value_table : LibGst::ValueTable*?
    def initialize(@gst_value_table : LibGst::ValueTable*)
    end

    def to_unsafe
      @gst_value_table.not_nil!
    end

  end
end

