require "./widget_accessible"

module Gtk
  class EntryAccessible < WidgetAccessible
    @gtk_entry_accessible : LibGtk::EntryAccessible*?
    def initialize(@gtk_entry_accessible : LibGtk::EntryAccessible*)
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

