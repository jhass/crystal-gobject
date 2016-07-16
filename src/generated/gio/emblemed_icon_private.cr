module Gio
  class EmblemedIconPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::EmblemedIconPrivate*))
    end

    @gio_emblemed_icon_private : LibGio::EmblemedIconPrivate*?
    def initialize(@gio_emblemed_icon_private : LibGio::EmblemedIconPrivate*)
    end

    def to_unsafe
      @gio_emblemed_icon_private.not_nil!.as(Void*)
    end

  end
end

