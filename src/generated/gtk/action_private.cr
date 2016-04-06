module Gtk
  class ActionPrivate
    include GObject::WrappedType

    def initialize(@gtk_action_private)
    end

    def to_unsafe
      @gtk_action_private.not_nil!
    end

  end
end

