module Gtk
  class SpinnerPrivate
    include GObject::WrappedType

    def initialize(@gtk_spinner_private)
    end

    def to_unsafe
      @gtk_spinner_private.not_nil!
    end

  end
end

