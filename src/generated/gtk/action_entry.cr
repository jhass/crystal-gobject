module Gtk
  class ActionEntry
    include GObject::WrappedType

    def initialize(@gtk_action_entry)
    end

    def to_unsafe
      @gtk_action_entry.not_nil!
    end

  end
end

