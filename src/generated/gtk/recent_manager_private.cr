module Gtk
  class RecentManagerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RecentManagerPrivate*))
    end

    @gtk_recent_manager_private : LibGtk::RecentManagerPrivate*?
    def initialize(@gtk_recent_manager_private : LibGtk::RecentManagerPrivate*)
    end

    def to_unsafe
      @gtk_recent_manager_private.not_nil!.as(Void*)
    end

  end
end

