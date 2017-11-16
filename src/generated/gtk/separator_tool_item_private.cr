module Gtk
  class SeparatorToolItemPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SeparatorToolItemPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SeparatorToolItemPrivate*)
    end

  end
end

