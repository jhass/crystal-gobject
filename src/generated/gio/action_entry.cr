module Gio
  class ActionEntry
    include GObject::WrappedType

    @gio_action_entry : LibGio::ActionEntry*?
    def initialize(@gio_action_entry : LibGio::ActionEntry*)
    end

    def to_unsafe
      @gio_action_entry.not_nil!
    end

  end
end

