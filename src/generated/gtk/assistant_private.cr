module Gtk
  class AssistantPrivate
    include GObject::WrappedType

    @gtk_assistant_private : LibGtk::AssistantPrivate*?
    def initialize(@gtk_assistant_private : LibGtk::AssistantPrivate*)
    end

    def to_unsafe
      @gtk_assistant_private.not_nil!
    end

  end
end

