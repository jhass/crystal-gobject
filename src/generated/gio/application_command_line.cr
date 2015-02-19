module Gio
  class ApplicationCommandLine < GObject::Object
    def initialize @gio_application_command_line
    end

    def to_unsafe
      @gio_application_command_line.not_nil!
    end





    def create_file_for_arg(arg)
      __return_value = LibGio.application_command_line_create_file_for_arg((to_unsafe as LibGio::ApplicationCommandLine*), arg)
      __return_value
    end

    def arguments(argc)
      __return_value = LibGio.application_command_line_get_arguments((to_unsafe as LibGio::ApplicationCommandLine*), Int32.cast(argc))
      PointerIterator.new(__return_value) {|__item_90| raise "Expected string but got null" unless __item_90; String.new(__item_90) }
    end

    def cwd
      __return_value = LibGio.application_command_line_get_cwd((to_unsafe as LibGio::ApplicationCommandLine*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def environ
      __return_value = LibGio.application_command_line_get_environ((to_unsafe as LibGio::ApplicationCommandLine*))
      PointerIterator.new(__return_value) {|__item_31| raise "Expected string but got null" unless __item_31; String.new(__item_31) }
    end

    def exit_status
      __return_value = LibGio.application_command_line_get_exit_status((to_unsafe as LibGio::ApplicationCommandLine*))
      __return_value
    end

    def is_remote
      __return_value = LibGio.application_command_line_get_is_remote((to_unsafe as LibGio::ApplicationCommandLine*))
      __return_value
    end

    def options_dict
      __return_value = LibGio.application_command_line_get_options_dict((to_unsafe as LibGio::ApplicationCommandLine*))
      GLib::VariantDict.new(__return_value)
    end

    def platform_data
      __return_value = LibGio.application_command_line_get_platform_data((to_unsafe as LibGio::ApplicationCommandLine*))
      GLib::Variant.new(__return_value) if __return_value
    end

    def stdin
      __return_value = LibGio.application_command_line_get_stdin((to_unsafe as LibGio::ApplicationCommandLine*))
      Gio::InputStream.new(__return_value)
    end

    def getenv(name)
      __return_value = LibGio.application_command_line_getenv((to_unsafe as LibGio::ApplicationCommandLine*), name)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def exit_status=(exit_status)
      __return_value = LibGio.application_command_line_set_exit_status((to_unsafe as LibGio::ApplicationCommandLine*), Int32.cast(exit_status))
      __return_value
    end

  end
end

