module Gtk
  class ActionEntry
    include GObject::WrappedType

    @gtk_action_entry : LibGtk::ActionEntry*?
    def initialize(@gtk_action_entry : LibGtk::ActionEntry*)
    end

    def to_unsafe
      @gtk_action_entry.not_nil!
    end

  end
end

