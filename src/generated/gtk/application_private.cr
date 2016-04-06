module Gtk
  class ApplicationPrivate
    include GObject::WrappedType

    def initialize(@gtk_application_private)
    end

    def to_unsafe
      @gtk_application_private.not_nil!
    end

  end
end

