module Gio
  class ApplicationPrivate
    include GObject::WrappedType

    @gio_application_private : LibGio::ApplicationPrivate*?
    def initialize(@gio_application_private : LibGio::ApplicationPrivate*)
    end

    def to_unsafe
      @gio_application_private.not_nil!
    end

  end
end

