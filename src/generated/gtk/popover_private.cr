module Gtk
  class PopoverPrivate
    include GObject::WrappedType

    def initialize(@gtk_popover_private)
    end

    def to_unsafe
      @gtk_popover_private.not_nil!
    end

  end
end

