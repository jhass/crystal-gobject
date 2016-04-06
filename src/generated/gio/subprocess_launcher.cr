module Gio
  class SubprocessLauncher < GObject::Object
    def initialize(@gio_subprocess_launcher)
    end

    def to_unsafe
      @gio_subprocess_launcher.not_nil!
    end


    def self.new_internal(flags)
      __return_value = LibGio.subprocess_launcher_new(flags)
      Gio::SubprocessLauncher.new(__return_value)
    end

    def getenv(variable)
      __return_value = LibGio.subprocess_launcher_getenv((to_unsafe as LibGio::SubprocessLauncher*), variable)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def set_child_setup(child_setup : LibGLib::SpawnChildSetupFunc, user_data, destroy_notify : LibGLib::DestroyNotify)
      __return_value = LibGio.subprocess_launcher_set_child_setup((to_unsafe as LibGio::SubprocessLauncher*), child_setup, user_data, destroy_notify)
      __return_value
    end

    def cwd=(cwd)
      __return_value = LibGio.subprocess_launcher_set_cwd((to_unsafe as LibGio::SubprocessLauncher*), cwd)
      __return_value
    end

    def environ=(env)
      __return_value = LibGio.subprocess_launcher_set_environ((to_unsafe as LibGio::SubprocessLauncher*), env)
      __return_value
    end

    def flags=(flags)
      __return_value = LibGio.subprocess_launcher_set_flags((to_unsafe as LibGio::SubprocessLauncher*), flags)
      __return_value
    end

    def stderr_file_path=(path)
      __return_value = LibGio.subprocess_launcher_set_stderr_file_path((to_unsafe as LibGio::SubprocessLauncher*), path)
      __return_value
    end

    def stdin_file_path=(path)
      __return_value = LibGio.subprocess_launcher_set_stdin_file_path((to_unsafe as LibGio::SubprocessLauncher*), path)
      __return_value
    end

    def stdout_file_path=(path)
      __return_value = LibGio.subprocess_launcher_set_stdout_file_path((to_unsafe as LibGio::SubprocessLauncher*), path)
      __return_value
    end

    def setenv(variable, value, overwrite)
      __return_value = LibGio.subprocess_launcher_setenv((to_unsafe as LibGio::SubprocessLauncher*), variable, value, overwrite)
      __return_value
    end

    def spawnv(argv)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_launcher_spawnv((to_unsafe as LibGio::SubprocessLauncher*), argv, pointerof(__error))
      GLib::Error.assert __error
      Gio::Subprocess.new(__return_value)
    end

    def take_fd(source_fd, target_fd)
      __return_value = LibGio.subprocess_launcher_take_fd((to_unsafe as LibGio::SubprocessLauncher*), Int32.new(source_fd), Int32.new(target_fd))
      __return_value
    end

    def take_stderr_fd(fd)
      __return_value = LibGio.subprocess_launcher_take_stderr_fd((to_unsafe as LibGio::SubprocessLauncher*), Int32.new(fd))
      __return_value
    end

    def take_stdin_fd(fd)
      __return_value = LibGio.subprocess_launcher_take_stdin_fd((to_unsafe as LibGio::SubprocessLauncher*), Int32.new(fd))
      __return_value
    end

    def take_stdout_fd(fd)
      __return_value = LibGio.subprocess_launcher_take_stdout_fd((to_unsafe as LibGio::SubprocessLauncher*), Int32.new(fd))
      __return_value
    end

    def unsetenv(variable)
      __return_value = LibGio.subprocess_launcher_unsetenv((to_unsafe as LibGio::SubprocessLauncher*), variable)
      __return_value
    end

  end
end

