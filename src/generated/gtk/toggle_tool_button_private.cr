module Gtk
  class ToggleToolButtonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ToggleToolButtonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToggleToolButtonPrivate*)
    end

  end
end

