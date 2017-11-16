module Gtk
  class ComboBoxPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ComboBoxPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ComboBoxPrivate*)
    end

  end
end

