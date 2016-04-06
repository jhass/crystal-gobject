module Gtk
  class RecentActionPrivate
    include GObject::WrappedType

    def initialize(@gtk_recent_action_private)
    end

    def to_unsafe
      @gtk_recent_action_private.not_nil!
    end

  end
end

