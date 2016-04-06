module Gio
  class EmblemedIconPrivate
    include GObject::WrappedType

    def initialize(@gio_emblemed_icon_private)
    end

    def to_unsafe
      @gio_emblemed_icon_private.not_nil!
    end

  end
end

