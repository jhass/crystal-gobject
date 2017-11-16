module Gio
  class SubprocessLauncher < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SubprocessLauncher*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SubprocessLauncher*)
    end


    def self.new(flags : Gio::SubprocessFlags) : self
      __return_value = LibGio.subprocess_launcher_new(flags)
      cast Gio::SubprocessLauncher.new(__return_value)
    end

    def getenv(variable)
      __return_value = LibGio.subprocess_launcher_getenv(@pointer.as(LibGio::SubprocessLauncher*), variable.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def set_child_setup(child_setup, user_data, destroy_notify)
      LibGio.subprocess_launcher_set_child_setup(@pointer.as(LibGio::SubprocessLauncher*), child_setup, user_data ? user_data : nil, destroy_notify)
      nil
    end

    def cwd=(cwd)
      LibGio.subprocess_launcher_set_cwd(@pointer.as(LibGio::SubprocessLauncher*), cwd.to_unsafe)
      nil
    end

    def environ=(env)
      LibGio.subprocess_launcher_set_environ(@pointer.as(LibGio::SubprocessLauncher*), env)
      nil
    end

    def flags=(flags : Gio::SubprocessFlags)
      LibGio.subprocess_launcher_set_flags(@pointer.as(LibGio::SubprocessLauncher*), flags)
      nil
    end

    def stderr_file_path=(path)
      LibGio.subprocess_launcher_set_stderr_file_path(@pointer.as(LibGio::SubprocessLauncher*), path ? path.to_unsafe : nil)
      nil
    end

    def stdin_file_path=(path)
      LibGio.subprocess_launcher_set_stdin_file_path(@pointer.as(LibGio::SubprocessLauncher*), path.to_unsafe)
      nil
    end

    def stdout_file_path=(path)
      LibGio.subprocess_launcher_set_stdout_file_path(@pointer.as(LibGio::SubprocessLauncher*), path ? path.to_unsafe : nil)
      nil
    end

    def setenv(variable, value, overwrite)
      LibGio.subprocess_launcher_setenv(@pointer.as(LibGio::SubprocessLauncher*), variable.to_unsafe, value.to_unsafe, overwrite)
      nil
    end

    def spawnv(argv)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_launcher_spawnv(@pointer.as(LibGio::SubprocessLauncher*), argv, pointerof(__error))
      GLib::Error.assert __error
      Gio::Subprocess.new(__return_value)
    end

    def take_fd(source_fd, target_fd)
      LibGio.subprocess_launcher_take_fd(@pointer.as(LibGio::SubprocessLauncher*), Int32.new(source_fd), Int32.new(target_fd))
      nil
    end

    def take_stderr_fd(fd)
      LibGio.subprocess_launcher_take_stderr_fd(@pointer.as(LibGio::SubprocessLauncher*), Int32.new(fd))
      nil
    end

    def take_stdin_fd(fd)
      LibGio.subprocess_launcher_take_stdin_fd(@pointer.as(LibGio::SubprocessLauncher*), Int32.new(fd))
      nil
    end

    def take_stdout_fd(fd)
      LibGio.subprocess_launcher_take_stdout_fd(@pointer.as(LibGio::SubprocessLauncher*), Int32.new(fd))
      nil
    end

    def unsetenv(variable)
      LibGio.subprocess_launcher_unsetenv(@pointer.as(LibGio::SubprocessLauncher*), variable.to_unsafe)
      nil
    end

  end
end

