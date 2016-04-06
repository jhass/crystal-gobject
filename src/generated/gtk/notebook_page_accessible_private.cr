module Gtk
  class NotebookPageAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_notebook_page_accessible_private)
    end

    def to_unsafe
      @gtk_notebook_page_accessible_private.not_nil!
    end

  end
end

