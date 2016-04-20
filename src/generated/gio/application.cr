module Gio
  class Application < GObject::Object
    def initialize(@gio_application)
    end

    def to_unsafe
      @gio_application.not_nil!
    end

    # Implements ActionGroup
    # Implements ActionMap








    def self.new_internal(application_id, flags)
      __return_value = LibGio.application_new(application_id && application_id, flags)
      cast Gio::Application.new(__return_value)
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
      __return_value = LibGio.application_add_main_option((to_unsafe as LibGio::Application*), long_name, Int8.new(short_name), flags, arg, description, arg_description && arg_description)
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

    def bind_busy_property(object, property)
      __return_value = LibGio.application_bind_busy_property((to_unsafe as LibGio::Application*), (object.to_unsafe as LibGObject::Object*), property)
      __return_value
    end

    def application_id
      __return_value = LibGio.application_get_application_id((to_unsafe as LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dbus_connection
      __return_value = LibGio.application_get_dbus_connection((to_unsafe as LibGio::Application*))
      Gio::DBusConnection.new(__return_value)
    end

    def dbus_object_path
      __return_value = LibGio.application_get_dbus_object_path((to_unsafe as LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.application_get_flags((to_unsafe as LibGio::Application*))
      __return_value
    end

    def inactivity_timeout
      __return_value = LibGio.application_get_inactivity_timeout((to_unsafe as LibGio::Application*))
      __return_value
    end

    def is_busy
      __return_value = LibGio.application_get_is_busy((to_unsafe as LibGio::Application*))
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
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
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
      __return_value = LibGio.application_open((to_unsafe as LibGio::Application*), files, Int32.new(n_files), hint)
      __return_value
    end

    def quit
      __return_value = LibGio.application_quit((to_unsafe as LibGio::Application*))
      __return_value
    end

    def register(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.application_register((to_unsafe as LibGio::Application*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def release
      __return_value = LibGio.application_release((to_unsafe as LibGio::Application*))
      __return_value
    end

    def run(argc, argv)
      __return_value = LibGio.application_run((to_unsafe as LibGio::Application*), Int32.new(argc), argv && argv)
      __return_value
    end

    def send_notification(id, notification)
      __return_value = LibGio.application_send_notification((to_unsafe as LibGio::Application*), id && id, (notification.to_unsafe as LibGio::Notification*))
      __return_value
    end

    def action_group=(action_group)
      __return_value = LibGio.application_set_action_group((to_unsafe as LibGio::Application*), action_group && (action_group.to_unsafe as LibGio::ActionGroup*))
      __return_value
    end

    def application_id=(application_id)
      __return_value = LibGio.application_set_application_id((to_unsafe as LibGio::Application*), application_id && application_id)
      __return_value
    end

    def set_default
      __return_value = LibGio.application_set_default((to_unsafe as LibGio::Application*))
      __return_value
    end

    def flags=(flags)
      __return_value = LibGio.application_set_flags((to_unsafe as LibGio::Application*), flags)
      __return_value
    end

    def inactivity_timeout=(inactivity_timeout)
      __return_value = LibGio.application_set_inactivity_timeout((to_unsafe as LibGio::Application*), UInt32.new(inactivity_timeout))
      __return_value
    end

    def resource_base_path=(resource_path)
      __return_value = LibGio.application_set_resource_base_path((to_unsafe as LibGio::Application*), resource_path && resource_path)
      __return_value
    end

    def unbind_busy_property(object, property)
      __return_value = LibGio.application_unbind_busy_property((to_unsafe as LibGio::Application*), (object.to_unsafe as LibGObject::Object*), property)
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

    alias ActivateSignal = Application -> 
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGio::Application*) {
       __return_value = __block.call(Application.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

    alias CommandLineSignal = Application, Gio::ApplicationCommandLine -> Int32
    def on_command_line(&__block : CommandLineSignal)
      __callback = ->(_arg0 : LibGio::Application*, _arg1 : LibGio::LibGio::ApplicationCommandLine*) {
       __return_value = __block.call(Application.new(_arg0), Gio::ApplicationCommandLine.new(_arg1))
       Int32.new(__return_value)
      }
      connect("command-line", __callback)
    end

    alias HandleLocalOptionsSignal = Application, GLib::VariantDict -> Int32
    def on_handle_local_options(&__block : HandleLocalOptionsSignal)
      __callback = ->(_arg0 : LibGio::Application*, _arg1 : LibGio::LibGLib::VariantDict*) {
       __return_value = __block.call(Application.new(_arg0), GLib::VariantDict.new(_arg1))
       Int32.new(__return_value)
      }
      connect("handle-local-options", __callback)
    end

    alias OpenSignal = Application, Array(Gio::File), Int32, UInt8 -> 
    def on_open(&__block : OpenSignal)
      __callback = ->(_arg0 : LibGio::Application*, _arg1 : LibGio::LibGio::File**, _arg2 : LibGio::Int32*, _arg3 : LibGio::UInt8**) {
       __return_value = __block.call(Application.new(_arg0), PointerIterator.new(_arg1) {|__item_89| __item_89 }, _arg2, (raise "Expected string but got null" unless _arg3; ::String.new(_arg3)))
       __return_value
      }
      connect("open", __callback)
    end

    alias ShutdownSignal = Application -> 
    def on_shutdown(&__block : ShutdownSignal)
      __callback = ->(_arg0 : LibGio::Application*) {
       __return_value = __block.call(Application.new(_arg0))
       __return_value
      }
      connect("shutdown", __callback)
    end

    alias StartupSignal = Application -> 
    def on_startup(&__block : StartupSignal)
      __callback = ->(_arg0 : LibGio::Application*) {
       __return_value = __block.call(Application.new(_arg0))
       __return_value
      }
      connect("startup", __callback)
    end

  end
end

