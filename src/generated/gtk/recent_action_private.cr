module Gtk
  class RecentActionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RecentActionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentActionPrivate*)
    end

  end
end

