module Gtk
  class LabelPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::LabelPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LabelPrivate*)
    end

  end
end

