module Gtk
  class LockButtonPrivate
    include GObject::WrappedType

    @gtk_lock_button_private : LibGtk::LockButtonPrivate*?
    def initialize(@gtk_lock_button_private : LibGtk::LockButtonPrivate*)
    end

    def to_unsafe
      @gtk_lock_button_private.not_nil!.as(Void*)
    end

  end
end

