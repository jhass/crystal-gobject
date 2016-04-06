module Gio
  class MenuAttributeIterPrivate
    include GObject::WrappedType

    def initialize(@gio_menu_attribute_iter_private)
    end

    def to_unsafe
      @gio_menu_attribute_iter_private.not_nil!
    end

  end
end

