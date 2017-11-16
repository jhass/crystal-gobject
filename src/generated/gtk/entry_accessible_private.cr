module Gtk
  class EntryAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::EntryAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryAccessiblePrivate*)
    end

  end
end

