module Gio
  class OutputVector
    include GObject::WrappedType

    @gio_output_vector : LibGio::OutputVector*?
    def initialize(@gio_output_vector : LibGio::OutputVector*)
    end

    def to_unsafe
      @gio_output_vector.not_nil!
    end

  end
end

