module Gtk
  class LockButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LockButtonAccessiblePrivate*))
    end

    @gtk_lock_button_accessible_private : LibGtk::LockButtonAccessiblePrivate*?
    def initialize(@gtk_lock_button_accessible_private : LibGtk::LockButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_lock_button_accessible_private.not_nil!
    end

  end
end

