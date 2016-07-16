module Gio
  class MenuAttributeIterPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::MenuAttributeIterPrivate*))
    end

    @gio_menu_attribute_iter_private : LibGio::MenuAttributeIterPrivate*?
    def initialize(@gio_menu_attribute_iter_private : LibGio::MenuAttributeIterPrivate*)
    end

    def to_unsafe
      @gio_menu_attribute_iter_private.not_nil!
    end

  end
end

