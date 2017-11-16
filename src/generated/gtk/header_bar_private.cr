module Gtk
  class HeaderBarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::HeaderBarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HeaderBarPrivate*)
    end

  end
end

