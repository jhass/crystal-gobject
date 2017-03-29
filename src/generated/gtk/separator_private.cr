module Gtk
  class SeparatorPrivate
    include GObject::WrappedType

    @gtk_separator_private : LibGtk::SeparatorPrivate*?
    def initialize(@gtk_separator_private : LibGtk::SeparatorPrivate*)
    end

    def to_unsafe
      @gtk_separator_private.not_nil!
    end

  end
end

