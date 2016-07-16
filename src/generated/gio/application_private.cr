module Gio
  class ApplicationPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::ApplicationPrivate*))
    end

    @gio_application_private : LibGio::ApplicationPrivate*?
    def initialize(@gio_application_private : LibGio::ApplicationPrivate*)
    end

    def to_unsafe
      @gio_application_private.not_nil!.as(Void*)
    end

  end
end

