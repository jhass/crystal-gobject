module Gtk
  class LockButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LockButtonPrivate*))
    end

    @gtk_lock_button_private : LibGtk::LockButtonPrivate*?
    def initialize(@gtk_lock_button_private : LibGtk::LockButtonPrivate*)
    end

    def to_unsafe
      @gtk_lock_button_private.not_nil!
    end

  end
end

