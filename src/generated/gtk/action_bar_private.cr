module Gtk
  class ActionBarPrivate
    include GObject::WrappedType

    @gtk_action_bar_private : LibGtk::ActionBarPrivate*?
    def initialize(@gtk_action_bar_private : LibGtk::ActionBarPrivate*)
    end

    def to_unsafe
      @gtk_action_bar_private.not_nil!
    end

  end
end

