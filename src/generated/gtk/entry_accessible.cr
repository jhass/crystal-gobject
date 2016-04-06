require "./widget_accessible"

module Gtk
  class EntryAccessible < WidgetAccessible
    def initialize(@gtk_entry_accessible)
    end

    def to_unsafe
      @gtk_entry_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements EditableText
    # Implements Text
  end
end

