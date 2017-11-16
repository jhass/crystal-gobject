module Gtk
  class ButtonBoxPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ButtonBoxPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ButtonBoxPrivate*)
    end

  end
end

