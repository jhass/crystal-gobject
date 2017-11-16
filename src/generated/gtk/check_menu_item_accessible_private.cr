module Gtk
  class CheckMenuItemAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CheckMenuItemAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CheckMenuItemAccessiblePrivate*)
    end

  end
end

