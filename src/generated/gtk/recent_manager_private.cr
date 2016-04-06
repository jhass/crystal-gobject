module Gtk
  class RecentManagerPrivate
    include GObject::WrappedType

    def initialize(@gtk_recent_manager_private)
    end

    def to_unsafe
      @gtk_recent_manager_private.not_nil!
    end

  end
end

