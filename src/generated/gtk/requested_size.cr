module Gtk
  class RequestedSize
    include GObject::WrappedType

    @gtk_requested_size : LibGtk::RequestedSize*?
    def initialize(@gtk_requested_size : LibGtk::RequestedSize*)
    end

    def to_unsafe
      @gtk_requested_size.not_nil!
    end

  end
end

