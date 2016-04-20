module Gio
  class InputVector
    include GObject::WrappedType

    @gio_input_vector : LibGio::InputVector*?
    def initialize(@gio_input_vector : LibGio::InputVector*)
    end

    def to_unsafe
      @gio_input_vector.not_nil!
    end

  end
end

