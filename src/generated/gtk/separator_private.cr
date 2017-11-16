module Gtk
  class SeparatorPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SeparatorPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SeparatorPrivate*)
    end

  end
end

