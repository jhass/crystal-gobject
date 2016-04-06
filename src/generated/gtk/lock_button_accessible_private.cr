module Gtk
  class LockButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_lock_button_accessible_private)
    end

    def to_unsafe
      @gtk_lock_button_accessible_private.not_nil!
    end

  end
end

