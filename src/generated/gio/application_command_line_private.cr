module Gio
  class ApplicationCommandLinePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::ApplicationCommandLinePrivate*))
    end

    @gio_application_command_line_private : LibGio::ApplicationCommandLinePrivate*?
    def initialize(@gio_application_command_line_private : LibGio::ApplicationCommandLinePrivate*)
    end

    def to_unsafe
      @gio_application_command_line_private.not_nil!
    end

  end
end

