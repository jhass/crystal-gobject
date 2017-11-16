module Gtk
  class TearoffMenuItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TearoffMenuItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TearoffMenuItemPrivate*)
    end

  end
end

