module Gtk
  class RecentChooserWidgetPrivate
    include GObject::WrappedType

    def initialize(@gtk_recent_chooser_widget_private)
    end

    def to_unsafe
      @gtk_recent_chooser_widget_private.not_nil!
    end

  end
end

