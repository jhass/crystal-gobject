module Gtk
  class AlignmentPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AlignmentPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AlignmentPrivate*)
    end

  end
end

