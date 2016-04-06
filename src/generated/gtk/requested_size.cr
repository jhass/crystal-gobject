module Gtk
  class RequestedSize
    include GObject::WrappedType

    def initialize(@gtk_requested_size)
    end

    def to_unsafe
      @gtk_requested_size.not_nil!
    end

  end
end

