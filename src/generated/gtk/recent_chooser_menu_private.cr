module Gtk
  class RecentChooserMenuPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::RecentChooserMenuPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentChooserMenuPrivate*)
    end

  end
end

