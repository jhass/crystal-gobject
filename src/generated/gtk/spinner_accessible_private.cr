module Gtk
  class SpinnerAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_spinner_accessible_private)
    end

    def to_unsafe
      @gtk_spinner_accessible_private.not_nil!
    end

  end
end

