module Gtk
  class RadioButtonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RadioButtonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioButtonPrivate*)
    end

  end
end

