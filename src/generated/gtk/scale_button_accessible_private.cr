module Gtk
  class ScaleButtonAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ScaleButtonAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ScaleButtonAccessiblePrivate*)
    end

  end
end

