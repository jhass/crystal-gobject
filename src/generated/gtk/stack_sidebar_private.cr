module Gtk
  class StackSidebarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::StackSidebarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StackSidebarPrivate*)
    end

  end
end

