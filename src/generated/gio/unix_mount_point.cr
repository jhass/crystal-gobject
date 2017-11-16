module Gio
  class UnixMountPoint
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixMountPoint*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixMountPoint*)
    end

    def compare(mount2)
      __return_value = LibGio.unix_mount_point_compare(@pointer.as(LibGio::UnixMountPoint*), mount2.to_unsafe.as(LibGio::UnixMountPoint*))
      __return_value
    end

    def copy
      __return_value = LibGio.unix_mount_point_copy(@pointer.as(LibGio::UnixMountPoint*))
      Gio::UnixMountPoint.new(__return_value)
    end

    def free
      LibGio.unix_mount_point_free(@pointer.as(LibGio::UnixMountPoint*))
      nil
    end

    def device_path
      __return_value = LibGio.unix_mount_point_get_device_path(@pointer.as(LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def fs_type
      __return_value = LibGio.unix_mount_point_get_fs_type(@pointer.as(LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def mount_path
      __return_value = LibGio.unix_mount_point_get_mount_path(@pointer.as(LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def options
      __return_value = LibGio.unix_mount_point_get_options(@pointer.as(LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def guess_can_eject
      __return_value = LibGio.unix_mount_point_guess_can_eject(@pointer.as(LibGio::UnixMountPoint*))
      __return_value
    end

    def guess_icon
      __return_value = LibGio.unix_mount_point_guess_icon(@pointer.as(LibGio::UnixMountPoint*))
      __return_value
    end

    def guess_name
      __return_value = LibGio.unix_mount_point_guess_name(@pointer.as(LibGio::UnixMountPoint*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def guess_symbolic_icon
      __return_value = LibGio.unix_mount_point_guess_symbolic_icon(@pointer.as(LibGio::UnixMountPoint*))
      __return_value
    end

    def loopback?
      __return_value = LibGio.unix_mount_point_is_loopback(@pointer.as(LibGio::UnixMountPoint*))
      __return_value
    end

    def readonly?
      __return_value = LibGio.unix_mount_point_is_readonly(@pointer.as(LibGio::UnixMountPoint*))
      __return_value
    end

    def user_mountable?
      __return_value = LibGio.unix_mount_point_is_user_mountable(@pointer.as(LibGio::UnixMountPoint*))
      __return_value
    end

  end
end

