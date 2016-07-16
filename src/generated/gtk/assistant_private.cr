module Gtk
  class AssistantPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AssistantPrivate*))
    end

    @gtk_assistant_private : LibGtk::AssistantPrivate*?
    def initialize(@gtk_assistant_private : LibGtk::AssistantPrivate*)
    end

    def to_unsafe
      @gtk_assistant_private.not_nil!.as(Void*)
    end

  end
end

