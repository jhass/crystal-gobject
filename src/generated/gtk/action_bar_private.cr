module Gtk
  class ActionBarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ActionBarPrivate*))
    end

    @gtk_action_bar_private : LibGtk::ActionBarPrivate*?
    def initialize(@gtk_action_bar_private : LibGtk::ActionBarPrivate*)
    end

    def to_unsafe
      @gtk_action_bar_private.not_nil!.as(Void*)
    end

  end
end

