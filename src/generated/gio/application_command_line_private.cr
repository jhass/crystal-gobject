module Gio
  class ApplicationCommandLinePrivate
    include GObject::WrappedType

    @gio_application_command_line_private : LibGio::ApplicationCommandLinePrivate*?
    def initialize(@gio_application_command_line_private : LibGio::ApplicationCommandLinePrivate*)
    end

    def to_unsafe
      @gio_application_command_line_private.not_nil!
    end

  end
end

