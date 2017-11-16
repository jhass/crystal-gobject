module Gtk
  class PopoverPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::PopoverPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PopoverPrivate*)
    end

  end
end

