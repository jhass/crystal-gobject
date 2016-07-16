require "./widget_accessible"

module Gtk
  class LabelAccessible < WidgetAccessible
    @gtk_label_accessible : LibGtk::LabelAccessible*?
    def initialize(@gtk_label_accessible : LibGtk::LabelAccessible*)
    end

    def to_unsafe
      @gtk_label_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Hypertext
    # Implements Text
  end
end

