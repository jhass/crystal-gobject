module Gtk
  class EntryIconAccessible < Atk::Object
    @gtk_entry_icon_accessible : LibGtk::EntryIconAccessible*?
    def initialize(@gtk_entry_icon_accessible : LibGtk::EntryIconAccessible*)
    end

    def to_unsafe
      @gtk_entry_icon_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
  end
end

