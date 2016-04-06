module Gtk
  class ProgressBarPrivate
    include GObject::WrappedType

    def initialize(@gtk_progress_bar_private)
    end

    def to_unsafe
      @gtk_progress_bar_private.not_nil!
    end

  end
end

