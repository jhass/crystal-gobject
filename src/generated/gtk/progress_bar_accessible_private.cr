module Gtk
  class ProgressBarAccessiblePrivate
    include GObject::WrappedType

    @gtk_progress_bar_accessible_private : LibGtk::ProgressBarAccessiblePrivate*?
    def initialize(@gtk_progress_bar_accessible_private : LibGtk::ProgressBarAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_progress_bar_accessible_private.not_nil!
    end

  end
end

