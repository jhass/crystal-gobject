module Gtk
  class InfoBarPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::InfoBarPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::InfoBarPrivate*)
    end

  end
end

