module Gtk
  class PopoverPrivate
    include GObject::WrappedType

    @gtk_popover_private : LibGtk::PopoverPrivate*?
    def initialize(@gtk_popover_private : LibGtk::PopoverPrivate*)
    end

    def to_unsafe
      @gtk_popover_private.not_nil!
    end

  end
end

