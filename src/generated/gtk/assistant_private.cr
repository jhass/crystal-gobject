module Gtk
  class AssistantPrivate
    include GObject::WrappedType

    def initialize(@gtk_assistant_private)
    end

    def to_unsafe
      @gtk_assistant_private.not_nil!
    end

  end
end

