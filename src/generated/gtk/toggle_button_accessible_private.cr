module Gtk
  class ToggleButtonAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ToggleButtonAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToggleButtonAccessiblePrivate*)
    end

  end
end

