module Gtk
  class ActionBarPrivate
    include GObject::WrappedType

    def initialize(@gtk_action_bar_private)
    end

    def to_unsafe
      @gtk_action_bar_private.not_nil!
    end

  end
end

