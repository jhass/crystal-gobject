module Gtk
  class RecentManagerPrivate
    include GObject::WrappedType

    @gtk_recent_manager_private : LibGtk::RecentManagerPrivate*?
    def initialize(@gtk_recent_manager_private : LibGtk::RecentManagerPrivate*)
    end

    def to_unsafe
      @gtk_recent_manager_private.not_nil!.as(Void*)
    end

  end
end

