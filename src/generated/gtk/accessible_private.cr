module Gtk
  class AccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_accessible_private)
    end

    def to_unsafe
      @gtk_accessible_private.not_nil!
    end

  end
end

