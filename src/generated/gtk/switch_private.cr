module Gtk
  class SwitchPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SwitchPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SwitchPrivate*)
    end

  end
end

