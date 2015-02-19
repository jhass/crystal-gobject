module Gio
  class Application < GObject::Object
    def initialize @gio_application
    end

    def to_unsafe
      @gio_application.not_nil!
    end

    # Implements ActionGroup
    # Implements ActionMap
    def action_group=(__value)
      LibGio.application_set_action_group((to_unsafe as LibGio::Application*), __value)
    end


    def flags=(__value)
      LibGio.application_set_flags((to_unsafe as LibGio::Application*), __value)
    end

    def inactivity_timeout=(__value)
      LibGio.application_set_inactivity_timeout((to_unsafe as LibGio::Application*), UInt32.cast(__value))
    end



    def resource_base_path=(__value)
      LibGio.application_set_resource_base_path((to_unsafe as LibGio::Application*), __value)
    end

    def self.new_internal(application_id, flags)
      __return_value = LibGio.application_new(application_id, flags)
      Gio::Application.new(__return_value)
    end

    def self.default
      __return_value = LibGio.application_get_default
      Gio::Application.new(__return_value)
    end

    def self.id_is_valid(application_id)
      __return_value = LibGio.application_id_is_valid(application_id)
      __return_value
    end

    def activate
      __return_value = LibGio.application_activate((to_unsafe as LibGio::Application*))
      __return_value
    end

    def add_main_option(long_name, short_name, flags, arg, description, arg_description)
      __return_value = LibGio.application_add_main_option((to_unsafe as LibGio::Application*), long_name, Int8.cast(short_name), flags, arg, description, arg_description)
      __return_value
    end

    def add_main_option_entries(entries)
      __return_value = LibGio.application_add_main_option_entries((to_unsafe as LibGio::Application*), entries)
      __return_value
    end

    def add_option_group(group)
      __return_value = LibGio.application_add_option_group((to_unsafe as LibGio::Application*), (group.to_unsafe as LibGLib::OptionGroup*))
      __return_value
    end

    def application_id
      __return_value = LibGio.application_get_application_id((to_unsafe as LibGio::Application*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def dbus_connection
      __return_value = LibGio.application_get_dbus_connection((to_unsafe as LibGio::Application*))
      Gio::DBusConnection.new(__return_value)
    end

    def dbus_object_path
      __return_value = LibGio.application_get_dbus_object_path((to_unsafe as LibGio::Application*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def flags
      __return_value = LibGio.application_get_flags((to_unsafe as LibGio::Application*))
      __return_value
    end

    def inactivity_timeout
      __return_value = LibGio.application_get_inactivity_timeout((to_unsafe as LibGio::Application*))
      __return_value
    end

    def is_registered
      __return_value = LibGio.application_get_is_registered((to_unsafe as LibGio::Application*))
      __return_value
    end

    def is_remote
      __return_value = LibGio.application_get_is_remote((to_unsafe as LibGio::Application*))
      __return_value
    end

    def resource_base_path
      __return_value = LibGio.application_get_resource_base_path((to_unsafe as LibGio::Application*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def hold
      __return_value = LibGio.application_hold((to_unsafe as LibGio::Application*))
      __return_value
    end

    def mark_busy
      __return_value = LibGio.application_mark_busy((to_unsafe as LibGio::Application*))
      __return_value
    end

    def open(files, n_files, hint)
      __return_value = LibGio.application_open((to_unsafe as LibGio::Application*), files, Int32.cast(n_files), hint)
      __return_value
    end

    def quit
      __return_value = LibGio.application_quit((to_unsafe as LibGio::Application*))
      __return_value
    end

    def register(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.application_register((to_unsafe as LibGio::Application*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def release
      __return_value = LibGio.application_release((to_unsafe as LibGio::Application*))
      __return_value
    end

    def run(argc, argv)
      __return_value = LibGio.application_run((to_unsafe as LibGio::Application*), Int32.cast(argc), argv)
      __return_value
    end

    def send_notification(id, notification)
      __return_value = LibGio.application_send_notification((to_unsafe as LibGio::Application*), id, (notification.to_unsafe as LibGio::Notification*))
      __return_value
    end

    def action_group=(action_group)
      __return_value = LibGio.application_set_action_group((to_unsafe as LibGio::Application*), (action_group.to_unsafe as LibGio::ActionGroup*))
      __return_value
    end

    def application_id=(application_id)
      __return_value = LibGio.application_set_application_id((to_unsafe as LibGio::Application*), application_id)
      __return_value
    end

    def default=
      __return_value = LibGio.application_set_default((to_unsafe as LibGio::Application*))
      __return_value
    end

    def flags=(flags)
      __return_value = LibGio.application_set_flags((to_unsafe as LibGio::Application*), flags)
      __return_value
    end

    def inactivity_timeout=(inactivity_timeout)
      __return_value = LibGio.application_set_inactivity_timeout((to_unsafe as LibGio::Application*), UInt32.cast(inactivity_timeout))
      __return_value
    end

    def resource_base_path=(resource_path)
      __return_value = LibGio.application_set_resource_base_path((to_unsafe as LibGio::Application*), resource_path)
      __return_value
    end

    def unmark_busy
      __return_value = LibGio.application_unmark_busy((to_unsafe as LibGio::Application*))
      __return_value
    end

    def withdraw_notification(id)
      __return_value = LibGio.application_withdraw_notification((to_unsafe as LibGio::Application*), id)
      __return_value
    end

  end
end

