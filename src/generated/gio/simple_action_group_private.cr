module Gio
  class SimpleActionGroupPrivate
    include GObject::WrappedType

    def initialize(@gio_simple_action_group_private)
    end

    def to_unsafe
      @gio_simple_action_group_private.not_nil!
    end

  end
end

