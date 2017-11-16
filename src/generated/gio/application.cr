module Gio
  class Application < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Application*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Application*)
    end

    # Implements ActionGroup
    # Implements ActionMap

    def application_id
      __return_value = LibGio.application_get_application_id(to_unsafe.as(LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.application_get_flags(to_unsafe.as(LibGio::Application*))
      __return_value
    end

    def inactivity_timeout
      __return_value = LibGio.application_get_inactivity_timeout(to_unsafe.as(LibGio::Application*))
      __return_value
    end

    def is_busy
      __return_value = LibGio.application_get_is_busy(to_unsafe.as(LibGio::Application*))
      __return_value
    end

    def is_registered
      __return_value = LibGio.application_get_is_registered(to_unsafe.as(LibGio::Application*))
      __return_value
    end

    def is_remote
      __return_value = LibGio.application_get_is_remote(to_unsafe.as(LibGio::Application*))
      __return_value
    end

    def resource_base_path
      __return_value = LibGio.application_get_resource_base_path(to_unsafe.as(LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(application_id, flags : Gio::ApplicationFlags) : self
      __return_value = LibGio.application_new(application_id ? application_id.to_unsafe : nil, flags)
      cast Gio::Application.new(__return_value)
    end

    def self.default
      __return_value = LibGio.application_get_default
      Gio::Application.new(__return_value)
    end

    def self.id_is_valid(application_id)
      __return_value = LibGio.application_id_is_valid(application_id.to_unsafe)
      __return_value
    end

    def activate
      LibGio.application_activate(@pointer.as(LibGio::Application*))
      nil
    end

    def add_main_option(long_name, short_name, flags : GLib::OptionFlags, arg : GLib::OptionArg, description, arg_description)
      LibGio.application_add_main_option(@pointer.as(LibGio::Application*), long_name.to_unsafe, Int8.new(short_name), flags, arg, description.to_unsafe, arg_description ? arg_description.to_unsafe : nil)
      nil
    end

    def add_main_option_entries(entries)
      LibGio.application_add_main_option_entries(@pointer.as(LibGio::Application*), entries)
      nil
    end

    def add_option_group(group)
      LibGio.application_add_option_group(@pointer.as(LibGio::Application*), group.to_unsafe.as(LibGLib::OptionGroup*))
      nil
    end

    def bind_busy_property(object, property)
      LibGio.application_bind_busy_property(@pointer.as(LibGio::Application*), object.to_unsafe.as(LibGObject::Object*), property.to_unsafe)
      nil
    end

    def application_id
      __return_value = LibGio.application_get_application_id(@pointer.as(LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dbus_connection
      __return_value = LibGio.application_get_dbus_connection(@pointer.as(LibGio::Application*))
      Gio::DBusConnection.new(__return_value)
    end

    def dbus_object_path
      __return_value = LibGio.application_get_dbus_object_path(@pointer.as(LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.application_get_flags(@pointer.as(LibGio::Application*))
      __return_value
    end

    def inactivity_timeout
      __return_value = LibGio.application_get_inactivity_timeout(@pointer.as(LibGio::Application*))
      __return_value
    end

    def is_busy
      __return_value = LibGio.application_get_is_busy(@pointer.as(LibGio::Application*))
      __return_value
    end

    def is_registered
      __return_value = LibGio.application_get_is_registered(@pointer.as(LibGio::Application*))
      __return_value
    end

    def is_remote
      __return_value = LibGio.application_get_is_remote(@pointer.as(LibGio::Application*))
      __return_value
    end

    def resource_base_path
      __return_value = LibGio.application_get_resource_base_path(@pointer.as(LibGio::Application*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def hold
      LibGio.application_hold(@pointer.as(LibGio::Application*))
      nil
    end

    def mark_busy
      LibGio.application_mark_busy(@pointer.as(LibGio::Application*))
      nil
    end

    def open(files, n_files, hint)
      LibGio.application_open(@pointer.as(LibGio::Application*), files, Int32.new(n_files), hint.to_unsafe)
      nil
    end

    def quit
      LibGio.application_quit(@pointer.as(LibGio::Application*))
      nil
    end

    def register(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.application_register(@pointer.as(LibGio::Application*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def release
      LibGio.application_release(@pointer.as(LibGio::Application*))
      nil
    end

    def run(argc, argv)
      __return_value = LibGio.application_run(@pointer.as(LibGio::Application*), Int32.new(argc), argv ? argv : nil)
      __return_value
    end

    def send_notification(id, notification)
      LibGio.application_send_notification(@pointer.as(LibGio::Application*), id ? id.to_unsafe : nil, notification.to_unsafe.as(LibGio::Notification*))
      nil
    end

    def action_group=(action_group)
      LibGio.application_set_action_group(@pointer.as(LibGio::Application*), action_group ? action_group.to_unsafe.as(LibGio::ActionGroup*) : nil)
      nil
    end

    def application_id=(application_id)
      LibGio.application_set_application_id(@pointer.as(LibGio::Application*), application_id ? application_id.to_unsafe : nil)
      nil
    end

    def set_default
      LibGio.application_set_default(@pointer.as(LibGio::Application*))
      nil
    end

    def flags=(flags : Gio::ApplicationFlags)
      LibGio.application_set_flags(@pointer.as(LibGio::Application*), flags)
      nil
    end

    def inactivity_timeout=(inactivity_timeout)
      LibGio.application_set_inactivity_timeout(@pointer.as(LibGio::Application*), UInt32.new(inactivity_timeout))
      nil
    end

    def resource_base_path=(resource_path)
      LibGio.application_set_resource_base_path(@pointer.as(LibGio::Application*), resource_path ? resource_path.to_unsafe : nil)
      nil
    end

    def unbind_busy_property(object, property)
      LibGio.application_unbind_busy_property(@pointer.as(LibGio::Application*), object.to_unsafe.as(LibGObject::Object*), property.to_unsafe)
      nil
    end

    def unmark_busy
      LibGio.application_unmark_busy(@pointer.as(LibGio::Application*))
      nil
    end

    def withdraw_notification(id)
      LibGio.application_withdraw_notification(@pointer.as(LibGio::Application*), id.to_unsafe)
      nil
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

    alias OpenSignal = Application, Array(Gio::File), Int32, String ->
    def on_open(&__block : OpenSignal)
      __callback = ->(_arg0 : LibGio::Application*, _arg1 : LibGio::LibGio::File**, _arg2 : LibGio::Int32*, _arg3 : LibGio::UInt8**) {
       __return_value = __block.call(Application.new(_arg0), PointerIterator.new(_arg1) {|__item| __item }, _arg2, (raise "Expected string but got null" unless _arg3; ::String.new(_arg3)))
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

