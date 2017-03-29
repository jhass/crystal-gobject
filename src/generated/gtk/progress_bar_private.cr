module Gtk
  class ProgressBarPrivate
    include GObject::WrappedType

    @gtk_progress_bar_private : LibGtk::ProgressBarPrivate*?
    def initialize(@gtk_progress_bar_private : LibGtk::ProgressBarPrivate*)
    end

    def to_unsafe
      @gtk_progress_bar_private.not_nil!
    end

  end
end

