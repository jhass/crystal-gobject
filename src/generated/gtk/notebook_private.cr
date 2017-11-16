module Gtk
  class NotebookPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::NotebookPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::NotebookPrivate*)
    end

  end
end

