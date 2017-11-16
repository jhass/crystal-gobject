module Gtk
  class PrintOperationPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::PrintOperationPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PrintOperationPrivate*)
    end

  end
end

