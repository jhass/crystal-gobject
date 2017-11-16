module Gio
  def self.action_name_is_valid(action_name)
    __return_value = LibGio.action_name_is_valid(action_name.to_unsafe)
    __return_value
  end

  def self.action_parse_detailed_name(detailed_name, action_name, target_value) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.action_parse_detailed_name(detailed_name.to_unsafe, action_name, target_value, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.action_print_detailed_name(action_name, target_value)
    __return_value = LibGio.action_print_detailed_name(action_name.to_unsafe, target_value ? target_value.to_unsafe.as(LibGLib::Variant*) : nil)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.app_info_create_from_commandline(commandline, application_name, flags : Gio::AppInfoCreateFlags) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.app_info_create_from_commandline(commandline.to_unsafe, application_name ? application_name.to_unsafe : nil, flags, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.app_info_get_all
    __return_value = LibGio.app_info_get_all
    GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.app_info_get_all_for_type(content_type)
    __return_value = LibGio.app_info_get_all_for_type(content_type.to_unsafe)
    GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.app_info_get_default_for_type(content_type, must_support_uris)
    __return_value = LibGio.app_info_get_default_for_type(content_type.to_unsafe, must_support_uris)
    __return_value
  end

  def self.app_info_get_default_for_uri_scheme(uri_scheme)
    __return_value = LibGio.app_info_get_default_for_uri_scheme(uri_scheme.to_unsafe)
    __return_value
  end

  def self.app_info_get_fallback_for_type(content_type)
    __return_value = LibGio.app_info_get_fallback_for_type(content_type.to_unsafe)
    GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.app_info_get_recommended_for_type(content_type)
    __return_value = LibGio.app_info_get_recommended_for_type(content_type.to_unsafe)
    GLib::ListIterator(Gio::AppInfo, LibGio::AppInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.app_info_launch_default_for_uri(uri, launch_context) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.app_info_launch_default_for_uri(uri.to_unsafe, launch_context ? launch_context.to_unsafe.as(LibGio::AppLaunchContext*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.app_info_launch_default_for_uri_async(uri, launch_context, cancellable, callback, user_data)
    LibGio.app_info_launch_default_for_uri_async(uri.to_unsafe, launch_context.to_unsafe.as(LibGio::AppLaunchContext*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
    nil
  end

  def self.app_info_launch_default_for_uri_finish(result) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.app_info_launch_default_for_uri_finish(result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.app_info_reset_type_associations(content_type)
    LibGio.app_info_reset_type_associations(content_type.to_unsafe)
    nil
  end

  def self.async_initable_newv_async(object_type, n_parameters, parameters, io_priority, cancellable, callback, user_data)
    LibGio.async_initable_newv_async(UInt64.new(object_type), UInt32.new(n_parameters), parameters.to_unsafe.as(LibGObject::Parameter*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
    nil
  end

  def self.bus_get(bus_type : Gio::BusType, cancellable, callback, user_data)
    LibGio.bus_get(bus_type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
    nil
  end

  def self.bus_get_finish(res) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.bus_get_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
    GLib::Error.assert __error
    Gio::DBusConnection.new(__return_value)
  end

  def self.bus_get_sync(bus_type : Gio::BusType, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.bus_get_sync(bus_type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    Gio::DBusConnection.new(__return_value)
  end

  def self.bus_own_name_on_connection(connection, name, flags : Gio::BusNameOwnerFlags, name_acquired_closure, name_lost_closure)
    __return_value = LibGio.bus_own_name_on_connection(connection.to_unsafe.as(LibGio::DBusConnection*), name.to_unsafe, flags, name_acquired_closure ? name_acquired_closure.to_unsafe.as(LibGObject::Closure*) : nil, name_lost_closure ? name_lost_closure.to_unsafe.as(LibGObject::Closure*) : nil)
    __return_value
  end

  def self.bus_own_name(bus_type : Gio::BusType, name, flags : Gio::BusNameOwnerFlags, bus_acquired_closure, name_acquired_closure, name_lost_closure)
    __return_value = LibGio.bus_own_name(bus_type, name.to_unsafe, flags, bus_acquired_closure ? bus_acquired_closure.to_unsafe.as(LibGObject::Closure*) : nil, name_acquired_closure ? name_acquired_closure.to_unsafe.as(LibGObject::Closure*) : nil, name_lost_closure ? name_lost_closure.to_unsafe.as(LibGObject::Closure*) : nil)
    __return_value
  end

  def self.bus_unown_name(owner_id)
    LibGio.bus_unown_name(UInt32.new(owner_id))
    nil
  end

  def self.bus_unwatch_name(watcher_id)
    LibGio.bus_unwatch_name(UInt32.new(watcher_id))
    nil
  end

  def self.bus_watch_name_on_connection(connection, name, flags : Gio::BusNameWatcherFlags, name_appeared_closure, name_vanished_closure)
    __return_value = LibGio.bus_watch_name_on_connection(connection.to_unsafe.as(LibGio::DBusConnection*), name.to_unsafe, flags, name_appeared_closure ? name_appeared_closure.to_unsafe.as(LibGObject::Closure*) : nil, name_vanished_closure ? name_vanished_closure.to_unsafe.as(LibGObject::Closure*) : nil)
    __return_value
  end

  def self.bus_watch_name(bus_type : Gio::BusType, name, flags : Gio::BusNameWatcherFlags, name_appeared_closure, name_vanished_closure)
    __return_value = LibGio.bus_watch_name(bus_type, name.to_unsafe, flags, name_appeared_closure ? name_appeared_closure.to_unsafe.as(LibGObject::Closure*) : nil, name_vanished_closure ? name_vanished_closure.to_unsafe.as(LibGObject::Closure*) : nil)
    __return_value
  end

  def self.content_type_can_be_executable(type)
    __return_value = LibGio.content_type_can_be_executable(type.to_unsafe)
    __return_value
  end

  def self.content_type_equals(type1, type2)
    __return_value = LibGio.content_type_equals(type1.to_unsafe, type2.to_unsafe)
    __return_value
  end

  def self.content_type_from_mime_type(mime_type)
    __return_value = LibGio.content_type_from_mime_type(mime_type.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.content_type_get_description(type)
    __return_value = LibGio.content_type_get_description(type.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.content_type_get_generic_icon_name(type)
    __return_value = LibGio.content_type_get_generic_icon_name(type.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.content_type_get_icon(type)
    __return_value = LibGio.content_type_get_icon(type.to_unsafe)
    __return_value
  end

  def self.content_type_get_mime_type(type)
    __return_value = LibGio.content_type_get_mime_type(type.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
  end

  def self.content_type_get_symbolic_icon(type)
    __return_value = LibGio.content_type_get_symbolic_icon(type.to_unsafe)
    __return_value
  end

  def self.content_type_guess(filename, data, data_size, result_uncertain)
    __return_value = LibGio.content_type_guess(filename ? filename.to_unsafe : nil, data ? data : nil, UInt64.new(data_size), result_uncertain)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.content_type_guess_for_tree(root)
    __return_value = LibGio.content_type_guess_for_tree(root.to_unsafe.as(LibGio::File*))
    PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
  end

  def self.content_type_is_a(type, supertype)
    __return_value = LibGio.content_type_is_a(type.to_unsafe, supertype.to_unsafe)
    __return_value
  end

  def self.content_type_is_mime_type(type, mime_type)
    __return_value = LibGio.content_type_is_mime_type(type.to_unsafe, mime_type.to_unsafe)
    __return_value
  end

  def self.content_type_is_unknown(type)
    __return_value = LibGio.content_type_is_unknown(type.to_unsafe)
    __return_value
  end

  def self.content_types_get_registered
    __return_value = LibGio.content_types_get_registered
    GLib::ListIterator(String, UInt8**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.dbus_address_escape_value(string)
    __return_value = LibGio.dbus_address_escape_value(string.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_address_get_for_bus_sync(bus_type : Gio::BusType, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_address_get_for_bus_sync(bus_type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_address_get_stream(address, cancellable, callback, user_data)
    LibGio.dbus_address_get_stream(address.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
    nil
  end

  def self.dbus_address_get_stream_finish(res, out_guid) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_address_get_stream_finish(res.to_unsafe.as(LibGio::AsyncResult*), out_guid, pointerof(__error))
    GLib::Error.assert __error
    Gio::IOStream.new(__return_value)
  end

  def self.dbus_address_get_stream_sync(address, out_guid, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_address_get_stream_sync(address.to_unsafe, out_guid, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    Gio::IOStream.new(__return_value)
  end

  def self.dbus_annotation_info_lookup(annotations, name)
    __return_value = LibGio.dbus_annotation_info_lookup(annotations ? annotations : nil, name.to_unsafe)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_error_encode_gerror(error)
    __return_value = LibGio.dbus_error_encode_gerror(error)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_error_get_remote_error(error)
    __return_value = LibGio.dbus_error_get_remote_error(error)
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_error_is_remote_error(error)
    __return_value = LibGio.dbus_error_is_remote_error(error)
    __return_value
  end

  def self.dbus_error_new_for_dbus_error(dbus_error_name, dbus_error_message)
    __return_value = LibGio.dbus_error_new_for_dbus_error(dbus_error_name.to_unsafe, dbus_error_message.to_unsafe)
    __return_value
  end

  def self.dbus_error_quark
    __return_value = LibGio.dbus_error_quark
    __return_value
  end

  def self.dbus_error_register_error(error_domain, error_code, dbus_error_name)
    __return_value = LibGio.dbus_error_register_error(UInt32.new(error_domain), Int32.new(error_code), dbus_error_name.to_unsafe)
    __return_value
  end

  def self.dbus_error_register_error_domain(error_domain_quark_name, quark_volatile, entries, num_entries)
    LibGio.dbus_error_register_error_domain(error_domain_quark_name.to_unsafe, quark_volatile, entries.to_unsafe.as(LibGio::DBusErrorEntry*), UInt32.new(num_entries))
    nil
  end

  def self.dbus_error_strip_remote_error(error)
    __return_value = LibGio.dbus_error_strip_remote_error(error)
    __return_value
  end

  def self.dbus_error_unregister_error(error_domain, error_code, dbus_error_name)
    __return_value = LibGio.dbus_error_unregister_error(UInt32.new(error_domain), Int32.new(error_code), dbus_error_name.to_unsafe)
    __return_value
  end

  def self.dbus_generate_guid
    __return_value = LibGio.dbus_generate_guid
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_gvalue_to_gvariant(gvalue, type)
    __return_value = LibGio.dbus_gvalue_to_gvariant(gvalue.to_unsafe.as(LibGObject::Value*), type.to_unsafe.as(LibGLib::VariantType*))
    GLib::Variant.new(__return_value)
  end

  def self.dbus_gvariant_to_gvalue(value, out_gvalue)
    LibGio.dbus_gvariant_to_gvalue(value.to_unsafe.as(LibGLib::Variant*), out_gvalue)
    nil
  end

  def self.dbus_is_address(string)
    __return_value = LibGio.dbus_is_address(string.to_unsafe)
    __return_value
  end

  def self.dbus_is_guid(string)
    __return_value = LibGio.dbus_is_guid(string.to_unsafe)
    __return_value
  end

  def self.dbus_is_interface_name(string)
    __return_value = LibGio.dbus_is_interface_name(string.to_unsafe)
    __return_value
  end

  def self.dbus_is_member_name(string)
    __return_value = LibGio.dbus_is_member_name(string.to_unsafe)
    __return_value
  end

  def self.dbus_is_name(string)
    __return_value = LibGio.dbus_is_name(string.to_unsafe)
    __return_value
  end

  def self.dbus_is_supported_address(string) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_is_supported_address(string.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.dbus_is_unique_name(string)
    __return_value = LibGio.dbus_is_unique_name(string.to_unsafe)
    __return_value
  end

  def self.dtls_client_connection_new(base_socket, server_identity) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dtls_client_connection_new(base_socket.to_unsafe.as(LibGio::DatagramBased*), server_identity ? server_identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.dtls_server_connection_new(base_socket, certificate) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dtls_server_connection_new(base_socket.to_unsafe.as(LibGio::DatagramBased*), certificate ? certificate.to_unsafe.as(LibGio::TlsCertificate*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.file_new_for_commandline_arg(arg)
    __return_value = LibGio.file_new_for_commandline_arg(arg.to_unsafe)
    __return_value
  end

  def self.file_new_for_commandline_arg_and_cwd(arg, cwd)
    __return_value = LibGio.file_new_for_commandline_arg_and_cwd(arg.to_unsafe, cwd.to_unsafe)
    __return_value
  end

  def self.file_new_for_path(path)
    __return_value = LibGio.file_new_for_path(path.to_unsafe)
    __return_value
  end

  def self.file_new_for_uri(uri)
    __return_value = LibGio.file_new_for_uri(uri.to_unsafe)
    __return_value
  end

  def self.file_new_tmp(tmpl, iostream) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.file_new_tmp(tmpl ? tmpl.to_unsafe : nil, iostream, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.file_parse_name(parse_name)
    __return_value = LibGio.file_parse_name(parse_name.to_unsafe)
    __return_value
  end

  def self.icon_deserialize(value)
    __return_value = LibGio.icon_deserialize(value.to_unsafe.as(LibGLib::Variant*))
    __return_value
  end

  def self.icon_hash(icon)
    __return_value = LibGio.icon_hash(icon)
    __return_value
  end

  def self.icon_new_for_string(str) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.icon_new_for_string(str.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.initable_newv(object_type, n_parameters, parameters, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.initable_newv(UInt64.new(object_type), UInt32.new(n_parameters), parameters, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    GObject::Object.new(__return_value)
  end

  def self.io_error_from_errno(err_no)
    __return_value = LibGio.io_error_from_errno(Int32.new(err_no))
    __return_value
  end

  def self.io_error_quark
    __return_value = LibGio.io_error_quark
    __return_value
  end

  def self.io_extension_point_implement(extension_point_name, type, extension_name, priority)
    __return_value = LibGio.io_extension_point_implement(extension_point_name.to_unsafe, UInt64.new(type), extension_name.to_unsafe, Int32.new(priority))
    Gio::IOExtension.new(__return_value)
  end

  def self.io_extension_point_lookup(name)
    __return_value = LibGio.io_extension_point_lookup(name.to_unsafe)
    Gio::IOExtensionPoint.new(__return_value)
  end

  def self.io_extension_point_register(name)
    __return_value = LibGio.io_extension_point_register(name.to_unsafe)
    Gio::IOExtensionPoint.new(__return_value)
  end

  def self.io_modules_load_all_in_directory(dirname)
    __return_value = LibGio.io_modules_load_all_in_directory(dirname.to_unsafe)
    GLib::ListIterator(Gio::IOModule, LibGio::IOModule**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.io_modules_load_all_in_directory_with_scope(dirname, scope)
    __return_value = LibGio.io_modules_load_all_in_directory_with_scope(dirname.to_unsafe, scope.to_unsafe.as(LibGio::IOModuleScope*))
    GLib::ListIterator(Gio::IOModule, LibGio::IOModule**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.io_modules_scan_all_in_directory(dirname)
    LibGio.io_modules_scan_all_in_directory(dirname.to_unsafe)
    nil
  end

  def self.io_modules_scan_all_in_directory_with_scope(dirname, scope)
    LibGio.io_modules_scan_all_in_directory_with_scope(dirname.to_unsafe, scope.to_unsafe.as(LibGio::IOModuleScope*))
    nil
  end

  def self.io_scheduler_cancel_all_jobs
    LibGio.io_scheduler_cancel_all_jobs
    nil
  end

  def self.io_scheduler_push_job(job_func, user_data, notify, io_priority, cancellable)
    LibGio.io_scheduler_push_job(job_func, user_data ? user_data : nil, notify ? notify : nil, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
    nil
  end

  def self.keyfile_settings_backend_new(filename, root_path, root_group)
    __return_value = LibGio.keyfile_settings_backend_new(filename.to_unsafe, root_path.to_unsafe, root_group ? root_group.to_unsafe : nil)
    Gio::SettingsBackend.new(__return_value)
  end

  def self.memory_settings_backend_new
    __return_value = LibGio.memory_settings_backend_new
    Gio::SettingsBackend.new(__return_value)
  end

  def self.network_monitor_get_default
    __return_value = LibGio.network_monitor_get_default
    __return_value
  end

  def self.networking_init
    LibGio.networking_init
    nil
  end

  def self.null_settings_backend_new
    __return_value = LibGio.null_settings_backend_new
    Gio::SettingsBackend.new(__return_value)
  end

  def self.pollable_source_new(pollable_stream)
    __return_value = LibGio.pollable_source_new(pollable_stream.to_unsafe.as(LibGObject::Object*))
    GLib::Source.new(__return_value)
  end

  def self.pollable_source_new_full(pollable_stream, child_source, cancellable)
    __return_value = LibGio.pollable_source_new_full(pollable_stream.to_unsafe.as(LibGObject::Object*), child_source ? child_source.to_unsafe.as(LibGLib::Source*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil)
    GLib::Source.new(__return_value)
  end

  def self.pollable_stream_read(stream, buffer, count, blocking, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.pollable_stream_read(stream.to_unsafe.as(LibGio::InputStream*), buffer, UInt64.new(count), blocking, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.pollable_stream_write(stream, buffer, count, blocking, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.pollable_stream_write(stream.to_unsafe.as(LibGio::OutputStream*), buffer, UInt64.new(count), blocking, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.pollable_stream_write_all(stream, buffer, count, blocking, bytes_written, cancellable) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.pollable_stream_write_all(stream.to_unsafe.as(LibGio::OutputStream*), buffer, UInt64.new(count), blocking, bytes_written, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.proxy_get_default_for_protocol(protocol)
    __return_value = LibGio.proxy_get_default_for_protocol(protocol.to_unsafe)
    __return_value
  end

  def self.proxy_resolver_get_default
    __return_value = LibGio.proxy_resolver_get_default
    __return_value
  end

  def self.resolver_error_quark
    __return_value = LibGio.resolver_error_quark
    __return_value
  end

  def self.resource_error_quark
    __return_value = LibGio.resource_error_quark
    __return_value
  end

  def self.resource_load(filename) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resource_load(filename.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    Gio::Resource.new(__return_value)
  end

  def self.resources_enumerate_children(path, lookup_flags : Gio::ResourceLookupFlags) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_enumerate_children(path.to_unsafe, lookup_flags, pointerof(__error))
    GLib::Error.assert __error
    PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
  end

  def self.resources_get_info(path, lookup_flags : Gio::ResourceLookupFlags, size, flags) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_get_info(path.to_unsafe, lookup_flags, size, flags, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.resources_lookup_data(path, lookup_flags : Gio::ResourceLookupFlags) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_lookup_data(path.to_unsafe, lookup_flags, pointerof(__error))
    GLib::Error.assert __error
    GLib::Bytes.new(__return_value)
  end

  def self.resources_open_stream(path, lookup_flags : Gio::ResourceLookupFlags) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_open_stream(path.to_unsafe, lookup_flags, pointerof(__error))
    GLib::Error.assert __error
    Gio::InputStream.new(__return_value)
  end

  def self.resources_register(resource)
    LibGio.resources_register(resource.to_unsafe.as(LibGio::Resource*))
    nil
  end

  def self.resources_unregister(resource)
    LibGio.resources_unregister(resource.to_unsafe.as(LibGio::Resource*))
    nil
  end

  def self.settings_schema_source_get_default
    __return_value = LibGio.settings_schema_source_get_default
    Gio::SettingsSchemaSource.new(__return_value)
  end

  def self.simple_async_report_gerror_in_idle(object, callback, user_data, error)
    LibGio.simple_async_report_gerror_in_idle(object ? object.to_unsafe.as(LibGObject::Object*) : nil, callback ? callback : nil, user_data ? user_data : nil, error)
    nil
  end

  def self.tls_backend_get_default
    __return_value = LibGio.tls_backend_get_default
    __return_value
  end

  def self.tls_client_connection_new(base_io_stream, server_identity) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.tls_client_connection_new(base_io_stream.to_unsafe.as(LibGio::IOStream*), server_identity ? server_identity.to_unsafe.as(LibGio::SocketConnectable*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.tls_error_quark
    __return_value = LibGio.tls_error_quark
    __return_value
  end

  def self.tls_file_database_new(anchors) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.tls_file_database_new(anchors.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.tls_server_connection_new(base_io_stream, certificate) # function
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.tls_server_connection_new(base_io_stream.to_unsafe.as(LibGio::IOStream*), certificate ? certificate.to_unsafe.as(LibGio::TlsCertificate*) : nil, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.unix_is_mount_path_system_internal(mount_path)
    __return_value = LibGio.unix_is_mount_path_system_internal(mount_path.to_unsafe)
    __return_value
  end

  def self.unix_mount_at(mount_path, time_read)
    __return_value = LibGio.unix_mount_at(mount_path.to_unsafe, time_read)
    Gio::UnixMountEntry.new(__return_value)
  end

  def self.unix_mount_compare(mount1, mount2)
    __return_value = LibGio.unix_mount_compare(mount1.to_unsafe.as(LibGio::UnixMountEntry*), mount2.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_copy(mount_entry)
    __return_value = LibGio.unix_mount_copy(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    Gio::UnixMountEntry.new(__return_value)
  end

  def self.unix_mount_for(file_path, time_read)
    __return_value = LibGio.unix_mount_for(file_path.to_unsafe, time_read)
    Gio::UnixMountEntry.new(__return_value)
  end

  def self.unix_mount_free(mount_entry)
    LibGio.unix_mount_free(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    nil
  end

  def self.unix_mount_get_device_path(mount_entry)
    __return_value = LibGio.unix_mount_get_device_path(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.unix_mount_get_fs_type(mount_entry)
    __return_value = LibGio.unix_mount_get_fs_type(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.unix_mount_get_mount_path(mount_entry)
    __return_value = LibGio.unix_mount_get_mount_path(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.unix_mount_guess_can_eject(mount_entry)
    __return_value = LibGio.unix_mount_guess_can_eject(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_guess_icon(mount_entry)
    __return_value = LibGio.unix_mount_guess_icon(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_guess_name(mount_entry)
    __return_value = LibGio.unix_mount_guess_name(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.unix_mount_guess_should_display(mount_entry)
    __return_value = LibGio.unix_mount_guess_should_display(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_guess_symbolic_icon(mount_entry)
    __return_value = LibGio.unix_mount_guess_symbolic_icon(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_is_readonly(mount_entry)
    __return_value = LibGio.unix_mount_is_readonly(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_is_system_internal(mount_entry)
    __return_value = LibGio.unix_mount_is_system_internal(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_points_changed_since(time)
    __return_value = LibGio.unix_mount_points_changed_since(UInt64.new(time))
    __return_value
  end

  def self.unix_mount_points_get(time_read)
    __return_value = LibGio.unix_mount_points_get(time_read)
    GLib::ListIterator(Gio::UnixMountPoint, LibGio::UnixMountPoint*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.unix_mounts_changed_since(time)
    __return_value = LibGio.unix_mounts_changed_since(UInt64.new(time))
    __return_value
  end

  def self.unix_mounts_get(time_read)
    __return_value = LibGio.unix_mounts_get(time_read)
    GLib::ListIterator(Gio::UnixMountEntry, LibGio::UnixMountEntry*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end
end

