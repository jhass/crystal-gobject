require "./widget_accessible"

module Gtk
  class LabelAccessible < WidgetAccessible
    def initialize(@gtk_label_accessible)
    end

    def to_unsafe
      @gtk_label_accessible.not_nil!
    end

    # Implements Component
    # Implements Hypertext
    # Implements Text
  end
end

