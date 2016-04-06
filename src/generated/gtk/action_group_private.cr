module Gtk
  class ActionGroupPrivate
    include GObject::WrappedType

    def initialize(@gtk_action_group_private)
    end

    def to_unsafe
      @gtk_action_group_private.not_nil!
    end

  end
end

