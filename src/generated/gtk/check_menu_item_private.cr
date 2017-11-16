module Gtk
  class CheckMenuItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CheckMenuItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CheckMenuItemPrivate*)
    end

  end
end

