module Gtk
  class RecentActionPrivate
    include GObject::WrappedType

    @gtk_recent_action_private : LibGtk::RecentActionPrivate*?
    def initialize(@gtk_recent_action_private : LibGtk::RecentActionPrivate*)
    end

    def to_unsafe
      @gtk_recent_action_private.not_nil!
    end

  end
end

