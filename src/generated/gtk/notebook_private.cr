module Gtk
  class NotebookPrivate
    include GObject::WrappedType

    def initialize(@gtk_notebook_private)
    end

    def to_unsafe
      @gtk_notebook_private.not_nil!
    end

  end
end

