module Gio
  class MenuModelPrivate
    include GObject::WrappedType

    def initialize(@gio_menu_model_private)
    end

    def to_unsafe
      @gio_menu_model_private.not_nil!
    end

  end
end

