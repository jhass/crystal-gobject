module Gio
  class ApplicationCommandLinePrivate
    include GObject::WrappedType

    def initialize(@gio_application_command_line_private)
    end

    def to_unsafe
      @gio_application_command_line_private.not_nil!
    end

  end
end

