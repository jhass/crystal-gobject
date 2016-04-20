module Gio
  class MenuLinkIterPrivate
    include GObject::WrappedType

    @gio_menu_link_iter_private : LibGio::MenuLinkIterPrivate*?
    def initialize(@gio_menu_link_iter_private : LibGio::MenuLinkIterPrivate*)
    end

    def to_unsafe
      @gio_menu_link_iter_private.not_nil!
    end

  end
end

