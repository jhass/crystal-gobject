module Gio
  class AppLaunchContextPrivate
    include GObject::WrappedType

    @gio_app_launch_context_private : LibGio::AppLaunchContextPrivate*?
    def initialize(@gio_app_launch_context_private : LibGio::AppLaunchContextPrivate*)
    end

    def to_unsafe
      @gio_app_launch_context_private.not_nil!.as(Void*)
    end

  end
end

