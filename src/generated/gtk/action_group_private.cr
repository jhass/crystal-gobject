module Gtk
  class ActionGroupPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ActionGroupPrivate*))
    end

    @gtk_action_group_private : LibGtk::ActionGroupPrivate*?
    def initialize(@gtk_action_group_private : LibGtk::ActionGroupPrivate*)
    end

    def to_unsafe
      @gtk_action_group_private.not_nil!.as(Void*)
    end

  end
end

