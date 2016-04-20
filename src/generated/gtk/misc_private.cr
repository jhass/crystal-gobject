module Gtk
  class MiscPrivate
    include GObject::WrappedType

    @gtk_misc_private : LibGtk::MiscPrivate*?
    def initialize(@gtk_misc_private : LibGtk::MiscPrivate*)
    end

    def to_unsafe
      @gtk_misc_private.not_nil!
    end

  end
end

