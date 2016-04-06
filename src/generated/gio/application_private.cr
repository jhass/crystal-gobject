module Gio
  class ApplicationPrivate
    include GObject::WrappedType

    def initialize(@gio_application_private)
    end

    def to_unsafe
      @gio_application_private.not_nil!
    end

  end
end

