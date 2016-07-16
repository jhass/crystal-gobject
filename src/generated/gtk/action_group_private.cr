module Gtk
  class ActionGroupPrivate
    include GObject::WrappedType

    @gtk_action_group_private : LibGtk::ActionGroupPrivate*?
    def initialize(@gtk_action_group_private : LibGtk::ActionGroupPrivate*)
    end

    def to_unsafe
      @gtk_action_group_private.not_nil!.as(Void*)
    end

  end
end

