module Gtk
  class RecentManagerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RecentManagerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentManagerPrivate*)
    end

  end
end

