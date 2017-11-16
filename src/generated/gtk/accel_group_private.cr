module Gtk
  class AccelGroupPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AccelGroupPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AccelGroupPrivate*)
    end

  end
end

