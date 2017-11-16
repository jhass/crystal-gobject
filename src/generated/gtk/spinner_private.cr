module Gtk
  class SpinnerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SpinnerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SpinnerPrivate*)
    end

  end
end

