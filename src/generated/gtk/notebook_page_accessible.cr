module Gtk
  class NotebookPageAccessible < Atk::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::NotebookPageAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::NotebookPageAccessible*)
    end

    # Implements Component
    def self.new(notebook, child) : self
      __return_value = LibGtk.notebook_page_accessible_new(notebook.to_unsafe.as(LibGtk::NotebookAccessible*), child.to_unsafe.as(LibGtk::Widget*))
      cast Atk::Object.new(__return_value)
    end

    def invalidate
      LibGtk.notebook_page_accessible_invalidate(@pointer.as(LibGtk::NotebookPageAccessible*))
      nil
    end

  end
end

