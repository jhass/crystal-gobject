module Gtk
  class RadioMenuItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RadioMenuItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioMenuItemPrivate*)
    end

  end
end

