module Gio
  class MenuLinkIterPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::MenuLinkIterPrivate*))
    end

    @gio_menu_link_iter_private : LibGio::MenuLinkIterPrivate*?
    def initialize(@gio_menu_link_iter_private : LibGio::MenuLinkIterPrivate*)
    end

    def to_unsafe
      @gio_menu_link_iter_private.not_nil!.as(Void*)
    end

  end
end

