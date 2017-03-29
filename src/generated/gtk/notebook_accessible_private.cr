module Gtk
  class NotebookAccessiblePrivate
    include GObject::WrappedType

    @gtk_notebook_accessible_private : LibGtk::NotebookAccessiblePrivate*?
    def initialize(@gtk_notebook_accessible_private : LibGtk::NotebookAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_notebook_accessible_private.not_nil!
    end

  end
end

