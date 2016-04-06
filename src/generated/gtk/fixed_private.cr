module Gtk
  class FixedPrivate
    include GObject::WrappedType

    def initialize(@gtk_fixed_private)
    end

    def to_unsafe
      @gtk_fixed_private.not_nil!
    end

  end
end

