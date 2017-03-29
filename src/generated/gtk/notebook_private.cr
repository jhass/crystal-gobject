module Gtk
  class NotebookPrivate
    include GObject::WrappedType

    @gtk_notebook_private : LibGtk::NotebookPrivate*?
    def initialize(@gtk_notebook_private : LibGtk::NotebookPrivate*)
    end

    def to_unsafe
      @gtk_notebook_private.not_nil!
    end

  end
end

