module Gtk
  class EntryIconAccessible < Atk::Object
    def initialize(@gtk_entry_icon_accessible)
    end

    def to_unsafe
      @gtk_entry_icon_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
  end
end

