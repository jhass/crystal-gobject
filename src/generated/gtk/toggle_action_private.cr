module Gtk
  class ToggleActionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToggleActionPrivate*))
    end

    @gtk_toggle_action_private : LibGtk::ToggleActionPrivate*?
    def initialize(@gtk_toggle_action_private : LibGtk::ToggleActionPrivate*)
    end

    def to_unsafe
      @gtk_toggle_action_private.not_nil!.as(Void*)
    end

  end
end

