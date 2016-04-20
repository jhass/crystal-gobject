module Gtk
  class FixedPrivate
    include GObject::WrappedType

    @gtk_fixed_private : LibGtk::FixedPrivate*?
    def initialize(@gtk_fixed_private : LibGtk::FixedPrivate*)
    end

    def to_unsafe
      @gtk_fixed_private.not_nil!
    end

  end
end

