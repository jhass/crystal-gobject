module Gtk
  class ActionPrivate
    include GObject::WrappedType

    @gtk_action_private : LibGtk::ActionPrivate*?
    def initialize(@gtk_action_private : LibGtk::ActionPrivate*)
    end

    def to_unsafe
      @gtk_action_private.not_nil!.as(Void*)
    end

  end
end

