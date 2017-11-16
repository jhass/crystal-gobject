module Gtk
  class ComboBoxTextPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ComboBoxTextPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ComboBoxTextPrivate*)
    end

  end
end

