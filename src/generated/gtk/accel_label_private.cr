module Gtk
  class AccelLabelPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AccelLabelPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AccelLabelPrivate*)
    end

  end
end

