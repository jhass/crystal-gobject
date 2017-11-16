module Gtk
  class AdjustmentPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::AdjustmentPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AdjustmentPrivate*)
    end

  end
end

