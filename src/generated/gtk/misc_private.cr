module Gtk
  class MiscPrivate
    include GObject::WrappedType

    def initialize(@gtk_misc_private)
    end

    def to_unsafe
      @gtk_misc_private.not_nil!
    end

  end
end

