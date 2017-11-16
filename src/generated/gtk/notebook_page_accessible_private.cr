module Gtk
  class NotebookPageAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::NotebookPageAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::NotebookPageAccessiblePrivate*)
    end

  end
end

