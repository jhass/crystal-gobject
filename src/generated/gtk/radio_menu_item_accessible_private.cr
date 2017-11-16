module Gtk
  class RadioMenuItemAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RadioMenuItemAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioMenuItemAccessiblePrivate*)
    end

  end
end

