module Gio
  class SimpleActionGroupPrivate
    include GObject::WrappedType

    @gio_simple_action_group_private : LibGio::SimpleActionGroupPrivate*?
    def initialize(@gio_simple_action_group_private : LibGio::SimpleActionGroupPrivate*)
    end

    def to_unsafe
      @gio_simple_action_group_private.not_nil!
    end

  end
end

