module Gtk
  class LockButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_lock_button_accessible_private : LibGtk::LockButtonAccessiblePrivate*?
    def initialize(@gtk_lock_button_accessible_private : LibGtk::LockButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_lock_button_accessible_private.not_nil!
    end

  end
end

