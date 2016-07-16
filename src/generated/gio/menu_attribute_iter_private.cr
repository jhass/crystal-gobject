module Gio
  class MenuAttributeIterPrivate
    include GObject::WrappedType

    @gio_menu_attribute_iter_private : LibGio::MenuAttributeIterPrivate*?
    def initialize(@gio_menu_attribute_iter_private : LibGio::MenuAttributeIterPrivate*)
    end

    def to_unsafe
      @gio_menu_attribute_iter_private.not_nil!.as(Void*)
    end

  end
end

