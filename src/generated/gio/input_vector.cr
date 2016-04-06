module Gio
  class InputVector
    include GObject::WrappedType

    def initialize(@gio_input_vector)
    end

    def to_unsafe
      @gio_input_vector.not_nil!
    end

  end
end

