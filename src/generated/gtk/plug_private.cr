module Gtk
  class PlugPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::PlugPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PlugPrivate*)
    end

  end
end

