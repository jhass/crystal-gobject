module Gtk
  class EntryPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::EntryPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryPrivate*)
    end

  end
end

