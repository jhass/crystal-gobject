module Gio
  class UnixMountPoint
    include GObject::WrappedType

    def initialize(@gio_unix_mount_point)
    end

    def to_unsafe
      @gio_unix_mount_point.not_nil!
    end

    def compare(mount2)
      __return_value = LibGio.unix_mount_point_compare((to_unsafe as LibGio::UnixMountPoint*), (mount2.to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def free
      __return_value = LibGio.unix_mount_point_free((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def device_path
      __return_value = LibGio.unix_mount_point_get_device_path((to_unsafe as LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def fs_type
      __return_value = LibGio.unix_mount_point_get_fs_type((to_unsafe as LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def mount_path
      __return_value = LibGio.unix_mount_point_get_mount_path((to_unsafe as LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def options
      __return_value = LibGio.unix_mount_point_get_options((to_unsafe as LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def guess_can_eject
      __return_value = LibGio.unix_mount_point_guess_can_eject((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def guess_icon
      __return_value = LibGio.unix_mount_point_guess_icon((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def guess_name
      __return_value = LibGio.unix_mount_point_guess_name((to_unsafe as LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def guess_symbolic_icon
      __return_value = LibGio.unix_mount_point_guess_symbolic_icon((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def loopback?
      __return_value = LibGio.unix_mount_point_is_loopback((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def readonly?
      __return_value = LibGio.unix_mount_point_is_readonly((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

    def user_mountable?
      __return_value = LibGio.unix_mount_point_is_user_mountable((to_unsafe as LibGio::UnixMountPoint*))
      __return_value
    end

  end
end

