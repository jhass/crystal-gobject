module Gio
  class AppLaunchContextPrivate
    include GObject::WrappedType

    def initialize(@gio_app_launch_context_private)
    end

    def to_unsafe
      @gio_app_launch_context_private.not_nil!
    end

  end
end

