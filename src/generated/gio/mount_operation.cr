module Gio
  class MountOperation < GObject::Object
    def initialize @gio_mount_operation
    end

    def to_unsafe
      @gio_mount_operation.not_nil!
    end







    def self.new_internal
      __return_value = LibGio.mount_operation_new
      Gio::MountOperation.new(__return_value)
    end

    def anonymous
      __return_value = LibGio.mount_operation_get_anonymous((to_unsafe as LibGio::MountOperation*))
      __return_value
    end

    def choice
      __return_value = LibGio.mount_operation_get_choice((to_unsafe as LibGio::MountOperation*))
      __return_value
    end

    def domain
      __return_value = LibGio.mount_operation_get_domain((to_unsafe as LibGio::MountOperation*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def password
      __return_value = LibGio.mount_operation_get_password((to_unsafe as LibGio::MountOperation*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def password_save
      __return_value = LibGio.mount_operation_get_password_save((to_unsafe as LibGio::MountOperation*))
      __return_value
    end

    def username
      __return_value = LibGio.mount_operation_get_username((to_unsafe as LibGio::MountOperation*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def reply(result)
      __return_value = LibGio.mount_operation_reply((to_unsafe as LibGio::MountOperation*), result)
      __return_value
    end

    def anonymous=(anonymous)
      __return_value = LibGio.mount_operation_set_anonymous((to_unsafe as LibGio::MountOperation*), Bool.new(anonymous))
      __return_value
    end

    def choice=(choice)
      __return_value = LibGio.mount_operation_set_choice((to_unsafe as LibGio::MountOperation*), Int32.new(choice))
      __return_value
    end

    def domain=(domain)
      __return_value = LibGio.mount_operation_set_domain((to_unsafe as LibGio::MountOperation*), domain)
      __return_value
    end

    def password=(password)
      __return_value = LibGio.mount_operation_set_password((to_unsafe as LibGio::MountOperation*), password)
      __return_value
    end

    def password_save=(save)
      __return_value = LibGio.mount_operation_set_password_save((to_unsafe as LibGio::MountOperation*), save)
      __return_value
    end

    def username=(username)
      __return_value = LibGio.mount_operation_set_username((to_unsafe as LibGio::MountOperation*), username)
      __return_value
    end

  end
end

