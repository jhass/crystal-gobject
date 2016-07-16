module Gio
  class MenuModelPrivate
    include GObject::WrappedType

    @gio_menu_model_private : LibGio::MenuModelPrivate*?
    def initialize(@gio_menu_model_private : LibGio::MenuModelPrivate*)
    end

    def to_unsafe
      @gio_menu_model_private.not_nil!.as(Void*)
    end

  end
end

