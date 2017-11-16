module Gtk
  class ListBoxAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::ListBoxAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ListBoxAccessiblePrivate*)
    end

  end
end

