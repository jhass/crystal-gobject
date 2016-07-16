module Gtk
  class NotebookPageAccessible < Atk::Object
    @gtk_notebook_page_accessible : LibGtk::NotebookPageAccessible*?
    def initialize(@gtk_notebook_page_accessible : LibGtk::NotebookPageAccessible*)
    end

    def to_unsafe
      @gtk_notebook_page_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    def self.new(notebook, child) : self
      __return_value = LibGtk.notebook_page_accessible_new(notebook.to_unsafe.as(LibGtk::NotebookAccessible*), child.to_unsafe.as(LibGtk::Widget*))
      cast Atk::Object.new(__return_value)
    end

    def invalidate
      __return_value = LibGtk.notebook_page_accessible_invalidate(to_unsafe.as(LibGtk::NotebookPageAccessible*))
      __return_value
    end

  end
end

