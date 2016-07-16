module Gtk
  class RecentActionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RecentActionPrivate*))
    end

    @gtk_recent_action_private : LibGtk::RecentActionPrivate*?
    def initialize(@gtk_recent_action_private : LibGtk::RecentActionPrivate*)
    end

    def to_unsafe
      @gtk_recent_action_private.not_nil!.as(Void*)
    end

  end
end

