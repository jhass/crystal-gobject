module Gtk
  class NotebookPageAccessiblePrivate
    include GObject::WrappedType

    @gtk_notebook_page_accessible_private : LibGtk::NotebookPageAccessiblePrivate*?
    def initialize(@gtk_notebook_page_accessible_private : LibGtk::NotebookPageAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_notebook_page_accessible_private.not_nil!.as(Void*)
    end

  end
end

