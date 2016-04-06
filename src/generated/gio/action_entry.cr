module Gio
  class ActionEntry
    include GObject::WrappedType

    def initialize(@gio_action_entry)
    end

    def to_unsafe
      @gio_action_entry.not_nil!
    end

  end
end

