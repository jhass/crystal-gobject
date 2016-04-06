module Gio
  class OutputVector
    include GObject::WrappedType

    def initialize(@gio_output_vector)
    end

    def to_unsafe
      @gio_output_vector.not_nil!
    end

  end
end

