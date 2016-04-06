module Gtk
  class LockButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_lock_button_private)
    end

    def to_unsafe
      @gtk_lock_button_private.not_nil!
    end

  end
end

