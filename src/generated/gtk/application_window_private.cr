module Gtk
  class ApplicationWindowPrivate
    include GObject::WrappedType

    def initialize(@gtk_application_window_private)
    end

    def to_unsafe
      @gtk_application_window_private.not_nil!
    end

  end
end

