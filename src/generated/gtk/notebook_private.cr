module Gtk
  class NotebookPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::NotebookPrivate*))
    end

    @gtk_notebook_private : LibGtk::NotebookPrivate*?
    def initialize(@gtk_notebook_private : LibGtk::NotebookPrivate*)
    end

    def to_unsafe
      @gtk_notebook_private.not_nil!.as(Void*)
    end

  end
end

