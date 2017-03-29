module Gtk
  class ExpanderPrivate
    include GObject::WrappedType

    @gtk_expander_private : LibGtk::ExpanderPrivate*?
    def initialize(@gtk_expander_private : LibGtk::ExpanderPrivate*)
    end

    def to_unsafe
      @gtk_expander_private.not_nil!
    end

  end
end

