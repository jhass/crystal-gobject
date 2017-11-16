module Gtk
  class PanedAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::PanedAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PanedAccessiblePrivate*)
    end

  end
end

