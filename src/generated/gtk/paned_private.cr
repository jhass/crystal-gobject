module Gtk
  class PanedPrivate
    include GObject::WrappedType

    def initialize(@gtk_paned_private)
    end

    def to_unsafe
      @gtk_paned_private.not_nil!
    end

  end
end

