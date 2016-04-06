module Gtk
  class ProgressBarAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_progress_bar_accessible_private)
    end

    def to_unsafe
      @gtk_progress_bar_accessible_private.not_nil!
    end

  end
end

