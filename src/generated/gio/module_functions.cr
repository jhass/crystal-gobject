module Gio
  def self.action_name_is_valid(action_name)
    __return_value = LibGio.action_name_is_valid(action_name.to_unsafe)
    __return_value
  end

  def self.action_parse_detailed_name(detailed_name, action_name, target_value)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.action_parse_detailed_name(detailed_name.to_unsafe, action_name, target_value, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.action_print_detailed_name(action_name, target_value)
    __return_value = LibGio.action_print_detailed_name(action_name.to_unsafe, target_value && target_value.to_unsafe.as(LibGLib::Variant*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.app_info_create_from_commandline(commandline, application_name, flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.app_info_create_from_commandline(commandline.to_unsafe, application_name && application_name.to_unsafe, flags, pointerof(__error))
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

  def self.app_info_launch_default_for_uri(uri, launch_context)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.app_info_launch_default_for_uri(uri.to_unsafe, launch_context && launch_context.to_unsafe.as(LibGio::AppLaunchContext*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.app_info_reset_type_associations(content_type)
    __return_value = LibGio.app_info_reset_type_associations(content_type.to_unsafe)
    __return_value
  end

  def self.async_initable_newv_async(object_type, n_parameters, parameters, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
    __return_value = LibGio.async_initable_newv_async(UInt64.new(object_type), UInt32.new(n_parameters), parameters.to_unsafe.as(LibGObject::Parameter*), Int32.new(io_priority), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
    __return_value
  end

  def self.bus_get(bus_type, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
    __return_value = LibGio.bus_get(bus_type, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
    __return_value
  end

  def self.bus_get_finish(res)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.bus_get_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
    GLib::Error.assert __error
    Gio::DBusConnection.new(__return_value)
  end

  def self.bus_get_sync(bus_type, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.bus_get_sync(bus_type, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
    GLib::Error.assert __error
    Gio::DBusConnection.new(__return_value)
  end

  def self.bus_own_name_on_connection(connection, name, flags, name_acquired_closure, name_lost_closure)
    __return_value = LibGio.bus_own_name_on_connection(connection.to_unsafe.as(LibGio::DBusConnection*), name.to_unsafe, flags, name_acquired_closure && name_acquired_closure.to_unsafe.as(LibGObject::Closure*), name_lost_closure && name_lost_closure.to_unsafe.as(LibGObject::Closure*))
    __return_value
  end

  def self.bus_own_name(bus_type, name, flags, bus_acquired_closure, name_acquired_closure, name_lost_closure)
    __return_value = LibGio.bus_own_name(bus_type, name.to_unsafe, flags, bus_acquired_closure && bus_acquired_closure.to_unsafe.as(LibGObject::Closure*), name_acquired_closure && name_acquired_closure.to_unsafe.as(LibGObject::Closure*), name_lost_closure && name_lost_closure.to_unsafe.as(LibGObject::Closure*))
    __return_value
  end

  def self.bus_unown_name(owner_id)
    __return_value = LibGio.bus_unown_name(UInt32.new(owner_id))
    __return_value
  end

  def self.bus_unwatch_name(watcher_id)
    __return_value = LibGio.bus_unwatch_name(UInt32.new(watcher_id))
    __return_value
  end

  def self.bus_watch_name_on_connection(connection, name, flags, name_appeared_closure, name_vanished_closure)
    __return_value = LibGio.bus_watch_name_on_connection(connection.to_unsafe.as(LibGio::DBusConnection*), name.to_unsafe, flags, name_appeared_closure && name_appeared_closure.to_unsafe.as(LibGObject::Closure*), name_vanished_closure && name_vanished_closure.to_unsafe.as(LibGObject::Closure*))
    __return_value
  end

  def self.bus_watch_name(bus_type, name, flags, name_appeared_closure, name_vanished_closure)
    __return_value = LibGio.bus_watch_name(bus_type, name.to_unsafe, flags, name_appeared_closure && name_appeared_closure.to_unsafe.as(LibGObject::Closure*), name_vanished_closure && name_vanished_closure.to_unsafe.as(LibGObject::Closure*))
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
    __return_value = LibGio.content_type_guess(filename && filename.to_unsafe, data && data, UInt64.new(data_size), result_uncertain)
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

  def self.dbus_address_get_for_bus_sync(bus_type, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_address_get_for_bus_sync(bus_type, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
    GLib::Error.assert __error
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.dbus_address_get_stream(address, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
    __return_value = LibGio.dbus_address_get_stream(address.to_unsafe, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
    __return_value
  end

  def self.dbus_address_get_stream_finish(res, out_guid)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_address_get_stream_finish(res.to_unsafe.as(LibGio::AsyncResult*), out_guid, pointerof(__error))
    GLib::Error.assert __error
    Gio::IOStream.new(__return_value)
  end

  def self.dbus_address_get_stream_sync(address, out_guid, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_address_get_stream_sync(address.to_unsafe, out_guid, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
    GLib::Error.assert __error
    Gio::IOStream.new(__return_value)
  end

  def self.dbus_annotation_info_lookup(annotations, name)
    __return_value = LibGio.dbus_annotation_info_lookup(annotations && annotations, name.to_unsafe)
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
    __return_value = LibGio.dbus_error_register_error_domain(error_domain_quark_name.to_unsafe, quark_volatile, entries.to_unsafe.as(LibGio::DBusErrorEntry*), UInt32.new(num_entries))
    __return_value
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
    __return_value = LibGio.dbus_gvariant_to_gvalue(value.to_unsafe.as(LibGLib::Variant*), out_gvalue)
    __return_value
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

  def self.dbus_is_supported_address(string)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dbus_is_supported_address(string.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.dbus_is_unique_name(string)
    __return_value = LibGio.dbus_is_unique_name(string.to_unsafe)
    __return_value
  end

  def self.dtls_client_connection_new(base_socket, server_identity)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dtls_client_connection_new(base_socket.to_unsafe.as(LibGio::DatagramBased*), server_identity && server_identity.to_unsafe.as(LibGio::SocketConnectable*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.dtls_server_connection_new(base_socket, certificate)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.dtls_server_connection_new(base_socket.to_unsafe.as(LibGio::DatagramBased*), certificate && certificate.to_unsafe.as(LibGio::TlsCertificate*), pointerof(__error))
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

  def self.file_new_tmp(tmpl, iostream)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.file_new_tmp(tmpl && tmpl.to_unsafe, iostream, pointerof(__error))
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

  def self.icon_new_for_string(str)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.icon_new_for_string(str.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.initable_newv(object_type, n_parameters, parameters, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.initable_newv(UInt64.new(object_type), UInt32.new(n_parameters), parameters, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
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
    GLib::ListIterator(Gio::IOModule, LibGio::IOModule*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.io_modules_load_all_in_directory_with_scope(dirname, scope)
    __return_value = LibGio.io_modules_load_all_in_directory_with_scope(dirname.to_unsafe, scope.to_unsafe.as(LibGio::IOModuleScope*))
    GLib::ListIterator(Gio::IOModule, LibGio::IOModule*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
  end

  def self.io_modules_scan_all_in_directory(dirname)
    __return_value = LibGio.io_modules_scan_all_in_directory(dirname.to_unsafe)
    __return_value
  end

  def self.io_modules_scan_all_in_directory_with_scope(dirname, scope)
    __return_value = LibGio.io_modules_scan_all_in_directory_with_scope(dirname.to_unsafe, scope.to_unsafe.as(LibGio::IOModuleScope*))
    __return_value
  end

  def self.io_scheduler_cancel_all_jobs
    __return_value = LibGio.io_scheduler_cancel_all_jobs
    __return_value
  end

  def self.io_scheduler_push_job(job_func : LibGio::IOSchedulerJobFunc, user_data, notify : LibGLib::DestroyNotify?, io_priority, cancellable)
    __return_value = LibGio.io_scheduler_push_job(job_func, user_data && user_data, notify && notify, Int32.new(io_priority), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*))
    __return_value
  end

  def self.network_monitor_get_default
    __return_value = LibGio.network_monitor_get_default
    __return_value
  end

  def self.networking_init
    __return_value = LibGio.networking_init
    __return_value
  end

  def self.pollable_source_new(pollable_stream)
    __return_value = LibGio.pollable_source_new(pollable_stream.to_unsafe.as(LibGObject::Object*))
    GLib::Source.new(__return_value)
  end

  def self.pollable_source_new_full(pollable_stream, child_source, cancellable)
    __return_value = LibGio.pollable_source_new_full(pollable_stream.to_unsafe.as(LibGObject::Object*), child_source && child_source.to_unsafe.as(LibGLib::Source*), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*))
    GLib::Source.new(__return_value)
  end

  def self.pollable_stream_read(stream, buffer, count, blocking, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.pollable_stream_read(stream.to_unsafe.as(LibGio::InputStream*), buffer, UInt64.new(count), blocking, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.pollable_stream_write(stream, buffer, count, blocking, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.pollable_stream_write(stream.to_unsafe.as(LibGio::OutputStream*), buffer, UInt64.new(count), blocking, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.pollable_stream_write_all(stream, buffer, count, blocking, bytes_written, cancellable)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.pollable_stream_write_all(stream.to_unsafe.as(LibGio::OutputStream*), buffer, UInt64.new(count), blocking, bytes_written, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
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

  def self.resource_load(filename)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resource_load(filename.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    Gio::Resource.new(__return_value)
  end

  def self.resources_enumerate_children(path, lookup_flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_enumerate_children(path.to_unsafe, lookup_flags, pointerof(__error))
    GLib::Error.assert __error
    PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
  end

  def self.resources_get_info(path, lookup_flags, size, flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_get_info(path.to_unsafe, lookup_flags, size, flags, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.resources_lookup_data(path, lookup_flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_lookup_data(path.to_unsafe, lookup_flags, pointerof(__error))
    GLib::Error.assert __error
    GLib::Bytes.new(__return_value)
  end

  def self.resources_open_stream(path, lookup_flags)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.resources_open_stream(path.to_unsafe, lookup_flags, pointerof(__error))
    GLib::Error.assert __error
    Gio::InputStream.new(__return_value)
  end

  def self.resources_register(resource)
    __return_value = LibGio.resources_register(resource.to_unsafe.as(LibGio::Resource*))
    __return_value
  end

  def self.resources_unregister(resource)
    __return_value = LibGio.resources_unregister(resource.to_unsafe.as(LibGio::Resource*))
    __return_value
  end

  def self.settings_schema_source_get_default
    __return_value = LibGio.settings_schema_source_get_default
    Gio::SettingsSchemaSource.new(__return_value)
  end

  def self.simple_async_report_gerror_in_idle(object, callback : LibGio::AsyncReadyCallback?, user_data, error)
    __return_value = LibGio.simple_async_report_gerror_in_idle(object && object.to_unsafe.as(LibGObject::Object*), callback && callback, user_data && user_data, error)
    __return_value
  end

  def self.tls_backend_get_default
    __return_value = LibGio.tls_backend_get_default
    __return_value
  end

  def self.tls_client_connection_new(base_io_stream, server_identity)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.tls_client_connection_new(base_io_stream.to_unsafe.as(LibGio::IOStream*), server_identity && server_identity.to_unsafe.as(LibGio::SocketConnectable*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.tls_error_quark
    __return_value = LibGio.tls_error_quark
    __return_value
  end

  def self.tls_file_database_new(anchors)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.tls_file_database_new(anchors.to_unsafe, pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.tls_server_connection_new(base_io_stream, certificate)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGio.tls_server_connection_new(base_io_stream.to_unsafe.as(LibGio::IOStream*), certificate && certificate.to_unsafe.as(LibGio::TlsCertificate*), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.unix_is_mount_path_system_internal(mount_path)
    __return_value = LibGio.unix_is_mount_path_system_internal(mount_path.to_unsafe)
    __return_value
  end

  def self.unix_mount_compare(mount1, mount2)
    __return_value = LibGio.unix_mount_compare(mount1.to_unsafe.as(LibGio::UnixMountEntry*), mount2.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
  end

  def self.unix_mount_free(mount_entry)
    __return_value = LibGio.unix_mount_free(mount_entry.to_unsafe.as(LibGio::UnixMountEntry*))
    __return_value
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

  def self.unix_mounts_changed_since(time)
    __return_value = LibGio.unix_mounts_changed_since(UInt64.new(time))
    __return_value
  end
end

