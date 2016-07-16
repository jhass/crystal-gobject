module Gtk
  class ActionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ActionPrivate*))
    end

    @gtk_action_private : LibGtk::ActionPrivate*?
    def initialize(@gtk_action_private : LibGtk::ActionPrivate*)
    end

    def to_unsafe
      @gtk_action_private.not_nil!
    end

  end
end

