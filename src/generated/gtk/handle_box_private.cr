module Gtk
  class HandleBoxPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::HandleBoxPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HandleBoxPrivate*)
    end

  end
end

