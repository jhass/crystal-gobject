module Gtk
  class SeparatorPrivate
    include GObject::WrappedType

    def initialize(@gtk_separator_private)
    end

    def to_unsafe
      @gtk_separator_private.not_nil!
    end

  end
end

