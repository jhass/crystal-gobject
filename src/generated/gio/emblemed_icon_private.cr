module Gio
  class EmblemedIconPrivate
    include GObject::WrappedType

    @gio_emblemed_icon_private : LibGio::EmblemedIconPrivate*?
    def initialize(@gio_emblemed_icon_private : LibGio::EmblemedIconPrivate*)
    end

    def to_unsafe
      @gio_emblemed_icon_private.not_nil!.as(Void*)
    end

  end
end

