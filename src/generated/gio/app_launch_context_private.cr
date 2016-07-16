module Gio
  class AppLaunchContextPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::AppLaunchContextPrivate*))
    end

    @gio_app_launch_context_private : LibGio::AppLaunchContextPrivate*?
    def initialize(@gio_app_launch_context_private : LibGio::AppLaunchContextPrivate*)
    end

    def to_unsafe
      @gio_app_launch_context_private.not_nil!.as(Void*)
    end

  end
end

