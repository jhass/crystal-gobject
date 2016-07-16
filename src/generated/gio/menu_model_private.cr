module Gio
  class MenuModelPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::MenuModelPrivate*))
    end

    @gio_menu_model_private : LibGio::MenuModelPrivate*?
    def initialize(@gio_menu_model_private : LibGio::MenuModelPrivate*)
    end

    def to_unsafe
      @gio_menu_model_private.not_nil!
    end

  end
end

