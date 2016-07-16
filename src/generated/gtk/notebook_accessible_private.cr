module Gtk
  class NotebookAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::NotebookAccessiblePrivate*))
    end

    @gtk_notebook_accessible_private : LibGtk::NotebookAccessiblePrivate*?
    def initialize(@gtk_notebook_accessible_private : LibGtk::NotebookAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_notebook_accessible_private.not_nil!.as(Void*)
    end

  end
end

