require "./lib_g_lib"
require "./lib_g_object"

@[Link("gio-2.0")]
lib LibGio

  ###########################################
  ##    Interfaces
  ###########################################

  struct Action # interface
    g_iface : LibGObject::TypeInterface
    get_name : -> Void
    get_parameter_type : -> Void
    get_state_type : -> Void
    get_state_hint : -> Void
    get_enabled : -> Void
    get_state : -> Void
    change_state : -> Void
    activate : -> Void
    # Virtual function activate
    # Virtual function change_state
    # Virtual function get_enabled
    # Virtual function get_name
    # Virtual function get_parameter_type
    # Virtual function get_state
    # Virtual function get_state_hint
    # Virtual function get_state_type
    # Property enabled : Bool
    # Property name : UInt8*
    # Property parameter_type : LibGLib::VariantType
    # Property state : LibGLib::Variant
    # Property state_type : LibGLib::VariantType
  end
  fun action_name_is_valid = g_action_name_is_valid(action_name : UInt8*) : Bool
  fun action_parse_detailed_name = g_action_parse_detailed_name(detailed_name : UInt8*, action_name : UInt8**, target_value : LibGLib::Variant**, error : LibGLib::Error**) : Bool
  fun action_print_detailed_name = g_action_print_detailed_name(action_name : UInt8*, target_value : LibGLib::Variant*) : UInt8*
  fun action_activate = g_action_activate(this : Action*, parameter : LibGLib::Variant*) : Void
  fun action_change_state = g_action_change_state(this : Action*, value : LibGLib::Variant*) : Void
  fun action_get_enabled = g_action_get_enabled(this : Action*) : Bool
  fun action_get_name = g_action_get_name(this : Action*) : UInt8*
  fun action_get_parameter_type = g_action_get_parameter_type(this : Action*) : LibGLib::VariantType*
  fun action_get_state = g_action_get_state(this : Action*) : LibGLib::Variant*
  fun action_get_state_hint = g_action_get_state_hint(this : Action*) : LibGLib::Variant*
  fun action_get_state_type = g_action_get_state_type(this : Action*) : LibGLib::VariantType*

  struct ActionGroup # interface
    g_iface : LibGObject::TypeInterface
    has_action : -> Void
    list_actions : -> Void
    get_action_enabled : -> Void
    get_action_parameter_type : -> Void
    get_action_state_type : -> Void
    get_action_state_hint : -> Void
    get_action_state : -> Void
    change_action_state : -> Void
    activate_action : -> Void
    action_added : -> Void
    action_removed : -> Void
    action_enabled_changed : -> Void
    action_state_changed : -> Void
    query_action : -> Void
    # Signal action-added
    # Signal action-enabled-changed
    # Signal action-removed
    # Signal action-state-changed
    # Virtual function action_added
    # Virtual function action_enabled_changed
    # Virtual function action_removed
    # Virtual function action_state_changed
    # Virtual function activate_action
    # Virtual function change_action_state
    # Virtual function get_action_enabled
    # Virtual function get_action_parameter_type
    # Virtual function get_action_state
    # Virtual function get_action_state_hint
    # Virtual function get_action_state_type
    # Virtual function has_action
    # Virtual function list_actions
    # Virtual function query_action
  end
  fun action_group_action_added = g_action_group_action_added(this : ActionGroup*, action_name : UInt8*) : Void
  fun action_group_action_enabled_changed = g_action_group_action_enabled_changed(this : ActionGroup*, action_name : UInt8*, enabled : Bool) : Void
  fun action_group_action_removed = g_action_group_action_removed(this : ActionGroup*, action_name : UInt8*) : Void
  fun action_group_action_state_changed = g_action_group_action_state_changed(this : ActionGroup*, action_name : UInt8*, state : LibGLib::Variant*) : Void
  fun action_group_activate_action = g_action_group_activate_action(this : ActionGroup*, action_name : UInt8*, parameter : LibGLib::Variant*) : Void
  fun action_group_change_action_state = g_action_group_change_action_state(this : ActionGroup*, action_name : UInt8*, value : LibGLib::Variant*) : Void
  fun action_group_get_action_enabled = g_action_group_get_action_enabled(this : ActionGroup*, action_name : UInt8*) : Bool
  fun action_group_get_action_parameter_type = g_action_group_get_action_parameter_type(this : ActionGroup*, action_name : UInt8*) : LibGLib::VariantType*
  fun action_group_get_action_state = g_action_group_get_action_state(this : ActionGroup*, action_name : UInt8*) : LibGLib::Variant*
  fun action_group_get_action_state_hint = g_action_group_get_action_state_hint(this : ActionGroup*, action_name : UInt8*) : LibGLib::Variant*
  fun action_group_get_action_state_type = g_action_group_get_action_state_type(this : ActionGroup*, action_name : UInt8*) : LibGLib::VariantType*
  fun action_group_has_action = g_action_group_has_action(this : ActionGroup*, action_name : UInt8*) : Bool
  fun action_group_list_actions = g_action_group_list_actions(this : ActionGroup*) : UInt8**
  fun action_group_query_action = g_action_group_query_action(this : ActionGroup*, action_name : UInt8*, enabled : Bool*, parameter_type : LibGLib::VariantType**, state_type : LibGLib::VariantType**, state_hint : LibGLib::Variant**, state : LibGLib::Variant**) : Bool

  struct ActionMap # interface
    g_iface : LibGObject::TypeInterface
    lookup_action : -> Void
    add_action : -> Void
    remove_action : -> Void
    # Virtual function add_action
    # Virtual function lookup_action
    # Virtual function remove_action
  end
  fun action_map_add_action = g_action_map_add_action(this : ActionMap*, action : LibGio::Action*) : Void
  fun action_map_add_action_entries = g_action_map_add_action_entries(this : ActionMap*, entries : LibGio::ActionEntry*, n_entries : Int32, user_data : Void*) : Void
  fun action_map_lookup_action = g_action_map_lookup_action(this : ActionMap*, action_name : UInt8*) : LibGio::Action*
  fun action_map_remove_action = g_action_map_remove_action(this : ActionMap*, action_name : UInt8*) : Void

  struct AppInfo # interface
    g_iface : LibGObject::TypeInterface
    dup : -> Void
    equal : -> Void
    get_id : -> Void
    get_name : -> Void
    get_description : -> Void
    get_executable : -> Void
    get_icon : -> Void
    launch : -> Void
    supports_uris : -> Void
    supports_files : -> Void
    launch_uris : -> Void
    should_show : -> Void
    set_as_default_for_type : -> Void
    set_as_default_for_extension : -> Void
    add_supports_type : -> Void
    can_remove_supports_type : -> Void
    remove_supports_type : -> Void
    can_delete : -> Void
    do_delete : -> Void
    get_commandline : -> Void
    get_display_name : -> Void
    set_as_last_used_for_type : -> Void
    get_supported_types : -> Void
    # Virtual function add_supports_type
    # Virtual function can_delete
    # Virtual function can_remove_supports_type
    # Virtual function do_delete
    # Virtual function dup
    # Virtual function equal
    # Virtual function get_commandline
    # Virtual function get_description
    # Virtual function get_display_name
    # Virtual function get_executable
    # Virtual function get_icon
    # Virtual function get_id
    # Virtual function get_name
    # Virtual function get_supported_types
    # Virtual function launch
    # Virtual function launch_uris
    # Virtual function remove_supports_type
    # Virtual function set_as_default_for_extension
    # Virtual function set_as_default_for_type
    # Virtual function set_as_last_used_for_type
    # Virtual function should_show
    # Virtual function supports_files
    # Virtual function supports_uris
  end
  fun app_info_create_from_commandline = g_app_info_create_from_commandline(commandline : UInt8*, application_name : UInt8*, flags : LibGio::AppInfoCreateFlags, error : LibGLib::Error**) : LibGio::AppInfo*
  fun app_info_get_all = g_app_info_get_all() : Void**
  fun app_info_get_all_for_type = g_app_info_get_all_for_type(content_type : UInt8*) : Void**
  fun app_info_get_default_for_type = g_app_info_get_default_for_type(content_type : UInt8*, must_support_uris : Bool) : LibGio::AppInfo*
  fun app_info_get_default_for_uri_scheme = g_app_info_get_default_for_uri_scheme(uri_scheme : UInt8*) : LibGio::AppInfo*
  fun app_info_get_fallback_for_type = g_app_info_get_fallback_for_type(content_type : UInt8*) : Void**
  fun app_info_get_recommended_for_type = g_app_info_get_recommended_for_type(content_type : UInt8*) : Void**
  fun app_info_launch_default_for_uri = g_app_info_launch_default_for_uri(uri : UInt8*, context : LibGio::AppLaunchContext*, error : LibGLib::Error**) : Bool
  fun app_info_launch_default_for_uri_async = g_app_info_launch_default_for_uri_async(uri : UInt8*, context : LibGio::AppLaunchContext*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun app_info_launch_default_for_uri_finish = g_app_info_launch_default_for_uri_finish(result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun app_info_reset_type_associations = g_app_info_reset_type_associations(content_type : UInt8*) : Void
  fun app_info_add_supports_type = g_app_info_add_supports_type(this : AppInfo*, content_type : UInt8*, error : LibGLib::Error**) : Bool
  fun app_info_can_delete = g_app_info_can_delete(this : AppInfo*) : Bool
  fun app_info_can_remove_supports_type = g_app_info_can_remove_supports_type(this : AppInfo*) : Bool
  fun app_info_delete = g_app_info_delete(this : AppInfo*) : Bool
  fun app_info_dup = g_app_info_dup(this : AppInfo*) : LibGio::AppInfo*
  fun app_info_equal = g_app_info_equal(this : AppInfo*, appinfo2 : LibGio::AppInfo*) : Bool
  fun app_info_get_commandline = g_app_info_get_commandline(this : AppInfo*) : UInt8*
  fun app_info_get_description = g_app_info_get_description(this : AppInfo*) : UInt8*
  fun app_info_get_display_name = g_app_info_get_display_name(this : AppInfo*) : UInt8*
  fun app_info_get_executable = g_app_info_get_executable(this : AppInfo*) : UInt8*
  fun app_info_get_icon = g_app_info_get_icon(this : AppInfo*) : LibGio::Icon*
  fun app_info_get_id = g_app_info_get_id(this : AppInfo*) : UInt8*
  fun app_info_get_name = g_app_info_get_name(this : AppInfo*) : UInt8*
  fun app_info_get_supported_types = g_app_info_get_supported_types(this : AppInfo*) : UInt8**
  fun app_info_launch = g_app_info_launch(this : AppInfo*, files : Void**, context : LibGio::AppLaunchContext*, error : LibGLib::Error**) : Bool
  fun app_info_launch_uris = g_app_info_launch_uris(this : AppInfo*, uris : Void**, context : LibGio::AppLaunchContext*, error : LibGLib::Error**) : Bool
  fun app_info_remove_supports_type = g_app_info_remove_supports_type(this : AppInfo*, content_type : UInt8*, error : LibGLib::Error**) : Bool
  fun app_info_set_as_default_for_extension = g_app_info_set_as_default_for_extension(this : AppInfo*, extension : UInt8*, error : LibGLib::Error**) : Bool
  fun app_info_set_as_default_for_type = g_app_info_set_as_default_for_type(this : AppInfo*, content_type : UInt8*, error : LibGLib::Error**) : Bool
  fun app_info_set_as_last_used_for_type = g_app_info_set_as_last_used_for_type(this : AppInfo*, content_type : UInt8*, error : LibGLib::Error**) : Bool
  fun app_info_should_show = g_app_info_should_show(this : AppInfo*) : Bool
  fun app_info_supports_files = g_app_info_supports_files(this : AppInfo*) : Bool
  fun app_info_supports_uris = g_app_info_supports_uris(this : AppInfo*) : Bool

  struct AsyncInitable # interface
    g_iface : LibGObject::TypeInterface
    init_async : -> Void
    init_finish : -> Void
    # Virtual function init_async
    # Virtual function init_finish
  end
  fun async_initable_newv_async = g_async_initable_newv_async(object_type : UInt64, n_parameters : UInt32, parameters : LibGObject::Parameter*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun async_initable_init_async = g_async_initable_init_async(this : AsyncInitable*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun async_initable_init_finish = g_async_initable_init_finish(this : AsyncInitable*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun async_initable_new_finish = g_async_initable_new_finish(this : AsyncInitable*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGObject::Object*

  struct AsyncResult # interface
    g_iface : LibGObject::TypeInterface
    get_user_data : -> Void
    get_source_object : -> Void
    is_tagged : -> Void
    # Virtual function get_source_object
    # Virtual function get_user_data
    # Virtual function is_tagged
  end
  fun async_result_get_source_object = g_async_result_get_source_object(this : AsyncResult*) : LibGObject::Object*
  fun async_result_get_user_data = g_async_result_get_user_data(this : AsyncResult*) : Void*
  fun async_result_is_tagged = g_async_result_is_tagged(this : AsyncResult*, source_tag : Void*) : Bool
  fun async_result_legacy_propagate_error = g_async_result_legacy_propagate_error(this : AsyncResult*, error : LibGLib::Error**) : Bool

  struct Converter # interface
    g_iface : LibGObject::TypeInterface
    convert : -> Void
    reset : -> Void
    # Virtual function convert
    # Virtual function reset
  end
  fun converter_convert = g_converter_convert(this : Converter*, inbuf : UInt8*, inbuf_size : UInt64, outbuf : UInt8*, outbuf_size : UInt64, flags : LibGio::ConverterFlags, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : LibGio::ConverterResult
  fun converter_reset = g_converter_reset(this : Converter*) : Void

  struct DBusInterface # interface
    parent_iface : LibGObject::TypeInterface
    get_info : -> Void
    get_object : -> Void
    set_object : -> Void
    dup_object : -> Void
    # Virtual function dup_object
    # Virtual function get_info
    # Virtual function set_object
  end
  fun d_bus_interface_get_object = g_dbus_interface_dup_object(this : DBusInterface*) : LibGio::DBusObject*
  fun d_bus_interface_get_info = g_dbus_interface_get_info(this : DBusInterface*) : LibGio::DBusInterfaceInfo*
  fun d_bus_interface_set_object = g_dbus_interface_set_object(this : DBusInterface*, object : LibGio::DBusObject*) : Void

  struct DBusObject # interface
    parent_iface : LibGObject::TypeInterface
    get_object_path : -> Void
    get_interfaces : -> Void
    get_interface : -> Void
    interface_added : -> Void
    interface_removed : -> Void
    # Signal interface-added
    # Signal interface-removed
    # Virtual function get_interface
    # Virtual function get_interfaces
    # Virtual function get_object_path
    # Virtual function interface_added
    # Virtual function interface_removed
  end
  fun d_bus_object_get_interface = g_dbus_object_get_interface(this : DBusObject*, interface_name : UInt8*) : LibGio::DBusInterface*
  fun d_bus_object_get_interfaces = g_dbus_object_get_interfaces(this : DBusObject*) : Void**
  fun d_bus_object_get_object_path = g_dbus_object_get_object_path(this : DBusObject*) : UInt8*

  struct DBusObjectManager # interface
    parent_iface : LibGObject::TypeInterface
    get_object_path : -> Void
    get_objects : -> Void
    get_object : -> Void
    get_interface : -> Void
    object_added : -> Void
    object_removed : -> Void
    interface_added : -> Void
    interface_removed : -> Void
    # Signal interface-added
    # Signal interface-removed
    # Signal object-added
    # Signal object-removed
    # Virtual function get_interface
    # Virtual function get_object
    # Virtual function get_object_path
    # Virtual function get_objects
    # Virtual function interface_added
    # Virtual function interface_removed
    # Virtual function object_added
    # Virtual function object_removed
  end
  fun d_bus_object_manager_get_interface = g_dbus_object_manager_get_interface(this : DBusObjectManager*, object_path : UInt8*, interface_name : UInt8*) : LibGio::DBusInterface*
  fun d_bus_object_manager_get_object = g_dbus_object_manager_get_object(this : DBusObjectManager*, object_path : UInt8*) : LibGio::DBusObject*
  fun d_bus_object_manager_get_object_path = g_dbus_object_manager_get_object_path(this : DBusObjectManager*) : UInt8*
  fun d_bus_object_manager_get_objects = g_dbus_object_manager_get_objects(this : DBusObjectManager*) : Void**

  struct DatagramBased # interface
    g_iface : LibGObject::TypeInterface
    receive_messages : -> Void
    send_messages : -> Void
    create_source : -> Void
    condition_check : -> Void
    condition_wait : -> Void
    # Virtual function condition_check
    # Virtual function condition_wait
    # Virtual function create_source
    # Virtual function receive_messages
    # Virtual function send_messages
  end
  fun datagram_based_condition_check = g_datagram_based_condition_check(this : DatagramBased*, condition : LibGLib::IOCondition) : LibGLib::IOCondition
  fun datagram_based_condition_wait = g_datagram_based_condition_wait(this : DatagramBased*, condition : LibGLib::IOCondition, timeout : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun datagram_based_create_source = g_datagram_based_create_source(this : DatagramBased*, condition : LibGLib::IOCondition, cancellable : LibGio::Cancellable*) : LibGLib::Source*
  fun datagram_based_receive_messages = g_datagram_based_receive_messages(this : DatagramBased*, messages : LibGio::InputMessage*, num_messages : UInt32, flags : Int32, timeout : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32
  fun datagram_based_send_messages = g_datagram_based_send_messages(this : DatagramBased*, messages : LibGio::OutputMessage*, num_messages : UInt32, flags : Int32, timeout : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32

  struct DesktopAppInfoLookup # interface
    g_iface : LibGObject::TypeInterface
    get_default_for_uri_scheme : -> Void
    # Virtual function get_default_for_uri_scheme
  end
  fun desktop_app_info_lookup_get_default_for_uri_scheme = g_desktop_app_info_lookup_get_default_for_uri_scheme(this : DesktopAppInfoLookup*, uri_scheme : UInt8*) : LibGio::AppInfo*

  struct Drive # interface
    g_iface : LibGObject::TypeInterface
    changed : -> Void
    disconnected : -> Void
    eject_button : -> Void
    get_name : -> Void
    get_icon : -> Void
    has_volumes : -> Void
    get_volumes : -> Void
    is_media_removable : -> Void
    has_media : -> Void
    is_media_check_automatic : -> Void
    can_eject : -> Void
    can_poll_for_media : -> Void
    eject : -> Void
    eject_finish : -> Void
    poll_for_media : -> Void
    poll_for_media_finish : -> Void
    get_identifier : -> Void
    enumerate_identifiers : -> Void
    get_start_stop_type : -> Void
    can_start : -> Void
    can_start_degraded : -> Void
    start : -> Void
    start_finish : -> Void
    can_stop : -> Void
    stop : -> Void
    stop_finish : -> Void
    stop_button : -> Void
    eject_with_operation : -> Void
    eject_with_operation_finish : -> Void
    get_sort_key : -> Void
    get_symbolic_icon : -> Void
    is_removable : -> Void
    # Signal changed
    # Signal disconnected
    # Signal eject-button
    # Signal stop-button
    # Virtual function can_eject
    # Virtual function can_poll_for_media
    # Virtual function can_start
    # Virtual function can_start_degraded
    # Virtual function can_stop
    # Virtual function changed
    # Virtual function disconnected
    # Virtual function eject
    # Virtual function eject_button
    # Virtual function eject_finish
    # Virtual function eject_with_operation
    # Virtual function eject_with_operation_finish
    # Virtual function enumerate_identifiers
    # Virtual function get_icon
    # Virtual function get_identifier
    # Virtual function get_name
    # Virtual function get_sort_key
    # Virtual function get_start_stop_type
    # Virtual function get_symbolic_icon
    # Virtual function get_volumes
    # Virtual function has_media
    # Virtual function has_volumes
    # Virtual function is_media_check_automatic
    # Virtual function is_media_removable
    # Virtual function is_removable
    # Virtual function poll_for_media
    # Virtual function poll_for_media_finish
    # Virtual function start
    # Virtual function start_finish
    # Virtual function stop
    # Virtual function stop_button
    # Virtual function stop_finish
  end
  fun drive_can_eject = g_drive_can_eject(this : Drive*) : Bool
  fun drive_can_poll_for_media = g_drive_can_poll_for_media(this : Drive*) : Bool
  fun drive_can_start = g_drive_can_start(this : Drive*) : Bool
  fun drive_can_start_degraded = g_drive_can_start_degraded(this : Drive*) : Bool
  fun drive_can_stop = g_drive_can_stop(this : Drive*) : Bool
  fun drive_eject = g_drive_eject(this : Drive*, flags : LibGio::MountUnmountFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun drive_eject_finish = g_drive_eject_finish(this : Drive*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun drive_eject_with_operation = g_drive_eject_with_operation(this : Drive*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun drive_eject_with_operation_finish = g_drive_eject_with_operation_finish(this : Drive*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun drive_enumerate_identifiers = g_drive_enumerate_identifiers(this : Drive*) : UInt8**
  fun drive_get_icon = g_drive_get_icon(this : Drive*) : LibGio::Icon*
  fun drive_get_identifier = g_drive_get_identifier(this : Drive*, kind : UInt8*) : UInt8*
  fun drive_get_name = g_drive_get_name(this : Drive*) : UInt8*
  fun drive_get_sort_key = g_drive_get_sort_key(this : Drive*) : UInt8*
  fun drive_get_start_stop_type = g_drive_get_start_stop_type(this : Drive*) : LibGio::DriveStartStopType
  fun drive_get_symbolic_icon = g_drive_get_symbolic_icon(this : Drive*) : LibGio::Icon*
  fun drive_get_volumes = g_drive_get_volumes(this : Drive*) : Void**
  fun drive_has_media = g_drive_has_media(this : Drive*) : Bool
  fun drive_has_volumes = g_drive_has_volumes(this : Drive*) : Bool
  fun drive_is_media_check_automatic = g_drive_is_media_check_automatic(this : Drive*) : Bool
  fun drive_is_media_removable = g_drive_is_media_removable(this : Drive*) : Bool
  fun drive_is_removable = g_drive_is_removable(this : Drive*) : Bool
  fun drive_poll_for_media = g_drive_poll_for_media(this : Drive*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun drive_poll_for_media_finish = g_drive_poll_for_media_finish(this : Drive*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun drive_start = g_drive_start(this : Drive*, flags : LibGio::DriveStartFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun drive_start_finish = g_drive_start_finish(this : Drive*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun drive_stop = g_drive_stop(this : Drive*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun drive_stop_finish = g_drive_stop_finish(this : Drive*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool

  struct DtlsClientConnection # interface
    g_iface : LibGObject::TypeInterface
  # Requires DatagramBased
  # Requires DtlsConnection
    # Property accepted_cas : Void**
    # Property server_identity : LibGio::SocketConnectable
    # Property validation_flags : LibGio::TlsCertificateFlags
  end
  fun dtls_client_connection_new = g_dtls_client_connection_new(base_socket : LibGio::DatagramBased*, server_identity : LibGio::SocketConnectable*, error : LibGLib::Error**) : LibGio::DtlsClientConnection*
  fun dtls_client_connection_get_accepted_cas = g_dtls_client_connection_get_accepted_cas(this : DtlsClientConnection*) : Void**
  fun dtls_client_connection_get_server_identity = g_dtls_client_connection_get_server_identity(this : DtlsClientConnection*) : LibGio::SocketConnectable*
  fun dtls_client_connection_get_validation_flags = g_dtls_client_connection_get_validation_flags(this : DtlsClientConnection*) : LibGio::TlsCertificateFlags
  fun dtls_client_connection_set_server_identity = g_dtls_client_connection_set_server_identity(this : DtlsClientConnection*, identity : LibGio::SocketConnectable*) : Void
  fun dtls_client_connection_set_validation_flags = g_dtls_client_connection_set_validation_flags(this : DtlsClientConnection*, flags : LibGio::TlsCertificateFlags) : Void

  struct DtlsConnection # interface
    g_iface : LibGObject::TypeInterface
    accept_certificate : -> Void
    handshake : -> Void
    handshake_async : -> Void
    handshake_finish : -> Void
    shutdown : -> Void
    shutdown_async : -> Void
    shutdown_finish : -> Void
  # Requires DatagramBased
    # Signal accept-certificate
    # Virtual function accept_certificate
    # Virtual function handshake
    # Virtual function handshake_async
    # Virtual function handshake_finish
    # Virtual function shutdown
    # Virtual function shutdown_async
    # Virtual function shutdown_finish
    # Property base_socket : LibGio::DatagramBased
    # Property certificate : LibGio::TlsCertificate*
    # Property database : LibGio::TlsDatabase*
    # Property interaction : LibGio::TlsInteraction*
    # Property peer_certificate : LibGio::TlsCertificate*
    # Property peer_certificate_errors : LibGio::TlsCertificateFlags
    # Property rehandshake_mode : LibGio::TlsRehandshakeMode
    # Property require_close_notify : Bool
  end
  fun dtls_connection_close = g_dtls_connection_close(this : DtlsConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun dtls_connection_close_async = g_dtls_connection_close_async(this : DtlsConnection*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun dtls_connection_close_finish = g_dtls_connection_close_finish(this : DtlsConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun dtls_connection_emit_accept_certificate = g_dtls_connection_emit_accept_certificate(this : DtlsConnection*, peer_cert : LibGio::TlsCertificate*, errors : LibGio::TlsCertificateFlags) : Bool
  fun dtls_connection_get_certificate = g_dtls_connection_get_certificate(this : DtlsConnection*) : LibGio::TlsCertificate*
  fun dtls_connection_get_database = g_dtls_connection_get_database(this : DtlsConnection*) : LibGio::TlsDatabase*
  fun dtls_connection_get_interaction = g_dtls_connection_get_interaction(this : DtlsConnection*) : LibGio::TlsInteraction*
  fun dtls_connection_get_peer_certificate = g_dtls_connection_get_peer_certificate(this : DtlsConnection*) : LibGio::TlsCertificate*
  fun dtls_connection_get_peer_certificate_errors = g_dtls_connection_get_peer_certificate_errors(this : DtlsConnection*) : LibGio::TlsCertificateFlags
  fun dtls_connection_get_rehandshake_mode = g_dtls_connection_get_rehandshake_mode(this : DtlsConnection*) : LibGio::TlsRehandshakeMode
  fun dtls_connection_get_require_close_notify = g_dtls_connection_get_require_close_notify(this : DtlsConnection*) : Bool
  fun dtls_connection_handshake = g_dtls_connection_handshake(this : DtlsConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun dtls_connection_handshake_async = g_dtls_connection_handshake_async(this : DtlsConnection*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun dtls_connection_handshake_finish = g_dtls_connection_handshake_finish(this : DtlsConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun dtls_connection_set_certificate = g_dtls_connection_set_certificate(this : DtlsConnection*, certificate : LibGio::TlsCertificate*) : Void
  fun dtls_connection_set_database = g_dtls_connection_set_database(this : DtlsConnection*, database : LibGio::TlsDatabase*) : Void
  fun dtls_connection_set_interaction = g_dtls_connection_set_interaction(this : DtlsConnection*, interaction : LibGio::TlsInteraction*) : Void
  fun dtls_connection_set_rehandshake_mode = g_dtls_connection_set_rehandshake_mode(this : DtlsConnection*, mode : LibGio::TlsRehandshakeMode) : Void
  fun dtls_connection_set_require_close_notify = g_dtls_connection_set_require_close_notify(this : DtlsConnection*, require_close_notify : Bool) : Void
  fun dtls_connection_shutdown = g_dtls_connection_shutdown(this : DtlsConnection*, shutdown_read : Bool, shutdown_write : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun dtls_connection_shutdown_async = g_dtls_connection_shutdown_async(this : DtlsConnection*, shutdown_read : Bool, shutdown_write : Bool, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun dtls_connection_shutdown_finish = g_dtls_connection_shutdown_finish(this : DtlsConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool

  struct DtlsServerConnection # interface
    g_iface : LibGObject::TypeInterface
  # Requires DatagramBased
  # Requires DtlsConnection
    # Property authentication_mode : LibGio::TlsAuthenticationMode
  end
  fun dtls_server_connection_new = g_dtls_server_connection_new(base_socket : LibGio::DatagramBased*, certificate : LibGio::TlsCertificate*, error : LibGLib::Error**) : LibGio::DtlsServerConnection*

  struct File # interface
    g_iface : LibGObject::TypeInterface
    dup : -> Void
    hash : -> Void
    equal : -> Void
    is_native : -> Void
    has_uri_scheme : -> Void
    get_uri_scheme : -> Void
    get_basename : -> Void
    get_path : -> Void
    get_uri : -> Void
    get_parse_name : -> Void
    get_parent : -> Void
    prefix_matches : -> Void
    get_relative_path : -> Void
    resolve_relative_path : -> Void
    get_child_for_display_name : -> Void
    enumerate_children : -> Void
    enumerate_children_async : -> Void
    enumerate_children_finish : -> Void
    query_info : -> Void
    query_info_async : -> Void
    query_info_finish : -> Void
    query_filesystem_info : -> Void
    query_filesystem_info_async : -> Void
    query_filesystem_info_finish : -> Void
    find_enclosing_mount : -> Void
    find_enclosing_mount_async : -> Void
    find_enclosing_mount_finish : -> Void
    set_display_name : -> Void
    set_display_name_async : -> Void
    set_display_name_finish : -> Void
    query_settable_attributes : -> Void
    _query_settable_attributes_async : Void*
    _query_settable_attributes_finish : Void*
    query_writable_namespaces : -> Void
    _query_writable_namespaces_async : Void*
    _query_writable_namespaces_finish : Void*
    set_attribute : -> Void
    set_attributes_from_info : -> Void
    set_attributes_async : -> Void
    set_attributes_finish : -> Void
    read_fn : -> Void
    read_async : -> Void
    read_finish : -> Void
    append_to : -> Void
    append_to_async : -> Void
    append_to_finish : -> Void
    create : -> Void
    create_async : -> Void
    create_finish : -> Void
    replace : -> Void
    replace_async : -> Void
    replace_finish : -> Void
    delete_file : -> Void
    delete_file_async : -> Void
    delete_file_finish : -> Void
    trash : -> Void
    trash_async : -> Void
    trash_finish : -> Void
    make_directory : -> Void
    make_directory_async : -> Void
    make_directory_finish : -> Void
    make_symbolic_link : -> Void
    _make_symbolic_link_async : Void*
    _make_symbolic_link_finish : Void*
    copy : -> Void
    copy_async : -> Void
    copy_finish : -> Void
    move : -> Void
    _move_async : Void*
    _move_finish : Void*
    mount_mountable : -> Void
    mount_mountable_finish : -> Void
    unmount_mountable : -> Void
    unmount_mountable_finish : -> Void
    eject_mountable : -> Void
    eject_mountable_finish : -> Void
    mount_enclosing_volume : -> Void
    mount_enclosing_volume_finish : -> Void
    monitor_dir : -> Void
    monitor_file : -> Void
    open_readwrite : -> Void
    open_readwrite_async : -> Void
    open_readwrite_finish : -> Void
    create_readwrite : -> Void
    create_readwrite_async : -> Void
    create_readwrite_finish : -> Void
    replace_readwrite : -> Void
    replace_readwrite_async : -> Void
    replace_readwrite_finish : -> Void
    start_mountable : -> Void
    start_mountable_finish : -> Void
    stop_mountable : -> Void
    stop_mountable_finish : -> Void
    supports_thread_contexts : Bool
    unmount_mountable_with_operation : -> Void
    unmount_mountable_with_operation_finish : -> Void
    eject_mountable_with_operation : -> Void
    eject_mountable_with_operation_finish : -> Void
    poll_mountable : -> Void
    poll_mountable_finish : -> Void
    measure_disk_usage : Void*
    measure_disk_usage_async : Void*
    measure_disk_usage_finish : -> Void
    # Virtual function append_to
    # Virtual function append_to_async
    # Virtual function append_to_finish
    # Virtual function copy
    # Virtual function copy_async
    # Virtual function copy_finish
    # Virtual function create
    # Virtual function create_async
    # Virtual function create_finish
    # Virtual function create_readwrite
    # Virtual function create_readwrite_async
    # Virtual function create_readwrite_finish
    # Virtual function delete_file
    # Virtual function delete_file_async
    # Virtual function delete_file_finish
    # Virtual function dup
    # Virtual function eject_mountable
    # Virtual function eject_mountable_finish
    # Virtual function eject_mountable_with_operation
    # Virtual function eject_mountable_with_operation_finish
    # Virtual function enumerate_children
    # Virtual function enumerate_children_async
    # Virtual function enumerate_children_finish
    # Virtual function equal
    # Virtual function find_enclosing_mount
    # Virtual function find_enclosing_mount_async
    # Virtual function find_enclosing_mount_finish
    # Virtual function get_basename
    # Virtual function get_child_for_display_name
    # Virtual function get_parent
    # Virtual function get_parse_name
    # Virtual function get_path
    # Virtual function get_relative_path
    # Virtual function get_uri
    # Virtual function get_uri_scheme
    # Virtual function has_uri_scheme
    # Virtual function hash
    # Virtual function is_native
    # Virtual function make_directory
    # Virtual function make_directory_async
    # Virtual function make_directory_finish
    # Virtual function make_symbolic_link
    # Virtual function measure_disk_usage_finish
    # Virtual function monitor_dir
    # Virtual function monitor_file
    # Virtual function mount_enclosing_volume
    # Virtual function mount_enclosing_volume_finish
    # Virtual function mount_mountable
    # Virtual function mount_mountable_finish
    # Virtual function move
    # Virtual function open_readwrite
    # Virtual function open_readwrite_async
    # Virtual function open_readwrite_finish
    # Virtual function poll_mountable
    # Virtual function poll_mountable_finish
    # Virtual function prefix_matches
    # Virtual function query_filesystem_info
    # Virtual function query_filesystem_info_async
    # Virtual function query_filesystem_info_finish
    # Virtual function query_info
    # Virtual function query_info_async
    # Virtual function query_info_finish
    # Virtual function query_settable_attributes
    # Virtual function query_writable_namespaces
    # Virtual function read_async
    # Virtual function read_finish
    # Virtual function read_fn
    # Virtual function replace
    # Virtual function replace_async
    # Virtual function replace_finish
    # Virtual function replace_readwrite
    # Virtual function replace_readwrite_async
    # Virtual function replace_readwrite_finish
    # Virtual function resolve_relative_path
    # Virtual function set_attribute
    # Virtual function set_attributes_async
    # Virtual function set_attributes_finish
    # Virtual function set_attributes_from_info
    # Virtual function set_display_name
    # Virtual function set_display_name_async
    # Virtual function set_display_name_finish
    # Virtual function start_mountable
    # Virtual function start_mountable_finish
    # Virtual function stop_mountable
    # Virtual function stop_mountable_finish
    # Virtual function trash
    # Virtual function trash_async
    # Virtual function trash_finish
    # Virtual function unmount_mountable
    # Virtual function unmount_mountable_finish
    # Virtual function unmount_mountable_with_operation
    # Virtual function unmount_mountable_with_operation_finish
  end
  fun file_new_for_commandline_arg = g_file_new_for_commandline_arg(arg : UInt8*) : LibGio::File*
  fun file_new_for_commandline_arg_and_cwd = g_file_new_for_commandline_arg_and_cwd(arg : UInt8*, cwd : UInt8*) : LibGio::File*
  fun file_new_for_path = g_file_new_for_path(path : UInt8*) : LibGio::File*
  fun file_new_for_uri = g_file_new_for_uri(uri : UInt8*) : LibGio::File*
  fun file_new_tmp = g_file_new_tmp(tmpl : UInt8*, iostream : LibGio::FileIOStream**, error : LibGLib::Error**) : LibGio::File*
  fun file_parse_name = g_file_parse_name(parse_name : UInt8*) : LibGio::File*
  fun file_append_to = g_file_append_to(this : File*, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileOutputStream*
  fun file_append_to_async = g_file_append_to_async(this : File*, flags : LibGio::FileCreateFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_append_to_finish = g_file_append_to_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileOutputStream*
  fun file_copy = g_file_copy(this : File*, destination : LibGio::File*, flags : LibGio::FileCopyFlags, cancellable : LibGio::Cancellable*, progress_callback : LibGio::FileProgressCallback, progress_callback_data : Void*, error : LibGLib::Error**) : Bool
  fun file_copy_async = g_file_copy_async(this : File*, destination : LibGio::File*, flags : LibGio::FileCopyFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, progress_callback : LibGio::FileProgressCallback, progress_callback_data : Void*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_copy_attributes = g_file_copy_attributes(this : File*, destination : LibGio::File*, flags : LibGio::FileCopyFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_copy_finish = g_file_copy_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_create = g_file_create(this : File*, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileOutputStream*
  fun file_create_async = g_file_create_async(this : File*, flags : LibGio::FileCreateFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_create_finish = g_file_create_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileOutputStream*
  fun file_create_readwrite = g_file_create_readwrite(this : File*, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileIOStream*
  fun file_create_readwrite_async = g_file_create_readwrite_async(this : File*, flags : LibGio::FileCreateFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_create_readwrite_finish = g_file_create_readwrite_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileIOStream*
  fun file_delete = g_file_delete(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_delete_async = g_file_delete_async(this : File*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_delete_finish = g_file_delete_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_dup = g_file_dup(this : File*) : LibGio::File*
  fun file_eject_mountable = g_file_eject_mountable(this : File*, flags : LibGio::MountUnmountFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_eject_mountable_finish = g_file_eject_mountable_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_eject_mountable_with_operation = g_file_eject_mountable_with_operation(this : File*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_eject_mountable_with_operation_finish = g_file_eject_mountable_with_operation_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_enumerate_children = g_file_enumerate_children(this : File*, attributes : UInt8*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileEnumerator*
  fun file_enumerate_children_async = g_file_enumerate_children_async(this : File*, attributes : UInt8*, flags : LibGio::FileQueryInfoFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_enumerate_children_finish = g_file_enumerate_children_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileEnumerator*
  fun file_equal = g_file_equal(this : File*, file2 : LibGio::File*) : Bool
  fun file_find_enclosing_mount = g_file_find_enclosing_mount(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::Mount*
  fun file_find_enclosing_mount_async = g_file_find_enclosing_mount_async(this : File*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_find_enclosing_mount_finish = g_file_find_enclosing_mount_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::Mount*
  fun file_get_basename = g_file_get_basename(this : File*) : UInt8*
  fun file_get_child = g_file_get_child(this : File*, name : UInt8*) : LibGio::File*
  fun file_get_child_for_display_name = g_file_get_child_for_display_name(this : File*, display_name : UInt8*, error : LibGLib::Error**) : LibGio::File*
  fun file_get_parent = g_file_get_parent(this : File*) : LibGio::File*
  fun file_get_parse_name = g_file_get_parse_name(this : File*) : UInt8*
  fun file_get_path = g_file_get_path(this : File*) : UInt8*
  fun file_get_relative_path = g_file_get_relative_path(this : File*, descendant : LibGio::File*) : UInt8*
  fun file_get_uri = g_file_get_uri(this : File*) : UInt8*
  fun file_get_uri_scheme = g_file_get_uri_scheme(this : File*) : UInt8*
  fun file_has_parent = g_file_has_parent(this : File*, parent : LibGio::File*) : Bool
  fun file_has_prefix = g_file_has_prefix(this : File*, prefix : LibGio::File*) : Bool
  fun file_has_uri_scheme = g_file_has_uri_scheme(this : File*, uri_scheme : UInt8*) : Bool
  fun file_hash = g_file_hash(this : File*) : UInt32
  fun file_is_native = g_file_is_native(this : File*) : Bool
  fun file_load_bytes = g_file_load_bytes(this : File*, cancellable : LibGio::Cancellable*, etag_out : UInt8**, error : LibGLib::Error**) : LibGLib::Bytes*
  fun file_load_bytes_async = g_file_load_bytes_async(this : File*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_load_bytes_finish = g_file_load_bytes_finish(this : File*, result : LibGio::AsyncResult*, etag_out : UInt8**, error : LibGLib::Error**) : LibGLib::Bytes*
  fun file_load_contents = g_file_load_contents(this : File*, cancellable : LibGio::Cancellable*, contents : UInt8**, length : UInt64*, etag_out : UInt8**, error : LibGLib::Error**) : Bool
  fun file_load_contents_async = g_file_load_contents_async(this : File*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_load_contents_finish = g_file_load_contents_finish(this : File*, res : LibGio::AsyncResult*, contents : UInt8**, length : UInt64*, etag_out : UInt8**, error : LibGLib::Error**) : Bool
  fun file_load_partial_contents_finish = g_file_load_partial_contents_finish(this : File*, res : LibGio::AsyncResult*, contents : UInt8**, length : UInt64*, etag_out : UInt8**, error : LibGLib::Error**) : Bool
  fun file_make_directory = g_file_make_directory(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_make_directory_async = g_file_make_directory_async(this : File*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_make_directory_finish = g_file_make_directory_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_make_directory_with_parents = g_file_make_directory_with_parents(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_make_symbolic_link = g_file_make_symbolic_link(this : File*, symlink_value : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_measure_disk_usage_finish = g_file_measure_disk_usage_finish(this : File*, result : LibGio::AsyncResult*, disk_usage : UInt64*, num_dirs : UInt64*, num_files : UInt64*, error : LibGLib::Error**) : Bool
  fun file_monitor = g_file_monitor(this : File*, flags : LibGio::FileMonitorFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileMonitor*
  fun file_monitor_directory = g_file_monitor_directory(this : File*, flags : LibGio::FileMonitorFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileMonitor*
  fun file_monitor_file = g_file_monitor_file(this : File*, flags : LibGio::FileMonitorFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileMonitor*
  fun file_mount_enclosing_volume = g_file_mount_enclosing_volume(this : File*, flags : LibGio::MountMountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_mount_enclosing_volume_finish = g_file_mount_enclosing_volume_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_mount_mountable = g_file_mount_mountable(this : File*, flags : LibGio::MountMountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_mount_mountable_finish = g_file_mount_mountable_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::File*
  fun file_move = g_file_move(this : File*, destination : LibGio::File*, flags : LibGio::FileCopyFlags, cancellable : LibGio::Cancellable*, progress_callback : LibGio::FileProgressCallback, progress_callback_data : Void*, error : LibGLib::Error**) : Bool
  fun file_open_readwrite = g_file_open_readwrite(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileIOStream*
  fun file_open_readwrite_async = g_file_open_readwrite_async(this : File*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_open_readwrite_finish = g_file_open_readwrite_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileIOStream*
  fun file_peek_path = g_file_peek_path(this : File*) : UInt8*
  fun file_poll_mountable = g_file_poll_mountable(this : File*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_poll_mountable_finish = g_file_poll_mountable_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_query_default_handler = g_file_query_default_handler(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::AppInfo*
  fun file_query_exists = g_file_query_exists(this : File*, cancellable : LibGio::Cancellable*) : Bool
  fun file_query_file_type = g_file_query_file_type(this : File*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*) : LibGio::FileType
  fun file_query_filesystem_info = g_file_query_filesystem_info(this : File*, attributes : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_query_filesystem_info_async = g_file_query_filesystem_info_async(this : File*, attributes : UInt8*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_query_filesystem_info_finish = g_file_query_filesystem_info_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_query_info = g_file_query_info(this : File*, attributes : UInt8*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_query_info_async = g_file_query_info_async(this : File*, attributes : UInt8*, flags : LibGio::FileQueryInfoFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_query_info_finish = g_file_query_info_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_query_settable_attributes = g_file_query_settable_attributes(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileAttributeInfoList*
  fun file_query_writable_namespaces = g_file_query_writable_namespaces(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileAttributeInfoList*
  fun file_read = g_file_read(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInputStream*
  fun file_read_async = g_file_read_async(this : File*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_read_finish = g_file_read_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileInputStream*
  fun file_replace = g_file_replace(this : File*, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileOutputStream*
  fun file_replace_async = g_file_replace_async(this : File*, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_replace_contents = g_file_replace_contents(this : File*, contents : UInt8*, length : UInt64, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, new_etag : UInt8**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_replace_contents_async = g_file_replace_contents_async(this : File*, contents : UInt8*, length : UInt64, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_replace_contents_bytes_async = g_file_replace_contents_bytes_async(this : File*, contents : LibGLib::Bytes*, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_replace_contents_finish = g_file_replace_contents_finish(this : File*, res : LibGio::AsyncResult*, new_etag : UInt8**, error : LibGLib::Error**) : Bool
  fun file_replace_finish = g_file_replace_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileOutputStream*
  fun file_replace_readwrite = g_file_replace_readwrite(this : File*, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileIOStream*
  fun file_replace_readwrite_async = g_file_replace_readwrite_async(this : File*, etag : UInt8*, make_backup : Bool, flags : LibGio::FileCreateFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_replace_readwrite_finish = g_file_replace_readwrite_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileIOStream*
  fun file_resolve_relative_path = g_file_resolve_relative_path(this : File*, relative_path : UInt8*) : LibGio::File*
  fun file_set_attribute = g_file_set_attribute(this : File*, attribute : UInt8*, type : LibGio::FileAttributeType, value_p : Void*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attribute_byte_string = g_file_set_attribute_byte_string(this : File*, attribute : UInt8*, value : UInt8*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attribute_int32 = g_file_set_attribute_int32(this : File*, attribute : UInt8*, value : Int32, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attribute_int64 = g_file_set_attribute_int64(this : File*, attribute : UInt8*, value : Int64, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attribute_string = g_file_set_attribute_string(this : File*, attribute : UInt8*, value : UInt8*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attribute_uint32 = g_file_set_attribute_uint32(this : File*, attribute : UInt8*, value : UInt32, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attribute_uint64 = g_file_set_attribute_uint64(this : File*, attribute : UInt8*, value : UInt64, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_attributes_async = g_file_set_attributes_async(this : File*, info : LibGio::FileInfo*, flags : LibGio::FileQueryInfoFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_set_attributes_finish = g_file_set_attributes_finish(this : File*, result : LibGio::AsyncResult*, info : LibGio::FileInfo**, error : LibGLib::Error**) : Bool
  fun file_set_attributes_from_info = g_file_set_attributes_from_info(this : File*, info : LibGio::FileInfo*, flags : LibGio::FileQueryInfoFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_set_display_name = g_file_set_display_name(this : File*, display_name : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::File*
  fun file_set_display_name_async = g_file_set_display_name_async(this : File*, display_name : UInt8*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_set_display_name_finish = g_file_set_display_name_finish(this : File*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::File*
  fun file_start_mountable = g_file_start_mountable(this : File*, flags : LibGio::DriveStartFlags, start_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_start_mountable_finish = g_file_start_mountable_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_stop_mountable = g_file_stop_mountable(this : File*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_stop_mountable_finish = g_file_stop_mountable_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_supports_thread_contexts = g_file_supports_thread_contexts(this : File*) : Bool
  fun file_trash = g_file_trash(this : File*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_trash_async = g_file_trash_async(this : File*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_trash_finish = g_file_trash_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_unmount_mountable = g_file_unmount_mountable(this : File*, flags : LibGio::MountUnmountFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_unmount_mountable_finish = g_file_unmount_mountable_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_unmount_mountable_with_operation = g_file_unmount_mountable_with_operation(this : File*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_unmount_mountable_with_operation_finish = g_file_unmount_mountable_with_operation_finish(this : File*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool

  struct FileDescriptorBased # interface
    g_iface : LibGObject::TypeInterface
    get_fd : -> Void
    # Virtual function get_fd
  end
  fun file_descriptor_based_get_fd = g_file_descriptor_based_get_fd(this : FileDescriptorBased*) : Int32

  struct Icon # interface
    g_iface : LibGObject::TypeInterface
    hash : -> Void
    equal : -> Void
    to_tokens : Void*
    from_tokens : Void*
    serialize : -> Void
    # Virtual function equal
    # Virtual function hash
    # Virtual function serialize
  end
  fun icon_deserialize = g_icon_deserialize(value : LibGLib::Variant*) : LibGio::Icon*
  fun icon_hash = g_icon_hash(icon : Void*) : UInt32
  fun icon_new_for_string = g_icon_new_for_string(str : UInt8*, error : LibGLib::Error**) : LibGio::Icon*
  fun icon_equal = g_icon_equal(this : Icon*, icon2 : LibGio::Icon*) : Bool
  fun icon_serialize = g_icon_serialize(this : Icon*) : LibGLib::Variant*
  fun icon_to_string = g_icon_to_string(this : Icon*) : UInt8*

  struct Initable # interface
    g_iface : LibGObject::TypeInterface
    init : -> Void
    # Virtual function init
  end
  fun initable_newv = g_initable_newv(object_type : UInt64, n_parameters : UInt32, parameters : LibGObject::Parameter*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGObject::Object*
  fun initable_init = g_initable_init(this : Initable*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool

  struct ListModel # interface
    g_iface : LibGObject::TypeInterface
    get_item_type : -> Void
    get_n_items : -> Void
    get_item : -> Void
    # Signal items-changed
    # Virtual function get_item
    # Virtual function get_item_type
    # Virtual function get_n_items
  end
  fun list_model_get_item_type = g_list_model_get_item_type(this : ListModel*) : UInt64
  fun list_model_get_n_items = g_list_model_get_n_items(this : ListModel*) : UInt32
  fun list_model_get_item = g_list_model_get_object(this : ListModel*, position : UInt32) : LibGObject::Object*
  fun list_model_items_changed = g_list_model_items_changed(this : ListModel*, position : UInt32, removed : UInt32, added : UInt32) : Void

  struct LoadableIcon # interface
    g_iface : LibGObject::TypeInterface
    load : -> Void
    load_async : -> Void
    load_finish : -> Void
  # Requires Icon
    # Virtual function load
    # Virtual function load_async
    # Virtual function load_finish
  end
  fun loadable_icon_load = g_loadable_icon_load(this : LoadableIcon*, size : Int32, type : UInt8**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::InputStream*
  fun loadable_icon_load_async = g_loadable_icon_load_async(this : LoadableIcon*, size : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun loadable_icon_load_finish = g_loadable_icon_load_finish(this : LoadableIcon*, res : LibGio::AsyncResult*, type : UInt8**, error : LibGLib::Error**) : LibGio::InputStream*

  struct Mount # interface
    g_iface : LibGObject::TypeInterface
    changed : -> Void
    unmounted : -> Void
    get_root : -> Void
    get_name : -> Void
    get_icon : -> Void
    get_uuid : -> Void
    get_volume : -> Void
    get_drive : -> Void
    can_unmount : -> Void
    can_eject : -> Void
    unmount : -> Void
    unmount_finish : -> Void
    eject : -> Void
    eject_finish : -> Void
    remount : -> Void
    remount_finish : -> Void
    guess_content_type : -> Void
    guess_content_type_finish : -> Void
    guess_content_type_sync : -> Void
    pre_unmount : -> Void
    unmount_with_operation : -> Void
    unmount_with_operation_finish : -> Void
    eject_with_operation : -> Void
    eject_with_operation_finish : -> Void
    get_default_location : -> Void
    get_sort_key : -> Void
    get_symbolic_icon : -> Void
    # Signal changed
    # Signal pre-unmount
    # Signal unmounted
    # Virtual function can_eject
    # Virtual function can_unmount
    # Virtual function changed
    # Virtual function eject
    # Virtual function eject_finish
    # Virtual function eject_with_operation
    # Virtual function eject_with_operation_finish
    # Virtual function get_default_location
    # Virtual function get_drive
    # Virtual function get_icon
    # Virtual function get_name
    # Virtual function get_root
    # Virtual function get_sort_key
    # Virtual function get_symbolic_icon
    # Virtual function get_uuid
    # Virtual function get_volume
    # Virtual function guess_content_type
    # Virtual function guess_content_type_finish
    # Virtual function guess_content_type_sync
    # Virtual function pre_unmount
    # Virtual function remount
    # Virtual function remount_finish
    # Virtual function unmount
    # Virtual function unmount_finish
    # Virtual function unmount_with_operation
    # Virtual function unmount_with_operation_finish
    # Virtual function unmounted
  end
  fun mount_can_eject = g_mount_can_eject(this : Mount*) : Bool
  fun mount_can_unmount = g_mount_can_unmount(this : Mount*) : Bool
  fun mount_eject = g_mount_eject(this : Mount*, flags : LibGio::MountUnmountFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun mount_eject_finish = g_mount_eject_finish(this : Mount*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun mount_eject_with_operation = g_mount_eject_with_operation(this : Mount*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun mount_eject_with_operation_finish = g_mount_eject_with_operation_finish(this : Mount*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun mount_get_default_location = g_mount_get_default_location(this : Mount*) : LibGio::File*
  fun mount_get_drive = g_mount_get_drive(this : Mount*) : LibGio::Drive*
  fun mount_get_icon = g_mount_get_icon(this : Mount*) : LibGio::Icon*
  fun mount_get_name = g_mount_get_name(this : Mount*) : UInt8*
  fun mount_get_root = g_mount_get_root(this : Mount*) : LibGio::File*
  fun mount_get_sort_key = g_mount_get_sort_key(this : Mount*) : UInt8*
  fun mount_get_symbolic_icon = g_mount_get_symbolic_icon(this : Mount*) : LibGio::Icon*
  fun mount_get_uuid = g_mount_get_uuid(this : Mount*) : UInt8*
  fun mount_get_volume = g_mount_get_volume(this : Mount*) : LibGio::Volume*
  fun mount_guess_content_type = g_mount_guess_content_type(this : Mount*, force_rescan : Bool, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun mount_guess_content_type_finish = g_mount_guess_content_type_finish(this : Mount*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : UInt8**
  fun mount_guess_content_type_sync = g_mount_guess_content_type_sync(this : Mount*, force_rescan : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8**
  fun mount_is_shadowed = g_mount_is_shadowed(this : Mount*) : Bool
  fun mount_remount = g_mount_remount(this : Mount*, flags : LibGio::MountMountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun mount_remount_finish = g_mount_remount_finish(this : Mount*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun mount_shadow = g_mount_shadow(this : Mount*) : Void
  fun mount_unmount = g_mount_unmount(this : Mount*, flags : LibGio::MountUnmountFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun mount_unmount_finish = g_mount_unmount_finish(this : Mount*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun mount_unmount_with_operation = g_mount_unmount_with_operation(this : Mount*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun mount_unmount_with_operation_finish = g_mount_unmount_with_operation_finish(this : Mount*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun mount_unshadow = g_mount_unshadow(this : Mount*) : Void

  struct NetworkMonitor # interface
    g_iface : LibGObject::TypeInterface
    network_changed : -> Void
    can_reach : -> Void
    can_reach_async : -> Void
    can_reach_finish : -> Void
  # Requires Initable
    # Signal network-changed
    # Virtual function can_reach
    # Virtual function can_reach_async
    # Virtual function can_reach_finish
    # Virtual function network_changed
    # Property connectivity : LibGio::NetworkConnectivity
    # Property network_available : Bool
    # Property network_metered : Bool
  end
  fun network_monitor_get_default = g_network_monitor_get_default() : LibGio::NetworkMonitor*
  fun network_monitor_can_reach = g_network_monitor_can_reach(this : NetworkMonitor*, connectable : LibGio::SocketConnectable*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun network_monitor_can_reach_async = g_network_monitor_can_reach_async(this : NetworkMonitor*, connectable : LibGio::SocketConnectable*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun network_monitor_can_reach_finish = g_network_monitor_can_reach_finish(this : NetworkMonitor*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun network_monitor_get_connectivity = g_network_monitor_get_connectivity(this : NetworkMonitor*) : LibGio::NetworkConnectivity
  fun network_monitor_get_network_available = g_network_monitor_get_network_available(this : NetworkMonitor*) : Bool
  fun network_monitor_get_network_metered = g_network_monitor_get_network_metered(this : NetworkMonitor*) : Bool

  struct PollableInputStream # interface
    g_iface : LibGObject::TypeInterface
    can_poll : -> Void
    is_readable : -> Void
    create_source : -> Void
    read_nonblocking : -> Void
  # Requires InputStream
    # Virtual function can_poll
    # Virtual function create_source
    # Virtual function is_readable
    # Virtual function read_nonblocking
  end
  fun pollable_input_stream_can_poll = g_pollable_input_stream_can_poll(this : PollableInputStream*) : Bool
  fun pollable_input_stream_create_source = g_pollable_input_stream_create_source(this : PollableInputStream*, cancellable : LibGio::Cancellable*) : LibGLib::Source*
  fun pollable_input_stream_is_readable = g_pollable_input_stream_is_readable(this : PollableInputStream*) : Bool
  fun pollable_input_stream_read_nonblocking = g_pollable_input_stream_read_nonblocking(this : PollableInputStream*, buffer : UInt8*, count : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64

  struct PollableOutputStream # interface
    g_iface : LibGObject::TypeInterface
    can_poll : -> Void
    is_writable : -> Void
    create_source : -> Void
    write_nonblocking : -> Void
  # Requires OutputStream
    # Virtual function can_poll
    # Virtual function create_source
    # Virtual function is_writable
    # Virtual function write_nonblocking
  end
  fun pollable_output_stream_can_poll = g_pollable_output_stream_can_poll(this : PollableOutputStream*) : Bool
  fun pollable_output_stream_create_source = g_pollable_output_stream_create_source(this : PollableOutputStream*, cancellable : LibGio::Cancellable*) : LibGLib::Source*
  fun pollable_output_stream_is_writable = g_pollable_output_stream_is_writable(this : PollableOutputStream*) : Bool
  fun pollable_output_stream_write_nonblocking = g_pollable_output_stream_write_nonblocking(this : PollableOutputStream*, buffer : UInt8*, count : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64

  struct Proxy # interface
    g_iface : LibGObject::TypeInterface
    connect : -> Void
    connect_async : -> Void
    connect_finish : -> Void
    supports_hostname : -> Void
    # Virtual function connect
    # Virtual function connect_async
    # Virtual function connect_finish
    # Virtual function supports_hostname
  end
  fun proxy_get_default_for_protocol = g_proxy_get_default_for_protocol(protocol : UInt8*) : LibGio::Proxy*
  fun proxy_connect = g_proxy_connect(this : Proxy*, connection : LibGio::IOStream*, proxy_address : LibGio::ProxyAddress*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::IOStream*
  fun proxy_connect_async = g_proxy_connect_async(this : Proxy*, connection : LibGio::IOStream*, proxy_address : LibGio::ProxyAddress*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun proxy_connect_finish = g_proxy_connect_finish(this : Proxy*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::IOStream*
  fun proxy_supports_hostname = g_proxy_supports_hostname(this : Proxy*) : Bool

  struct ProxyResolver # interface
    g_iface : LibGObject::TypeInterface
    is_supported : -> Void
    lookup : -> Void
    lookup_async : -> Void
    lookup_finish : -> Void
    # Virtual function is_supported
    # Virtual function lookup
    # Virtual function lookup_async
    # Virtual function lookup_finish
  end
  fun proxy_resolver_get_default = g_proxy_resolver_get_default() : LibGio::ProxyResolver*
  fun proxy_resolver_is_supported = g_proxy_resolver_is_supported(this : ProxyResolver*) : Bool
  fun proxy_resolver_lookup = g_proxy_resolver_lookup(this : ProxyResolver*, uri : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8**
  fun proxy_resolver_lookup_async = g_proxy_resolver_lookup_async(this : ProxyResolver*, uri : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun proxy_resolver_lookup_finish = g_proxy_resolver_lookup_finish(this : ProxyResolver*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : UInt8**

  struct RemoteActionGroup # interface
    g_iface : LibGObject::TypeInterface
    activate_action_full : -> Void
    change_action_state_full : -> Void
  # Requires ActionGroup
    # Virtual function activate_action_full
    # Virtual function change_action_state_full
  end
  fun remote_action_group_activate_action_full = g_remote_action_group_activate_action_full(this : RemoteActionGroup*, action_name : UInt8*, parameter : LibGLib::Variant*, platform_data : LibGLib::Variant*) : Void
  fun remote_action_group_change_action_state_full = g_remote_action_group_change_action_state_full(this : RemoteActionGroup*, action_name : UInt8*, value : LibGLib::Variant*, platform_data : LibGLib::Variant*) : Void

  struct Seekable # interface
    g_iface : LibGObject::TypeInterface
    tell : -> Void
    can_seek : -> Void
    seek : -> Void
    can_truncate : -> Void
    truncate_fn : -> Void
    # Virtual function can_seek
    # Virtual function can_truncate
    # Virtual function seek
    # Virtual function tell
    # Virtual function truncate_fn
  end
  fun seekable_can_seek = g_seekable_can_seek(this : Seekable*) : Bool
  fun seekable_can_truncate = g_seekable_can_truncate(this : Seekable*) : Bool
  fun seekable_seek = g_seekable_seek(this : Seekable*, offset : Int64, type : LibGLib::SeekType, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun seekable_tell = g_seekable_tell(this : Seekable*) : Int64
  fun seekable_truncate = g_seekable_truncate(this : Seekable*, offset : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool

  struct SocketConnectable # interface
    g_iface : LibGObject::TypeInterface
    enumerate : -> Void
    proxy_enumerate : -> Void
    to_string : -> Void
    # Virtual function enumerate
    # Virtual function proxy_enumerate
    # Virtual function to_string
  end
  fun socket_connectable_enumerate = g_socket_connectable_enumerate(this : SocketConnectable*) : LibGio::SocketAddressEnumerator*
  fun socket_connectable_proxy_enumerate = g_socket_connectable_proxy_enumerate(this : SocketConnectable*) : LibGio::SocketAddressEnumerator*
  fun socket_connectable_to_string = g_socket_connectable_to_string(this : SocketConnectable*) : UInt8*

  struct TlsBackend # interface
    g_iface : LibGObject::TypeInterface
    supports_tls : -> Void
    get_certificate_type : -> Void
    get_client_connection_type : -> Void
    get_server_connection_type : -> Void
    get_file_database_type : -> Void
    get_default_database : -> Void
    supports_dtls : -> Void
    get_dtls_client_connection_type : -> Void
    get_dtls_server_connection_type : -> Void
    # Virtual function get_default_database
    # Virtual function supports_dtls
    # Virtual function supports_tls
  end
  fun tls_backend_get_default = g_tls_backend_get_default() : LibGio::TlsBackend*
  fun tls_backend_get_certificate_type = g_tls_backend_get_certificate_type(this : TlsBackend*) : UInt64
  fun tls_backend_get_client_connection_type = g_tls_backend_get_client_connection_type(this : TlsBackend*) : UInt64
  fun tls_backend_get_default_database = g_tls_backend_get_default_database(this : TlsBackend*) : LibGio::TlsDatabase*
  fun tls_backend_get_dtls_client_connection_type = g_tls_backend_get_dtls_client_connection_type(this : TlsBackend*) : UInt64
  fun tls_backend_get_dtls_server_connection_type = g_tls_backend_get_dtls_server_connection_type(this : TlsBackend*) : UInt64
  fun tls_backend_get_file_database_type = g_tls_backend_get_file_database_type(this : TlsBackend*) : UInt64
  fun tls_backend_get_server_connection_type = g_tls_backend_get_server_connection_type(this : TlsBackend*) : UInt64
  fun tls_backend_supports_dtls = g_tls_backend_supports_dtls(this : TlsBackend*) : Bool
  fun tls_backend_supports_tls = g_tls_backend_supports_tls(this : TlsBackend*) : Bool

  struct TlsClientConnection # interface
    g_iface : LibGObject::TypeInterface
    copy_session_state : -> Void
  # Requires TlsConnection
    # Virtual function copy_session_state
    # Property accepted_cas : Void**
    # Property server_identity : LibGio::SocketConnectable
    # Property use_ssl3 : Bool
    # Property validation_flags : LibGio::TlsCertificateFlags
  end
  fun tls_client_connection_new = g_tls_client_connection_new(base_io_stream : LibGio::IOStream*, server_identity : LibGio::SocketConnectable*, error : LibGLib::Error**) : LibGio::TlsClientConnection*
  fun tls_client_connection_copy_session_state = g_tls_client_connection_copy_session_state(this : TlsClientConnection*, source : LibGio::TlsClientConnection*) : Void
  fun tls_client_connection_get_accepted_cas = g_tls_client_connection_get_accepted_cas(this : TlsClientConnection*) : Void**
  fun tls_client_connection_get_server_identity = g_tls_client_connection_get_server_identity(this : TlsClientConnection*) : LibGio::SocketConnectable*
  fun tls_client_connection_get_use_ssl3 = g_tls_client_connection_get_use_ssl3(this : TlsClientConnection*) : Bool
  fun tls_client_connection_get_validation_flags = g_tls_client_connection_get_validation_flags(this : TlsClientConnection*) : LibGio::TlsCertificateFlags
  fun tls_client_connection_set_server_identity = g_tls_client_connection_set_server_identity(this : TlsClientConnection*, identity : LibGio::SocketConnectable*) : Void
  fun tls_client_connection_set_use_ssl3 = g_tls_client_connection_set_use_ssl3(this : TlsClientConnection*, use_ssl3 : Bool) : Void
  fun tls_client_connection_set_validation_flags = g_tls_client_connection_set_validation_flags(this : TlsClientConnection*, flags : LibGio::TlsCertificateFlags) : Void

  struct TlsFileDatabase # interface
    g_iface : LibGObject::TypeInterface
    padding : Void*
  # Requires TlsDatabase
    # Property anchors : UInt8*
  end
  fun tls_file_database_new = g_tls_file_database_new(anchors : UInt8*, error : LibGLib::Error**) : LibGio::TlsFileDatabase*

  struct TlsServerConnection # interface
    g_iface : LibGObject::TypeInterface
  # Requires TlsConnection
    # Property authentication_mode : LibGio::TlsAuthenticationMode
  end
  fun tls_server_connection_new = g_tls_server_connection_new(base_io_stream : LibGio::IOStream*, certificate : LibGio::TlsCertificate*, error : LibGLib::Error**) : LibGio::TlsServerConnection*

  struct Volume # interface
    g_iface : LibGObject::TypeInterface
    changed : -> Void
    removed : -> Void
    get_name : -> Void
    get_icon : -> Void
    get_uuid : -> Void
    get_drive : -> Void
    get_mount : -> Void
    can_mount : -> Void
    can_eject : -> Void
    mount_fn : -> Void
    mount_finish : -> Void
    eject : -> Void
    eject_finish : -> Void
    get_identifier : -> Void
    enumerate_identifiers : -> Void
    should_automount : -> Void
    get_activation_root : -> Void
    eject_with_operation : -> Void
    eject_with_operation_finish : -> Void
    get_sort_key : -> Void
    get_symbolic_icon : -> Void
    # Signal changed
    # Signal removed
    # Virtual function can_eject
    # Virtual function can_mount
    # Virtual function changed
    # Virtual function eject
    # Virtual function eject_finish
    # Virtual function eject_with_operation
    # Virtual function eject_with_operation_finish
    # Virtual function enumerate_identifiers
    # Virtual function get_activation_root
    # Virtual function get_drive
    # Virtual function get_icon
    # Virtual function get_identifier
    # Virtual function get_mount
    # Virtual function get_name
    # Virtual function get_sort_key
    # Virtual function get_symbolic_icon
    # Virtual function get_uuid
    # Virtual function mount_finish
    # Virtual function mount_fn
    # Virtual function removed
    # Virtual function should_automount
  end
  fun volume_can_eject = g_volume_can_eject(this : Volume*) : Bool
  fun volume_can_mount = g_volume_can_mount(this : Volume*) : Bool
  fun volume_eject = g_volume_eject(this : Volume*, flags : LibGio::MountUnmountFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun volume_eject_finish = g_volume_eject_finish(this : Volume*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun volume_eject_with_operation = g_volume_eject_with_operation(this : Volume*, flags : LibGio::MountUnmountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun volume_eject_with_operation_finish = g_volume_eject_with_operation_finish(this : Volume*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun volume_enumerate_identifiers = g_volume_enumerate_identifiers(this : Volume*) : UInt8**
  fun volume_get_activation_root = g_volume_get_activation_root(this : Volume*) : LibGio::File*
  fun volume_get_drive = g_volume_get_drive(this : Volume*) : LibGio::Drive*
  fun volume_get_icon = g_volume_get_icon(this : Volume*) : LibGio::Icon*
  fun volume_get_identifier = g_volume_get_identifier(this : Volume*, kind : UInt8*) : UInt8*
  fun volume_get_mount = g_volume_get_mount(this : Volume*) : LibGio::Mount*
  fun volume_get_name = g_volume_get_name(this : Volume*) : UInt8*
  fun volume_get_sort_key = g_volume_get_sort_key(this : Volume*) : UInt8*
  fun volume_get_symbolic_icon = g_volume_get_symbolic_icon(this : Volume*) : LibGio::Icon*
  fun volume_get_uuid = g_volume_get_uuid(this : Volume*) : UInt8*
  fun volume_mount = g_volume_mount(this : Volume*, flags : LibGio::MountMountFlags, mount_operation : LibGio::MountOperation*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun volume_mount_finish = g_volume_mount_finish(this : Volume*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun volume_should_automount = g_volume_should_automount(this : Volume*) : Bool


  ###########################################
  ##    Structs
  ###########################################

  struct ActionEntry # struct
    name : UInt8*
    activate : -> Void
    parameter_type : UInt8*
    state : UInt8*
    change_state : -> Void
    padding : UInt64
  end

  struct AppLaunchContextPrivate # struct
    _data : UInt8[0]
  end

  struct ApplicationCommandLinePrivate # struct
    _data : UInt8[0]
  end

  struct ApplicationPrivate # struct
    _data : UInt8[0]
  end

  struct BufferedInputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct BufferedOutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct CancellablePrivate # struct
    _data : UInt8[0]
  end

  struct ConverterInputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct ConverterOutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct DBusAnnotationInfo # struct
    ref_count : Int32
    key : UInt8*
    value : UInt8*
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_annotation_info_ref = g_dbus_annotation_info_ref(this : DBusAnnotationInfo*) : LibGio::DBusAnnotationInfo*
  fun d_bus_annotation_info_unref = g_dbus_annotation_info_unref(this : DBusAnnotationInfo*) : Void
  fun d_bus_annotation_info_lookup = g_dbus_annotation_info_lookup(annotations : LibGio::DBusAnnotationInfo**, name : UInt8*) : UInt8*

  struct DBusArgInfo # struct
    ref_count : Int32
    name : UInt8*
    signature : UInt8*
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_arg_info_ref = g_dbus_arg_info_ref(this : DBusArgInfo*) : LibGio::DBusArgInfo*
  fun d_bus_arg_info_unref = g_dbus_arg_info_unref(this : DBusArgInfo*) : Void

  struct DBusErrorEntry # struct
    error_code : Int32
    dbus_error_name : UInt8*
  end

  struct DBusInterfaceInfo # struct
    ref_count : Int32
    name : UInt8*
    methods : LibGio::DBusMethodInfo**
    signals : LibGio::DBusSignalInfo**
    properties : LibGio::DBusPropertyInfo**
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_interface_info_cache_build = g_dbus_interface_info_cache_build(this : DBusInterfaceInfo*) : Void
  fun d_bus_interface_info_cache_release = g_dbus_interface_info_cache_release(this : DBusInterfaceInfo*) : Void
  fun d_bus_interface_info_generate_xml = g_dbus_interface_info_generate_xml(this : DBusInterfaceInfo*, indent : UInt32, string_builder : LibGLib::String*) : Void
  fun d_bus_interface_info_lookup_method = g_dbus_interface_info_lookup_method(this : DBusInterfaceInfo*, name : UInt8*) : LibGio::DBusMethodInfo*
  fun d_bus_interface_info_lookup_property = g_dbus_interface_info_lookup_property(this : DBusInterfaceInfo*, name : UInt8*) : LibGio::DBusPropertyInfo*
  fun d_bus_interface_info_lookup_signal = g_dbus_interface_info_lookup_signal(this : DBusInterfaceInfo*, name : UInt8*) : LibGio::DBusSignalInfo*
  fun d_bus_interface_info_ref = g_dbus_interface_info_ref(this : DBusInterfaceInfo*) : LibGio::DBusInterfaceInfo*
  fun d_bus_interface_info_unref = g_dbus_interface_info_unref(this : DBusInterfaceInfo*) : Void

  struct DBusInterfaceSkeletonPrivate # struct
    _data : UInt8[0]
  end

  struct DBusInterfaceVTable # struct
    method_call : LibGio::DBusInterfaceMethodCallFunc
    get_property : LibGio::DBusInterfaceGetPropertyFunc
    set_property : LibGio::DBusInterfaceSetPropertyFunc
    padding : Void*
  end

  struct DBusMethodInfo # struct
    ref_count : Int32
    name : UInt8*
    in_args : LibGio::DBusArgInfo**
    out_args : LibGio::DBusArgInfo**
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_method_info_ref = g_dbus_method_info_ref(this : DBusMethodInfo*) : LibGio::DBusMethodInfo*
  fun d_bus_method_info_unref = g_dbus_method_info_unref(this : DBusMethodInfo*) : Void

  struct DBusNodeInfo # struct
    ref_count : Int32
    path : UInt8*
    interfaces : LibGio::DBusInterfaceInfo**
    nodes : LibGio::DBusNodeInfo**
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_node_info_new_for_xml = g_dbus_node_info_new_for_xml(xml_data : UInt8*, error : LibGLib::Error**) : LibGio::DBusNodeInfo*
  fun d_bus_node_info_generate_xml = g_dbus_node_info_generate_xml(this : DBusNodeInfo*, indent : UInt32, string_builder : LibGLib::String*) : Void
  fun d_bus_node_info_lookup_interface = g_dbus_node_info_lookup_interface(this : DBusNodeInfo*, name : UInt8*) : LibGio::DBusInterfaceInfo*
  fun d_bus_node_info_ref = g_dbus_node_info_ref(this : DBusNodeInfo*) : LibGio::DBusNodeInfo*
  fun d_bus_node_info_unref = g_dbus_node_info_unref(this : DBusNodeInfo*) : Void

  struct DBusObjectManagerClientPrivate # struct
    _data : UInt8[0]
  end

  struct DBusObjectManagerServerPrivate # struct
    _data : UInt8[0]
  end

  struct DBusObjectProxyPrivate # struct
    _data : UInt8[0]
  end

  struct DBusObjectSkeletonPrivate # struct
    _data : UInt8[0]
  end

  struct DBusPropertyInfo # struct
    ref_count : Int32
    name : UInt8*
    signature : UInt8*
    flags : LibGio::DBusPropertyInfoFlags
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_property_info_ref = g_dbus_property_info_ref(this : DBusPropertyInfo*) : LibGio::DBusPropertyInfo*
  fun d_bus_property_info_unref = g_dbus_property_info_unref(this : DBusPropertyInfo*) : Void

  struct DBusProxyPrivate # struct
    _data : UInt8[0]
  end

  struct DBusSignalInfo # struct
    ref_count : Int32
    name : UInt8*
    args : LibGio::DBusArgInfo**
    annotations : LibGio::DBusAnnotationInfo**
  end
  fun d_bus_signal_info_ref = g_dbus_signal_info_ref(this : DBusSignalInfo*) : LibGio::DBusSignalInfo*
  fun d_bus_signal_info_unref = g_dbus_signal_info_unref(this : DBusSignalInfo*) : Void

  struct DBusSubtreeVTable # struct
    enumerate : Void*
    introspect : LibGio::DBusSubtreeIntrospectFunc
    dispatch : LibGio::DBusSubtreeDispatchFunc
    padding : Void*
  end

  struct DataInputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct DataOutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct EmblemedIconPrivate # struct
    _data : UInt8[0]
  end

  struct FileAttributeInfo # struct
    name : UInt8*
    type : LibGio::FileAttributeType
    flags : LibGio::FileAttributeInfoFlags
  end

  struct FileAttributeInfoList # struct
    infos : LibGio::FileAttributeInfo*
    n_infos : Int32
  end
  fun file_attribute_info_list_new = g_file_attribute_info_list_new() : LibGio::FileAttributeInfoList*
  fun file_attribute_info_list_add = g_file_attribute_info_list_add(this : FileAttributeInfoList*, name : UInt8*, type : LibGio::FileAttributeType, flags : LibGio::FileAttributeInfoFlags) : Void
  fun file_attribute_info_list_dup = g_file_attribute_info_list_dup(this : FileAttributeInfoList*) : LibGio::FileAttributeInfoList*
  fun file_attribute_info_list_lookup = g_file_attribute_info_list_lookup(this : FileAttributeInfoList*, name : UInt8*) : LibGio::FileAttributeInfo*
  fun file_attribute_info_list_ref = g_file_attribute_info_list_ref(this : FileAttributeInfoList*) : LibGio::FileAttributeInfoList*
  fun file_attribute_info_list_unref = g_file_attribute_info_list_unref(this : FileAttributeInfoList*) : Void

  struct FileAttributeMatcher # struct
    _data : UInt8[0]
  end
  fun file_attribute_matcher_new = g_file_attribute_matcher_new(attributes : UInt8*) : LibGio::FileAttributeMatcher*
  fun file_attribute_matcher_enumerate_namespace = g_file_attribute_matcher_enumerate_namespace(this : FileAttributeMatcher*, ns : UInt8*) : Bool
  fun file_attribute_matcher_enumerate_next = g_file_attribute_matcher_enumerate_next(this : FileAttributeMatcher*) : UInt8*
  fun file_attribute_matcher_matches = g_file_attribute_matcher_matches(this : FileAttributeMatcher*, attribute : UInt8*) : Bool
  fun file_attribute_matcher_matches_only = g_file_attribute_matcher_matches_only(this : FileAttributeMatcher*, attribute : UInt8*) : Bool
  fun file_attribute_matcher_ref = g_file_attribute_matcher_ref(this : FileAttributeMatcher*) : LibGio::FileAttributeMatcher*
  fun file_attribute_matcher_subtract = g_file_attribute_matcher_subtract(this : FileAttributeMatcher*, subtract : LibGio::FileAttributeMatcher*) : LibGio::FileAttributeMatcher*
  fun file_attribute_matcher_to_string = g_file_attribute_matcher_to_string(this : FileAttributeMatcher*) : UInt8*
  fun file_attribute_matcher_unref = g_file_attribute_matcher_unref(this : FileAttributeMatcher*) : Void

  struct FileEnumeratorPrivate # struct
    _data : UInt8[0]
  end

  struct FileIOStreamPrivate # struct
    _data : UInt8[0]
  end

  struct FileInputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct FileMonitorPrivate # struct
    _data : UInt8[0]
  end

  struct FileOutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct IOExtension # struct
    _data : UInt8[0]
  end
  fun i_o_extension_get_name = g_io_extension_get_name(this : IOExtension*) : UInt8*
  fun i_o_extension_get_priority = g_io_extension_get_priority(this : IOExtension*) : Int32
  fun i_o_extension_get_type = g_io_extension_get_type(this : IOExtension*) : UInt64

  struct IOExtensionPoint # struct
    _data : UInt8[0]
  end
  fun i_o_extension_point_get_extension_by_name = g_io_extension_point_get_extension_by_name(this : IOExtensionPoint*, name : UInt8*) : LibGio::IOExtension*
  fun i_o_extension_point_get_extensions = g_io_extension_point_get_extensions(this : IOExtensionPoint*) : Void**
  fun i_o_extension_point_get_required_type = g_io_extension_point_get_required_type(this : IOExtensionPoint*) : UInt64
  fun i_o_extension_point_set_required_type = g_io_extension_point_set_required_type(this : IOExtensionPoint*, type : UInt64) : Void
  fun i_o_extension_point_implement = g_io_extension_point_implement(extension_point_name : UInt8*, type : UInt64, extension_name : UInt8*, priority : Int32) : LibGio::IOExtension*
  fun i_o_extension_point_lookup = g_io_extension_point_lookup(name : UInt8*) : LibGio::IOExtensionPoint*
  fun i_o_extension_point_register = g_io_extension_point_register(name : UInt8*) : LibGio::IOExtensionPoint*

  struct IOModuleScope # struct
    _data : UInt8[0]
  end
  fun i_o_module_scope_block = g_io_module_scope_block(this : IOModuleScope*, basename : UInt8*) : Void
  fun i_o_module_scope_free = g_io_module_scope_free(this : IOModuleScope*) : Void

  struct IOSchedulerJob # struct
    _data : UInt8[0]
  end
  fun i_o_scheduler_job_send_to_mainloop = g_io_scheduler_job_send_to_mainloop(this : IOSchedulerJob*, func : LibGLib::SourceFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : Bool
  fun i_o_scheduler_job_send_to_mainloop_async = g_io_scheduler_job_send_to_mainloop_async(this : IOSchedulerJob*, func : LibGLib::SourceFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : Void

  struct IOStreamAdapter # struct
    _data : UInt8[0]
  end

  struct IOStreamPrivate # struct
    _data : UInt8[0]
  end

  struct InetAddressMaskPrivate # struct
    _data : UInt8[0]
  end

  struct InetAddressPrivate # struct
    _data : UInt8[0]
  end

  struct InetSocketAddressPrivate # struct
    _data : UInt8[0]
  end

  struct InputMessage # struct
    address : LibGio::SocketAddress*
    vectors : LibGio::InputVector*
    num_vectors : UInt32
    bytes_received : UInt64
    flags : Int32
    control_messages : LibGio::SocketControlMessage**
    num_control_messages : UInt32*
  end

  struct InputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct InputVector # struct
    buffer : Void*
    size : UInt64
  end

  struct MemoryInputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct MemoryOutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct MenuAttributeIterPrivate # struct
    _data : UInt8[0]
  end

  struct MenuLinkIterPrivate # struct
    _data : UInt8[0]
  end

  struct MenuModelPrivate # struct
    _data : UInt8[0]
  end

  struct MountOperationPrivate # struct
    _data : UInt8[0]
  end

  struct NativeSocketAddress # struct
    _data : UInt8[0]
  end

  struct NetworkAddressPrivate # struct
    _data : UInt8[0]
  end

  struct NetworkServicePrivate # struct
    _data : UInt8[0]
  end

  struct OutputMessage # struct
    address : LibGio::SocketAddress*
    vectors : LibGio::OutputVector*
    num_vectors : UInt32
    bytes_sent : UInt32
    control_messages : LibGio::SocketControlMessage**
    num_control_messages : UInt32
  end

  struct OutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct OutputVector # struct
    buffer : Void*
    size : UInt64
  end

  struct PermissionPrivate # struct
    _data : UInt8[0]
  end

  struct ProxyAddressEnumeratorPrivate # struct
    _data : UInt8[0]
  end

  struct ProxyAddressPrivate # struct
    _data : UInt8[0]
  end

  struct ResolverPrivate # struct
    _data : UInt8[0]
  end

  struct Resource # struct
    _data : UInt8[0]
  end
  fun resource_new_from_data = g_resource_new_from_data(data : LibGLib::Bytes*, error : LibGLib::Error**) : LibGio::Resource*
  fun resource_register = g_resources_register(this : Resource*) : Void
  fun resource_unregister = g_resources_unregister(this : Resource*) : Void
  fun resource_enumerate_children = g_resource_enumerate_children(this : Resource*, path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, error : LibGLib::Error**) : UInt8**
  fun resource_get_info = g_resource_get_info(this : Resource*, path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, size : UInt64*, flags : UInt32*, error : LibGLib::Error**) : Bool
  fun resource_lookup_data = g_resource_lookup_data(this : Resource*, path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, error : LibGLib::Error**) : LibGLib::Bytes*
  fun resource_open_stream = g_resource_open_stream(this : Resource*, path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, error : LibGLib::Error**) : LibGio::InputStream*
  fun resource_ref = g_resource_ref(this : Resource*) : LibGio::Resource*
  fun resource_unref = g_resource_unref(this : Resource*) : Void
  fun resource_load = g_resource_load(filename : UInt8*, error : LibGLib::Error**) : LibGio::Resource*

  struct SettingsBackendPrivate # struct
    _data : UInt8[0]
  end

  struct SettingsPrivate # struct
    _data : UInt8[0]
  end

  struct SettingsSchema # struct
    _data : UInt8[0]
  end
  fun settings_schema_get_id = g_settings_schema_get_id(this : SettingsSchema*) : UInt8*
  fun settings_schema_get_key = g_settings_schema_get_key(this : SettingsSchema*, name : UInt8*) : LibGio::SettingsSchemaKey*
  fun settings_schema_get_path = g_settings_schema_get_path(this : SettingsSchema*) : UInt8*
  fun settings_schema_has_key = g_settings_schema_has_key(this : SettingsSchema*, name : UInt8*) : Bool
  fun settings_schema_list_children = g_settings_schema_list_children(this : SettingsSchema*) : UInt8**
  fun settings_schema_list_keys = g_settings_schema_list_keys(this : SettingsSchema*) : UInt8**
  fun settings_schema_ref = g_settings_schema_ref(this : SettingsSchema*) : LibGio::SettingsSchema*
  fun settings_schema_unref = g_settings_schema_unref(this : SettingsSchema*) : Void

  struct SettingsSchemaKey # struct
    _data : UInt8[0]
  end
  fun settings_schema_key_get_default_value = g_settings_schema_key_get_default_value(this : SettingsSchemaKey*) : LibGLib::Variant*
  fun settings_schema_key_get_description = g_settings_schema_key_get_description(this : SettingsSchemaKey*) : UInt8*
  fun settings_schema_key_get_name = g_settings_schema_key_get_name(this : SettingsSchemaKey*) : UInt8*
  fun settings_schema_key_get_range = g_settings_schema_key_get_range(this : SettingsSchemaKey*) : LibGLib::Variant*
  fun settings_schema_key_get_summary = g_settings_schema_key_get_summary(this : SettingsSchemaKey*) : UInt8*
  fun settings_schema_key_get_value_type = g_settings_schema_key_get_value_type(this : SettingsSchemaKey*) : LibGLib::VariantType*
  fun settings_schema_key_range_check = g_settings_schema_key_range_check(this : SettingsSchemaKey*, value : LibGLib::Variant*) : Bool
  fun settings_schema_key_ref = g_settings_schema_key_ref(this : SettingsSchemaKey*) : LibGio::SettingsSchemaKey*
  fun settings_schema_key_unref = g_settings_schema_key_unref(this : SettingsSchemaKey*) : Void

  struct SettingsSchemaSource # struct
    _data : UInt8[0]
  end
  fun settings_schema_source_new_from_directory = g_settings_schema_source_new_from_directory(directory : UInt8*, parent : LibGio::SettingsSchemaSource*, trusted : Bool, error : LibGLib::Error**) : LibGio::SettingsSchemaSource*
  fun settings_schema_source_list_schemas = g_settings_schema_source_list_schemas(this : SettingsSchemaSource*, recursive : Bool, non_relocatable : UInt8***, relocatable : UInt8***) : Void
  fun settings_schema_source_lookup = g_settings_schema_source_lookup(this : SettingsSchemaSource*, schema_id : UInt8*, recursive : Bool) : LibGio::SettingsSchema*
  fun settings_schema_source_ref = g_settings_schema_source_ref(this : SettingsSchemaSource*) : LibGio::SettingsSchemaSource*
  fun settings_schema_source_unref = g_settings_schema_source_unref(this : SettingsSchemaSource*) : Void
  fun settings_schema_source_get_default = g_settings_schema_source_get_default() : LibGio::SettingsSchemaSource*

  struct SimpleActionGroupPrivate # struct
    _data : UInt8[0]
  end

  struct SimpleProxyResolverPrivate # struct
    _data : UInt8[0]
  end

  struct SocketClientPrivate # struct
    _data : UInt8[0]
  end

  struct SocketConnectionPrivate # struct
    _data : UInt8[0]
  end

  struct SocketControlMessagePrivate # struct
    _data : UInt8[0]
  end

  struct SocketListenerPrivate # struct
    _data : UInt8[0]
  end

  struct SocketPrivate # struct
    _data : UInt8[0]
  end

  struct SocketServicePrivate # struct
    _data : UInt8[0]
  end

  struct SrvTarget # struct
    _data : UInt8[0]
  end
  fun srv_target_new = g_srv_target_new(hostname : UInt8*, port : UInt16, priority : UInt16, weight : UInt16) : LibGio::SrvTarget*
  fun srv_target_copy = g_srv_target_copy(this : SrvTarget*) : LibGio::SrvTarget*
  fun srv_target_free = g_srv_target_free(this : SrvTarget*) : Void
  fun srv_target_get_hostname = g_srv_target_get_hostname(this : SrvTarget*) : UInt8*
  fun srv_target_get_port = g_srv_target_get_port(this : SrvTarget*) : UInt16
  fun srv_target_get_priority = g_srv_target_get_priority(this : SrvTarget*) : UInt16
  fun srv_target_get_weight = g_srv_target_get_weight(this : SrvTarget*) : UInt16

  struct StaticResource # struct
    data : UInt8*
    data_len : UInt64
    resource : LibGio::Resource*
    next_ : LibGio::StaticResource*
    padding : Void*
  end
  fun static_resource_fini = g_static_resource_fini(this : StaticResource*) : Void
  fun static_resource_get_resource = g_static_resource_get_resource(this : StaticResource*) : LibGio::Resource*
  fun static_resource_init = g_static_resource_init(this : StaticResource*) : Void

  struct TcpConnectionPrivate # struct
    _data : UInt8[0]
  end

  struct TcpWrapperConnectionPrivate # struct
    _data : UInt8[0]
  end

  struct ThreadedSocketServicePrivate # struct
    _data : UInt8[0]
  end

  struct TlsCertificatePrivate # struct
    _data : UInt8[0]
  end

  struct TlsConnectionPrivate # struct
    _data : UInt8[0]
  end

  struct TlsDatabasePrivate # struct
    _data : UInt8[0]
  end

  struct TlsInteractionPrivate # struct
    _data : UInt8[0]
  end

  struct TlsPasswordPrivate # struct
    _data : UInt8[0]
  end

  struct UnixConnectionPrivate # struct
    _data : UInt8[0]
  end

  struct UnixCredentialsMessagePrivate # struct
    _data : UInt8[0]
  end

  struct UnixFDListPrivate # struct
    _data : UInt8[0]
  end

  struct UnixFDMessagePrivate # struct
    _data : UInt8[0]
  end

  struct UnixInputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct UnixMountEntry # struct
    _data : UInt8[0]
  end

  struct UnixMountPoint # struct
    _data : UInt8[0]
  end
  fun unix_mount_point_compare = g_unix_mount_point_compare(this : UnixMountPoint*, mount2 : LibGio::UnixMountPoint*) : Int32
  fun unix_mount_point_copy = g_unix_mount_point_copy(this : UnixMountPoint*) : LibGio::UnixMountPoint*
  fun unix_mount_point_free = g_unix_mount_point_free(this : UnixMountPoint*) : Void
  fun unix_mount_point_get_device_path = g_unix_mount_point_get_device_path(this : UnixMountPoint*) : UInt8*
  fun unix_mount_point_get_fs_type = g_unix_mount_point_get_fs_type(this : UnixMountPoint*) : UInt8*
  fun unix_mount_point_get_mount_path = g_unix_mount_point_get_mount_path(this : UnixMountPoint*) : UInt8*
  fun unix_mount_point_get_options = g_unix_mount_point_get_options(this : UnixMountPoint*) : UInt8*
  fun unix_mount_point_guess_can_eject = g_unix_mount_point_guess_can_eject(this : UnixMountPoint*) : Bool
  fun unix_mount_point_guess_icon = g_unix_mount_point_guess_icon(this : UnixMountPoint*) : LibGio::Icon*
  fun unix_mount_point_guess_name = g_unix_mount_point_guess_name(this : UnixMountPoint*) : UInt8*
  fun unix_mount_point_guess_symbolic_icon = g_unix_mount_point_guess_symbolic_icon(this : UnixMountPoint*) : LibGio::Icon*
  fun unix_mount_point_is_loopback = g_unix_mount_point_is_loopback(this : UnixMountPoint*) : Bool
  fun unix_mount_point_is_readonly = g_unix_mount_point_is_readonly(this : UnixMountPoint*) : Bool
  fun unix_mount_point_is_user_mountable = g_unix_mount_point_is_user_mountable(this : UnixMountPoint*) : Bool

  struct UnixOutputStreamPrivate # struct
    _data : UInt8[0]
  end

  struct UnixSocketAddressPrivate # struct
    _data : UInt8[0]
  end


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum AppInfoCreateFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    NEEDS_TERMINAL = 1
    SUPPORTS_URIS = 2
    SUPPORTS_STARTUP_NOTIFICATION = 4
  end

  @[Flags]
  enum ApplicationFlags : UInt32
    ZERO_NONE = 0
    FLAGS_NONE = 0
    IS_SERVICE = 1
    IS_LAUNCHER = 2
    HANDLES_OPEN = 4
    HANDLES_COMMAND_LINE = 8
    SEND_ENVIRONMENT = 16
    NON_UNIQUE = 32
    CAN_OVERRIDE_APP_ID = 64
  end

  @[Flags]
  enum AskPasswordFlags : UInt32
    ZERO_NONE = 0
    NEED_PASSWORD = 1
    NEED_USERNAME = 2
    NEED_DOMAIN = 4
    SAVING_SUPPORTED = 8
    ANONYMOUS_SUPPORTED = 16
    TCRYPT = 32
  end

  @[Flags]
  enum BusNameOwnerFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    ALLOW_REPLACEMENT = 1
    REPLACE = 2
    DO_NOT_QUEUE = 4
  end

  @[Flags]
  enum BusNameWatcherFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    AUTO_START = 1
  end

  @[Flags]
  enum ConverterFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    INPUT_AT_END = 1
    FLUSH = 2
  end

  @[Flags]
  enum DBusCallFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    NO_AUTO_START = 1
    ALLOW_INTERACTIVE_AUTHORIZATION = 2
  end

  @[Flags]
  enum DBusCapabilityFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    UNIX_FD_PASSING = 1
  end

  @[Flags]
  enum DBusConnectionFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    AUTHENTICATION_CLIENT = 1
    AUTHENTICATION_SERVER = 2
    AUTHENTICATION_ALLOW_ANONYMOUS = 4
    MESSAGE_BUS_CONNECTION = 8
    DELAY_MESSAGE_PROCESSING = 16
  end

  @[Flags]
  enum DBusInterfaceSkeletonFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1
  end

  @[Flags]
  enum DBusMessageFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    NO_REPLY_EXPECTED = 1
    NO_AUTO_START = 2
    ALLOW_INTERACTIVE_AUTHORIZATION = 4
  end

  @[Flags]
  enum DBusObjectManagerClientFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    DO_NOT_AUTO_START = 1
  end

  @[Flags]
  enum DBusPropertyInfoFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    READABLE = 1
    WRITABLE = 2
  end

  @[Flags]
  enum DBusProxyFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    DO_NOT_LOAD_PROPERTIES = 1
    DO_NOT_CONNECT_SIGNALS = 2
    DO_NOT_AUTO_START = 4
    GET_INVALIDATED_PROPERTIES = 8
    DO_NOT_AUTO_START_AT_CONSTRUCTION = 16
  end

  @[Flags]
  enum DBusSendMessageFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    PRESERVE_SERIAL = 1
  end

  @[Flags]
  enum DBusServerFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    RUN_IN_THREAD = 1
    AUTHENTICATION_ALLOW_ANONYMOUS = 2
  end

  @[Flags]
  enum DBusSignalFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    NO_MATCH_RULE = 1
    MATCH_ARG0_NAMESPACE = 2
    MATCH_ARG0_PATH = 4
  end

  @[Flags]
  enum DBusSubtreeFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    DISPATCH_TO_UNENUMERATED_NODES = 1
  end

  @[Flags]
  enum DriveStartFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
  end

  @[Flags]
  enum FileAttributeInfoFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    COPY_WITH_FILE = 1
    COPY_WHEN_MOVED = 2
  end

  @[Flags]
  enum FileCopyFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    OVERWRITE = 1
    BACKUP = 2
    NOFOLLOW_SYMLINKS = 4
    ALL_METADATA = 8
    NO_FALLBACK_FOR_MOVE = 16
    TARGET_DEFAULT_PERMS = 32
  end

  @[Flags]
  enum FileCreateFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    PRIVATE = 1
    REPLACE_DESTINATION = 2
  end

  @[Flags]
  enum FileMeasureFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    REPORT_ANY_ERROR = 2
    APPARENT_SIZE = 4
    NO_XDEV = 8
  end

  @[Flags]
  enum FileMonitorFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    WATCH_MOUNTS = 1
    SEND_MOVED = 2
    WATCH_HARD_LINKS = 4
    WATCH_MOVES = 8
  end

  @[Flags]
  enum FileQueryInfoFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    NOFOLLOW_SYMLINKS = 1
  end

  @[Flags]
  enum IOStreamSpliceFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    CLOSE_STREAM1 = 1
    CLOSE_STREAM2 = 2
    WAIT_FOR_BOTH = 4
  end

  @[Flags]
  enum MountMountFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
  end

  @[Flags]
  enum MountUnmountFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    FORCE = 1
  end

  @[Flags]
  enum OutputStreamSpliceFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    CLOSE_SOURCE = 1
    CLOSE_TARGET = 2
  end

  @[Flags]
  enum ResourceFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    COMPRESSED = 1
  end

  @[Flags]
  enum ResourceLookupFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
  end

  @[Flags]
  enum SettingsBindFlags : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    GET = 1
    SET = 2
    NO_SENSITIVITY = 4
    GET_NO_CHANGES = 8
    INVERT_BOOLEAN = 16
  end

  @[Flags]
  enum SocketMsgFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    OOB = 1
    PEEK = 2
    DONTROUTE = 4
  end

  @[Flags]
  enum SubprocessFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    STDIN_PIPE = 1
    STDIN_INHERIT = 2
    STDOUT_PIPE = 4
    STDOUT_SILENCE = 8
    STDERR_PIPE = 16
    STDERR_SILENCE = 32
    STDERR_MERGE = 64
    INHERIT_FDS = 128
  end

  @[Flags]
  enum TestDBusFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
  end

  @[Flags]
  enum TlsCertificateFlags : UInt32
    ZERO_NONE = 0
    UNKNOWN_CA = 1
    BAD_IDENTITY = 2
    NOT_ACTIVATED = 4
    EXPIRED = 8
    REVOKED = 16
    INSECURE = 32
    GENERIC_ERROR = 64
    VALIDATE_ALL = 127
  end

  @[Flags]
  enum TlsDatabaseVerifyFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
  end

  @[Flags]
  enum TlsPasswordFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    RETRY = 2
    MANY_TRIES = 4
    FINAL_TRY = 8
  end


  ###########################################
  ##    Objects
  ###########################################

  struct AppInfoMonitor # object
    _data : UInt8[0]
    # Signal changed
  end
  fun app_info_monitor_get = g_app_info_monitor_get() : LibGio::AppInfoMonitor*

  struct AppLaunchContext # object
    parent_instance : LibGObject::Object*
    priv : LibGio::AppLaunchContextPrivate*
    # Signal launch-failed
    # Signal launched
    # Virtual function get_display
    # Virtual function get_startup_notify_id
    # Virtual function launch_failed
    # Virtual function launched
  end
  fun app_launch_context_new = g_app_launch_context_new() : LibGio::AppLaunchContext*
  fun app_launch_context_get_display = g_app_launch_context_get_display(this : AppLaunchContext*, info : LibGio::AppInfo*, files : Void**) : UInt8*
  fun app_launch_context_get_environment = g_app_launch_context_get_environment(this : AppLaunchContext*) : UInt8**
  fun app_launch_context_get_startup_notify_id = g_app_launch_context_get_startup_notify_id(this : AppLaunchContext*, info : LibGio::AppInfo*, files : Void**) : UInt8*
  fun app_launch_context_launch_failed = g_app_launch_context_launch_failed(this : AppLaunchContext*, startup_notify_id : UInt8*) : Void
  fun app_launch_context_setenv = g_app_launch_context_setenv(this : AppLaunchContext*, variable : UInt8*, value : UInt8*) : Void
  fun app_launch_context_unsetenv = g_app_launch_context_unsetenv(this : AppLaunchContext*, variable : UInt8*) : Void

  struct Application # object
    parent_instance : LibGObject::Object*
    priv : LibGio::ApplicationPrivate*
    # Signal activate
    # Signal command-line
    # Signal handle-local-options
    # Signal open
    # Signal shutdown
    # Signal startup
    # Virtual function activate
    # Virtual function add_platform_data
    # Virtual function after_emit
    # Virtual function before_emit
    # Virtual function command_line
    # Virtual function dbus_register
    # Virtual function dbus_unregister
    # Virtual function handle_local_options
    # Virtual function local_command_line
    # Virtual function open
    # Virtual function quit_mainloop
    # Virtual function run_mainloop
    # Virtual function shutdown
    # Virtual function startup
    # Property action_group : LibGio::ActionGroup
    # Property application_id : UInt8*
    # Property flags : LibGio::ApplicationFlags
    # Property inactivity_timeout : UInt32
    # Property is_busy : Bool
    # Property is_registered : Bool
    # Property is_remote : Bool
    # Property resource_base_path : UInt8*
  end
  fun application_new = g_application_new(application_id : UInt8*, flags : LibGio::ApplicationFlags) : LibGio::Application*
  fun application_get_default = g_application_get_default() : LibGio::Application*
  fun application_id_is_valid = g_application_id_is_valid(application_id : UInt8*) : Bool
  fun application_activate = g_application_activate(this : Application*) : Void
  fun application_add_main_option = g_application_add_main_option(this : Application*, long_name : UInt8*, short_name : Int8, flags : LibGLib::OptionFlags, arg : LibGLib::OptionArg, description : UInt8*, arg_description : UInt8*) : Void
  fun application_add_main_option_entries = g_application_add_main_option_entries(this : Application*, entries : LibGLib::OptionEntry*) : Void
  fun application_add_option_group = g_application_add_option_group(this : Application*, group : LibGLib::OptionGroup*) : Void
  fun application_bind_busy_property = g_application_bind_busy_property(this : Application*, object : LibGObject::Object*, property : UInt8*) : Void
  fun application_get_application_id = g_application_get_application_id(this : Application*) : UInt8*
  fun application_get_dbus_connection = g_application_get_dbus_connection(this : Application*) : LibGio::DBusConnection*
  fun application_get_dbus_object_path = g_application_get_dbus_object_path(this : Application*) : UInt8*
  fun application_get_flags = g_application_get_flags(this : Application*) : LibGio::ApplicationFlags
  fun application_get_inactivity_timeout = g_application_get_inactivity_timeout(this : Application*) : UInt32
  fun application_get_is_busy = g_application_get_is_busy(this : Application*) : Bool
  fun application_get_is_registered = g_application_get_is_registered(this : Application*) : Bool
  fun application_get_is_remote = g_application_get_is_remote(this : Application*) : Bool
  fun application_get_resource_base_path = g_application_get_resource_base_path(this : Application*) : UInt8*
  fun application_hold = g_application_hold(this : Application*) : Void
  fun application_mark_busy = g_application_mark_busy(this : Application*) : Void
  fun application_open = g_application_open(this : Application*, files : LibGio::File**, n_files : Int32, hint : UInt8*) : Void
  fun application_quit = g_application_quit(this : Application*) : Void
  fun application_register = g_application_register(this : Application*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun application_release = g_application_release(this : Application*) : Void
  fun application_run = g_application_run(this : Application*, argc : Int32, argv : UInt8**) : Int32
  fun application_send_notification = g_application_send_notification(this : Application*, id : UInt8*, notification : LibGio::Notification*) : Void
  fun application_set_action_group = g_application_set_action_group(this : Application*, action_group : LibGio::ActionGroup*) : Void
  fun application_set_application_id = g_application_set_application_id(this : Application*, application_id : UInt8*) : Void
  fun application_set_default = g_application_set_default(this : Application*) : Void
  fun application_set_flags = g_application_set_flags(this : Application*, flags : LibGio::ApplicationFlags) : Void
  fun application_set_inactivity_timeout = g_application_set_inactivity_timeout(this : Application*, inactivity_timeout : UInt32) : Void
  fun application_set_option_context_description = g_application_set_option_context_description(this : Application*, description : UInt8*) : Void
  fun application_set_option_context_parameter_string = g_application_set_option_context_parameter_string(this : Application*, parameter_string : UInt8*) : Void
  fun application_set_option_context_summary = g_application_set_option_context_summary(this : Application*, summary : UInt8*) : Void
  fun application_set_resource_base_path = g_application_set_resource_base_path(this : Application*, resource_path : UInt8*) : Void
  fun application_unbind_busy_property = g_application_unbind_busy_property(this : Application*, object : LibGObject::Object*, property : UInt8*) : Void
  fun application_unmark_busy = g_application_unmark_busy(this : Application*) : Void
  fun application_withdraw_notification = g_application_withdraw_notification(this : Application*, id : UInt8*) : Void

  struct ApplicationCommandLine # object
    parent_instance : LibGObject::Object*
    priv : LibGio::ApplicationCommandLinePrivate*
    # Virtual function get_stdin
    # Virtual function print_literal
    # Virtual function printerr_literal
    # Property arguments : LibGLib::Variant
    # Property is_remote : Bool
    # Property options : LibGLib::Variant
    # Property platform_data : LibGLib::Variant
  end
  fun application_command_line_create_file_for_arg = g_application_command_line_create_file_for_arg(this : ApplicationCommandLine*, arg : UInt8*) : LibGio::File*
  fun application_command_line_get_arguments = g_application_command_line_get_arguments(this : ApplicationCommandLine*, argc : Int32*) : UInt8**
  fun application_command_line_get_cwd = g_application_command_line_get_cwd(this : ApplicationCommandLine*) : UInt8*
  fun application_command_line_get_environ = g_application_command_line_get_environ(this : ApplicationCommandLine*) : UInt8**
  fun application_command_line_get_exit_status = g_application_command_line_get_exit_status(this : ApplicationCommandLine*) : Int32
  fun application_command_line_get_is_remote = g_application_command_line_get_is_remote(this : ApplicationCommandLine*) : Bool
  fun application_command_line_get_options_dict = g_application_command_line_get_options_dict(this : ApplicationCommandLine*) : LibGLib::VariantDict*
  fun application_command_line_get_platform_data = g_application_command_line_get_platform_data(this : ApplicationCommandLine*) : LibGLib::Variant*
  fun application_command_line_get_stdin = g_application_command_line_get_stdin(this : ApplicationCommandLine*) : LibGio::InputStream*
  fun application_command_line_getenv = g_application_command_line_getenv(this : ApplicationCommandLine*, name : UInt8*) : UInt8*
  fun application_command_line_set_exit_status = g_application_command_line_set_exit_status(this : ApplicationCommandLine*, exit_status : Int32) : Void

  struct BufferedInputStream # object
    parent_instance : LibGio::FilterInputStream*
    priv : LibGio::BufferedInputStreamPrivate*
    # Virtual function fill
    # Virtual function fill_async
    # Virtual function fill_finish
    # Property buffer_size : UInt32
  end
  fun buffered_input_stream_new = g_buffered_input_stream_new(base_stream : LibGio::InputStream*) : LibGio::InputStream*
  fun buffered_input_stream_new_sized = g_buffered_input_stream_new_sized(base_stream : LibGio::InputStream*, size : UInt64) : LibGio::InputStream*
  fun buffered_input_stream_fill = g_buffered_input_stream_fill(this : BufferedInputStream*, count : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun buffered_input_stream_fill_async = g_buffered_input_stream_fill_async(this : BufferedInputStream*, count : Int64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun buffered_input_stream_fill_finish = g_buffered_input_stream_fill_finish(this : BufferedInputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Int64
  fun buffered_input_stream_get_available = g_buffered_input_stream_get_available(this : BufferedInputStream*) : UInt64
  fun buffered_input_stream_get_buffer_size = g_buffered_input_stream_get_buffer_size(this : BufferedInputStream*) : UInt64
  fun buffered_input_stream_peek = g_buffered_input_stream_peek(this : BufferedInputStream*, buffer : UInt8*, offset : UInt64, count : UInt64) : UInt64
  fun buffered_input_stream_peek_buffer = g_buffered_input_stream_peek_buffer(this : BufferedInputStream*, count : UInt64*) : UInt8*
  fun buffered_input_stream_read_byte = g_buffered_input_stream_read_byte(this : BufferedInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32
  fun buffered_input_stream_set_buffer_size = g_buffered_input_stream_set_buffer_size(this : BufferedInputStream*, size : UInt64) : Void

  struct BufferedOutputStream # object
    parent_instance : LibGio::FilterOutputStream*
    priv : LibGio::BufferedOutputStreamPrivate*
    # Property auto_grow : Bool
    # Property buffer_size : UInt32
  end
  fun buffered_output_stream_new = g_buffered_output_stream_new(base_stream : LibGio::OutputStream*) : LibGio::OutputStream*
  fun buffered_output_stream_new_sized = g_buffered_output_stream_new_sized(base_stream : LibGio::OutputStream*, size : UInt64) : LibGio::OutputStream*
  fun buffered_output_stream_get_auto_grow = g_buffered_output_stream_get_auto_grow(this : BufferedOutputStream*) : Bool
  fun buffered_output_stream_get_buffer_size = g_buffered_output_stream_get_buffer_size(this : BufferedOutputStream*) : UInt64
  fun buffered_output_stream_set_auto_grow = g_buffered_output_stream_set_auto_grow(this : BufferedOutputStream*, auto_grow : Bool) : Void
  fun buffered_output_stream_set_buffer_size = g_buffered_output_stream_set_buffer_size(this : BufferedOutputStream*, size : UInt64) : Void

  struct BytesIcon # object
    _data : UInt8[0]
    # Property bytes : LibGLib::Bytes
  end
  fun bytes_icon_new = g_bytes_icon_new(bytes : LibGLib::Bytes*) : LibGio::BytesIcon*
  fun bytes_icon_get_bytes = g_bytes_icon_get_bytes(this : BytesIcon*) : LibGLib::Bytes*

  struct Cancellable # object
    parent_instance : LibGObject::Object*
    priv : LibGio::CancellablePrivate*
    # Signal cancelled
    # Virtual function cancelled
  end
  fun cancellable_new = g_cancellable_new() : LibGio::Cancellable*
  fun cancellable_get_current = g_cancellable_get_current() : LibGio::Cancellable*
  fun cancellable_cancel = g_cancellable_cancel(this : Cancellable*) : Void
  fun cancellable_connect = g_cancellable_connect(this : Cancellable*, callback : LibGObject::Callback, data : Void*, data_destroy_func : LibGLib::DestroyNotify) : UInt64
  fun cancellable_disconnect = g_cancellable_disconnect(this : Cancellable*, handler_id : UInt64) : Void
  fun cancellable_get_fd = g_cancellable_get_fd(this : Cancellable*) : Int32
  fun cancellable_is_cancelled = g_cancellable_is_cancelled(this : Cancellable*) : Bool
  fun cancellable_make_pollfd = g_cancellable_make_pollfd(this : Cancellable*, pollfd : LibGLib::PollFD*) : Bool
  fun cancellable_pop_current = g_cancellable_pop_current(this : Cancellable*) : Void
  fun cancellable_push_current = g_cancellable_push_current(this : Cancellable*) : Void
  fun cancellable_release_fd = g_cancellable_release_fd(this : Cancellable*) : Void
  fun cancellable_reset = g_cancellable_reset(this : Cancellable*) : Void
  fun cancellable_set_error_if_cancelled = g_cancellable_set_error_if_cancelled(this : Cancellable*, error : LibGLib::Error**) : Bool

  struct CharsetConverter # object
    _data : UInt8[0]
    # Property from_charset : UInt8*
    # Property to_charset : UInt8*
    # Property use_fallback : Bool
  end
  fun charset_converter_new = g_charset_converter_new(to_charset : UInt8*, from_charset : UInt8*, error : LibGLib::Error**) : LibGio::CharsetConverter*
  fun charset_converter_get_num_fallbacks = g_charset_converter_get_num_fallbacks(this : CharsetConverter*) : UInt32
  fun charset_converter_get_use_fallback = g_charset_converter_get_use_fallback(this : CharsetConverter*) : Bool
  fun charset_converter_set_use_fallback = g_charset_converter_set_use_fallback(this : CharsetConverter*, use_fallback : Bool) : Void

  struct ConverterInputStream # object
    parent_instance : LibGio::FilterInputStream*
    priv : LibGio::ConverterInputStreamPrivate*
    # Property converter : LibGio::Converter
  end
  fun converter_input_stream_new = g_converter_input_stream_new(base_stream : LibGio::InputStream*, converter : LibGio::Converter*) : LibGio::InputStream*
  fun converter_input_stream_get_converter = g_converter_input_stream_get_converter(this : ConverterInputStream*) : LibGio::Converter*

  struct ConverterOutputStream # object
    parent_instance : LibGio::FilterOutputStream*
    priv : LibGio::ConverterOutputStreamPrivate*
    # Property converter : LibGio::Converter
  end
  fun converter_output_stream_new = g_converter_output_stream_new(base_stream : LibGio::OutputStream*, converter : LibGio::Converter*) : LibGio::OutputStream*
  fun converter_output_stream_get_converter = g_converter_output_stream_get_converter(this : ConverterOutputStream*) : LibGio::Converter*

  struct Credentials # object
    _data : UInt8[0]
  end
  fun credentials_new = g_credentials_new() : LibGio::Credentials*
  fun credentials_get_unix_pid = g_credentials_get_unix_pid(this : Credentials*, error : LibGLib::Error**) : Int32
  fun credentials_get_unix_user = g_credentials_get_unix_user(this : Credentials*, error : LibGLib::Error**) : UInt32
  fun credentials_is_same_user = g_credentials_is_same_user(this : Credentials*, other_credentials : LibGio::Credentials*, error : LibGLib::Error**) : Bool
  fun credentials_set_native = g_credentials_set_native(this : Credentials*, native_type : LibGio::CredentialsType, native : Void*) : Void
  fun credentials_set_unix_user = g_credentials_set_unix_user(this : Credentials*, uid : UInt32, error : LibGLib::Error**) : Bool
  fun credentials_to_string = g_credentials_to_string(this : Credentials*) : UInt8*

  struct DBusActionGroup # object
    _data : UInt8[0]
  end
  fun d_bus_action_group_get = g_dbus_action_group_get(connection : LibGio::DBusConnection*, bus_name : UInt8*, object_path : UInt8*) : LibGio::DBusActionGroup*

  struct DBusAuthObserver # object
    _data : UInt8[0]
    # Signal allow-mechanism
    # Signal authorize-authenticated-peer
  end
  fun d_bus_auth_observer_new = g_dbus_auth_observer_new() : LibGio::DBusAuthObserver*
  fun d_bus_auth_observer_allow_mechanism = g_dbus_auth_observer_allow_mechanism(this : DBusAuthObserver*, mechanism : UInt8*) : Bool
  fun d_bus_auth_observer_authorize_authenticated_peer = g_dbus_auth_observer_authorize_authenticated_peer(this : DBusAuthObserver*, stream : LibGio::IOStream*, credentials : LibGio::Credentials*) : Bool

  struct DBusConnection # object
    _data : UInt8[0]
    # Signal closed
    # Property address : UInt8*
    # Property authentication_observer : LibGio::DBusAuthObserver*
    # Property capabilities : LibGio::DBusCapabilityFlags
    # Property closed : Bool
    # Property exit_on_close : Bool
    # Property flags : LibGio::DBusConnectionFlags
    # Property guid : UInt8*
    # Property stream : LibGio::IOStream*
    # Property unique_name : UInt8*
  end
  fun d_bus_connection_new_finish = g_dbus_connection_new_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusConnection*
  fun d_bus_connection_new_for_address_finish = g_dbus_connection_new_for_address_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusConnection*
  fun d_bus_connection_new_for_address_sync = g_dbus_connection_new_for_address_sync(address : UInt8*, flags : LibGio::DBusConnectionFlags, observer : LibGio::DBusAuthObserver*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusConnection*
  fun d_bus_connection_new_sync = g_dbus_connection_new_sync(stream : LibGio::IOStream*, guid : UInt8*, flags : LibGio::DBusConnectionFlags, observer : LibGio::DBusAuthObserver*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusConnection*
  fun d_bus_connection_new = g_dbus_connection_new(stream : LibGio::IOStream*, guid : UInt8*, flags : LibGio::DBusConnectionFlags, observer : LibGio::DBusAuthObserver*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_new_for_address = g_dbus_connection_new_for_address(address : UInt8*, flags : LibGio::DBusConnectionFlags, observer : LibGio::DBusAuthObserver*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_add_filter = g_dbus_connection_add_filter(this : DBusConnection*, filter_function : LibGio::DBusMessageFilterFunction, user_data : Void*, user_data_free_func : LibGLib::DestroyNotify) : UInt32
  fun d_bus_connection_call = g_dbus_connection_call(this : DBusConnection*, bus_name : UInt8*, object_path : UInt8*, interface_name : UInt8*, method_name : UInt8*, parameters : LibGLib::Variant*, reply_type : LibGLib::VariantType*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_call_finish = g_dbus_connection_call_finish(this : DBusConnection*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_connection_call_sync = g_dbus_connection_call_sync(this : DBusConnection*, bus_name : UInt8*, object_path : UInt8*, interface_name : UInt8*, method_name : UInt8*, parameters : LibGLib::Variant*, reply_type : LibGLib::VariantType*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_connection_call_with_unix_fd_list = g_dbus_connection_call_with_unix_fd_list(this : DBusConnection*, bus_name : UInt8*, object_path : UInt8*, interface_name : UInt8*, method_name : UInt8*, parameters : LibGLib::Variant*, reply_type : LibGLib::VariantType*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, fd_list : LibGio::UnixFDList*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_call_with_unix_fd_list_finish = g_dbus_connection_call_with_unix_fd_list_finish(this : DBusConnection*, out_fd_list : LibGio::UnixFDList**, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_connection_call_with_unix_fd_list_sync = g_dbus_connection_call_with_unix_fd_list_sync(this : DBusConnection*, bus_name : UInt8*, object_path : UInt8*, interface_name : UInt8*, method_name : UInt8*, parameters : LibGLib::Variant*, reply_type : LibGLib::VariantType*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, fd_list : LibGio::UnixFDList*, out_fd_list : LibGio::UnixFDList**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_connection_close = g_dbus_connection_close(this : DBusConnection*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_close_finish = g_dbus_connection_close_finish(this : DBusConnection*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun d_bus_connection_close_sync = g_dbus_connection_close_sync(this : DBusConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun d_bus_connection_emit_signal = g_dbus_connection_emit_signal(this : DBusConnection*, destination_bus_name : UInt8*, object_path : UInt8*, interface_name : UInt8*, signal_name : UInt8*, parameters : LibGLib::Variant*, error : LibGLib::Error**) : Bool
  fun d_bus_connection_export_action_group = g_dbus_connection_export_action_group(this : DBusConnection*, object_path : UInt8*, action_group : LibGio::ActionGroup*, error : LibGLib::Error**) : UInt32
  fun d_bus_connection_export_menu_model = g_dbus_connection_export_menu_model(this : DBusConnection*, object_path : UInt8*, menu : LibGio::MenuModel*, error : LibGLib::Error**) : UInt32
  fun d_bus_connection_flush = g_dbus_connection_flush(this : DBusConnection*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_flush_finish = g_dbus_connection_flush_finish(this : DBusConnection*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun d_bus_connection_flush_sync = g_dbus_connection_flush_sync(this : DBusConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun d_bus_connection_get_capabilities = g_dbus_connection_get_capabilities(this : DBusConnection*) : LibGio::DBusCapabilityFlags
  fun d_bus_connection_get_exit_on_close = g_dbus_connection_get_exit_on_close(this : DBusConnection*) : Bool
  fun d_bus_connection_get_guid = g_dbus_connection_get_guid(this : DBusConnection*) : UInt8*
  fun d_bus_connection_get_last_serial = g_dbus_connection_get_last_serial(this : DBusConnection*) : UInt32
  fun d_bus_connection_get_peer_credentials = g_dbus_connection_get_peer_credentials(this : DBusConnection*) : LibGio::Credentials*
  fun d_bus_connection_get_stream = g_dbus_connection_get_stream(this : DBusConnection*) : LibGio::IOStream*
  fun d_bus_connection_get_unique_name = g_dbus_connection_get_unique_name(this : DBusConnection*) : UInt8*
  fun d_bus_connection_is_closed = g_dbus_connection_is_closed(this : DBusConnection*) : Bool
  fun d_bus_connection_register_object = g_dbus_connection_register_object_with_closures(this : DBusConnection*, object_path : UInt8*, interface_info : LibGio::DBusInterfaceInfo*, method_call_closure : LibGObject::Closure*, get_property_closure : LibGObject::Closure*, set_property_closure : LibGObject::Closure*, error : LibGLib::Error**) : UInt32
  fun d_bus_connection_register_subtree = g_dbus_connection_register_subtree(this : DBusConnection*, object_path : UInt8*, vtable : LibGio::DBusSubtreeVTable*, flags : LibGio::DBusSubtreeFlags, user_data : Void*, user_data_free_func : LibGLib::DestroyNotify, error : LibGLib::Error**) : UInt32
  fun d_bus_connection_remove_filter = g_dbus_connection_remove_filter(this : DBusConnection*, filter_id : UInt32) : Void
  fun d_bus_connection_send_message = g_dbus_connection_send_message(this : DBusConnection*, message : LibGio::DBusMessage*, flags : LibGio::DBusSendMessageFlags, out_serial : UInt32*, error : LibGLib::Error**) : Bool
  fun d_bus_connection_send_message_with_reply = g_dbus_connection_send_message_with_reply(this : DBusConnection*, message : LibGio::DBusMessage*, flags : LibGio::DBusSendMessageFlags, timeout_msec : Int32, out_serial : UInt32*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_connection_send_message_with_reply_finish = g_dbus_connection_send_message_with_reply_finish(this : DBusConnection*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusMessage*
  fun d_bus_connection_send_message_with_reply_sync = g_dbus_connection_send_message_with_reply_sync(this : DBusConnection*, message : LibGio::DBusMessage*, flags : LibGio::DBusSendMessageFlags, timeout_msec : Int32, out_serial : UInt32*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusMessage*
  fun d_bus_connection_set_exit_on_close = g_dbus_connection_set_exit_on_close(this : DBusConnection*, exit_on_close : Bool) : Void
  fun d_bus_connection_signal_subscribe = g_dbus_connection_signal_subscribe(this : DBusConnection*, sender : UInt8*, interface_name : UInt8*, member : UInt8*, object_path : UInt8*, arg0 : UInt8*, flags : LibGio::DBusSignalFlags, callback : LibGio::DBusSignalCallback, user_data : Void*, user_data_free_func : LibGLib::DestroyNotify) : UInt32
  fun d_bus_connection_signal_unsubscribe = g_dbus_connection_signal_unsubscribe(this : DBusConnection*, subscription_id : UInt32) : Void
  fun d_bus_connection_start_message_processing = g_dbus_connection_start_message_processing(this : DBusConnection*) : Void
  fun d_bus_connection_unexport_action_group = g_dbus_connection_unexport_action_group(this : DBusConnection*, export_id : UInt32) : Void
  fun d_bus_connection_unexport_menu_model = g_dbus_connection_unexport_menu_model(this : DBusConnection*, export_id : UInt32) : Void
  fun d_bus_connection_unregister_object = g_dbus_connection_unregister_object(this : DBusConnection*, registration_id : UInt32) : Bool
  fun d_bus_connection_unregister_subtree = g_dbus_connection_unregister_subtree(this : DBusConnection*, registration_id : UInt32) : Bool

  struct DBusInterfaceSkeleton # object
    parent_instance : LibGObject::Object*
    priv : LibGio::DBusInterfaceSkeletonPrivate*
    # Signal g-authorize-method
    # Virtual function flush
    # Virtual function g_authorize_method
    # Virtual function get_info
    # Virtual function get_properties
    # Property g_flags : LibGio::DBusInterfaceSkeletonFlags
  end
  fun d_bus_interface_skeleton_export = g_dbus_interface_skeleton_export(this : DBusInterfaceSkeleton*, connection : LibGio::DBusConnection*, object_path : UInt8*, error : LibGLib::Error**) : Bool
  fun d_bus_interface_skeleton_flush = g_dbus_interface_skeleton_flush(this : DBusInterfaceSkeleton*) : Void
  fun d_bus_interface_skeleton_get_connection = g_dbus_interface_skeleton_get_connection(this : DBusInterfaceSkeleton*) : LibGio::DBusConnection*
  fun d_bus_interface_skeleton_get_connections = g_dbus_interface_skeleton_get_connections(this : DBusInterfaceSkeleton*) : Void**
  fun d_bus_interface_skeleton_get_flags = g_dbus_interface_skeleton_get_flags(this : DBusInterfaceSkeleton*) : LibGio::DBusInterfaceSkeletonFlags
  fun d_bus_interface_skeleton_get_info = g_dbus_interface_skeleton_get_info(this : DBusInterfaceSkeleton*) : LibGio::DBusInterfaceInfo*
  fun d_bus_interface_skeleton_get_object_path = g_dbus_interface_skeleton_get_object_path(this : DBusInterfaceSkeleton*) : UInt8*
  fun d_bus_interface_skeleton_get_properties = g_dbus_interface_skeleton_get_properties(this : DBusInterfaceSkeleton*) : LibGLib::Variant*
  fun d_bus_interface_skeleton_has_connection = g_dbus_interface_skeleton_has_connection(this : DBusInterfaceSkeleton*, connection : LibGio::DBusConnection*) : Bool
  fun d_bus_interface_skeleton_set_flags = g_dbus_interface_skeleton_set_flags(this : DBusInterfaceSkeleton*, flags : LibGio::DBusInterfaceSkeletonFlags) : Void
  fun d_bus_interface_skeleton_unexport = g_dbus_interface_skeleton_unexport(this : DBusInterfaceSkeleton*) : Void
  fun d_bus_interface_skeleton_unexport_from_connection = g_dbus_interface_skeleton_unexport_from_connection(this : DBusInterfaceSkeleton*, connection : LibGio::DBusConnection*) : Void

  struct DBusMenuModel # object
    _data : UInt8[0]
  end
  fun d_bus_menu_model_get = g_dbus_menu_model_get(connection : LibGio::DBusConnection*, bus_name : UInt8*, object_path : UInt8*) : LibGio::DBusMenuModel*

  struct DBusMessage # object
    _data : UInt8[0]
    # Property locked : Bool
  end
  fun d_bus_message_new = g_dbus_message_new() : LibGio::DBusMessage*
  fun d_bus_message_new_from_blob = g_dbus_message_new_from_blob(blob : UInt8*, blob_len : UInt64, capabilities : LibGio::DBusCapabilityFlags, error : LibGLib::Error**) : LibGio::DBusMessage*
  fun d_bus_message_new_method_call = g_dbus_message_new_method_call(name : UInt8*, path : UInt8*, interface : UInt8*, method : UInt8*) : LibGio::DBusMessage*
  fun d_bus_message_new_signal = g_dbus_message_new_signal(path : UInt8*, interface : UInt8*, signal : UInt8*) : LibGio::DBusMessage*
  fun d_bus_message_bytes_needed = g_dbus_message_bytes_needed(blob : UInt8*, blob_len : UInt64, error : LibGLib::Error**) : Int64
  fun d_bus_message_copy = g_dbus_message_copy(this : DBusMessage*, error : LibGLib::Error**) : LibGio::DBusMessage*
  fun d_bus_message_get_arg0 = g_dbus_message_get_arg0(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_body = g_dbus_message_get_body(this : DBusMessage*) : LibGLib::Variant*
  fun d_bus_message_get_byte_order = g_dbus_message_get_byte_order(this : DBusMessage*) : LibGio::DBusMessageByteOrder
  fun d_bus_message_get_destination = g_dbus_message_get_destination(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_error_name = g_dbus_message_get_error_name(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_flags = g_dbus_message_get_flags(this : DBusMessage*) : LibGio::DBusMessageFlags
  fun d_bus_message_get_header = g_dbus_message_get_header(this : DBusMessage*, header_field : LibGio::DBusMessageHeaderField) : LibGLib::Variant*
  fun d_bus_message_get_header_fields = g_dbus_message_get_header_fields(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_interface = g_dbus_message_get_interface(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_locked = g_dbus_message_get_locked(this : DBusMessage*) : Bool
  fun d_bus_message_get_member = g_dbus_message_get_member(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_message_type = g_dbus_message_get_message_type(this : DBusMessage*) : LibGio::DBusMessageType
  fun d_bus_message_get_num_unix_fds = g_dbus_message_get_num_unix_fds(this : DBusMessage*) : UInt32
  fun d_bus_message_get_path = g_dbus_message_get_path(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_reply_serial = g_dbus_message_get_reply_serial(this : DBusMessage*) : UInt32
  fun d_bus_message_get_sender = g_dbus_message_get_sender(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_serial = g_dbus_message_get_serial(this : DBusMessage*) : UInt32
  fun d_bus_message_get_signature = g_dbus_message_get_signature(this : DBusMessage*) : UInt8*
  fun d_bus_message_get_unix_fd_list = g_dbus_message_get_unix_fd_list(this : DBusMessage*) : LibGio::UnixFDList*
  fun d_bus_message_lock = g_dbus_message_lock(this : DBusMessage*) : Void
  fun d_bus_message_new_method_error_literal = g_dbus_message_new_method_error_literal(this : DBusMessage*, error_name : UInt8*, error_message : UInt8*) : LibGio::DBusMessage*
  fun d_bus_message_new_method_reply = g_dbus_message_new_method_reply(this : DBusMessage*) : LibGio::DBusMessage*
  fun d_bus_message_print = g_dbus_message_print(this : DBusMessage*, indent : UInt32) : UInt8*
  fun d_bus_message_set_body = g_dbus_message_set_body(this : DBusMessage*, body : LibGLib::Variant*) : Void
  fun d_bus_message_set_byte_order = g_dbus_message_set_byte_order(this : DBusMessage*, byte_order : LibGio::DBusMessageByteOrder) : Void
  fun d_bus_message_set_destination = g_dbus_message_set_destination(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_error_name = g_dbus_message_set_error_name(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_flags = g_dbus_message_set_flags(this : DBusMessage*, flags : LibGio::DBusMessageFlags) : Void
  fun d_bus_message_set_header = g_dbus_message_set_header(this : DBusMessage*, header_field : LibGio::DBusMessageHeaderField, value : LibGLib::Variant*) : Void
  fun d_bus_message_set_interface = g_dbus_message_set_interface(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_member = g_dbus_message_set_member(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_message_type = g_dbus_message_set_message_type(this : DBusMessage*, type : LibGio::DBusMessageType) : Void
  fun d_bus_message_set_num_unix_fds = g_dbus_message_set_num_unix_fds(this : DBusMessage*, value : UInt32) : Void
  fun d_bus_message_set_path = g_dbus_message_set_path(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_reply_serial = g_dbus_message_set_reply_serial(this : DBusMessage*, value : UInt32) : Void
  fun d_bus_message_set_sender = g_dbus_message_set_sender(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_serial = g_dbus_message_set_serial(this : DBusMessage*, serial : UInt32) : Void
  fun d_bus_message_set_signature = g_dbus_message_set_signature(this : DBusMessage*, value : UInt8*) : Void
  fun d_bus_message_set_unix_fd_list = g_dbus_message_set_unix_fd_list(this : DBusMessage*, fd_list : LibGio::UnixFDList*) : Void
  fun d_bus_message_to_blob = g_dbus_message_to_blob(this : DBusMessage*, out_size : UInt64*, capabilities : LibGio::DBusCapabilityFlags, error : LibGLib::Error**) : UInt8*
  fun d_bus_message_to_gerror = g_dbus_message_to_gerror(this : DBusMessage*, error : LibGLib::Error**) : Bool

  struct DBusMethodInvocation # object
    _data : UInt8[0]
  end
  fun d_bus_method_invocation_get_connection = g_dbus_method_invocation_get_connection(this : DBusMethodInvocation*) : LibGio::DBusConnection*
  fun d_bus_method_invocation_get_interface_name = g_dbus_method_invocation_get_interface_name(this : DBusMethodInvocation*) : UInt8*
  fun d_bus_method_invocation_get_message = g_dbus_method_invocation_get_message(this : DBusMethodInvocation*) : LibGio::DBusMessage*
  fun d_bus_method_invocation_get_method_info = g_dbus_method_invocation_get_method_info(this : DBusMethodInvocation*) : LibGio::DBusMethodInfo*
  fun d_bus_method_invocation_get_method_name = g_dbus_method_invocation_get_method_name(this : DBusMethodInvocation*) : UInt8*
  fun d_bus_method_invocation_get_object_path = g_dbus_method_invocation_get_object_path(this : DBusMethodInvocation*) : UInt8*
  fun d_bus_method_invocation_get_parameters = g_dbus_method_invocation_get_parameters(this : DBusMethodInvocation*) : LibGLib::Variant*
  fun d_bus_method_invocation_get_property_info = g_dbus_method_invocation_get_property_info(this : DBusMethodInvocation*) : LibGio::DBusPropertyInfo*
  fun d_bus_method_invocation_get_sender = g_dbus_method_invocation_get_sender(this : DBusMethodInvocation*) : UInt8*
  fun d_bus_method_invocation_return_dbus_error = g_dbus_method_invocation_return_dbus_error(this : DBusMethodInvocation*, error_name : UInt8*, error_message : UInt8*) : Void
  fun d_bus_method_invocation_return_error_literal = g_dbus_method_invocation_return_error_literal(this : DBusMethodInvocation*, domain : UInt32, code : Int32, message : UInt8*) : Void
  fun d_bus_method_invocation_return_gerror = g_dbus_method_invocation_return_gerror(this : DBusMethodInvocation*, error : LibGLib::Error**) : Void
  fun d_bus_method_invocation_return_value = g_dbus_method_invocation_return_value(this : DBusMethodInvocation*, parameters : LibGLib::Variant*) : Void
  fun d_bus_method_invocation_return_value_with_unix_fd_list = g_dbus_method_invocation_return_value_with_unix_fd_list(this : DBusMethodInvocation*, parameters : LibGLib::Variant*, fd_list : LibGio::UnixFDList*) : Void

  struct DBusObjectManagerClient # object
    parent_instance : LibGObject::Object*
    priv : LibGio::DBusObjectManagerClientPrivate*
    # Signal interface-proxy-properties-changed
    # Signal interface-proxy-signal
    # Virtual function interface_proxy_properties_changed
    # Virtual function interface_proxy_signal
    # Property bus_type : LibGio::BusType
    # Property connection : LibGio::DBusConnection*
    # Property flags : LibGio::DBusObjectManagerClientFlags
    # Property get_proxy_type_destroy_notify : Void*
    # Property get_proxy_type_func : Void*
    # Property get_proxy_type_user_data : Void*
    # Property name : UInt8*
    # Property name_owner : UInt8*
    # Property object_path : UInt8*
  end
  fun d_bus_object_manager_client_new_finish = g_dbus_object_manager_client_new_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusObjectManagerClient*
  fun d_bus_object_manager_client_new_for_bus_finish = g_dbus_object_manager_client_new_for_bus_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusObjectManagerClient*
  fun d_bus_object_manager_client_new_for_bus_sync = g_dbus_object_manager_client_new_for_bus_sync(bus_type : LibGio::BusType, flags : LibGio::DBusObjectManagerClientFlags, name : UInt8*, object_path : UInt8*, get_proxy_type_func : LibGio::DBusProxyTypeFunc, get_proxy_type_user_data : Void*, get_proxy_type_destroy_notify : LibGLib::DestroyNotify, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusObjectManagerClient*
  fun d_bus_object_manager_client_new_sync = g_dbus_object_manager_client_new_sync(connection : LibGio::DBusConnection*, flags : LibGio::DBusObjectManagerClientFlags, name : UInt8*, object_path : UInt8*, get_proxy_type_func : LibGio::DBusProxyTypeFunc, get_proxy_type_user_data : Void*, get_proxy_type_destroy_notify : LibGLib::DestroyNotify, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusObjectManagerClient*
  fun d_bus_object_manager_client_new = g_dbus_object_manager_client_new(connection : LibGio::DBusConnection*, flags : LibGio::DBusObjectManagerClientFlags, name : UInt8*, object_path : UInt8*, get_proxy_type_func : LibGio::DBusProxyTypeFunc, get_proxy_type_user_data : Void*, get_proxy_type_destroy_notify : LibGLib::DestroyNotify, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_object_manager_client_new_for_bus = g_dbus_object_manager_client_new_for_bus(bus_type : LibGio::BusType, flags : LibGio::DBusObjectManagerClientFlags, name : UInt8*, object_path : UInt8*, get_proxy_type_func : LibGio::DBusProxyTypeFunc, get_proxy_type_user_data : Void*, get_proxy_type_destroy_notify : LibGLib::DestroyNotify, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_object_manager_client_get_connection = g_dbus_object_manager_client_get_connection(this : DBusObjectManagerClient*) : LibGio::DBusConnection*
  fun d_bus_object_manager_client_get_flags = g_dbus_object_manager_client_get_flags(this : DBusObjectManagerClient*) : LibGio::DBusObjectManagerClientFlags
  fun d_bus_object_manager_client_get_name = g_dbus_object_manager_client_get_name(this : DBusObjectManagerClient*) : UInt8*
  fun d_bus_object_manager_client_get_name_owner = g_dbus_object_manager_client_get_name_owner(this : DBusObjectManagerClient*) : UInt8*

  struct DBusObjectManagerServer # object
    parent_instance : LibGObject::Object*
    priv : LibGio::DBusObjectManagerServerPrivate*
    # Property connection : LibGio::DBusConnection*
    # Property object_path : UInt8*
  end
  fun d_bus_object_manager_server_new = g_dbus_object_manager_server_new(object_path : UInt8*) : LibGio::DBusObjectManagerServer*
  fun d_bus_object_manager_server_export = g_dbus_object_manager_server_export(this : DBusObjectManagerServer*, object : LibGio::DBusObjectSkeleton*) : Void
  fun d_bus_object_manager_server_export_uniquely = g_dbus_object_manager_server_export_uniquely(this : DBusObjectManagerServer*, object : LibGio::DBusObjectSkeleton*) : Void
  fun d_bus_object_manager_server_get_connection = g_dbus_object_manager_server_get_connection(this : DBusObjectManagerServer*) : LibGio::DBusConnection*
  fun d_bus_object_manager_server_is_exported = g_dbus_object_manager_server_is_exported(this : DBusObjectManagerServer*, object : LibGio::DBusObjectSkeleton*) : Bool
  fun d_bus_object_manager_server_set_connection = g_dbus_object_manager_server_set_connection(this : DBusObjectManagerServer*, connection : LibGio::DBusConnection*) : Void
  fun d_bus_object_manager_server_unexport = g_dbus_object_manager_server_unexport(this : DBusObjectManagerServer*, object_path : UInt8*) : Bool

  struct DBusObjectProxy # object
    parent_instance : LibGObject::Object*
    priv : LibGio::DBusObjectProxyPrivate*
    # Property g_connection : LibGio::DBusConnection*
    # Property g_object_path : UInt8*
  end
  fun d_bus_object_proxy_new = g_dbus_object_proxy_new(connection : LibGio::DBusConnection*, object_path : UInt8*) : LibGio::DBusObjectProxy*
  fun d_bus_object_proxy_get_connection = g_dbus_object_proxy_get_connection(this : DBusObjectProxy*) : LibGio::DBusConnection*

  struct DBusObjectSkeleton # object
    parent_instance : LibGObject::Object*
    priv : LibGio::DBusObjectSkeletonPrivate*
    # Signal authorize-method
    # Virtual function authorize_method
    # Property g_object_path : UInt8*
  end
  fun d_bus_object_skeleton_new = g_dbus_object_skeleton_new(object_path : UInt8*) : LibGio::DBusObjectSkeleton*
  fun d_bus_object_skeleton_add_interface = g_dbus_object_skeleton_add_interface(this : DBusObjectSkeleton*, interface : LibGio::DBusInterfaceSkeleton*) : Void
  fun d_bus_object_skeleton_flush = g_dbus_object_skeleton_flush(this : DBusObjectSkeleton*) : Void
  fun d_bus_object_skeleton_remove_interface = g_dbus_object_skeleton_remove_interface(this : DBusObjectSkeleton*, interface : LibGio::DBusInterfaceSkeleton*) : Void
  fun d_bus_object_skeleton_remove_interface_by_name = g_dbus_object_skeleton_remove_interface_by_name(this : DBusObjectSkeleton*, interface_name : UInt8*) : Void
  fun d_bus_object_skeleton_set_object_path = g_dbus_object_skeleton_set_object_path(this : DBusObjectSkeleton*, object_path : UInt8*) : Void

  struct DBusProxy # object
    parent_instance : LibGObject::Object*
    priv : LibGio::DBusProxyPrivate*
    # Signal g-properties-changed
    # Signal g-signal
    # Virtual function g_properties_changed
    # Virtual function g_signal
    # Property g_bus_type : LibGio::BusType
    # Property g_connection : LibGio::DBusConnection*
    # Property g_default_timeout : Int32
    # Property g_flags : LibGio::DBusProxyFlags
    # Property g_interface_info : LibGio::DBusInterfaceInfo
    # Property g_interface_name : UInt8*
    # Property g_name : UInt8*
    # Property g_name_owner : UInt8*
    # Property g_object_path : UInt8*
  end
  fun d_bus_proxy_new_finish = g_dbus_proxy_new_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusProxy*
  fun d_bus_proxy_new_for_bus_finish = g_dbus_proxy_new_for_bus_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusProxy*
  fun d_bus_proxy_new_for_bus_sync = g_dbus_proxy_new_for_bus_sync(bus_type : LibGio::BusType, flags : LibGio::DBusProxyFlags, info : LibGio::DBusInterfaceInfo*, name : UInt8*, object_path : UInt8*, interface_name : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusProxy*
  fun d_bus_proxy_new_sync = g_dbus_proxy_new_sync(connection : LibGio::DBusConnection*, flags : LibGio::DBusProxyFlags, info : LibGio::DBusInterfaceInfo*, name : UInt8*, object_path : UInt8*, interface_name : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusProxy*
  fun d_bus_proxy_new = g_dbus_proxy_new(connection : LibGio::DBusConnection*, flags : LibGio::DBusProxyFlags, info : LibGio::DBusInterfaceInfo*, name : UInt8*, object_path : UInt8*, interface_name : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_proxy_new_for_bus = g_dbus_proxy_new_for_bus(bus_type : LibGio::BusType, flags : LibGio::DBusProxyFlags, info : LibGio::DBusInterfaceInfo*, name : UInt8*, object_path : UInt8*, interface_name : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_proxy_call = g_dbus_proxy_call(this : DBusProxy*, method_name : UInt8*, parameters : LibGLib::Variant*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_proxy_call_finish = g_dbus_proxy_call_finish(this : DBusProxy*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_proxy_call_sync = g_dbus_proxy_call_sync(this : DBusProxy*, method_name : UInt8*, parameters : LibGLib::Variant*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_proxy_call_with_unix_fd_list = g_dbus_proxy_call_with_unix_fd_list(this : DBusProxy*, method_name : UInt8*, parameters : LibGLib::Variant*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, fd_list : LibGio::UnixFDList*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun d_bus_proxy_call_with_unix_fd_list_finish = g_dbus_proxy_call_with_unix_fd_list_finish(this : DBusProxy*, out_fd_list : LibGio::UnixFDList**, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_proxy_call_with_unix_fd_list_sync = g_dbus_proxy_call_with_unix_fd_list_sync(this : DBusProxy*, method_name : UInt8*, parameters : LibGLib::Variant*, flags : LibGio::DBusCallFlags, timeout_msec : Int32, fd_list : LibGio::UnixFDList*, out_fd_list : LibGio::UnixFDList**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGLib::Variant*
  fun d_bus_proxy_get_cached_property = g_dbus_proxy_get_cached_property(this : DBusProxy*, property_name : UInt8*) : LibGLib::Variant*
  fun d_bus_proxy_get_cached_property_names = g_dbus_proxy_get_cached_property_names(this : DBusProxy*) : UInt8**
  fun d_bus_proxy_get_connection = g_dbus_proxy_get_connection(this : DBusProxy*) : LibGio::DBusConnection*
  fun d_bus_proxy_get_default_timeout = g_dbus_proxy_get_default_timeout(this : DBusProxy*) : Int32
  fun d_bus_proxy_get_flags = g_dbus_proxy_get_flags(this : DBusProxy*) : LibGio::DBusProxyFlags
  fun d_bus_proxy_get_interface_info = g_dbus_proxy_get_interface_info(this : DBusProxy*) : LibGio::DBusInterfaceInfo*
  fun d_bus_proxy_get_interface_name = g_dbus_proxy_get_interface_name(this : DBusProxy*) : UInt8*
  fun d_bus_proxy_get_name = g_dbus_proxy_get_name(this : DBusProxy*) : UInt8*
  fun d_bus_proxy_get_name_owner = g_dbus_proxy_get_name_owner(this : DBusProxy*) : UInt8*
  fun d_bus_proxy_get_object_path = g_dbus_proxy_get_object_path(this : DBusProxy*) : UInt8*
  fun d_bus_proxy_set_cached_property = g_dbus_proxy_set_cached_property(this : DBusProxy*, property_name : UInt8*, value : LibGLib::Variant*) : Void
  fun d_bus_proxy_set_default_timeout = g_dbus_proxy_set_default_timeout(this : DBusProxy*, timeout_msec : Int32) : Void
  fun d_bus_proxy_set_interface_info = g_dbus_proxy_set_interface_info(this : DBusProxy*, info : LibGio::DBusInterfaceInfo*) : Void

  struct DBusServer # object
    _data : UInt8[0]
    # Signal new-connection
    # Property active : Bool
    # Property address : UInt8*
    # Property authentication_observer : LibGio::DBusAuthObserver*
    # Property client_address : UInt8*
    # Property flags : LibGio::DBusServerFlags
    # Property guid : UInt8*
  end
  fun d_bus_server_new_sync = g_dbus_server_new_sync(address : UInt8*, flags : LibGio::DBusServerFlags, guid : UInt8*, observer : LibGio::DBusAuthObserver*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusServer*
  fun d_bus_server_get_client_address = g_dbus_server_get_client_address(this : DBusServer*) : UInt8*
  fun d_bus_server_get_flags = g_dbus_server_get_flags(this : DBusServer*) : LibGio::DBusServerFlags
  fun d_bus_server_get_guid = g_dbus_server_get_guid(this : DBusServer*) : UInt8*
  fun d_bus_server_is_active = g_dbus_server_is_active(this : DBusServer*) : Bool
  fun d_bus_server_start = g_dbus_server_start(this : DBusServer*) : Void
  fun d_bus_server_stop = g_dbus_server_stop(this : DBusServer*) : Void

  struct DataInputStream # object
    parent_instance : LibGio::BufferedInputStream*
    priv : LibGio::DataInputStreamPrivate*
    # Property byte_order : LibGio::DataStreamByteOrder
    # Property newline_type : LibGio::DataStreamNewlineType
  end
  fun data_input_stream_new = g_data_input_stream_new(base_stream : LibGio::InputStream*) : LibGio::DataInputStream*
  fun data_input_stream_get_byte_order = g_data_input_stream_get_byte_order(this : DataInputStream*) : LibGio::DataStreamByteOrder
  fun data_input_stream_get_newline_type = g_data_input_stream_get_newline_type(this : DataInputStream*) : LibGio::DataStreamNewlineType
  fun data_input_stream_read_byte = g_data_input_stream_read_byte(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8
  fun data_input_stream_read_int16 = g_data_input_stream_read_int16(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int16
  fun data_input_stream_read_int32 = g_data_input_stream_read_int32(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32
  fun data_input_stream_read_int64 = g_data_input_stream_read_int64(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun data_input_stream_read_line = g_data_input_stream_read_line(this : DataInputStream*, length : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_line_async = g_data_input_stream_read_line_async(this : DataInputStream*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun data_input_stream_read_line_finish = g_data_input_stream_read_line_finish(this : DataInputStream*, result : LibGio::AsyncResult*, length : UInt64*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_line_finish_utf8 = g_data_input_stream_read_line_finish_utf8(this : DataInputStream*, result : LibGio::AsyncResult*, length : UInt64*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_line_utf8 = g_data_input_stream_read_line_utf8(this : DataInputStream*, length : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_uint16 = g_data_input_stream_read_uint16(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt16
  fun data_input_stream_read_uint32 = g_data_input_stream_read_uint32(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt32
  fun data_input_stream_read_uint64 = g_data_input_stream_read_uint64(this : DataInputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt64
  fun data_input_stream_read_until = g_data_input_stream_read_until(this : DataInputStream*, stop_chars : UInt8*, length : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_until_async = g_data_input_stream_read_until_async(this : DataInputStream*, stop_chars : UInt8*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun data_input_stream_read_until_finish = g_data_input_stream_read_until_finish(this : DataInputStream*, result : LibGio::AsyncResult*, length : UInt64*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_upto = g_data_input_stream_read_upto(this : DataInputStream*, stop_chars : UInt8*, stop_chars_len : Int64, length : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_read_upto_async = g_data_input_stream_read_upto_async(this : DataInputStream*, stop_chars : UInt8*, stop_chars_len : Int64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun data_input_stream_read_upto_finish = g_data_input_stream_read_upto_finish(this : DataInputStream*, result : LibGio::AsyncResult*, length : UInt64*, error : LibGLib::Error**) : UInt8*
  fun data_input_stream_set_byte_order = g_data_input_stream_set_byte_order(this : DataInputStream*, order : LibGio::DataStreamByteOrder) : Void
  fun data_input_stream_set_newline_type = g_data_input_stream_set_newline_type(this : DataInputStream*, type : LibGio::DataStreamNewlineType) : Void

  struct DataOutputStream # object
    parent_instance : LibGio::FilterOutputStream*
    priv : LibGio::DataOutputStreamPrivate*
    # Property byte_order : LibGio::DataStreamByteOrder
  end
  fun data_output_stream_new = g_data_output_stream_new(base_stream : LibGio::OutputStream*) : LibGio::DataOutputStream*
  fun data_output_stream_get_byte_order = g_data_output_stream_get_byte_order(this : DataOutputStream*) : LibGio::DataStreamByteOrder
  fun data_output_stream_put_byte = g_data_output_stream_put_byte(this : DataOutputStream*, data : UInt8, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_int16 = g_data_output_stream_put_int16(this : DataOutputStream*, data : Int16, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_int32 = g_data_output_stream_put_int32(this : DataOutputStream*, data : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_int64 = g_data_output_stream_put_int64(this : DataOutputStream*, data : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_string = g_data_output_stream_put_string(this : DataOutputStream*, str : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_uint16 = g_data_output_stream_put_uint16(this : DataOutputStream*, data : UInt16, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_uint32 = g_data_output_stream_put_uint32(this : DataOutputStream*, data : UInt32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_put_uint64 = g_data_output_stream_put_uint64(this : DataOutputStream*, data : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun data_output_stream_set_byte_order = g_data_output_stream_set_byte_order(this : DataOutputStream*, order : LibGio::DataStreamByteOrder) : Void

  struct DesktopAppInfo # object
    _data : UInt8[0]
    # Property filename : UInt8*
  end
  fun desktop_app_info_new = g_desktop_app_info_new(desktop_id : UInt8*) : LibGio::DesktopAppInfo*
  fun desktop_app_info_new_from_filename = g_desktop_app_info_new_from_filename(filename : UInt8*) : LibGio::DesktopAppInfo*
  fun desktop_app_info_new_from_keyfile = g_desktop_app_info_new_from_keyfile(key_file : LibGLib::KeyFile*) : LibGio::DesktopAppInfo*
  fun desktop_app_info_get_implementations = g_desktop_app_info_get_implementations(interface : UInt8*) : Void**
  fun desktop_app_info_search = g_desktop_app_info_search(search_string : UInt8*) : UInt8***
  fun desktop_app_info_set_desktop_env = g_desktop_app_info_set_desktop_env(desktop_env : UInt8*) : Void
  fun desktop_app_info_get_action_name = g_desktop_app_info_get_action_name(this : DesktopAppInfo*, action_name : UInt8*) : UInt8*
  fun desktop_app_info_get_boolean = g_desktop_app_info_get_boolean(this : DesktopAppInfo*, key : UInt8*) : Bool
  fun desktop_app_info_get_categories = g_desktop_app_info_get_categories(this : DesktopAppInfo*) : UInt8*
  fun desktop_app_info_get_filename = g_desktop_app_info_get_filename(this : DesktopAppInfo*) : UInt8*
  fun desktop_app_info_get_generic_name = g_desktop_app_info_get_generic_name(this : DesktopAppInfo*) : UInt8*
  fun desktop_app_info_get_is_hidden = g_desktop_app_info_get_is_hidden(this : DesktopAppInfo*) : Bool
  fun desktop_app_info_get_keywords = g_desktop_app_info_get_keywords(this : DesktopAppInfo*) : UInt8**
  fun desktop_app_info_get_locale_string = g_desktop_app_info_get_locale_string(this : DesktopAppInfo*, key : UInt8*) : UInt8*
  fun desktop_app_info_get_nodisplay = g_desktop_app_info_get_nodisplay(this : DesktopAppInfo*) : Bool
  fun desktop_app_info_get_show_in = g_desktop_app_info_get_show_in(this : DesktopAppInfo*, desktop_env : UInt8*) : Bool
  fun desktop_app_info_get_startup_wm_class = g_desktop_app_info_get_startup_wm_class(this : DesktopAppInfo*) : UInt8*
  fun desktop_app_info_get_string = g_desktop_app_info_get_string(this : DesktopAppInfo*, key : UInt8*) : UInt8*
  fun desktop_app_info_has_key = g_desktop_app_info_has_key(this : DesktopAppInfo*, key : UInt8*) : Bool
  fun desktop_app_info_launch_action = g_desktop_app_info_launch_action(this : DesktopAppInfo*, action_name : UInt8*, launch_context : LibGio::AppLaunchContext*) : Void
  fun desktop_app_info_launch_uris_as_manager = g_desktop_app_info_launch_uris_as_manager(this : DesktopAppInfo*, uris : Void**, launch_context : LibGio::AppLaunchContext*, spawn_flags : LibGLib::SpawnFlags, user_setup : LibGLib::SpawnChildSetupFunc, user_setup_data : Void*, pid_callback : LibGio::DesktopAppLaunchCallback, pid_callback_data : Void*, error : LibGLib::Error**) : Bool
  fun desktop_app_info_launch_uris_as_manager_with_fds = g_desktop_app_info_launch_uris_as_manager_with_fds(this : DesktopAppInfo*, uris : Void**, launch_context : LibGio::AppLaunchContext*, spawn_flags : LibGLib::SpawnFlags, user_setup : LibGLib::SpawnChildSetupFunc, user_setup_data : Void*, pid_callback : LibGio::DesktopAppLaunchCallback, pid_callback_data : Void*, stdin_fd : Int32, stdout_fd : Int32, stderr_fd : Int32, error : LibGLib::Error**) : Bool
  fun desktop_app_info_list_actions = g_desktop_app_info_list_actions(this : DesktopAppInfo*) : UInt8**

  struct Emblem # object
    _data : UInt8[0]
    # Property icon : LibGObject::Object*
    # Property origin : LibGio::EmblemOrigin
  end
  fun emblem_new = g_emblem_new(icon : LibGio::Icon*) : LibGio::Emblem*
  fun emblem_new_with_origin = g_emblem_new_with_origin(icon : LibGio::Icon*, origin : LibGio::EmblemOrigin) : LibGio::Emblem*
  fun emblem_get_icon = g_emblem_get_icon(this : Emblem*) : LibGio::Icon*
  fun emblem_get_origin = g_emblem_get_origin(this : Emblem*) : LibGio::EmblemOrigin

  struct EmblemedIcon # object
    parent_instance : LibGObject::Object*
    priv : LibGio::EmblemedIconPrivate*
    # Property gicon : LibGio::Icon
  end
  fun emblemed_icon_new = g_emblemed_icon_new(icon : LibGio::Icon*, emblem : LibGio::Emblem*) : LibGio::EmblemedIcon*
  fun emblemed_icon_add_emblem = g_emblemed_icon_add_emblem(this : EmblemedIcon*, emblem : LibGio::Emblem*) : Void
  fun emblemed_icon_clear_emblems = g_emblemed_icon_clear_emblems(this : EmblemedIcon*) : Void
  fun emblemed_icon_get_emblems = g_emblemed_icon_get_emblems(this : EmblemedIcon*) : Void**
  fun emblemed_icon_get_icon = g_emblemed_icon_get_icon(this : EmblemedIcon*) : LibGio::Icon*

  struct FileEnumerator # object
    parent_instance : LibGObject::Object*
    priv : LibGio::FileEnumeratorPrivate*
    # Virtual function close_async
    # Virtual function close_finish
    # Virtual function close_fn
    # Virtual function next_file
    # Virtual function next_files_async
    # Virtual function next_files_finish
    # Property container : LibGio::File
  end
  fun file_enumerator_close = g_file_enumerator_close(this : FileEnumerator*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_enumerator_close_async = g_file_enumerator_close_async(this : FileEnumerator*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_enumerator_close_finish = g_file_enumerator_close_finish(this : FileEnumerator*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun file_enumerator_get_child = g_file_enumerator_get_child(this : FileEnumerator*, info : LibGio::FileInfo*) : LibGio::File*
  fun file_enumerator_get_container = g_file_enumerator_get_container(this : FileEnumerator*) : LibGio::File*
  fun file_enumerator_has_pending = g_file_enumerator_has_pending(this : FileEnumerator*) : Bool
  fun file_enumerator_is_closed = g_file_enumerator_is_closed(this : FileEnumerator*) : Bool
  fun file_enumerator_iterate = g_file_enumerator_iterate(this : FileEnumerator*, out_info : LibGio::FileInfo**, out_child : LibGio::File**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun file_enumerator_next_file = g_file_enumerator_next_file(this : FileEnumerator*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_enumerator_next_files_async = g_file_enumerator_next_files_async(this : FileEnumerator*, num_files : Int32, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_enumerator_next_files_finish = g_file_enumerator_next_files_finish(this : FileEnumerator*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Void**
  fun file_enumerator_set_pending = g_file_enumerator_set_pending(this : FileEnumerator*, pending : Bool) : Void

  struct FileIOStream # object
    parent_instance : LibGio::IOStream*
    priv : LibGio::FileIOStreamPrivate*
    # Virtual function can_seek
    # Virtual function can_truncate
    # Virtual function get_etag
    # Virtual function query_info
    # Virtual function query_info_async
    # Virtual function query_info_finish
    # Virtual function seek
    # Virtual function tell
    # Virtual function truncate_fn
  end
  fun file_i_o_stream_get_etag = g_file_io_stream_get_etag(this : FileIOStream*) : UInt8*
  fun file_i_o_stream_query_info = g_file_io_stream_query_info(this : FileIOStream*, attributes : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_i_o_stream_query_info_async = g_file_io_stream_query_info_async(this : FileIOStream*, attributes : UInt8*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_i_o_stream_query_info_finish = g_file_io_stream_query_info_finish(this : FileIOStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileInfo*

  struct FileIcon # object
    _data : UInt8[0]
    # Property file : LibGio::File
  end
  fun file_icon_new = g_file_icon_new(file : LibGio::File*) : LibGio::FileIcon*
  fun file_icon_get_file = g_file_icon_get_file(this : FileIcon*) : LibGio::File*

  struct FileInfo # object
    _data : UInt8[0]
  end
  fun file_info_new = g_file_info_new() : LibGio::FileInfo*
  fun file_info_clear_status = g_file_info_clear_status(this : FileInfo*) : Void
  fun file_info_copy_into = g_file_info_copy_into(this : FileInfo*, dest_info : LibGio::FileInfo*) : Void
  fun file_info_dup = g_file_info_dup(this : FileInfo*) : LibGio::FileInfo*
  fun file_info_get_attribute_as_string = g_file_info_get_attribute_as_string(this : FileInfo*, attribute : UInt8*) : UInt8*
  fun file_info_get_attribute_boolean = g_file_info_get_attribute_boolean(this : FileInfo*, attribute : UInt8*) : Bool
  fun file_info_get_attribute_byte_string = g_file_info_get_attribute_byte_string(this : FileInfo*, attribute : UInt8*) : UInt8*
  fun file_info_get_attribute_data = g_file_info_get_attribute_data(this : FileInfo*, attribute : UInt8*, type : LibGio::FileAttributeType*, value_pp : Void**, status : LibGio::FileAttributeStatus*) : Bool
  fun file_info_get_attribute_int32 = g_file_info_get_attribute_int32(this : FileInfo*, attribute : UInt8*) : Int32
  fun file_info_get_attribute_int64 = g_file_info_get_attribute_int64(this : FileInfo*, attribute : UInt8*) : Int64
  fun file_info_get_attribute_object = g_file_info_get_attribute_object(this : FileInfo*, attribute : UInt8*) : LibGObject::Object*
  fun file_info_get_attribute_status = g_file_info_get_attribute_status(this : FileInfo*, attribute : UInt8*) : LibGio::FileAttributeStatus
  fun file_info_get_attribute_string = g_file_info_get_attribute_string(this : FileInfo*, attribute : UInt8*) : UInt8*
  fun file_info_get_attribute_stringv = g_file_info_get_attribute_stringv(this : FileInfo*, attribute : UInt8*) : UInt8**
  fun file_info_get_attribute_type = g_file_info_get_attribute_type(this : FileInfo*, attribute : UInt8*) : LibGio::FileAttributeType
  fun file_info_get_attribute_uint32 = g_file_info_get_attribute_uint32(this : FileInfo*, attribute : UInt8*) : UInt32
  fun file_info_get_attribute_uint64 = g_file_info_get_attribute_uint64(this : FileInfo*, attribute : UInt8*) : UInt64
  fun file_info_get_content_type = g_file_info_get_content_type(this : FileInfo*) : UInt8*
  fun file_info_get_deletion_date = g_file_info_get_deletion_date(this : FileInfo*) : LibGLib::DateTime*
  fun file_info_get_display_name = g_file_info_get_display_name(this : FileInfo*) : UInt8*
  fun file_info_get_edit_name = g_file_info_get_edit_name(this : FileInfo*) : UInt8*
  fun file_info_get_etag = g_file_info_get_etag(this : FileInfo*) : UInt8*
  fun file_info_get_file_type = g_file_info_get_file_type(this : FileInfo*) : LibGio::FileType
  fun file_info_get_icon = g_file_info_get_icon(this : FileInfo*) : LibGio::Icon*
  fun file_info_get_is_backup = g_file_info_get_is_backup(this : FileInfo*) : Bool
  fun file_info_get_is_hidden = g_file_info_get_is_hidden(this : FileInfo*) : Bool
  fun file_info_get_is_symlink = g_file_info_get_is_symlink(this : FileInfo*) : Bool
  fun file_info_get_modification_time = g_file_info_get_modification_time(this : FileInfo*, result : LibGLib::TimeVal*) : Void
  fun file_info_get_name = g_file_info_get_name(this : FileInfo*) : UInt8*
  fun file_info_get_size = g_file_info_get_size(this : FileInfo*) : Int64
  fun file_info_get_sort_order = g_file_info_get_sort_order(this : FileInfo*) : Int32
  fun file_info_get_symbolic_icon = g_file_info_get_symbolic_icon(this : FileInfo*) : LibGio::Icon*
  fun file_info_get_symlink_target = g_file_info_get_symlink_target(this : FileInfo*) : UInt8*
  fun file_info_has_attribute = g_file_info_has_attribute(this : FileInfo*, attribute : UInt8*) : Bool
  fun file_info_has_namespace = g_file_info_has_namespace(this : FileInfo*, name_space : UInt8*) : Bool
  fun file_info_list_attributes = g_file_info_list_attributes(this : FileInfo*, name_space : UInt8*) : UInt8**
  fun file_info_remove_attribute = g_file_info_remove_attribute(this : FileInfo*, attribute : UInt8*) : Void
  fun file_info_set_attribute = g_file_info_set_attribute(this : FileInfo*, attribute : UInt8*, type : LibGio::FileAttributeType, value_p : Void*) : Void
  fun file_info_set_attribute_boolean = g_file_info_set_attribute_boolean(this : FileInfo*, attribute : UInt8*, attr_value : Bool) : Void
  fun file_info_set_attribute_byte_string = g_file_info_set_attribute_byte_string(this : FileInfo*, attribute : UInt8*, attr_value : UInt8*) : Void
  fun file_info_set_attribute_int32 = g_file_info_set_attribute_int32(this : FileInfo*, attribute : UInt8*, attr_value : Int32) : Void
  fun file_info_set_attribute_int64 = g_file_info_set_attribute_int64(this : FileInfo*, attribute : UInt8*, attr_value : Int64) : Void
  fun file_info_set_attribute_mask = g_file_info_set_attribute_mask(this : FileInfo*, mask : LibGio::FileAttributeMatcher*) : Void
  fun file_info_set_attribute_object = g_file_info_set_attribute_object(this : FileInfo*, attribute : UInt8*, attr_value : LibGObject::Object*) : Void
  fun file_info_set_attribute_status = g_file_info_set_attribute_status(this : FileInfo*, attribute : UInt8*, status : LibGio::FileAttributeStatus) : Bool
  fun file_info_set_attribute_string = g_file_info_set_attribute_string(this : FileInfo*, attribute : UInt8*, attr_value : UInt8*) : Void
  fun file_info_set_attribute_stringv = g_file_info_set_attribute_stringv(this : FileInfo*, attribute : UInt8*, attr_value : UInt8**) : Void
  fun file_info_set_attribute_uint32 = g_file_info_set_attribute_uint32(this : FileInfo*, attribute : UInt8*, attr_value : UInt32) : Void
  fun file_info_set_attribute_uint64 = g_file_info_set_attribute_uint64(this : FileInfo*, attribute : UInt8*, attr_value : UInt64) : Void
  fun file_info_set_content_type = g_file_info_set_content_type(this : FileInfo*, content_type : UInt8*) : Void
  fun file_info_set_display_name = g_file_info_set_display_name(this : FileInfo*, display_name : UInt8*) : Void
  fun file_info_set_edit_name = g_file_info_set_edit_name(this : FileInfo*, edit_name : UInt8*) : Void
  fun file_info_set_file_type = g_file_info_set_file_type(this : FileInfo*, type : LibGio::FileType) : Void
  fun file_info_set_icon = g_file_info_set_icon(this : FileInfo*, icon : LibGio::Icon*) : Void
  fun file_info_set_is_hidden = g_file_info_set_is_hidden(this : FileInfo*, is_hidden : Bool) : Void
  fun file_info_set_is_symlink = g_file_info_set_is_symlink(this : FileInfo*, is_symlink : Bool) : Void
  fun file_info_set_modification_time = g_file_info_set_modification_time(this : FileInfo*, mtime : LibGLib::TimeVal*) : Void
  fun file_info_set_name = g_file_info_set_name(this : FileInfo*, name : UInt8*) : Void
  fun file_info_set_size = g_file_info_set_size(this : FileInfo*, size : Int64) : Void
  fun file_info_set_sort_order = g_file_info_set_sort_order(this : FileInfo*, sort_order : Int32) : Void
  fun file_info_set_symbolic_icon = g_file_info_set_symbolic_icon(this : FileInfo*, icon : LibGio::Icon*) : Void
  fun file_info_set_symlink_target = g_file_info_set_symlink_target(this : FileInfo*, symlink_target : UInt8*) : Void
  fun file_info_unset_attribute_mask = g_file_info_unset_attribute_mask(this : FileInfo*) : Void

  struct FileInputStream # object
    parent_instance : LibGio::InputStream*
    priv : LibGio::FileInputStreamPrivate*
    # Virtual function can_seek
    # Virtual function query_info
    # Virtual function query_info_async
    # Virtual function query_info_finish
    # Virtual function seek
    # Virtual function tell
  end
  fun file_input_stream_query_info = g_file_input_stream_query_info(this : FileInputStream*, attributes : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_input_stream_query_info_async = g_file_input_stream_query_info_async(this : FileInputStream*, attributes : UInt8*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_input_stream_query_info_finish = g_file_input_stream_query_info_finish(this : FileInputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileInfo*

  struct FileMonitor # object
    parent_instance : LibGObject::Object*
    priv : LibGio::FileMonitorPrivate*
    # Signal changed
    # Virtual function cancel
    # Virtual function changed
    # Property cancelled : Bool
    # Property rate_limit : Int32
  end
  fun file_monitor_cancel = g_file_monitor_cancel(this : FileMonitor*) : Bool
  fun file_monitor_emit_event = g_file_monitor_emit_event(this : FileMonitor*, child : LibGio::File*, other_file : LibGio::File*, event_type : LibGio::FileMonitorEvent) : Void
  fun file_monitor_is_cancelled = g_file_monitor_is_cancelled(this : FileMonitor*) : Bool
  fun file_monitor_set_rate_limit = g_file_monitor_set_rate_limit(this : FileMonitor*, limit_msecs : Int32) : Void

  struct FileOutputStream # object
    parent_instance : LibGio::OutputStream*
    priv : LibGio::FileOutputStreamPrivate*
    # Virtual function can_seek
    # Virtual function can_truncate
    # Virtual function get_etag
    # Virtual function query_info
    # Virtual function query_info_async
    # Virtual function query_info_finish
    # Virtual function seek
    # Virtual function tell
    # Virtual function truncate_fn
  end
  fun file_output_stream_get_etag = g_file_output_stream_get_etag(this : FileOutputStream*) : UInt8*
  fun file_output_stream_query_info = g_file_output_stream_query_info(this : FileOutputStream*, attributes : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::FileInfo*
  fun file_output_stream_query_info_async = g_file_output_stream_query_info_async(this : FileOutputStream*, attributes : UInt8*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun file_output_stream_query_info_finish = g_file_output_stream_query_info_finish(this : FileOutputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::FileInfo*

  struct FilenameCompleter # object
    _data : UInt8[0]
    # Signal got-completion-data
    # Virtual function got_completion_data
  end
  fun filename_completer_new = g_filename_completer_new() : LibGio::FilenameCompleter*
  fun filename_completer_get_completion_suffix = g_filename_completer_get_completion_suffix(this : FilenameCompleter*, initial_text : UInt8*) : UInt8*
  fun filename_completer_get_completions = g_filename_completer_get_completions(this : FilenameCompleter*, initial_text : UInt8*) : UInt8**
  fun filename_completer_set_dirs_only = g_filename_completer_set_dirs_only(this : FilenameCompleter*, dirs_only : Bool) : Void

  struct FilterInputStream # object
    parent_instance : LibGio::InputStream*
    base_stream : LibGio::InputStream*
    # Property base_stream : LibGio::InputStream*
    # Property close_base_stream : Bool
  end
  fun filter_input_stream_get_base_stream = g_filter_input_stream_get_base_stream(this : FilterInputStream*) : LibGio::InputStream*
  fun filter_input_stream_get_close_base_stream = g_filter_input_stream_get_close_base_stream(this : FilterInputStream*) : Bool
  fun filter_input_stream_set_close_base_stream = g_filter_input_stream_set_close_base_stream(this : FilterInputStream*, close_base : Bool) : Void

  struct FilterOutputStream # object
    parent_instance : LibGio::OutputStream*
    base_stream : LibGio::OutputStream*
    # Property base_stream : LibGio::OutputStream*
    # Property close_base_stream : Bool
  end
  fun filter_output_stream_get_base_stream = g_filter_output_stream_get_base_stream(this : FilterOutputStream*) : LibGio::OutputStream*
  fun filter_output_stream_get_close_base_stream = g_filter_output_stream_get_close_base_stream(this : FilterOutputStream*) : Bool
  fun filter_output_stream_set_close_base_stream = g_filter_output_stream_set_close_base_stream(this : FilterOutputStream*, close_base : Bool) : Void

  struct IOModule # object
    _data : UInt8[0]
  end
  fun i_o_module_new = g_io_module_new(filename : UInt8*) : LibGio::IOModule*
  fun i_o_module_query = g_io_module_query() : UInt8**
  fun i_o_module_load = g_io_module_load(this : IOModule*) : Void
  fun i_o_module_unload = g_io_module_unload(this : IOModule*) : Void

  struct IOStream # object
    parent_instance : LibGObject::Object*
    priv : LibGio::IOStreamPrivate*
    # Virtual function close_async
    # Virtual function close_finish
    # Virtual function close_fn
    # Virtual function get_input_stream
    # Virtual function get_output_stream
    # Property closed : Bool
    # Property input_stream : LibGio::InputStream*
    # Property output_stream : LibGio::OutputStream*
  end
  fun i_o_stream_splice_finish = g_io_stream_splice_finish(result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun i_o_stream_clear_pending = g_io_stream_clear_pending(this : IOStream*) : Void
  fun i_o_stream_close = g_io_stream_close(this : IOStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun i_o_stream_close_async = g_io_stream_close_async(this : IOStream*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun i_o_stream_close_finish = g_io_stream_close_finish(this : IOStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun i_o_stream_get_input_stream = g_io_stream_get_input_stream(this : IOStream*) : LibGio::InputStream*
  fun i_o_stream_get_output_stream = g_io_stream_get_output_stream(this : IOStream*) : LibGio::OutputStream*
  fun i_o_stream_has_pending = g_io_stream_has_pending(this : IOStream*) : Bool
  fun i_o_stream_is_closed = g_io_stream_is_closed(this : IOStream*) : Bool
  fun i_o_stream_set_pending = g_io_stream_set_pending(this : IOStream*, error : LibGLib::Error**) : Bool
  fun i_o_stream_splice_async = g_io_stream_splice_async(this : IOStream*, stream2 : LibGio::IOStream*, flags : LibGio::IOStreamSpliceFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void

  struct InetAddress # object
    parent_instance : LibGObject::Object*
    priv : LibGio::InetAddressPrivate*
    # Virtual function to_string
    # Property bytes : Void*
    # Property family : LibGio::SocketFamily
    # Property is_any : Bool
    # Property is_link_local : Bool
    # Property is_loopback : Bool
    # Property is_mc_global : Bool
    # Property is_mc_link_local : Bool
    # Property is_mc_node_local : Bool
    # Property is_mc_org_local : Bool
    # Property is_mc_site_local : Bool
    # Property is_multicast : Bool
    # Property is_site_local : Bool
  end
  fun inet_address_new_any = g_inet_address_new_any(family : LibGio::SocketFamily) : LibGio::InetAddress*
  fun inet_address_new_from_bytes = g_inet_address_new_from_bytes(bytes : UInt8*, family : LibGio::SocketFamily) : LibGio::InetAddress*
  fun inet_address_new_from_string = g_inet_address_new_from_string(string : UInt8*) : LibGio::InetAddress*
  fun inet_address_new_loopback = g_inet_address_new_loopback(family : LibGio::SocketFamily) : LibGio::InetAddress*
  fun inet_address_equal = g_inet_address_equal(this : InetAddress*, other_address : LibGio::InetAddress*) : Bool
  fun inet_address_get_family = g_inet_address_get_family(this : InetAddress*) : LibGio::SocketFamily
  fun inet_address_get_is_any = g_inet_address_get_is_any(this : InetAddress*) : Bool
  fun inet_address_get_is_link_local = g_inet_address_get_is_link_local(this : InetAddress*) : Bool
  fun inet_address_get_is_loopback = g_inet_address_get_is_loopback(this : InetAddress*) : Bool
  fun inet_address_get_is_mc_global = g_inet_address_get_is_mc_global(this : InetAddress*) : Bool
  fun inet_address_get_is_mc_link_local = g_inet_address_get_is_mc_link_local(this : InetAddress*) : Bool
  fun inet_address_get_is_mc_node_local = g_inet_address_get_is_mc_node_local(this : InetAddress*) : Bool
  fun inet_address_get_is_mc_org_local = g_inet_address_get_is_mc_org_local(this : InetAddress*) : Bool
  fun inet_address_get_is_mc_site_local = g_inet_address_get_is_mc_site_local(this : InetAddress*) : Bool
  fun inet_address_get_is_multicast = g_inet_address_get_is_multicast(this : InetAddress*) : Bool
  fun inet_address_get_is_site_local = g_inet_address_get_is_site_local(this : InetAddress*) : Bool
  fun inet_address_get_native_size = g_inet_address_get_native_size(this : InetAddress*) : UInt64
  fun inet_address_to_string = g_inet_address_to_string(this : InetAddress*) : UInt8*

  struct InetAddressMask # object
    parent_instance : LibGObject::Object*
    priv : LibGio::InetAddressMaskPrivate*
    # Property address : LibGio::InetAddress*
    # Property family : LibGio::SocketFamily
    # Property length : UInt32
  end
  fun inet_address_mask_new = g_inet_address_mask_new(addr : LibGio::InetAddress*, length : UInt32, error : LibGLib::Error**) : LibGio::InetAddressMask*
  fun inet_address_mask_new_from_string = g_inet_address_mask_new_from_string(mask_string : UInt8*, error : LibGLib::Error**) : LibGio::InetAddressMask*
  fun inet_address_mask_equal = g_inet_address_mask_equal(this : InetAddressMask*, mask2 : LibGio::InetAddressMask*) : Bool
  fun inet_address_mask_get_address = g_inet_address_mask_get_address(this : InetAddressMask*) : LibGio::InetAddress*
  fun inet_address_mask_get_family = g_inet_address_mask_get_family(this : InetAddressMask*) : LibGio::SocketFamily
  fun inet_address_mask_get_length = g_inet_address_mask_get_length(this : InetAddressMask*) : UInt32
  fun inet_address_mask_matches = g_inet_address_mask_matches(this : InetAddressMask*, address : LibGio::InetAddress*) : Bool
  fun inet_address_mask_to_string = g_inet_address_mask_to_string(this : InetAddressMask*) : UInt8*

  struct InetSocketAddress # object
    parent_instance : LibGio::SocketAddress*
    priv : LibGio::InetSocketAddressPrivate*
    # Property address : LibGio::InetAddress*
    # Property flowinfo : UInt32
    # Property port : UInt32
    # Property scope_id : UInt32
  end
  fun inet_socket_address_new = g_inet_socket_address_new(address : LibGio::InetAddress*, port : UInt16) : LibGio::SocketAddress*
  fun inet_socket_address_new_from_string = g_inet_socket_address_new_from_string(address : UInt8*, port : UInt32) : LibGio::SocketAddress*
  fun inet_socket_address_get_address = g_inet_socket_address_get_address(this : InetSocketAddress*) : LibGio::InetAddress*
  fun inet_socket_address_get_flowinfo = g_inet_socket_address_get_flowinfo(this : InetSocketAddress*) : UInt32
  fun inet_socket_address_get_port = g_inet_socket_address_get_port(this : InetSocketAddress*) : UInt16
  fun inet_socket_address_get_scope_id = g_inet_socket_address_get_scope_id(this : InetSocketAddress*) : UInt32

  struct InputStream # object
    parent_instance : LibGObject::Object*
    priv : LibGio::InputStreamPrivate*
    # Virtual function close_async
    # Virtual function close_finish
    # Virtual function close_fn
    # Virtual function read_async
    # Virtual function read_finish
    # Virtual function read_fn
    # Virtual function skip
    # Virtual function skip_async
    # Virtual function skip_finish
  end
  fun input_stream_clear_pending = g_input_stream_clear_pending(this : InputStream*) : Void
  fun input_stream_close = g_input_stream_close(this : InputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun input_stream_close_async = g_input_stream_close_async(this : InputStream*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun input_stream_close_finish = g_input_stream_close_finish(this : InputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun input_stream_has_pending = g_input_stream_has_pending(this : InputStream*) : Bool
  fun input_stream_is_closed = g_input_stream_is_closed(this : InputStream*) : Bool
  fun input_stream_read = g_input_stream_read(this : InputStream*, buffer : UInt8*, count : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun input_stream_read_all = g_input_stream_read_all(this : InputStream*, buffer : UInt8*, count : UInt64, bytes_read : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun input_stream_read_all_async = g_input_stream_read_all_async(this : InputStream*, buffer : UInt8*, count : UInt64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun input_stream_read_all_finish = g_input_stream_read_all_finish(this : InputStream*, result : LibGio::AsyncResult*, bytes_read : UInt64*, error : LibGLib::Error**) : Bool
  fun input_stream_read_async = g_input_stream_read_async(this : InputStream*, buffer : UInt8*, count : UInt64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun input_stream_read_bytes = g_input_stream_read_bytes(this : InputStream*, count : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGLib::Bytes*
  fun input_stream_read_bytes_async = g_input_stream_read_bytes_async(this : InputStream*, count : UInt64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun input_stream_read_bytes_finish = g_input_stream_read_bytes_finish(this : InputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGLib::Bytes*
  fun input_stream_read_finish = g_input_stream_read_finish(this : InputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Int64
  fun input_stream_set_pending = g_input_stream_set_pending(this : InputStream*, error : LibGLib::Error**) : Bool
  fun input_stream_skip = g_input_stream_skip(this : InputStream*, count : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun input_stream_skip_async = g_input_stream_skip_async(this : InputStream*, count : UInt64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun input_stream_skip_finish = g_input_stream_skip_finish(this : InputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Int64

  struct ListStore # object
    _data : UInt8[0]
    # Property item_type : UInt64
  end
  fun list_store_new = g_list_store_new(item_type : UInt64) : LibGio::ListStore*
  fun list_store_append = g_list_store_append(this : ListStore*, item : LibGObject::Object*) : Void
  fun list_store_insert = g_list_store_insert(this : ListStore*, position : UInt32, item : LibGObject::Object*) : Void
  fun list_store_insert_sorted = g_list_store_insert_sorted(this : ListStore*, item : LibGObject::Object*, compare_func : LibGLib::CompareDataFunc, user_data : Void*) : UInt32
  fun list_store_remove = g_list_store_remove(this : ListStore*, position : UInt32) : Void
  fun list_store_remove_all = g_list_store_remove_all(this : ListStore*) : Void
  fun list_store_sort = g_list_store_sort(this : ListStore*, compare_func : LibGLib::CompareDataFunc, user_data : Void*) : Void
  fun list_store_splice = g_list_store_splice(this : ListStore*, position : UInt32, n_removals : UInt32, additions : LibGObject::Object**, n_additions : UInt32) : Void

  struct MemoryInputStream # object
    parent_instance : LibGio::InputStream*
    priv : LibGio::MemoryInputStreamPrivate*
  end
  fun memory_input_stream_new = g_memory_input_stream_new() : LibGio::InputStream*
  fun memory_input_stream_new_from_bytes = g_memory_input_stream_new_from_bytes(bytes : LibGLib::Bytes*) : LibGio::InputStream*
  fun memory_input_stream_new_from_data = g_memory_input_stream_new_from_data(data : UInt8*, len : Int64, destroy : LibGLib::DestroyNotify) : LibGio::InputStream*
  fun memory_input_stream_add_bytes = g_memory_input_stream_add_bytes(this : MemoryInputStream*, bytes : LibGLib::Bytes*) : Void
  fun memory_input_stream_add_data = g_memory_input_stream_add_data(this : MemoryInputStream*, data : UInt8*, len : Int64, destroy : LibGLib::DestroyNotify) : Void

  struct MemoryOutputStream # object
    parent_instance : LibGio::OutputStream*
    priv : LibGio::MemoryOutputStreamPrivate*
    # Property data : Void*
    # Property data_size : UInt64
    # Property size : UInt64
  end
  fun memory_output_stream_new_resizable = g_memory_output_stream_new_resizable() : LibGio::OutputStream*
  fun memory_output_stream_get_data = g_memory_output_stream_get_data(this : MemoryOutputStream*) : Void*
  fun memory_output_stream_get_data_size = g_memory_output_stream_get_data_size(this : MemoryOutputStream*) : UInt64
  fun memory_output_stream_get_size = g_memory_output_stream_get_size(this : MemoryOutputStream*) : UInt64
  fun memory_output_stream_steal_as_bytes = g_memory_output_stream_steal_as_bytes(this : MemoryOutputStream*) : LibGLib::Bytes*
  fun memory_output_stream_steal_data = g_memory_output_stream_steal_data(this : MemoryOutputStream*) : Void*

  struct Menu # object
    _data : UInt8[0]
  end
  fun menu_new = g_menu_new() : LibGio::Menu*
  fun menu_append = g_menu_append(this : Menu*, label : UInt8*, detailed_action : UInt8*) : Void
  fun menu_append_item = g_menu_append_item(this : Menu*, item : LibGio::MenuItem*) : Void
  fun menu_append_section = g_menu_append_section(this : Menu*, label : UInt8*, section : LibGio::MenuModel*) : Void
  fun menu_append_submenu = g_menu_append_submenu(this : Menu*, label : UInt8*, submenu : LibGio::MenuModel*) : Void
  fun menu_freeze = g_menu_freeze(this : Menu*) : Void
  fun menu_insert = g_menu_insert(this : Menu*, position : Int32, label : UInt8*, detailed_action : UInt8*) : Void
  fun menu_insert_item = g_menu_insert_item(this : Menu*, position : Int32, item : LibGio::MenuItem*) : Void
  fun menu_insert_section = g_menu_insert_section(this : Menu*, position : Int32, label : UInt8*, section : LibGio::MenuModel*) : Void
  fun menu_insert_submenu = g_menu_insert_submenu(this : Menu*, position : Int32, label : UInt8*, submenu : LibGio::MenuModel*) : Void
  fun menu_prepend = g_menu_prepend(this : Menu*, label : UInt8*, detailed_action : UInt8*) : Void
  fun menu_prepend_item = g_menu_prepend_item(this : Menu*, item : LibGio::MenuItem*) : Void
  fun menu_prepend_section = g_menu_prepend_section(this : Menu*, label : UInt8*, section : LibGio::MenuModel*) : Void
  fun menu_prepend_submenu = g_menu_prepend_submenu(this : Menu*, label : UInt8*, submenu : LibGio::MenuModel*) : Void
  fun menu_remove = g_menu_remove(this : Menu*, position : Int32) : Void
  fun menu_remove_all = g_menu_remove_all(this : Menu*) : Void

  struct MenuAttributeIter # object
    parent_instance : LibGObject::Object*
    priv : LibGio::MenuAttributeIterPrivate*
    # Virtual function get_next
  end
  fun menu_attribute_iter_get_name = g_menu_attribute_iter_get_name(this : MenuAttributeIter*) : UInt8*
  fun menu_attribute_iter_get_next = g_menu_attribute_iter_get_next(this : MenuAttributeIter*, out_name : UInt8**, value : LibGLib::Variant**) : Bool
  fun menu_attribute_iter_get_value = g_menu_attribute_iter_get_value(this : MenuAttributeIter*) : LibGLib::Variant*
  fun menu_attribute_iter_next = g_menu_attribute_iter_next(this : MenuAttributeIter*) : Bool

  struct MenuItem # object
    _data : UInt8[0]
  end
  fun menu_item_new = g_menu_item_new(label : UInt8*, detailed_action : UInt8*) : LibGio::MenuItem*
  fun menu_item_new_from_model = g_menu_item_new_from_model(model : LibGio::MenuModel*, item_index : Int32) : LibGio::MenuItem*
  fun menu_item_new_section = g_menu_item_new_section(label : UInt8*, section : LibGio::MenuModel*) : LibGio::MenuItem*
  fun menu_item_new_submenu = g_menu_item_new_submenu(label : UInt8*, submenu : LibGio::MenuModel*) : LibGio::MenuItem*
  fun menu_item_get_attribute_value = g_menu_item_get_attribute_value(this : MenuItem*, attribute : UInt8*, expected_type : LibGLib::VariantType*) : LibGLib::Variant*
  fun menu_item_get_link = g_menu_item_get_link(this : MenuItem*, link : UInt8*) : LibGio::MenuModel*
  fun menu_item_set_action_and_target_value = g_menu_item_set_action_and_target_value(this : MenuItem*, action : UInt8*, target_value : LibGLib::Variant*) : Void
  fun menu_item_set_attribute_value = g_menu_item_set_attribute_value(this : MenuItem*, attribute : UInt8*, value : LibGLib::Variant*) : Void
  fun menu_item_set_detailed_action = g_menu_item_set_detailed_action(this : MenuItem*, detailed_action : UInt8*) : Void
  fun menu_item_set_icon = g_menu_item_set_icon(this : MenuItem*, icon : LibGio::Icon*) : Void
  fun menu_item_set_label = g_menu_item_set_label(this : MenuItem*, label : UInt8*) : Void
  fun menu_item_set_link = g_menu_item_set_link(this : MenuItem*, link : UInt8*, model : LibGio::MenuModel*) : Void
  fun menu_item_set_section = g_menu_item_set_section(this : MenuItem*, section : LibGio::MenuModel*) : Void
  fun menu_item_set_submenu = g_menu_item_set_submenu(this : MenuItem*, submenu : LibGio::MenuModel*) : Void

  struct MenuLinkIter # object
    parent_instance : LibGObject::Object*
    priv : LibGio::MenuLinkIterPrivate*
    # Virtual function get_next
  end
  fun menu_link_iter_get_name = g_menu_link_iter_get_name(this : MenuLinkIter*) : UInt8*
  fun menu_link_iter_get_next = g_menu_link_iter_get_next(this : MenuLinkIter*, out_link : UInt8**, value : LibGio::MenuModel**) : Bool
  fun menu_link_iter_get_value = g_menu_link_iter_get_value(this : MenuLinkIter*) : LibGio::MenuModel*
  fun menu_link_iter_next = g_menu_link_iter_next(this : MenuLinkIter*) : Bool

  struct MenuModel # object
    parent_instance : LibGObject::Object*
    priv : LibGio::MenuModelPrivate*
    # Signal items-changed
    # Virtual function get_item_attribute_value
    # Virtual function get_item_attributes
    # Virtual function get_item_link
    # Virtual function get_item_links
    # Virtual function get_n_items
    # Virtual function is_mutable
    # Virtual function iterate_item_attributes
    # Virtual function iterate_item_links
  end
  fun menu_model_get_item_attribute_value = g_menu_model_get_item_attribute_value(this : MenuModel*, item_index : Int32, attribute : UInt8*, expected_type : LibGLib::VariantType*) : LibGLib::Variant*
  fun menu_model_get_item_link = g_menu_model_get_item_link(this : MenuModel*, item_index : Int32, link : UInt8*) : LibGio::MenuModel*
  fun menu_model_get_n_items = g_menu_model_get_n_items(this : MenuModel*) : Int32
  fun menu_model_is_mutable = g_menu_model_is_mutable(this : MenuModel*) : Bool
  fun menu_model_items_changed = g_menu_model_items_changed(this : MenuModel*, position : Int32, removed : Int32, added : Int32) : Void
  fun menu_model_iterate_item_attributes = g_menu_model_iterate_item_attributes(this : MenuModel*, item_index : Int32) : LibGio::MenuAttributeIter*
  fun menu_model_iterate_item_links = g_menu_model_iterate_item_links(this : MenuModel*, item_index : Int32) : LibGio::MenuLinkIter*

  struct MountOperation # object
    parent_instance : LibGObject::Object*
    priv : LibGio::MountOperationPrivate*
    # Signal aborted
    # Signal ask-password
    # Signal ask-question
    # Signal reply
    # Signal show-processes
    # Signal show-unmount-progress
    # Virtual function aborted
    # Virtual function ask_password
    # Virtual function ask_question
    # Virtual function reply
    # Virtual function show_processes
    # Virtual function show_unmount_progress
    # Property anonymous : Bool
    # Property choice : Int32
    # Property domain : UInt8*
    # Property is_tcrypt_hidden_volume : Bool
    # Property is_tcrypt_system_volume : Bool
    # Property password : UInt8*
    # Property password_save : LibGio::PasswordSave
    # Property pim : UInt32
    # Property username : UInt8*
  end
  fun mount_operation_new = g_mount_operation_new() : LibGio::MountOperation*
  fun mount_operation_get_anonymous = g_mount_operation_get_anonymous(this : MountOperation*) : Bool
  fun mount_operation_get_choice = g_mount_operation_get_choice(this : MountOperation*) : Int32
  fun mount_operation_get_domain = g_mount_operation_get_domain(this : MountOperation*) : UInt8*
  fun mount_operation_get_is_tcrypt_hidden_volume = g_mount_operation_get_is_tcrypt_hidden_volume(this : MountOperation*) : Bool
  fun mount_operation_get_is_tcrypt_system_volume = g_mount_operation_get_is_tcrypt_system_volume(this : MountOperation*) : Bool
  fun mount_operation_get_password = g_mount_operation_get_password(this : MountOperation*) : UInt8*
  fun mount_operation_get_password_save = g_mount_operation_get_password_save(this : MountOperation*) : LibGio::PasswordSave
  fun mount_operation_get_pim = g_mount_operation_get_pim(this : MountOperation*) : UInt32
  fun mount_operation_get_username = g_mount_operation_get_username(this : MountOperation*) : UInt8*
  fun mount_operation_reply = g_mount_operation_reply(this : MountOperation*, result : LibGio::MountOperationResult) : Void
  fun mount_operation_set_anonymous = g_mount_operation_set_anonymous(this : MountOperation*, anonymous : Bool) : Void
  fun mount_operation_set_choice = g_mount_operation_set_choice(this : MountOperation*, choice : Int32) : Void
  fun mount_operation_set_domain = g_mount_operation_set_domain(this : MountOperation*, domain : UInt8*) : Void
  fun mount_operation_set_is_tcrypt_hidden_volume = g_mount_operation_set_is_tcrypt_hidden_volume(this : MountOperation*, hidden_volume : Bool) : Void
  fun mount_operation_set_is_tcrypt_system_volume = g_mount_operation_set_is_tcrypt_system_volume(this : MountOperation*, system_volume : Bool) : Void
  fun mount_operation_set_password = g_mount_operation_set_password(this : MountOperation*, password : UInt8*) : Void
  fun mount_operation_set_password_save = g_mount_operation_set_password_save(this : MountOperation*, save : LibGio::PasswordSave) : Void
  fun mount_operation_set_pim = g_mount_operation_set_pim(this : MountOperation*, pim : UInt32) : Void
  fun mount_operation_set_username = g_mount_operation_set_username(this : MountOperation*, username : UInt8*) : Void

  struct NativeVolumeMonitor # object
    parent_instance : LibGio::VolumeMonitor*
  end

  struct NetworkAddress # object
    parent_instance : LibGObject::Object*
    priv : LibGio::NetworkAddressPrivate*
    # Property hostname : UInt8*
    # Property port : UInt32
    # Property scheme : UInt8*
  end
  fun network_address_new = g_network_address_new(hostname : UInt8*, port : UInt16) : LibGio::NetworkAddress*
  fun network_address_new_loopback = g_network_address_new_loopback(port : UInt16) : LibGio::NetworkAddress*
  fun network_address_parse = g_network_address_parse(host_and_port : UInt8*, default_port : UInt16, error : LibGLib::Error**) : LibGio::NetworkAddress*
  fun network_address_parse_uri = g_network_address_parse_uri(uri : UInt8*, default_port : UInt16, error : LibGLib::Error**) : LibGio::NetworkAddress*
  fun network_address_get_hostname = g_network_address_get_hostname(this : NetworkAddress*) : UInt8*
  fun network_address_get_port = g_network_address_get_port(this : NetworkAddress*) : UInt16
  fun network_address_get_scheme = g_network_address_get_scheme(this : NetworkAddress*) : UInt8*

  struct NetworkService # object
    parent_instance : LibGObject::Object*
    priv : LibGio::NetworkServicePrivate*
    # Property domain : UInt8*
    # Property protocol : UInt8*
    # Property scheme : UInt8*
    # Property service : UInt8*
  end
  fun network_service_new = g_network_service_new(service : UInt8*, protocol : UInt8*, domain : UInt8*) : LibGio::NetworkService*
  fun network_service_get_domain = g_network_service_get_domain(this : NetworkService*) : UInt8*
  fun network_service_get_protocol = g_network_service_get_protocol(this : NetworkService*) : UInt8*
  fun network_service_get_scheme = g_network_service_get_scheme(this : NetworkService*) : UInt8*
  fun network_service_get_service = g_network_service_get_service(this : NetworkService*) : UInt8*
  fun network_service_set_scheme = g_network_service_set_scheme(this : NetworkService*, scheme : UInt8*) : Void

  struct Notification # object
    _data : UInt8[0]
  end
  fun notification_new = g_notification_new(title : UInt8*) : LibGio::Notification*
  fun notification_add_button = g_notification_add_button(this : Notification*, label : UInt8*, detailed_action : UInt8*) : Void
  fun notification_add_button_with_target = g_notification_add_button_with_target_value(this : Notification*, label : UInt8*, action : UInt8*, target : LibGLib::Variant*) : Void
  fun notification_set_body = g_notification_set_body(this : Notification*, body : UInt8*) : Void
  fun notification_set_default_action = g_notification_set_default_action(this : Notification*, detailed_action : UInt8*) : Void
  fun notification_set_default_action_and_target = g_notification_set_default_action_and_target_value(this : Notification*, action : UInt8*, target : LibGLib::Variant*) : Void
  fun notification_set_icon = g_notification_set_icon(this : Notification*, icon : LibGio::Icon*) : Void
  fun notification_set_priority = g_notification_set_priority(this : Notification*, priority : LibGio::NotificationPriority) : Void
  fun notification_set_title = g_notification_set_title(this : Notification*, title : UInt8*) : Void
  fun notification_set_urgent = g_notification_set_urgent(this : Notification*, urgent : Bool) : Void

  struct OutputStream # object
    parent_instance : LibGObject::Object*
    priv : LibGio::OutputStreamPrivate*
    # Virtual function close_async
    # Virtual function close_finish
    # Virtual function close_fn
    # Virtual function flush
    # Virtual function flush_async
    # Virtual function flush_finish
    # Virtual function splice
    # Virtual function splice_async
    # Virtual function splice_finish
    # Virtual function write_async
    # Virtual function write_finish
    # Virtual function write_fn
  end
  fun output_stream_clear_pending = g_output_stream_clear_pending(this : OutputStream*) : Void
  fun output_stream_close = g_output_stream_close(this : OutputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun output_stream_close_async = g_output_stream_close_async(this : OutputStream*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun output_stream_close_finish = g_output_stream_close_finish(this : OutputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun output_stream_flush = g_output_stream_flush(this : OutputStream*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun output_stream_flush_async = g_output_stream_flush_async(this : OutputStream*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun output_stream_flush_finish = g_output_stream_flush_finish(this : OutputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun output_stream_has_pending = g_output_stream_has_pending(this : OutputStream*) : Bool
  fun output_stream_is_closed = g_output_stream_is_closed(this : OutputStream*) : Bool
  fun output_stream_is_closing = g_output_stream_is_closing(this : OutputStream*) : Bool
  fun output_stream_set_pending = g_output_stream_set_pending(this : OutputStream*, error : LibGLib::Error**) : Bool
  fun output_stream_splice = g_output_stream_splice(this : OutputStream*, source : LibGio::InputStream*, flags : LibGio::OutputStreamSpliceFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun output_stream_splice_async = g_output_stream_splice_async(this : OutputStream*, source : LibGio::InputStream*, flags : LibGio::OutputStreamSpliceFlags, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun output_stream_splice_finish = g_output_stream_splice_finish(this : OutputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Int64
  fun output_stream_write = g_output_stream_write(this : OutputStream*, buffer : UInt8*, count : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun output_stream_write_all = g_output_stream_write_all(this : OutputStream*, buffer : UInt8*, count : UInt64, bytes_written : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun output_stream_write_all_async = g_output_stream_write_all_async(this : OutputStream*, buffer : UInt8*, count : UInt64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun output_stream_write_all_finish = g_output_stream_write_all_finish(this : OutputStream*, result : LibGio::AsyncResult*, bytes_written : UInt64*, error : LibGLib::Error**) : Bool
  fun output_stream_write_async = g_output_stream_write_async(this : OutputStream*, buffer : UInt8*, count : UInt64, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun output_stream_write_bytes = g_output_stream_write_bytes(this : OutputStream*, bytes : LibGLib::Bytes*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun output_stream_write_bytes_async = g_output_stream_write_bytes_async(this : OutputStream*, bytes : LibGLib::Bytes*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun output_stream_write_bytes_finish = g_output_stream_write_bytes_finish(this : OutputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Int64
  fun output_stream_write_finish = g_output_stream_write_finish(this : OutputStream*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Int64

  struct Permission # object
    parent_instance : LibGObject::Object*
    priv : LibGio::PermissionPrivate*
    # Virtual function acquire
    # Virtual function acquire_async
    # Virtual function acquire_finish
    # Virtual function release
    # Virtual function release_async
    # Virtual function release_finish
    # Property allowed : Bool
    # Property can_acquire : Bool
    # Property can_release : Bool
  end
  fun permission_acquire = g_permission_acquire(this : Permission*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun permission_acquire_async = g_permission_acquire_async(this : Permission*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun permission_acquire_finish = g_permission_acquire_finish(this : Permission*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun permission_get_allowed = g_permission_get_allowed(this : Permission*) : Bool
  fun permission_get_can_acquire = g_permission_get_can_acquire(this : Permission*) : Bool
  fun permission_get_can_release = g_permission_get_can_release(this : Permission*) : Bool
  fun permission_impl_update = g_permission_impl_update(this : Permission*, allowed : Bool, can_acquire : Bool, can_release : Bool) : Void
  fun permission_release = g_permission_release(this : Permission*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun permission_release_async = g_permission_release_async(this : Permission*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun permission_release_finish = g_permission_release_finish(this : Permission*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool

  struct PropertyAction # object
    _data : UInt8[0]
    # Property enabled : Bool
    # Property invert_boolean : Bool
    # Property name : UInt8*
    # Property object : LibGObject::Object*
    # Property parameter_type : LibGLib::VariantType
    # Property property_name : UInt8*
    # Property state : LibGLib::Variant
    # Property state_type : LibGLib::VariantType
  end
  fun property_action_new = g_property_action_new(name : UInt8*, object : LibGObject::Object*, property_name : UInt8*) : LibGio::PropertyAction*

  struct ProxyAddress # object
    parent_instance : LibGio::InetSocketAddress*
    priv : LibGio::ProxyAddressPrivate*
    # Property destination_hostname : UInt8*
    # Property destination_port : UInt32
    # Property destination_protocol : UInt8*
    # Property password : UInt8*
    # Property protocol : UInt8*
    # Property uri : UInt8*
    # Property username : UInt8*
  end
  fun proxy_address_new = g_proxy_address_new(inetaddr : LibGio::InetAddress*, port : UInt16, protocol : UInt8*, dest_hostname : UInt8*, dest_port : UInt16, username : UInt8*, password : UInt8*) : LibGio::SocketAddress*
  fun proxy_address_get_destination_hostname = g_proxy_address_get_destination_hostname(this : ProxyAddress*) : UInt8*
  fun proxy_address_get_destination_port = g_proxy_address_get_destination_port(this : ProxyAddress*) : UInt16
  fun proxy_address_get_destination_protocol = g_proxy_address_get_destination_protocol(this : ProxyAddress*) : UInt8*
  fun proxy_address_get_password = g_proxy_address_get_password(this : ProxyAddress*) : UInt8*
  fun proxy_address_get_protocol = g_proxy_address_get_protocol(this : ProxyAddress*) : UInt8*
  fun proxy_address_get_uri = g_proxy_address_get_uri(this : ProxyAddress*) : UInt8*
  fun proxy_address_get_username = g_proxy_address_get_username(this : ProxyAddress*) : UInt8*

  struct ProxyAddressEnumerator # object
    parent_instance : LibGio::SocketAddressEnumerator*
    priv : LibGio::ProxyAddressEnumeratorPrivate*
    # Property connectable : LibGio::SocketConnectable
    # Property default_port : UInt32
    # Property proxy_resolver : LibGio::ProxyResolver
    # Property uri : UInt8*
  end

  struct Resolver # object
    parent_instance : LibGObject::Object*
    priv : LibGio::ResolverPrivate*
    # Signal reload
    # Virtual function lookup_by_address
    # Virtual function lookup_by_address_async
    # Virtual function lookup_by_address_finish
    # Virtual function lookup_by_name
    # Virtual function lookup_by_name_async
    # Virtual function lookup_by_name_finish
    # Virtual function lookup_records
    # Virtual function lookup_records_async
    # Virtual function lookup_records_finish
    # Virtual function lookup_service_async
    # Virtual function lookup_service_finish
    # Virtual function reload
  end
  fun resolver_get_default = g_resolver_get_default() : LibGio::Resolver*
  fun resolver_lookup_by_address = g_resolver_lookup_by_address(this : Resolver*, address : LibGio::InetAddress*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8*
  fun resolver_lookup_by_address_async = g_resolver_lookup_by_address_async(this : Resolver*, address : LibGio::InetAddress*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun resolver_lookup_by_address_finish = g_resolver_lookup_by_address_finish(this : Resolver*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : UInt8*
  fun resolver_lookup_by_name = g_resolver_lookup_by_name(this : Resolver*, hostname : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Void**
  fun resolver_lookup_by_name_async = g_resolver_lookup_by_name_async(this : Resolver*, hostname : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun resolver_lookup_by_name_finish = g_resolver_lookup_by_name_finish(this : Resolver*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Void**
  fun resolver_lookup_records = g_resolver_lookup_records(this : Resolver*, rrname : UInt8*, record_type : LibGio::ResolverRecordType, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Void**
  fun resolver_lookup_records_async = g_resolver_lookup_records_async(this : Resolver*, rrname : UInt8*, record_type : LibGio::ResolverRecordType, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun resolver_lookup_records_finish = g_resolver_lookup_records_finish(this : Resolver*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Void**
  fun resolver_lookup_service = g_resolver_lookup_service(this : Resolver*, service : UInt8*, protocol : UInt8*, domain : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Void**
  fun resolver_lookup_service_async = g_resolver_lookup_service_async(this : Resolver*, service : UInt8*, protocol : UInt8*, domain : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun resolver_lookup_service_finish = g_resolver_lookup_service_finish(this : Resolver*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Void**
  fun resolver_set_default = g_resolver_set_default(this : Resolver*) : Void

  struct Settings # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SettingsPrivate*
    # Signal change-event
    # Signal changed
    # Signal writable-change-event
    # Signal writable-changed
    # Virtual function change_event
    # Virtual function changed
    # Virtual function writable_change_event
    # Virtual function writable_changed
    # Property backend : LibGio::SettingsBackend*
    # Property delay_apply : Bool
    # Property has_unapplied : Bool
    # Property path : UInt8*
    # Property schema : UInt8*
    # Property schema_id : UInt8*
    # Property settings_schema : LibGio::SettingsSchema
  end
  fun settings_new = g_settings_new(schema_id : UInt8*) : LibGio::Settings*
  fun settings_new_full = g_settings_new_full(schema : LibGio::SettingsSchema*, backend : LibGio::SettingsBackend*, path : UInt8*) : LibGio::Settings*
  fun settings_new_with_backend = g_settings_new_with_backend(schema_id : UInt8*, backend : LibGio::SettingsBackend*) : LibGio::Settings*
  fun settings_new_with_backend_and_path = g_settings_new_with_backend_and_path(schema_id : UInt8*, backend : LibGio::SettingsBackend*, path : UInt8*) : LibGio::Settings*
  fun settings_new_with_path = g_settings_new_with_path(schema_id : UInt8*, path : UInt8*) : LibGio::Settings*
  fun settings_list_relocatable_schemas = g_settings_list_relocatable_schemas() : UInt8**
  fun settings_list_schemas = g_settings_list_schemas() : UInt8**
  fun settings_sync = g_settings_sync() : Void
  fun settings_unbind = g_settings_unbind(object : LibGObject::Object*, property : UInt8*) : Void
  fun settings_apply = g_settings_apply(this : Settings*) : Void
  fun settings_bind = g_settings_bind(this : Settings*, key : UInt8*, object : LibGObject::Object*, property : UInt8*, flags : LibGio::SettingsBindFlags) : Void
  fun settings_bind_writable = g_settings_bind_writable(this : Settings*, key : UInt8*, object : LibGObject::Object*, property : UInt8*, inverted : Bool) : Void
  fun settings_create_action = g_settings_create_action(this : Settings*, key : UInt8*) : LibGio::Action*
  fun settings_delay = g_settings_delay(this : Settings*) : Void
  fun settings_get_boolean = g_settings_get_boolean(this : Settings*, key : UInt8*) : Bool
  fun settings_get_child = g_settings_get_child(this : Settings*, name : UInt8*) : LibGio::Settings*
  fun settings_get_default_value = g_settings_get_default_value(this : Settings*, key : UInt8*) : LibGLib::Variant*
  fun settings_get_double = g_settings_get_double(this : Settings*, key : UInt8*) : Float64
  fun settings_get_enum = g_settings_get_enum(this : Settings*, key : UInt8*) : Int32
  fun settings_get_flags = g_settings_get_flags(this : Settings*, key : UInt8*) : UInt32
  fun settings_get_has_unapplied = g_settings_get_has_unapplied(this : Settings*) : Bool
  fun settings_get_int = g_settings_get_int(this : Settings*, key : UInt8*) : Int32
  fun settings_get_int64 = g_settings_get_int64(this : Settings*, key : UInt8*) : Int64
  fun settings_get_mapped = g_settings_get_mapped(this : Settings*, key : UInt8*, mapping : LibGio::SettingsGetMapping, user_data : Void*) : Void*
  fun settings_get_range = g_settings_get_range(this : Settings*, key : UInt8*) : LibGLib::Variant*
  fun settings_get_string = g_settings_get_string(this : Settings*, key : UInt8*) : UInt8*
  fun settings_get_strv = g_settings_get_strv(this : Settings*, key : UInt8*) : UInt8**
  fun settings_get_uint = g_settings_get_uint(this : Settings*, key : UInt8*) : UInt32
  fun settings_get_uint64 = g_settings_get_uint64(this : Settings*, key : UInt8*) : UInt64
  fun settings_get_user_value = g_settings_get_user_value(this : Settings*, key : UInt8*) : LibGLib::Variant*
  fun settings_get_value = g_settings_get_value(this : Settings*, key : UInt8*) : LibGLib::Variant*
  fun settings_is_writable = g_settings_is_writable(this : Settings*, name : UInt8*) : Bool
  fun settings_list_children = g_settings_list_children(this : Settings*) : UInt8**
  fun settings_list_keys = g_settings_list_keys(this : Settings*) : UInt8**
  fun settings_range_check = g_settings_range_check(this : Settings*, key : UInt8*, value : LibGLib::Variant*) : Bool
  fun settings_reset = g_settings_reset(this : Settings*, key : UInt8*) : Void
  fun settings_revert = g_settings_revert(this : Settings*) : Void
  fun settings_set_boolean = g_settings_set_boolean(this : Settings*, key : UInt8*, value : Bool) : Bool
  fun settings_set_double = g_settings_set_double(this : Settings*, key : UInt8*, value : Float64) : Bool
  fun settings_set_enum = g_settings_set_enum(this : Settings*, key : UInt8*, value : Int32) : Bool
  fun settings_set_flags = g_settings_set_flags(this : Settings*, key : UInt8*, value : UInt32) : Bool
  fun settings_set_int = g_settings_set_int(this : Settings*, key : UInt8*, value : Int32) : Bool
  fun settings_set_int64 = g_settings_set_int64(this : Settings*, key : UInt8*, value : Int64) : Bool
  fun settings_set_string = g_settings_set_string(this : Settings*, key : UInt8*, value : UInt8*) : Bool
  fun settings_set_strv = g_settings_set_strv(this : Settings*, key : UInt8*, value : UInt8**) : Bool
  fun settings_set_uint = g_settings_set_uint(this : Settings*, key : UInt8*, value : UInt32) : Bool
  fun settings_set_uint64 = g_settings_set_uint64(this : Settings*, key : UInt8*, value : UInt64) : Bool
  fun settings_set_value = g_settings_set_value(this : Settings*, key : UInt8*, value : LibGLib::Variant*) : Bool

  struct SettingsBackend # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SettingsBackendPrivate*
    # Virtual function get_writable
    # Virtual function read
    # Virtual function read_user_value
    # Virtual function reset
    # Virtual function subscribe
    # Virtual function sync
    # Virtual function unsubscribe
    # Virtual function write
    # Virtual function write_tree
  end
  fun settings_backend_flatten_tree = g_settings_backend_flatten_tree(tree : LibGLib::Tree*, path : UInt8**, keys : UInt8***, values : LibGLib::Variant***) : Void
  fun settings_backend_get_default = g_settings_backend_get_default() : LibGio::SettingsBackend*
  fun settings_backend_changed = g_settings_backend_changed(this : SettingsBackend*, key : UInt8*, origin_tag : Void*) : Void
  fun settings_backend_changed_tree = g_settings_backend_changed_tree(this : SettingsBackend*, tree : LibGLib::Tree*, origin_tag : Void*) : Void
  fun settings_backend_keys_changed = g_settings_backend_keys_changed(this : SettingsBackend*, path : UInt8*, items : UInt8**, origin_tag : Void*) : Void
  fun settings_backend_path_changed = g_settings_backend_path_changed(this : SettingsBackend*, path : UInt8*, origin_tag : Void*) : Void
  fun settings_backend_path_writable_changed = g_settings_backend_path_writable_changed(this : SettingsBackend*, path : UInt8*) : Void
  fun settings_backend_writable_changed = g_settings_backend_writable_changed(this : SettingsBackend*, key : UInt8*) : Void

  struct SimpleAction # object
    _data : UInt8[0]
    # Signal activate
    # Signal change-state
    # Property enabled : Bool
    # Property name : UInt8*
    # Property parameter_type : LibGLib::VariantType
    # Property state : LibGLib::Variant
    # Property state_type : LibGLib::VariantType
  end
  fun simple_action_new = g_simple_action_new(name : UInt8*, parameter_type : LibGLib::VariantType*) : LibGio::SimpleAction*
  fun simple_action_new_stateful = g_simple_action_new_stateful(name : UInt8*, parameter_type : LibGLib::VariantType*, state : LibGLib::Variant*) : LibGio::SimpleAction*
  fun simple_action_set_enabled = g_simple_action_set_enabled(this : SimpleAction*, enabled : Bool) : Void
  fun simple_action_set_state = g_simple_action_set_state(this : SimpleAction*, value : LibGLib::Variant*) : Void
  fun simple_action_set_state_hint = g_simple_action_set_state_hint(this : SimpleAction*, state_hint : LibGLib::Variant*) : Void

  struct SimpleActionGroup # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SimpleActionGroupPrivate*
  end
  fun simple_action_group_new = g_simple_action_group_new() : LibGio::SimpleActionGroup*
  fun simple_action_group_add_entries = g_simple_action_group_add_entries(this : SimpleActionGroup*, entries : LibGio::ActionEntry*, n_entries : Int32, user_data : Void*) : Void
  fun simple_action_group_insert = g_simple_action_group_insert(this : SimpleActionGroup*, action : LibGio::Action*) : Void
  fun simple_action_group_lookup = g_simple_action_group_lookup(this : SimpleActionGroup*, action_name : UInt8*) : LibGio::Action*
  fun simple_action_group_remove = g_simple_action_group_remove(this : SimpleActionGroup*, action_name : UInt8*) : Void

  struct SimpleAsyncResult # object
    _data : UInt8[0]
  end
  fun simple_async_result_new = g_simple_async_result_new(source_object : LibGObject::Object*, callback : LibGio::AsyncReadyCallback, user_data : Void*, source_tag : Void*) : LibGio::SimpleAsyncResult*
  fun simple_async_result_new_from_error = g_simple_async_result_new_from_error(source_object : LibGObject::Object*, callback : LibGio::AsyncReadyCallback, user_data : Void*, error : LibGLib::Error**) : LibGio::SimpleAsyncResult*
  fun simple_async_result_is_valid = g_simple_async_result_is_valid(result : LibGio::AsyncResult*, source : LibGObject::Object*, source_tag : Void*) : Bool
  fun simple_async_result_complete = g_simple_async_result_complete(this : SimpleAsyncResult*) : Void
  fun simple_async_result_complete_in_idle = g_simple_async_result_complete_in_idle(this : SimpleAsyncResult*) : Void
  fun simple_async_result_get_op_res_gboolean = g_simple_async_result_get_op_res_gboolean(this : SimpleAsyncResult*) : Bool
  fun simple_async_result_get_op_res_gssize = g_simple_async_result_get_op_res_gssize(this : SimpleAsyncResult*) : Int64
  fun simple_async_result_propagate_error = g_simple_async_result_propagate_error(this : SimpleAsyncResult*, error : LibGLib::Error**) : Bool
  fun simple_async_result_set_check_cancellable = g_simple_async_result_set_check_cancellable(this : SimpleAsyncResult*, check_cancellable : LibGio::Cancellable*) : Void
  fun simple_async_result_set_from_error = g_simple_async_result_set_from_error(this : SimpleAsyncResult*, error : LibGLib::Error**) : Void
  fun simple_async_result_set_handle_cancellation = g_simple_async_result_set_handle_cancellation(this : SimpleAsyncResult*, handle_cancellation : Bool) : Void
  fun simple_async_result_set_op_res_gboolean = g_simple_async_result_set_op_res_gboolean(this : SimpleAsyncResult*, op_res : Bool) : Void
  fun simple_async_result_set_op_res_gssize = g_simple_async_result_set_op_res_gssize(this : SimpleAsyncResult*, op_res : Int64) : Void

  struct SimpleIOStream # object
    _data : UInt8[0]
    # Property input_stream : LibGio::InputStream*
    # Property output_stream : LibGio::OutputStream*
  end
  fun simple_i_o_stream_new = g_simple_io_stream_new(input_stream : LibGio::InputStream*, output_stream : LibGio::OutputStream*) : LibGio::IOStream*

  struct SimplePermission # object
    _data : UInt8[0]
  end
  fun simple_permission_new = g_simple_permission_new(allowed : Bool) : LibGio::Permission*

  struct SimpleProxyResolver # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SimpleProxyResolverPrivate*
    # Property default_proxy : UInt8*
    # Property ignore_hosts : UInt8**
  end
  fun simple_proxy_resolver_new = g_simple_proxy_resolver_new(default_proxy : UInt8*, ignore_hosts : UInt8*) : LibGio::ProxyResolver*
  fun simple_proxy_resolver_set_default_proxy = g_simple_proxy_resolver_set_default_proxy(this : SimpleProxyResolver*, default_proxy : UInt8*) : Void
  fun simple_proxy_resolver_set_ignore_hosts = g_simple_proxy_resolver_set_ignore_hosts(this : SimpleProxyResolver*, ignore_hosts : UInt8*) : Void
  fun simple_proxy_resolver_set_uri_proxy = g_simple_proxy_resolver_set_uri_proxy(this : SimpleProxyResolver*, uri_scheme : UInt8*, proxy : UInt8*) : Void

  struct Socket # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SocketPrivate*
    # Property blocking : Bool
    # Property broadcast : Bool
    # Property family : LibGio::SocketFamily
    # Property fd : Int32
    # Property keepalive : Bool
    # Property listen_backlog : Int32
    # Property local_address : LibGio::SocketAddress*
    # Property multicast_loopback : Bool
    # Property multicast_ttl : UInt32
    # Property protocol : LibGio::SocketProtocol
    # Property remote_address : LibGio::SocketAddress*
    # Property timeout : UInt32
    # Property ttl : UInt32
    # Property type : LibGio::SocketType
  end
  fun socket_new = g_socket_new(family : LibGio::SocketFamily, type : LibGio::SocketType, protocol : LibGio::SocketProtocol, error : LibGLib::Error**) : LibGio::Socket*
  fun socket_new_from_fd = g_socket_new_from_fd(fd : Int32, error : LibGLib::Error**) : LibGio::Socket*
  fun socket_accept = g_socket_accept(this : Socket*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::Socket*
  fun socket_bind = g_socket_bind(this : Socket*, address : LibGio::SocketAddress*, allow_reuse : Bool, error : LibGLib::Error**) : Bool
  fun socket_check_connect_result = g_socket_check_connect_result(this : Socket*, error : LibGLib::Error**) : Bool
  fun socket_close = g_socket_close(this : Socket*, error : LibGLib::Error**) : Bool
  fun socket_condition_check = g_socket_condition_check(this : Socket*, condition : LibGLib::IOCondition) : LibGLib::IOCondition
  fun socket_condition_timed_wait = g_socket_condition_timed_wait(this : Socket*, condition : LibGLib::IOCondition, timeout : Int64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun socket_condition_wait = g_socket_condition_wait(this : Socket*, condition : LibGLib::IOCondition, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun socket_connect = g_socket_connect(this : Socket*, address : LibGio::SocketAddress*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun socket_connection_factory_create_connection = g_socket_connection_factory_create_connection(this : Socket*) : LibGio::SocketConnection*
  fun socket_get_available_bytes = g_socket_get_available_bytes(this : Socket*) : Int64
  fun socket_get_blocking = g_socket_get_blocking(this : Socket*) : Bool
  fun socket_get_broadcast = g_socket_get_broadcast(this : Socket*) : Bool
  fun socket_get_credentials = g_socket_get_credentials(this : Socket*, error : LibGLib::Error**) : LibGio::Credentials*
  fun socket_get_family = g_socket_get_family(this : Socket*) : LibGio::SocketFamily
  fun socket_get_fd = g_socket_get_fd(this : Socket*) : Int32
  fun socket_get_keepalive = g_socket_get_keepalive(this : Socket*) : Bool
  fun socket_get_listen_backlog = g_socket_get_listen_backlog(this : Socket*) : Int32
  fun socket_get_local_address = g_socket_get_local_address(this : Socket*, error : LibGLib::Error**) : LibGio::SocketAddress*
  fun socket_get_multicast_loopback = g_socket_get_multicast_loopback(this : Socket*) : Bool
  fun socket_get_multicast_ttl = g_socket_get_multicast_ttl(this : Socket*) : UInt32
  fun socket_get_option = g_socket_get_option(this : Socket*, level : Int32, optname : Int32, value : Int32*, error : LibGLib::Error**) : Bool
  fun socket_get_protocol = g_socket_get_protocol(this : Socket*) : LibGio::SocketProtocol
  fun socket_get_remote_address = g_socket_get_remote_address(this : Socket*, error : LibGLib::Error**) : LibGio::SocketAddress*
  fun socket_get_socket_type = g_socket_get_socket_type(this : Socket*) : LibGio::SocketType
  fun socket_get_timeout = g_socket_get_timeout(this : Socket*) : UInt32
  fun socket_get_ttl = g_socket_get_ttl(this : Socket*) : UInt32
  fun socket_is_closed = g_socket_is_closed(this : Socket*) : Bool
  fun socket_is_connected = g_socket_is_connected(this : Socket*) : Bool
  fun socket_join_multicast_group = g_socket_join_multicast_group(this : Socket*, group : LibGio::InetAddress*, source_specific : Bool, iface : UInt8*, error : LibGLib::Error**) : Bool
  fun socket_join_multicast_group_ssm = g_socket_join_multicast_group_ssm(this : Socket*, group : LibGio::InetAddress*, source_specific : LibGio::InetAddress*, iface : UInt8*, error : LibGLib::Error**) : Bool
  fun socket_leave_multicast_group = g_socket_leave_multicast_group(this : Socket*, group : LibGio::InetAddress*, source_specific : Bool, iface : UInt8*, error : LibGLib::Error**) : Bool
  fun socket_leave_multicast_group_ssm = g_socket_leave_multicast_group_ssm(this : Socket*, group : LibGio::InetAddress*, source_specific : LibGio::InetAddress*, iface : UInt8*, error : LibGLib::Error**) : Bool
  fun socket_listen = g_socket_listen(this : Socket*, error : LibGLib::Error**) : Bool
  fun socket_receive = g_socket_receive(this : Socket*, buffer : UInt8*, size : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_receive_from = g_socket_receive_from(this : Socket*, address : LibGio::SocketAddress**, buffer : UInt8*, size : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_receive_message = g_socket_receive_message(this : Socket*, address : LibGio::SocketAddress**, vectors : LibGio::InputVector*, num_vectors : Int32, messages : LibGio::SocketControlMessage***, num_messages : Int32*, flags : Int32*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_receive_messages = g_socket_receive_messages(this : Socket*, messages : LibGio::InputMessage*, num_messages : UInt32, flags : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32
  fun socket_receive_with_blocking = g_socket_receive_with_blocking(this : Socket*, buffer : UInt8*, size : UInt64, blocking : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_send = g_socket_send(this : Socket*, buffer : UInt8*, size : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_send_message = g_socket_send_message(this : Socket*, address : LibGio::SocketAddress*, vectors : LibGio::OutputVector*, num_vectors : Int32, messages : LibGio::SocketControlMessage**, num_messages : Int32, flags : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_send_messages = g_socket_send_messages(this : Socket*, messages : LibGio::OutputMessage*, num_messages : UInt32, flags : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32
  fun socket_send_to = g_socket_send_to(this : Socket*, address : LibGio::SocketAddress*, buffer : UInt8*, size : UInt64, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_send_with_blocking = g_socket_send_with_blocking(this : Socket*, buffer : UInt8*, size : UInt64, blocking : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun socket_set_blocking = g_socket_set_blocking(this : Socket*, blocking : Bool) : Void
  fun socket_set_broadcast = g_socket_set_broadcast(this : Socket*, broadcast : Bool) : Void
  fun socket_set_keepalive = g_socket_set_keepalive(this : Socket*, keepalive : Bool) : Void
  fun socket_set_listen_backlog = g_socket_set_listen_backlog(this : Socket*, backlog : Int32) : Void
  fun socket_set_multicast_loopback = g_socket_set_multicast_loopback(this : Socket*, loopback : Bool) : Void
  fun socket_set_multicast_ttl = g_socket_set_multicast_ttl(this : Socket*, ttl : UInt32) : Void
  fun socket_set_option = g_socket_set_option(this : Socket*, level : Int32, optname : Int32, value : Int32, error : LibGLib::Error**) : Bool
  fun socket_set_timeout = g_socket_set_timeout(this : Socket*, timeout : UInt32) : Void
  fun socket_set_ttl = g_socket_set_ttl(this : Socket*, ttl : UInt32) : Void
  fun socket_shutdown = g_socket_shutdown(this : Socket*, shutdown_read : Bool, shutdown_write : Bool, error : LibGLib::Error**) : Bool
  fun socket_speaks_ipv4 = g_socket_speaks_ipv4(this : Socket*) : Bool

  struct SocketAddress # object
    parent_instance : LibGObject::Object*
    # Virtual function get_family
    # Virtual function get_native_size
    # Virtual function to_native
    # Property family : LibGio::SocketFamily
  end
  fun socket_address_new_from_native = g_socket_address_new_from_native(native : Void*, len : UInt64) : LibGio::SocketAddress*
  fun socket_address_get_family = g_socket_address_get_family(this : SocketAddress*) : LibGio::SocketFamily
  fun socket_address_get_native_size = g_socket_address_get_native_size(this : SocketAddress*) : Int64
  fun socket_address_to_native = g_socket_address_to_native(this : SocketAddress*, dest : Void*, destlen : UInt64, error : LibGLib::Error**) : Bool

  struct SocketAddressEnumerator # object
    parent_instance : LibGObject::Object*
    # Virtual function next
    # Virtual function next_async
    # Virtual function next_finish
  end
  fun socket_address_enumerator_next = g_socket_address_enumerator_next(this : SocketAddressEnumerator*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::SocketAddress*
  fun socket_address_enumerator_next_async = g_socket_address_enumerator_next_async(this : SocketAddressEnumerator*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_address_enumerator_next_finish = g_socket_address_enumerator_next_finish(this : SocketAddressEnumerator*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::SocketAddress*

  struct SocketClient # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SocketClientPrivate*
    # Signal event
    # Virtual function event
    # Property enable_proxy : Bool
    # Property family : LibGio::SocketFamily
    # Property local_address : LibGio::SocketAddress*
    # Property protocol : LibGio::SocketProtocol
    # Property proxy_resolver : LibGio::ProxyResolver
    # Property timeout : UInt32
    # Property tls : Bool
    # Property tls_validation_flags : LibGio::TlsCertificateFlags
    # Property type : LibGio::SocketType
  end
  fun socket_client_new = g_socket_client_new() : LibGio::SocketClient*
  fun socket_client_add_application_proxy = g_socket_client_add_application_proxy(this : SocketClient*, protocol : UInt8*) : Void
  fun socket_client_connect = g_socket_client_connect(this : SocketClient*, connectable : LibGio::SocketConnectable*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_async = g_socket_client_connect_async(this : SocketClient*, connectable : LibGio::SocketConnectable*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_client_connect_finish = g_socket_client_connect_finish(this : SocketClient*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_to_host = g_socket_client_connect_to_host(this : SocketClient*, host_and_port : UInt8*, default_port : UInt16, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_to_host_async = g_socket_client_connect_to_host_async(this : SocketClient*, host_and_port : UInt8*, default_port : UInt16, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_client_connect_to_host_finish = g_socket_client_connect_to_host_finish(this : SocketClient*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_to_service = g_socket_client_connect_to_service(this : SocketClient*, domain : UInt8*, service : UInt8*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_to_service_async = g_socket_client_connect_to_service_async(this : SocketClient*, domain : UInt8*, service : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_client_connect_to_service_finish = g_socket_client_connect_to_service_finish(this : SocketClient*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_to_uri = g_socket_client_connect_to_uri(this : SocketClient*, uri : UInt8*, default_port : UInt16, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_connect_to_uri_async = g_socket_client_connect_to_uri_async(this : SocketClient*, uri : UInt8*, default_port : UInt16, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_client_connect_to_uri_finish = g_socket_client_connect_to_uri_finish(this : SocketClient*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_client_get_enable_proxy = g_socket_client_get_enable_proxy(this : SocketClient*) : Bool
  fun socket_client_get_family = g_socket_client_get_family(this : SocketClient*) : LibGio::SocketFamily
  fun socket_client_get_local_address = g_socket_client_get_local_address(this : SocketClient*) : LibGio::SocketAddress*
  fun socket_client_get_protocol = g_socket_client_get_protocol(this : SocketClient*) : LibGio::SocketProtocol
  fun socket_client_get_proxy_resolver = g_socket_client_get_proxy_resolver(this : SocketClient*) : LibGio::ProxyResolver*
  fun socket_client_get_socket_type = g_socket_client_get_socket_type(this : SocketClient*) : LibGio::SocketType
  fun socket_client_get_timeout = g_socket_client_get_timeout(this : SocketClient*) : UInt32
  fun socket_client_get_tls = g_socket_client_get_tls(this : SocketClient*) : Bool
  fun socket_client_get_tls_validation_flags = g_socket_client_get_tls_validation_flags(this : SocketClient*) : LibGio::TlsCertificateFlags
  fun socket_client_set_enable_proxy = g_socket_client_set_enable_proxy(this : SocketClient*, enable : Bool) : Void
  fun socket_client_set_family = g_socket_client_set_family(this : SocketClient*, family : LibGio::SocketFamily) : Void
  fun socket_client_set_local_address = g_socket_client_set_local_address(this : SocketClient*, address : LibGio::SocketAddress*) : Void
  fun socket_client_set_protocol = g_socket_client_set_protocol(this : SocketClient*, protocol : LibGio::SocketProtocol) : Void
  fun socket_client_set_proxy_resolver = g_socket_client_set_proxy_resolver(this : SocketClient*, proxy_resolver : LibGio::ProxyResolver*) : Void
  fun socket_client_set_socket_type = g_socket_client_set_socket_type(this : SocketClient*, type : LibGio::SocketType) : Void
  fun socket_client_set_timeout = g_socket_client_set_timeout(this : SocketClient*, timeout : UInt32) : Void
  fun socket_client_set_tls = g_socket_client_set_tls(this : SocketClient*, tls : Bool) : Void
  fun socket_client_set_tls_validation_flags = g_socket_client_set_tls_validation_flags(this : SocketClient*, flags : LibGio::TlsCertificateFlags) : Void

  struct SocketConnection # object
    parent_instance : LibGio::IOStream*
    priv : LibGio::SocketConnectionPrivate*
    # Property socket : LibGio::Socket*
  end
  fun socket_connection_factory_lookup_type = g_socket_connection_factory_lookup_type(family : LibGio::SocketFamily, type : LibGio::SocketType, protocol_id : Int32) : UInt64
  fun socket_connection_factory_register_type = g_socket_connection_factory_register_type(g_type : UInt64, family : LibGio::SocketFamily, type : LibGio::SocketType, protocol : Int32) : Void
  fun socket_connection_connect = g_socket_connection_connect(this : SocketConnection*, address : LibGio::SocketAddress*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun socket_connection_connect_async = g_socket_connection_connect_async(this : SocketConnection*, address : LibGio::SocketAddress*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_connection_connect_finish = g_socket_connection_connect_finish(this : SocketConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun socket_connection_get_local_address = g_socket_connection_get_local_address(this : SocketConnection*, error : LibGLib::Error**) : LibGio::SocketAddress*
  fun socket_connection_get_remote_address = g_socket_connection_get_remote_address(this : SocketConnection*, error : LibGLib::Error**) : LibGio::SocketAddress*
  fun socket_connection_get_socket = g_socket_connection_get_socket(this : SocketConnection*) : LibGio::Socket*
  fun socket_connection_is_connected = g_socket_connection_is_connected(this : SocketConnection*) : Bool

  struct SocketControlMessage # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SocketControlMessagePrivate*
    # Virtual function get_level
    # Virtual function get_size
    # Virtual function get_type
    # Virtual function serialize
  end
  fun socket_control_message_deserialize = g_socket_control_message_deserialize(level : Int32, type : Int32, size : UInt64, data : UInt8*) : LibGio::SocketControlMessage*
  fun socket_control_message_get_level = g_socket_control_message_get_level(this : SocketControlMessage*) : Int32
  fun socket_control_message_get_msg_type = g_socket_control_message_get_msg_type(this : SocketControlMessage*) : Int32
  fun socket_control_message_get_size = g_socket_control_message_get_size(this : SocketControlMessage*) : UInt64
  fun socket_control_message_serialize = g_socket_control_message_serialize(this : SocketControlMessage*, data : Void*) : Void

  struct SocketListener # object
    parent_instance : LibGObject::Object*
    priv : LibGio::SocketListenerPrivate*
    # Signal event
    # Virtual function changed
    # Virtual function event
    # Property listen_backlog : Int32
  end
  fun socket_listener_new = g_socket_listener_new() : LibGio::SocketListener*
  fun socket_listener_accept = g_socket_listener_accept(this : SocketListener*, source_object : LibGObject::Object**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_listener_accept_async = g_socket_listener_accept_async(this : SocketListener*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_listener_accept_finish = g_socket_listener_accept_finish(this : SocketListener*, result : LibGio::AsyncResult*, source_object : LibGObject::Object**, error : LibGLib::Error**) : LibGio::SocketConnection*
  fun socket_listener_accept_socket = g_socket_listener_accept_socket(this : SocketListener*, source_object : LibGObject::Object**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::Socket*
  fun socket_listener_accept_socket_async = g_socket_listener_accept_socket_async(this : SocketListener*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun socket_listener_accept_socket_finish = g_socket_listener_accept_socket_finish(this : SocketListener*, result : LibGio::AsyncResult*, source_object : LibGObject::Object**, error : LibGLib::Error**) : LibGio::Socket*
  fun socket_listener_add_address = g_socket_listener_add_address(this : SocketListener*, address : LibGio::SocketAddress*, type : LibGio::SocketType, protocol : LibGio::SocketProtocol, source_object : LibGObject::Object*, effective_address : LibGio::SocketAddress**, error : LibGLib::Error**) : Bool
  fun socket_listener_add_any_inet_port = g_socket_listener_add_any_inet_port(this : SocketListener*, source_object : LibGObject::Object*, error : LibGLib::Error**) : UInt16
  fun socket_listener_add_inet_port = g_socket_listener_add_inet_port(this : SocketListener*, port : UInt16, source_object : LibGObject::Object*, error : LibGLib::Error**) : Bool
  fun socket_listener_add_socket = g_socket_listener_add_socket(this : SocketListener*, socket : LibGio::Socket*, source_object : LibGObject::Object*, error : LibGLib::Error**) : Bool
  fun socket_listener_close = g_socket_listener_close(this : SocketListener*) : Void
  fun socket_listener_set_backlog = g_socket_listener_set_backlog(this : SocketListener*, listen_backlog : Int32) : Void

  struct SocketService # object
    parent_instance : LibGio::SocketListener*
    priv : LibGio::SocketServicePrivate*
    # Signal incoming
    # Virtual function incoming
    # Property active : Bool
  end
  fun socket_service_new = g_socket_service_new() : LibGio::SocketService*
  fun socket_service_is_active = g_socket_service_is_active(this : SocketService*) : Bool
  fun socket_service_start = g_socket_service_start(this : SocketService*) : Void
  fun socket_service_stop = g_socket_service_stop(this : SocketService*) : Void

  struct Subprocess # object
    _data : UInt8[0]
    # Property argv : UInt8**
    # Property flags : LibGio::SubprocessFlags
  end
  fun subprocess_new = g_subprocess_newv(argv : UInt8**, flags : LibGio::SubprocessFlags, error : LibGLib::Error**) : LibGio::Subprocess*
  fun subprocess_communicate = g_subprocess_communicate(this : Subprocess*, stdin_buf : LibGLib::Bytes*, cancellable : LibGio::Cancellable*, stdout_buf : LibGLib::Bytes**, stderr_buf : LibGLib::Bytes**, error : LibGLib::Error**) : Bool
  fun subprocess_communicate_async = g_subprocess_communicate_async(this : Subprocess*, stdin_buf : LibGLib::Bytes*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun subprocess_communicate_finish = g_subprocess_communicate_finish(this : Subprocess*, result : LibGio::AsyncResult*, stdout_buf : LibGLib::Bytes**, stderr_buf : LibGLib::Bytes**, error : LibGLib::Error**) : Bool
  fun subprocess_communicate_utf8 = g_subprocess_communicate_utf8(this : Subprocess*, stdin_buf : UInt8*, cancellable : LibGio::Cancellable*, stdout_buf : UInt8**, stderr_buf : UInt8**, error : LibGLib::Error**) : Bool
  fun subprocess_communicate_utf8_async = g_subprocess_communicate_utf8_async(this : Subprocess*, stdin_buf : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun subprocess_communicate_utf8_finish = g_subprocess_communicate_utf8_finish(this : Subprocess*, result : LibGio::AsyncResult*, stdout_buf : UInt8**, stderr_buf : UInt8**, error : LibGLib::Error**) : Bool
  fun subprocess_force_exit = g_subprocess_force_exit(this : Subprocess*) : Void
  fun subprocess_get_exit_status = g_subprocess_get_exit_status(this : Subprocess*) : Int32
  fun subprocess_get_identifier = g_subprocess_get_identifier(this : Subprocess*) : UInt8*
  fun subprocess_get_if_exited = g_subprocess_get_if_exited(this : Subprocess*) : Bool
  fun subprocess_get_if_signaled = g_subprocess_get_if_signaled(this : Subprocess*) : Bool
  fun subprocess_get_status = g_subprocess_get_status(this : Subprocess*) : Int32
  fun subprocess_get_stderr_pipe = g_subprocess_get_stderr_pipe(this : Subprocess*) : LibGio::InputStream*
  fun subprocess_get_stdin_pipe = g_subprocess_get_stdin_pipe(this : Subprocess*) : LibGio::OutputStream*
  fun subprocess_get_stdout_pipe = g_subprocess_get_stdout_pipe(this : Subprocess*) : LibGio::InputStream*
  fun subprocess_get_successful = g_subprocess_get_successful(this : Subprocess*) : Bool
  fun subprocess_get_term_sig = g_subprocess_get_term_sig(this : Subprocess*) : Int32
  fun subprocess_send_signal = g_subprocess_send_signal(this : Subprocess*, signal_num : Int32) : Void
  fun subprocess_wait = g_subprocess_wait(this : Subprocess*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun subprocess_wait_async = g_subprocess_wait_async(this : Subprocess*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun subprocess_wait_check = g_subprocess_wait_check(this : Subprocess*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun subprocess_wait_check_async = g_subprocess_wait_check_async(this : Subprocess*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun subprocess_wait_check_finish = g_subprocess_wait_check_finish(this : Subprocess*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun subprocess_wait_finish = g_subprocess_wait_finish(this : Subprocess*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool

  struct SubprocessLauncher # object
    _data : UInt8[0]
    # Property flags : LibGio::SubprocessFlags
  end
  fun subprocess_launcher_new = g_subprocess_launcher_new(flags : LibGio::SubprocessFlags) : LibGio::SubprocessLauncher*
  fun subprocess_launcher_getenv = g_subprocess_launcher_getenv(this : SubprocessLauncher*, variable : UInt8*) : UInt8*
  fun subprocess_launcher_set_cwd = g_subprocess_launcher_set_cwd(this : SubprocessLauncher*, cwd : UInt8*) : Void
  fun subprocess_launcher_set_environ = g_subprocess_launcher_set_environ(this : SubprocessLauncher*, env : UInt8**) : Void
  fun subprocess_launcher_set_flags = g_subprocess_launcher_set_flags(this : SubprocessLauncher*, flags : LibGio::SubprocessFlags) : Void
  fun subprocess_launcher_set_stderr_file_path = g_subprocess_launcher_set_stderr_file_path(this : SubprocessLauncher*, path : UInt8*) : Void
  fun subprocess_launcher_set_stdin_file_path = g_subprocess_launcher_set_stdin_file_path(this : SubprocessLauncher*, path : UInt8*) : Void
  fun subprocess_launcher_set_stdout_file_path = g_subprocess_launcher_set_stdout_file_path(this : SubprocessLauncher*, path : UInt8*) : Void
  fun subprocess_launcher_setenv = g_subprocess_launcher_setenv(this : SubprocessLauncher*, variable : UInt8*, value : UInt8*, overwrite : Bool) : Void
  fun subprocess_launcher_spawnv = g_subprocess_launcher_spawnv(this : SubprocessLauncher*, argv : UInt8**, error : LibGLib::Error**) : LibGio::Subprocess*
  fun subprocess_launcher_take_fd = g_subprocess_launcher_take_fd(this : SubprocessLauncher*, source_fd : Int32, target_fd : Int32) : Void
  fun subprocess_launcher_take_stderr_fd = g_subprocess_launcher_take_stderr_fd(this : SubprocessLauncher*, fd : Int32) : Void
  fun subprocess_launcher_take_stdin_fd = g_subprocess_launcher_take_stdin_fd(this : SubprocessLauncher*, fd : Int32) : Void
  fun subprocess_launcher_take_stdout_fd = g_subprocess_launcher_take_stdout_fd(this : SubprocessLauncher*, fd : Int32) : Void
  fun subprocess_launcher_unsetenv = g_subprocess_launcher_unsetenv(this : SubprocessLauncher*, variable : UInt8*) : Void

  struct Task # object
    _data : UInt8[0]
    # Property completed : Bool
  end
  fun task_new = g_task_new(source_object : LibGObject::Object*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, callback_data : Void*) : LibGio::Task*
  fun task_is_valid = g_task_is_valid(result : LibGio::AsyncResult*, source_object : LibGObject::Object*) : Bool
  fun task_report_error = g_task_report_error(source_object : LibGObject::Object*, callback : LibGio::AsyncReadyCallback, callback_data : Void*, source_tag : Void*, error : LibGLib::Error**) : Void
  fun task_get_cancellable = g_task_get_cancellable(this : Task*) : LibGio::Cancellable*
  fun task_get_check_cancellable = g_task_get_check_cancellable(this : Task*) : Bool
  fun task_get_completed = g_task_get_completed(this : Task*) : Bool
  fun task_get_context = g_task_get_context(this : Task*) : LibGLib::MainContext*
  fun task_get_priority = g_task_get_priority(this : Task*) : Int32
  fun task_get_return_on_cancel = g_task_get_return_on_cancel(this : Task*) : Bool
  fun task_get_source_object = g_task_get_source_object(this : Task*) : LibGObject::Object*
  fun task_get_source_tag = g_task_get_source_tag(this : Task*) : Void*
  fun task_get_task_data = g_task_get_task_data(this : Task*) : Void*
  fun task_had_error = g_task_had_error(this : Task*) : Bool
  fun task_propagate_boolean = g_task_propagate_boolean(this : Task*, error : LibGLib::Error**) : Bool
  fun task_propagate_int = g_task_propagate_int(this : Task*, error : LibGLib::Error**) : Int64
  fun task_propagate_pointer = g_task_propagate_pointer(this : Task*, error : LibGLib::Error**) : Void*
  fun task_return_boolean = g_task_return_boolean(this : Task*, result : Bool) : Void
  fun task_return_error = g_task_return_error(this : Task*, error : LibGLib::Error**) : Void
  fun task_return_error_if_cancelled = g_task_return_error_if_cancelled(this : Task*) : Bool
  fun task_return_int = g_task_return_int(this : Task*, result : Int64) : Void
  fun task_return_pointer = g_task_return_pointer(this : Task*, result : Void*, result_destroy : LibGLib::DestroyNotify) : Void
  fun task_set_check_cancellable = g_task_set_check_cancellable(this : Task*, check_cancellable : Bool) : Void
  fun task_set_priority = g_task_set_priority(this : Task*, priority : Int32) : Void
  fun task_set_return_on_cancel = g_task_set_return_on_cancel(this : Task*, return_on_cancel : Bool) : Bool
  fun task_set_source_tag = g_task_set_source_tag(this : Task*, source_tag : Void*) : Void
  fun task_set_task_data = g_task_set_task_data(this : Task*, task_data : Void*, task_data_destroy : LibGLib::DestroyNotify) : Void

  struct TcpConnection # object
    parent_instance : LibGio::SocketConnection*
    priv : LibGio::TcpConnectionPrivate*
    # Property graceful_disconnect : Bool
  end
  fun tcp_connection_get_graceful_disconnect = g_tcp_connection_get_graceful_disconnect(this : TcpConnection*) : Bool
  fun tcp_connection_set_graceful_disconnect = g_tcp_connection_set_graceful_disconnect(this : TcpConnection*, graceful_disconnect : Bool) : Void

  struct TcpWrapperConnection # object
    parent_instance : LibGio::TcpConnection*
    priv : LibGio::TcpWrapperConnectionPrivate*
    # Property base_io_stream : LibGio::IOStream*
  end
  fun tcp_wrapper_connection_new = g_tcp_wrapper_connection_new(base_io_stream : LibGio::IOStream*, socket : LibGio::Socket*) : LibGio::SocketConnection*
  fun tcp_wrapper_connection_get_base_io_stream = g_tcp_wrapper_connection_get_base_io_stream(this : TcpWrapperConnection*) : LibGio::IOStream*

  struct TestDBus # object
    _data : UInt8[0]
    # Property flags : LibGio::TestDBusFlags
  end
  fun test_d_bus_new = g_test_dbus_new(flags : LibGio::TestDBusFlags) : LibGio::TestDBus*
  fun test_d_bus_unset = g_test_dbus_unset() : Void
  fun test_d_bus_add_service_dir = g_test_dbus_add_service_dir(this : TestDBus*, path : UInt8*) : Void
  fun test_d_bus_down = g_test_dbus_down(this : TestDBus*) : Void
  fun test_d_bus_get_bus_address = g_test_dbus_get_bus_address(this : TestDBus*) : UInt8*
  fun test_d_bus_get_flags = g_test_dbus_get_flags(this : TestDBus*) : LibGio::TestDBusFlags
  fun test_d_bus_stop = g_test_dbus_stop(this : TestDBus*) : Void
  fun test_d_bus_up = g_test_dbus_up(this : TestDBus*) : Void

  struct ThemedIcon # object
    _data : UInt8[0]
    # Property name : UInt8*
    # Property names : UInt8**
    # Property use_default_fallbacks : Bool
  end
  fun themed_icon_new = g_themed_icon_new(iconname : UInt8*) : LibGio::ThemedIcon*
  fun themed_icon_new_from_names = g_themed_icon_new_from_names(iconnames : UInt8**, len : Int32) : LibGio::ThemedIcon*
  fun themed_icon_new_with_default_fallbacks = g_themed_icon_new_with_default_fallbacks(iconname : UInt8*) : LibGio::ThemedIcon*
  fun themed_icon_append_name = g_themed_icon_append_name(this : ThemedIcon*, iconname : UInt8*) : Void
  fun themed_icon_get_names = g_themed_icon_get_names(this : ThemedIcon*) : UInt8**
  fun themed_icon_prepend_name = g_themed_icon_prepend_name(this : ThemedIcon*, iconname : UInt8*) : Void

  struct ThreadedSocketService # object
    parent_instance : LibGio::SocketService*
    priv : LibGio::ThreadedSocketServicePrivate*
    # Signal run
    # Virtual function run
    # Property max_threads : Int32
  end
  fun threaded_socket_service_new = g_threaded_socket_service_new(max_threads : Int32) : LibGio::SocketService*

  struct TlsCertificate # object
    parent_instance : LibGObject::Object*
    priv : LibGio::TlsCertificatePrivate*
    # Virtual function verify
    # Property certificate : Void*
    # Property certificate_pem : UInt8*
    # Property issuer : LibGio::TlsCertificate*
    # Property private_key : Void*
    # Property private_key_pem : UInt8*
  end
  fun tls_certificate_new_from_file = g_tls_certificate_new_from_file(file : UInt8*, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_certificate_new_from_files = g_tls_certificate_new_from_files(cert_file : UInt8*, key_file : UInt8*, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_certificate_new_from_pem = g_tls_certificate_new_from_pem(data : UInt8*, length : Int64, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_certificate_list_new_from_file = g_tls_certificate_list_new_from_file(file : UInt8*, error : LibGLib::Error**) : Void**
  fun tls_certificate_get_issuer = g_tls_certificate_get_issuer(this : TlsCertificate*) : LibGio::TlsCertificate*
  fun tls_certificate_is_same = g_tls_certificate_is_same(this : TlsCertificate*, cert_two : LibGio::TlsCertificate*) : Bool
  fun tls_certificate_verify = g_tls_certificate_verify(this : TlsCertificate*, identity : LibGio::SocketConnectable*, trusted_ca : LibGio::TlsCertificate*) : LibGio::TlsCertificateFlags

  struct TlsConnection # object
    parent_instance : LibGio::IOStream*
    priv : LibGio::TlsConnectionPrivate*
    # Signal accept-certificate
    # Virtual function accept_certificate
    # Virtual function handshake
    # Virtual function handshake_async
    # Virtual function handshake_finish
    # Property base_io_stream : LibGio::IOStream*
    # Property certificate : LibGio::TlsCertificate*
    # Property database : LibGio::TlsDatabase*
    # Property interaction : LibGio::TlsInteraction*
    # Property peer_certificate : LibGio::TlsCertificate*
    # Property peer_certificate_errors : LibGio::TlsCertificateFlags
    # Property rehandshake_mode : LibGio::TlsRehandshakeMode
    # Property require_close_notify : Bool
    # Property use_system_certdb : Bool
  end
  fun tls_connection_emit_accept_certificate = g_tls_connection_emit_accept_certificate(this : TlsConnection*, peer_cert : LibGio::TlsCertificate*, errors : LibGio::TlsCertificateFlags) : Bool
  fun tls_connection_get_certificate = g_tls_connection_get_certificate(this : TlsConnection*) : LibGio::TlsCertificate*
  fun tls_connection_get_database = g_tls_connection_get_database(this : TlsConnection*) : LibGio::TlsDatabase*
  fun tls_connection_get_interaction = g_tls_connection_get_interaction(this : TlsConnection*) : LibGio::TlsInteraction*
  fun tls_connection_get_peer_certificate = g_tls_connection_get_peer_certificate(this : TlsConnection*) : LibGio::TlsCertificate*
  fun tls_connection_get_peer_certificate_errors = g_tls_connection_get_peer_certificate_errors(this : TlsConnection*) : LibGio::TlsCertificateFlags
  fun tls_connection_get_rehandshake_mode = g_tls_connection_get_rehandshake_mode(this : TlsConnection*) : LibGio::TlsRehandshakeMode
  fun tls_connection_get_require_close_notify = g_tls_connection_get_require_close_notify(this : TlsConnection*) : Bool
  fun tls_connection_get_use_system_certdb = g_tls_connection_get_use_system_certdb(this : TlsConnection*) : Bool
  fun tls_connection_handshake = g_tls_connection_handshake(this : TlsConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun tls_connection_handshake_async = g_tls_connection_handshake_async(this : TlsConnection*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_connection_handshake_finish = g_tls_connection_handshake_finish(this : TlsConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun tls_connection_set_certificate = g_tls_connection_set_certificate(this : TlsConnection*, certificate : LibGio::TlsCertificate*) : Void
  fun tls_connection_set_database = g_tls_connection_set_database(this : TlsConnection*, database : LibGio::TlsDatabase*) : Void
  fun tls_connection_set_interaction = g_tls_connection_set_interaction(this : TlsConnection*, interaction : LibGio::TlsInteraction*) : Void
  fun tls_connection_set_rehandshake_mode = g_tls_connection_set_rehandshake_mode(this : TlsConnection*, mode : LibGio::TlsRehandshakeMode) : Void
  fun tls_connection_set_require_close_notify = g_tls_connection_set_require_close_notify(this : TlsConnection*, require_close_notify : Bool) : Void
  fun tls_connection_set_use_system_certdb = g_tls_connection_set_use_system_certdb(this : TlsConnection*, use_system_certdb : Bool) : Void

  struct TlsDatabase # object
    parent_instance : LibGObject::Object*
    priv : LibGio::TlsDatabasePrivate*
    # Virtual function create_certificate_handle
    # Virtual function lookup_certificate_for_handle
    # Virtual function lookup_certificate_for_handle_async
    # Virtual function lookup_certificate_for_handle_finish
    # Virtual function lookup_certificate_issuer
    # Virtual function lookup_certificate_issuer_async
    # Virtual function lookup_certificate_issuer_finish
    # Virtual function lookup_certificates_issued_by
    # Virtual function lookup_certificates_issued_by_async
    # Virtual function lookup_certificates_issued_by_finish
    # Virtual function verify_chain
    # Virtual function verify_chain_async
    # Virtual function verify_chain_finish
  end
  fun tls_database_create_certificate_handle = g_tls_database_create_certificate_handle(this : TlsDatabase*, certificate : LibGio::TlsCertificate*) : UInt8*
  fun tls_database_lookup_certificate_for_handle = g_tls_database_lookup_certificate_for_handle(this : TlsDatabase*, handle : UInt8*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseLookupFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_database_lookup_certificate_for_handle_async = g_tls_database_lookup_certificate_for_handle_async(this : TlsDatabase*, handle : UInt8*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseLookupFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_database_lookup_certificate_for_handle_finish = g_tls_database_lookup_certificate_for_handle_finish(this : TlsDatabase*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_database_lookup_certificate_issuer = g_tls_database_lookup_certificate_issuer(this : TlsDatabase*, certificate : LibGio::TlsCertificate*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseLookupFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_database_lookup_certificate_issuer_async = g_tls_database_lookup_certificate_issuer_async(this : TlsDatabase*, certificate : LibGio::TlsCertificate*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseLookupFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_database_lookup_certificate_issuer_finish = g_tls_database_lookup_certificate_issuer_finish(this : TlsDatabase*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::TlsCertificate*
  fun tls_database_lookup_certificates_issued_by = g_tls_database_lookup_certificates_issued_by(this : TlsDatabase*, issuer_raw_dn : Void*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseLookupFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Void**
  fun tls_database_lookup_certificates_issued_by_async = g_tls_database_lookup_certificates_issued_by_async(this : TlsDatabase*, issuer_raw_dn : Void*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseLookupFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_database_lookup_certificates_issued_by_finish = g_tls_database_lookup_certificates_issued_by_finish(this : TlsDatabase*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Void**
  fun tls_database_verify_chain = g_tls_database_verify_chain(this : TlsDatabase*, chain : LibGio::TlsCertificate*, purpose : UInt8*, identity : LibGio::SocketConnectable*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseVerifyFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsCertificateFlags
  fun tls_database_verify_chain_async = g_tls_database_verify_chain_async(this : TlsDatabase*, chain : LibGio::TlsCertificate*, purpose : UInt8*, identity : LibGio::SocketConnectable*, interaction : LibGio::TlsInteraction*, flags : LibGio::TlsDatabaseVerifyFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_database_verify_chain_finish = g_tls_database_verify_chain_finish(this : TlsDatabase*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::TlsCertificateFlags

  struct TlsInteraction # object
    parent_instance : LibGObject::Object*
    priv : LibGio::TlsInteractionPrivate*
    # Virtual function ask_password
    # Virtual function ask_password_async
    # Virtual function ask_password_finish
    # Virtual function request_certificate
    # Virtual function request_certificate_async
    # Virtual function request_certificate_finish
  end
  fun tls_interaction_ask_password = g_tls_interaction_ask_password(this : TlsInteraction*, password : LibGio::TlsPassword*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsInteractionResult
  fun tls_interaction_ask_password_async = g_tls_interaction_ask_password_async(this : TlsInteraction*, password : LibGio::TlsPassword*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_interaction_ask_password_finish = g_tls_interaction_ask_password_finish(this : TlsInteraction*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::TlsInteractionResult
  fun tls_interaction_invoke_ask_password = g_tls_interaction_invoke_ask_password(this : TlsInteraction*, password : LibGio::TlsPassword*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsInteractionResult
  fun tls_interaction_invoke_request_certificate = g_tls_interaction_invoke_request_certificate(this : TlsInteraction*, connection : LibGio::TlsConnection*, flags : LibGio::TlsCertificateRequestFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsInteractionResult
  fun tls_interaction_request_certificate = g_tls_interaction_request_certificate(this : TlsInteraction*, connection : LibGio::TlsConnection*, flags : LibGio::TlsCertificateRequestFlags, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::TlsInteractionResult
  fun tls_interaction_request_certificate_async = g_tls_interaction_request_certificate_async(this : TlsInteraction*, connection : LibGio::TlsConnection*, flags : LibGio::TlsCertificateRequestFlags, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun tls_interaction_request_certificate_finish = g_tls_interaction_request_certificate_finish(this : TlsInteraction*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::TlsInteractionResult

  struct TlsPassword # object
    parent_instance : LibGObject::Object*
    priv : LibGio::TlsPasswordPrivate*
    # Virtual function get_default_warning
    # Virtual function get_value
    # Virtual function set_value
    # Property description : UInt8*
    # Property flags : LibGio::TlsPasswordFlags
    # Property warning : UInt8*
  end
  fun tls_password_new = g_tls_password_new(flags : LibGio::TlsPasswordFlags, description : UInt8*) : LibGio::TlsPassword*
  fun tls_password_get_description = g_tls_password_get_description(this : TlsPassword*) : UInt8*
  fun tls_password_get_flags = g_tls_password_get_flags(this : TlsPassword*) : LibGio::TlsPasswordFlags
  fun tls_password_get_value = g_tls_password_get_value(this : TlsPassword*, length : UInt64*) : UInt8*
  fun tls_password_get_warning = g_tls_password_get_warning(this : TlsPassword*) : UInt8*
  fun tls_password_set_description = g_tls_password_set_description(this : TlsPassword*, description : UInt8*) : Void
  fun tls_password_set_flags = g_tls_password_set_flags(this : TlsPassword*, flags : LibGio::TlsPasswordFlags) : Void
  fun tls_password_set_value = g_tls_password_set_value(this : TlsPassword*, value : UInt8*, length : Int64) : Void
  fun tls_password_set_value_full = g_tls_password_set_value_full(this : TlsPassword*, value : UInt8*, length : Int64, destroy : LibGLib::DestroyNotify) : Void
  fun tls_password_set_warning = g_tls_password_set_warning(this : TlsPassword*, warning : UInt8*) : Void

  struct UnixConnection # object
    parent_instance : LibGio::SocketConnection*
    priv : LibGio::UnixConnectionPrivate*
  end
  fun unix_connection_receive_credentials = g_unix_connection_receive_credentials(this : UnixConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::Credentials*
  fun unix_connection_receive_credentials_async = g_unix_connection_receive_credentials_async(this : UnixConnection*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun unix_connection_receive_credentials_finish = g_unix_connection_receive_credentials_finish(this : UnixConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::Credentials*
  fun unix_connection_receive_fd = g_unix_connection_receive_fd(this : UnixConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int32
  fun unix_connection_send_credentials = g_unix_connection_send_credentials(this : UnixConnection*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun unix_connection_send_credentials_async = g_unix_connection_send_credentials_async(this : UnixConnection*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun unix_connection_send_credentials_finish = g_unix_connection_send_credentials_finish(this : UnixConnection*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun unix_connection_send_fd = g_unix_connection_send_fd(this : UnixConnection*, fd : Int32, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool

  struct UnixCredentialsMessage # object
    parent_instance : LibGio::SocketControlMessage*
    priv : LibGio::UnixCredentialsMessagePrivate*
    # Property credentials : LibGio::Credentials*
  end
  fun unix_credentials_message_new = g_unix_credentials_message_new() : LibGio::SocketControlMessage*
  fun unix_credentials_message_new_with_credentials = g_unix_credentials_message_new_with_credentials(credentials : LibGio::Credentials*) : LibGio::SocketControlMessage*
  fun unix_credentials_message_is_supported = g_unix_credentials_message_is_supported() : Bool
  fun unix_credentials_message_get_credentials = g_unix_credentials_message_get_credentials(this : UnixCredentialsMessage*) : LibGio::Credentials*

  struct UnixFDList # object
    parent_instance : LibGObject::Object*
    priv : LibGio::UnixFDListPrivate*
  end
  fun unix_f_d_list_new = g_unix_fd_list_new() : LibGio::UnixFDList*
  fun unix_f_d_list_new_from_array = g_unix_fd_list_new_from_array(fds : Int32*, n_fds : Int32) : LibGio::UnixFDList*
  fun unix_f_d_list_append = g_unix_fd_list_append(this : UnixFDList*, fd : Int32, error : LibGLib::Error**) : Int32
  fun unix_f_d_list_get = g_unix_fd_list_get(this : UnixFDList*, index : Int32, error : LibGLib::Error**) : Int32
  fun unix_f_d_list_get_length = g_unix_fd_list_get_length(this : UnixFDList*) : Int32
  fun unix_f_d_list_peek_fds = g_unix_fd_list_peek_fds(this : UnixFDList*, length : Int32*) : Int32*
  fun unix_f_d_list_steal_fds = g_unix_fd_list_steal_fds(this : UnixFDList*, length : Int32*) : Int32*

  struct UnixFDMessage # object
    parent_instance : LibGio::SocketControlMessage*
    priv : LibGio::UnixFDMessagePrivate*
    # Property fd_list : LibGio::UnixFDList*
  end
  fun unix_f_d_message_new = g_unix_fd_message_new() : LibGio::SocketControlMessage*
  fun unix_f_d_message_new_with_fd_list = g_unix_fd_message_new_with_fd_list(fd_list : LibGio::UnixFDList*) : LibGio::SocketControlMessage*
  fun unix_f_d_message_append_fd = g_unix_fd_message_append_fd(this : UnixFDMessage*, fd : Int32, error : LibGLib::Error**) : Bool
  fun unix_f_d_message_get_fd_list = g_unix_fd_message_get_fd_list(this : UnixFDMessage*) : LibGio::UnixFDList*
  fun unix_f_d_message_steal_fds = g_unix_fd_message_steal_fds(this : UnixFDMessage*, length : Int32*) : Int32*

  struct UnixInputStream # object
    parent_instance : LibGio::InputStream*
    priv : LibGio::UnixInputStreamPrivate*
    # Property close_fd : Bool
    # Property fd : Int32
  end
  fun unix_input_stream_new = g_unix_input_stream_new(fd : Int32, close_fd : Bool) : LibGio::InputStream*
  fun unix_input_stream_get_close_fd = g_unix_input_stream_get_close_fd(this : UnixInputStream*) : Bool
  fun unix_input_stream_get_fd = g_unix_input_stream_get_fd(this : UnixInputStream*) : Int32
  fun unix_input_stream_set_close_fd = g_unix_input_stream_set_close_fd(this : UnixInputStream*, close_fd : Bool) : Void

  struct UnixMountMonitor # object
    _data : UInt8[0]
    # Signal mountpoints-changed
    # Signal mounts-changed
  end
  fun unix_mount_monitor_new = g_unix_mount_monitor_new() : LibGio::UnixMountMonitor*
  fun unix_mount_monitor_get = g_unix_mount_monitor_get() : LibGio::UnixMountMonitor*
  fun unix_mount_monitor_set_rate_limit = g_unix_mount_monitor_set_rate_limit(this : UnixMountMonitor*, limit_msec : Int32) : Void

  struct UnixOutputStream # object
    parent_instance : LibGio::OutputStream*
    priv : LibGio::UnixOutputStreamPrivate*
    # Property close_fd : Bool
    # Property fd : Int32
  end
  fun unix_output_stream_new = g_unix_output_stream_new(fd : Int32, close_fd : Bool) : LibGio::OutputStream*
  fun unix_output_stream_get_close_fd = g_unix_output_stream_get_close_fd(this : UnixOutputStream*) : Bool
  fun unix_output_stream_get_fd = g_unix_output_stream_get_fd(this : UnixOutputStream*) : Int32
  fun unix_output_stream_set_close_fd = g_unix_output_stream_set_close_fd(this : UnixOutputStream*, close_fd : Bool) : Void

  struct UnixSocketAddress # object
    parent_instance : LibGio::SocketAddress*
    priv : LibGio::UnixSocketAddressPrivate*
    # Property abstract : Bool
    # Property address_type : LibGio::UnixSocketAddressType
    # Property path : UInt8*
    # Property path_as_array : Void*
  end
  fun unix_socket_address_new = g_unix_socket_address_new(path : UInt8*) : LibGio::SocketAddress*
  fun unix_socket_address_new_abstract = g_unix_socket_address_new_abstract(path : Int8*, path_len : Int32) : LibGio::SocketAddress*
  fun unix_socket_address_new_with_type = g_unix_socket_address_new_with_type(path : Int8*, path_len : Int32, type : LibGio::UnixSocketAddressType) : LibGio::SocketAddress*
  fun unix_socket_address_abstract_names_supported = g_unix_socket_address_abstract_names_supported() : Bool
  fun unix_socket_address_get_address_type = g_unix_socket_address_get_address_type(this : UnixSocketAddress*) : LibGio::UnixSocketAddressType
  fun unix_socket_address_get_is_abstract = g_unix_socket_address_get_is_abstract(this : UnixSocketAddress*) : Bool
  fun unix_socket_address_get_path = g_unix_socket_address_get_path(this : UnixSocketAddress*) : UInt8*
  fun unix_socket_address_get_path_len = g_unix_socket_address_get_path_len(this : UnixSocketAddress*) : UInt64

  struct Vfs # object
    parent_instance : LibGObject::Object*
    # Virtual function add_writable_namespaces
    # Virtual function get_file_for_path
    # Virtual function get_file_for_uri
    # Virtual function get_supported_uri_schemes
    # Virtual function is_active
    # Virtual function local_file_add_info
    # Virtual function local_file_moved
    # Virtual function local_file_removed
    # Virtual function local_file_set_attributes
    # Virtual function parse_name
  end
  fun vfs_get_default = g_vfs_get_default() : LibGio::Vfs*
  fun vfs_get_local = g_vfs_get_local() : LibGio::Vfs*
  fun vfs_get_file_for_path = g_vfs_get_file_for_path(this : Vfs*, path : UInt8*) : LibGio::File*
  fun vfs_get_file_for_uri = g_vfs_get_file_for_uri(this : Vfs*, uri : UInt8*) : LibGio::File*
  fun vfs_get_supported_uri_schemes = g_vfs_get_supported_uri_schemes(this : Vfs*) : UInt8**
  fun vfs_is_active = g_vfs_is_active(this : Vfs*) : Bool
  fun vfs_parse_name = g_vfs_parse_name(this : Vfs*, parse_name : UInt8*) : LibGio::File*
  fun vfs_register_uri_scheme = g_vfs_register_uri_scheme(this : Vfs*, scheme : UInt8*, uri_func : LibGio::VfsFileLookupFunc, uri_data : Void*, uri_destroy : LibGLib::DestroyNotify, parse_name_func : LibGio::VfsFileLookupFunc, parse_name_data : Void*, parse_name_destroy : LibGLib::DestroyNotify) : Bool
  fun vfs_unregister_uri_scheme = g_vfs_unregister_uri_scheme(this : Vfs*, scheme : UInt8*) : Bool

  struct VolumeMonitor # object
    parent_instance : LibGObject::Object*
    priv : Void*
    # Signal drive-changed
    # Signal drive-connected
    # Signal drive-disconnected
    # Signal drive-eject-button
    # Signal drive-stop-button
    # Signal mount-added
    # Signal mount-changed
    # Signal mount-pre-unmount
    # Signal mount-removed
    # Signal volume-added
    # Signal volume-changed
    # Signal volume-removed
    # Virtual function drive_changed
    # Virtual function drive_connected
    # Virtual function drive_disconnected
    # Virtual function drive_eject_button
    # Virtual function drive_stop_button
    # Virtual function get_connected_drives
    # Virtual function get_mount_for_uuid
    # Virtual function get_mounts
    # Virtual function get_volume_for_uuid
    # Virtual function get_volumes
    # Virtual function mount_added
    # Virtual function mount_changed
    # Virtual function mount_pre_unmount
    # Virtual function mount_removed
    # Virtual function volume_added
    # Virtual function volume_changed
    # Virtual function volume_removed
  end
  fun volume_monitor_adopt_orphan_mount = g_volume_monitor_adopt_orphan_mount(mount : LibGio::Mount*) : LibGio::Volume*
  fun volume_monitor_get = g_volume_monitor_get() : LibGio::VolumeMonitor*
  fun volume_monitor_get_connected_drives = g_volume_monitor_get_connected_drives(this : VolumeMonitor*) : Void**
  fun volume_monitor_get_mount_for_uuid = g_volume_monitor_get_mount_for_uuid(this : VolumeMonitor*, uuid : UInt8*) : LibGio::Mount*
  fun volume_monitor_get_mounts = g_volume_monitor_get_mounts(this : VolumeMonitor*) : Void**
  fun volume_monitor_get_volume_for_uuid = g_volume_monitor_get_volume_for_uuid(this : VolumeMonitor*, uuid : UInt8*) : LibGio::Volume*
  fun volume_monitor_get_volumes = g_volume_monitor_get_volumes(this : VolumeMonitor*) : Void**

  struct ZlibCompressor # object
    _data : UInt8[0]
    # Property file_info : LibGio::FileInfo*
    # Property format : LibGio::ZlibCompressorFormat
    # Property level : Int32
  end
  fun zlib_compressor_new = g_zlib_compressor_new(format : LibGio::ZlibCompressorFormat, level : Int32) : LibGio::ZlibCompressor*
  fun zlib_compressor_get_file_info = g_zlib_compressor_get_file_info(this : ZlibCompressor*) : LibGio::FileInfo*
  fun zlib_compressor_set_file_info = g_zlib_compressor_set_file_info(this : ZlibCompressor*, file_info : LibGio::FileInfo*) : Void

  struct ZlibDecompressor # object
    _data : UInt8[0]
    # Property file_info : LibGio::FileInfo*
    # Property format : LibGio::ZlibCompressorFormat
  end
  fun zlib_decompressor_new = g_zlib_decompressor_new(format : LibGio::ZlibCompressorFormat) : LibGio::ZlibDecompressor*
  fun zlib_decompressor_get_file_info = g_zlib_decompressor_get_file_info(this : ZlibDecompressor*) : LibGio::FileInfo*


  ###########################################
  ##    Enums
  ###########################################

  enum BusType : Int32
    ZERO_NONE = 0
    STARTER = -1
    NONE = 0
    SYSTEM = 1
    SESSION = 2
  end

  enum ConverterResult : UInt32
    ZERO_NONE = 0
    ERROR = 0
    CONVERTED = 1
    FINISHED = 2
    FLUSHED = 3
  end

  enum CredentialsType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    LINUX_UCRED = 1
    FREEBSD_CMSGCRED = 2
    OPENBSD_SOCKPEERCRED = 3
    SOLARIS_UCRED = 4
    NETBSD_UNPCBID = 5
  end

  enum DBusError : UInt32
    ZERO_NONE = 0
    FAILED = 0
    NO_MEMORY = 1
    SERVICE_UNKNOWN = 2
    NAME_HAS_NO_OWNER = 3
    NO_REPLY = 4
    IO_ERROR = 5
    BAD_ADDRESS = 6
    NOT_SUPPORTED = 7
    LIMITS_EXCEEDED = 8
    ACCESS_DENIED = 9
    AUTH_FAILED = 10
    NO_SERVER = 11
    TIMEOUT = 12
    NO_NETWORK = 13
    ADDRESS_IN_USE = 14
    DISCONNECTED = 15
    INVALID_ARGS = 16
    FILE_NOT_FOUND = 17
    FILE_EXISTS = 18
    UNKNOWN_METHOD = 19
    TIMED_OUT = 20
    MATCH_RULE_NOT_FOUND = 21
    MATCH_RULE_INVALID = 22
    SPAWN_EXEC_FAILED = 23
    SPAWN_FORK_FAILED = 24
    SPAWN_CHILD_EXITED = 25
    SPAWN_CHILD_SIGNALED = 26
    SPAWN_FAILED = 27
    SPAWN_SETUP_FAILED = 28
    SPAWN_CONFIG_INVALID = 29
    SPAWN_SERVICE_INVALID = 30
    SPAWN_SERVICE_NOT_FOUND = 31
    SPAWN_PERMISSIONS_INVALID = 32
    SPAWN_FILE_INVALID = 33
    SPAWN_NO_MEMORY = 34
    UNIX_PROCESS_ID_UNKNOWN = 35
    INVALID_SIGNATURE = 36
    INVALID_FILE_CONTENT = 37
    SELINUX_SECURITY_CONTEXT_UNKNOWN = 38
    ADT_AUDIT_DATA_UNKNOWN = 39
    OBJECT_PATH_IN_USE = 40
    UNKNOWN_OBJECT = 41
    UNKNOWN_INTERFACE = 42
    UNKNOWN_PROPERTY = 43
    PROPERTY_READ_ONLY = 44
  end
  fun d_bus_error_encode_gerror = g_dbus_error_encode_gerror(error : LibGLib::Error**) : UInt8*
  fun d_bus_error_get_remote_error = g_dbus_error_get_remote_error(error : LibGLib::Error**) : UInt8*
  fun d_bus_error_is_remote_error = g_dbus_error_is_remote_error(error : LibGLib::Error**) : Bool
  fun d_bus_error_new_for_dbus_error = g_dbus_error_new_for_dbus_error(dbus_error_name : UInt8*, dbus_error_message : UInt8*) : LibGLib::Error**
  fun d_bus_error_quark = g_dbus_error_quark() : UInt32
  fun d_bus_error_register_error = g_dbus_error_register_error(error_domain : UInt32, error_code : Int32, dbus_error_name : UInt8*) : Bool
  fun d_bus_error_register_error_domain = g_dbus_error_register_error_domain(error_domain_quark_name : UInt8*, quark_volatile : UInt64*, entries : LibGio::DBusErrorEntry*, num_entries : UInt32) : Void
  fun d_bus_error_strip_remote_error = g_dbus_error_strip_remote_error(error : LibGLib::Error**) : Bool
  fun d_bus_error_unregister_error = g_dbus_error_unregister_error(error_domain : UInt32, error_code : Int32, dbus_error_name : UInt8*) : Bool

  enum DBusMessageByteOrder : UInt32
    ZERO_NONE = 0
    BIG_ENDIAN = 66
    LITTLE_ENDIAN = 108
  end

  enum DBusMessageHeaderField : UInt32
    ZERO_NONE = 0
    INVALID = 0
    PATH = 1
    INTERFACE = 2
    MEMBER = 3
    ERROR_NAME = 4
    REPLY_SERIAL = 5
    DESTINATION = 6
    SENDER = 7
    SIGNATURE = 8
    NUM_UNIX_FDS = 9
  end

  enum DBusMessageType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    METHOD_CALL = 1
    METHOD_RETURN = 2
    ERROR = 3
    SIGNAL = 4
  end

  enum DataStreamByteOrder : UInt32
    ZERO_NONE = 0
    BIG_ENDIAN = 0
    LITTLE_ENDIAN = 1
    HOST_ENDIAN = 2
  end

  enum DataStreamNewlineType : UInt32
    ZERO_NONE = 0
    LF = 0
    CR = 1
    CR_LF = 2
    ANY = 3
  end

  enum DriveStartStopType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    SHUTDOWN = 1
    NETWORK = 2
    MULTIDISK = 3
    PASSWORD = 4
  end

  enum EmblemOrigin : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    DEVICE = 1
    LIVEMETADATA = 2
    TAG = 3
  end

  enum FileAttributeStatus : UInt32
    ZERO_NONE = 0
    UNSET = 0
    SET = 1
    ERROR_SETTING = 2
  end

  enum FileAttributeType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    STRING = 1
    BYTE_STRING = 2
    BOOLEAN = 3
    UINT32 = 4
    INT32 = 5
    UINT64 = 6
    INT64 = 7
    OBJECT = 8
    STRINGV = 9
  end

  enum FileMonitorEvent : UInt32
    ZERO_NONE = 0
    CHANGED = 0
    CHANGES_DONE_HINT = 1
    DELETED = 2
    CREATED = 3
    ATTRIBUTE_CHANGED = 4
    PRE_UNMOUNT = 5
    UNMOUNTED = 6
    MOVED = 7
    RENAMED = 8
    MOVED_IN = 9
    MOVED_OUT = 10
  end

  enum FileType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    REGULAR = 1
    DIRECTORY = 2
    SYMBOLIC_LINK = 3
    SPECIAL = 4
    SHORTCUT = 5
    MOUNTABLE = 6
  end

  enum FilesystemPreviewType : UInt32
    ZERO_NONE = 0
    IF_ALWAYS = 0
    IF_LOCAL = 1
    NEVER = 2
  end

  enum IOErrorEnum : UInt32
    ZERO_NONE = 0
    FAILED = 0
    NOT_FOUND = 1
    EXISTS = 2
    IS_DIRECTORY = 3
    NOT_DIRECTORY = 4
    NOT_EMPTY = 5
    NOT_REGULAR_FILE = 6
    NOT_SYMBOLIC_LINK = 7
    NOT_MOUNTABLE_FILE = 8
    FILENAME_TOO_LONG = 9
    INVALID_FILENAME = 10
    TOO_MANY_LINKS = 11
    NO_SPACE = 12
    INVALID_ARGUMENT = 13
    PERMISSION_DENIED = 14
    NOT_SUPPORTED = 15
    NOT_MOUNTED = 16
    ALREADY_MOUNTED = 17
    CLOSED = 18
    CANCELLED = 19
    PENDING = 20
    READ_ONLY = 21
    CANT_CREATE_BACKUP = 22
    WRONG_ETAG = 23
    TIMED_OUT = 24
    WOULD_RECURSE = 25
    BUSY = 26
    WOULD_BLOCK = 27
    HOST_NOT_FOUND = 28
    WOULD_MERGE = 29
    FAILED_HANDLED = 30
    TOO_MANY_OPEN_FILES = 31
    NOT_INITIALIZED = 32
    ADDRESS_IN_USE = 33
    PARTIAL_INPUT = 34
    INVALID_DATA = 35
    DBUS_ERROR = 36
    HOST_UNREACHABLE = 37
    NETWORK_UNREACHABLE = 38
    CONNECTION_REFUSED = 39
    PROXY_FAILED = 40
    PROXY_AUTH_FAILED = 41
    PROXY_NEED_AUTH = 42
    PROXY_NOT_ALLOWED = 43
    BROKEN_PIPE = 44
    CONNECTION_CLOSED = 44
    NOT_CONNECTED = 45
    MESSAGE_TOO_LARGE = 46
  end

  enum IOModuleScopeFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    BLOCK_DUPLICATES = 1
  end

  enum MountOperationResult : UInt32
    ZERO_NONE = 0
    HANDLED = 0
    ABORTED = 1
    UNHANDLED = 2
  end

  enum NetworkConnectivity : UInt32
    ZERO_NONE = 0
    LOCAL = 1
    LIMITED = 2
    PORTAL = 3
    FULL = 4
  end

  enum NotificationPriority : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    LOW = 1
    HIGH = 2
    URGENT = 3
  end

  enum PasswordSave : UInt32
    ZERO_NONE = 0
    NEVER = 0
    FOR_SESSION = 1
    PERMANENTLY = 2
  end

  enum ResolverError : UInt32
    ZERO_NONE = 0
    NOT_FOUND = 0
    TEMPORARY_FAILURE = 1
    INTERNAL = 2
  end
  fun resolver_error_quark = g_resolver_error_quark() : UInt32

  enum ResolverRecordType : UInt32
    ZERO_NONE = 0
    SRV = 1
    MX = 2
    TXT = 3
    SOA = 4
    NS = 5
  end

  enum ResourceError : UInt32
    ZERO_NONE = 0
    NOT_FOUND = 0
    INTERNAL = 1
  end
  fun resource_error_quark = g_resource_error_quark() : UInt32

  enum SocketClientEvent : UInt32
    ZERO_NONE = 0
    RESOLVING = 0
    RESOLVED = 1
    CONNECTING = 2
    CONNECTED = 3
    PROXY_NEGOTIATING = 4
    PROXY_NEGOTIATED = 5
    TLS_HANDSHAKING = 6
    TLS_HANDSHAKED = 7
    COMPLETE = 8
  end

  enum SocketFamily : UInt32
    ZERO_NONE = 0
    INVALID = 0
    UNIX = 1
    IPV4 = 2
    IPV6 = 10
  end

  enum SocketListenerEvent : UInt32
    ZERO_NONE = 0
    BINDING = 0
    BOUND = 1
    LISTENING = 2
    LISTENED = 3
  end

  enum SocketProtocol : Int32
    ZERO_NONE = 0
    UNKNOWN = -1
    DEFAULT = 0
    TCP = 6
    UDP = 17
    SCTP = 132
  end

  enum SocketType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    STREAM = 1
    DATAGRAM = 2
    SEQPACKET = 3
  end

  enum TlsAuthenticationMode : UInt32
    ZERO_NONE = 0
    NONE = 0
    REQUESTED = 1
    REQUIRED = 2
  end

  enum TlsCertificateRequestFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
  end

  enum TlsDatabaseLookupFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    KEYPAIR = 1
  end

  enum TlsError : UInt32
    ZERO_NONE = 0
    UNAVAILABLE = 0
    MISC = 1
    BAD_CERTIFICATE = 2
    NOT_TLS = 3
    HANDSHAKE = 4
    CERTIFICATE_REQUIRED = 5
    EOF = 6
  end
  fun tls_error_quark = g_tls_error_quark() : UInt32

  enum TlsInteractionResult : UInt32
    ZERO_NONE = 0
    UNHANDLED = 0
    HANDLED = 1
    FAILED = 2
  end

  enum TlsRehandshakeMode : UInt32
    ZERO_NONE = 0
    NEVER = 0
    SAFELY = 1
    UNSAFELY = 2
  end

  enum UnixSocketAddressType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    ANONYMOUS = 1
    PATH = 2
    ABSTRACT = 3
    ABSTRACT_PADDED = 4
  end

  enum ZlibCompressorFormat : UInt32
    ZERO_NONE = 0
    ZLIB = 0
    GZIP = 1
    RAW = 2
  end


  ###########################################
  ##    Constants
  ###########################################

  DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME = "gio-desktop-app-info-lookup" # : UInt8*
  DRIVE_IDENTIFIER_KIND_UNIX_DEVICE = "unix-device" # : UInt8*
  FILE_ATTRIBUTE_ACCESS_CAN_DELETE = "access::can-delete" # : UInt8*
  FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = "access::can-execute" # : UInt8*
  FILE_ATTRIBUTE_ACCESS_CAN_READ = "access::can-read" # : UInt8*
  FILE_ATTRIBUTE_ACCESS_CAN_RENAME = "access::can-rename" # : UInt8*
  FILE_ATTRIBUTE_ACCESS_CAN_TRASH = "access::can-trash" # : UInt8*
  FILE_ATTRIBUTE_ACCESS_CAN_WRITE = "access::can-write" # : UInt8*
  FILE_ATTRIBUTE_DOS_IS_ARCHIVE = "dos::is-archive" # : UInt8*
  FILE_ATTRIBUTE_DOS_IS_SYSTEM = "dos::is-system" # : UInt8*
  FILE_ATTRIBUTE_ETAG_VALUE = "etag::value" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_FREE = "filesystem::free" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_READONLY = "filesystem::readonly" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_REMOTE = "filesystem::remote" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_SIZE = "filesystem::size" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_TYPE = "filesystem::type" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_USED = "filesystem::used" # : UInt8*
  FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = "filesystem::use-preview" # : UInt8*
  FILE_ATTRIBUTE_GVFS_BACKEND = "gvfs::backend" # : UInt8*
  FILE_ATTRIBUTE_ID_FILE = "id::file" # : UInt8*
  FILE_ATTRIBUTE_ID_FILESYSTEM = "id::filesystem" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = "mountable::can-eject" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = "mountable::can-mount" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = "mountable::can-poll" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_START = "mountable::can-start" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = "mountable::can-start-degraded" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = "mountable::can-stop" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = "mountable::can-unmount" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = "mountable::hal-udi" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = "mountable::is-media-check-automatic" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = "mountable::start-stop-type" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = "mountable::unix-device" # : UInt8*
  FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = "mountable::unix-device-file" # : UInt8*
  FILE_ATTRIBUTE_OWNER_GROUP = "owner::group" # : UInt8*
  FILE_ATTRIBUTE_OWNER_USER = "owner::user" # : UInt8*
  FILE_ATTRIBUTE_OWNER_USER_REAL = "owner::user-real" # : UInt8*
  FILE_ATTRIBUTE_PREVIEW_ICON = "preview::icon" # : UInt8*
  FILE_ATTRIBUTE_RECENT_MODIFIED = "recent::modified" # : UInt8*
  FILE_ATTRIBUTE_SELINUX_CONTEXT = "selinux::context" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = "standard::allocated-size" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = "standard::content-type" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_COPY_NAME = "standard::copy-name" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_DESCRIPTION = "standard::description" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = "standard::display-name" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_EDIT_NAME = "standard::edit-name" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = "standard::fast-content-type" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_ICON = "standard::icon" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_IS_BACKUP = "standard::is-backup" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = "standard::is-hidden" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = "standard::is-symlink" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = "standard::is-virtual" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = "standard::is-volatile" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_NAME = "standard::name" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_SIZE = "standard::size" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_SORT_ORDER = "standard::sort-order" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = "standard::symbolic-icon" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = "standard::symlink-target" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_TARGET_URI = "standard::target-uri" # : UInt8*
  FILE_ATTRIBUTE_STANDARD_TYPE = "standard::type" # : UInt8*
  FILE_ATTRIBUTE_THUMBNAILING_FAILED = "thumbnail::failed" # : UInt8*
  FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = "thumbnail::is-valid" # : UInt8*
  FILE_ATTRIBUTE_THUMBNAIL_PATH = "thumbnail::path" # : UInt8*
  FILE_ATTRIBUTE_TIME_ACCESS = "time::access" # : UInt8*
  FILE_ATTRIBUTE_TIME_ACCESS_USEC = "time::access-usec" # : UInt8*
  FILE_ATTRIBUTE_TIME_CHANGED = "time::changed" # : UInt8*
  FILE_ATTRIBUTE_TIME_CHANGED_USEC = "time::changed-usec" # : UInt8*
  FILE_ATTRIBUTE_TIME_CREATED = "time::created" # : UInt8*
  FILE_ATTRIBUTE_TIME_CREATED_USEC = "time::created-usec" # : UInt8*
  FILE_ATTRIBUTE_TIME_MODIFIED = "time::modified" # : UInt8*
  FILE_ATTRIBUTE_TIME_MODIFIED_USEC = "time::modified-usec" # : UInt8*
  FILE_ATTRIBUTE_TRASH_DELETION_DATE = "trash::deletion-date" # : UInt8*
  FILE_ATTRIBUTE_TRASH_ITEM_COUNT = "trash::item-count" # : UInt8*
  FILE_ATTRIBUTE_TRASH_ORIG_PATH = "trash::orig-path" # : UInt8*
  FILE_ATTRIBUTE_UNIX_BLOCKS = "unix::blocks" # : UInt8*
  FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = "unix::block-size" # : UInt8*
  FILE_ATTRIBUTE_UNIX_DEVICE = "unix::device" # : UInt8*
  FILE_ATTRIBUTE_UNIX_GID = "unix::gid" # : UInt8*
  FILE_ATTRIBUTE_UNIX_INODE = "unix::inode" # : UInt8*
  FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = "unix::is-mountpoint" # : UInt8*
  FILE_ATTRIBUTE_UNIX_MODE = "unix::mode" # : UInt8*
  FILE_ATTRIBUTE_UNIX_NLINK = "unix::nlink" # : UInt8*
  FILE_ATTRIBUTE_UNIX_RDEV = "unix::rdev" # : UInt8*
  FILE_ATTRIBUTE_UNIX_UID = "unix::uid" # : UInt8*
  MENU_ATTRIBUTE_ACTION = "action" # : UInt8*
  MENU_ATTRIBUTE_ACTION_NAMESPACE = "action-namespace" # : UInt8*
  MENU_ATTRIBUTE_ICON = "icon" # : UInt8*
  MENU_ATTRIBUTE_LABEL = "label" # : UInt8*
  MENU_ATTRIBUTE_TARGET = "target" # : UInt8*
  MENU_LINK_SECTION = "section" # : UInt8*
  MENU_LINK_SUBMENU = "submenu" # : UInt8*
  NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = "gio-native-volume-monitor" # : UInt8*
  NETWORK_MONITOR_EXTENSION_POINT_NAME = "gio-network-monitor" # : UInt8*
  PROXY_EXTENSION_POINT_NAME = "gio-proxy" # : UInt8*
  PROXY_RESOLVER_EXTENSION_POINT_NAME = "gio-proxy-resolver" # : UInt8*
  SETTINGS_BACKEND_EXTENSION_POINT_NAME = "gsettings-backend" # : UInt8*
  TLS_BACKEND_EXTENSION_POINT_NAME = "gio-tls-backend" # : UInt8*
  TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = "1.3.6.1.5.5.7.3.2" # : UInt8*
  TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = "1.3.6.1.5.5.7.3.1" # : UInt8*
  VFS_EXTENSION_POINT_NAME = "gio-vfs" # : UInt8*
  VOLUME_IDENTIFIER_KIND_CLASS = "class" # : UInt8*
  VOLUME_IDENTIFIER_KIND_HAL_UDI = "hal-udi" # : UInt8*
  VOLUME_IDENTIFIER_KIND_LABEL = "label" # : UInt8*
  VOLUME_IDENTIFIER_KIND_NFS_MOUNT = "nfs-mount" # : UInt8*
  VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = "unix-device" # : UInt8*
  VOLUME_IDENTIFIER_KIND_UUID = "uuid" # : UInt8*
  VOLUME_MONITOR_EXTENSION_POINT_NAME = "gio-volume-monitor" # : UInt8*

  ###########################################
  ##    Functions
  ###########################################

  fun action_name_is_valid = g_action_name_is_valid(action_name : UInt8*) : Bool
  fun action_parse_detailed_name = g_action_parse_detailed_name(detailed_name : UInt8*, action_name : UInt8**, target_value : LibGLib::Variant**, error : LibGLib::Error**) : Bool
  fun action_print_detailed_name = g_action_print_detailed_name(action_name : UInt8*, target_value : LibGLib::Variant*) : UInt8*
  fun app_info_create_from_commandline = g_app_info_create_from_commandline(commandline : UInt8*, application_name : UInt8*, flags : LibGio::AppInfoCreateFlags, error : LibGLib::Error**) : LibGio::AppInfo*
  fun app_info_get_all = g_app_info_get_all() : Void**
  fun app_info_get_all_for_type = g_app_info_get_all_for_type(content_type : UInt8*) : Void**
  fun app_info_get_default_for_type = g_app_info_get_default_for_type(content_type : UInt8*, must_support_uris : Bool) : LibGio::AppInfo*
  fun app_info_get_default_for_uri_scheme = g_app_info_get_default_for_uri_scheme(uri_scheme : UInt8*) : LibGio::AppInfo*
  fun app_info_get_fallback_for_type = g_app_info_get_fallback_for_type(content_type : UInt8*) : Void**
  fun app_info_get_recommended_for_type = g_app_info_get_recommended_for_type(content_type : UInt8*) : Void**
  fun app_info_launch_default_for_uri = g_app_info_launch_default_for_uri(uri : UInt8*, context : LibGio::AppLaunchContext*, error : LibGLib::Error**) : Bool
  fun app_info_launch_default_for_uri_async = g_app_info_launch_default_for_uri_async(uri : UInt8*, context : LibGio::AppLaunchContext*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun app_info_launch_default_for_uri_finish = g_app_info_launch_default_for_uri_finish(result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun app_info_reset_type_associations = g_app_info_reset_type_associations(content_type : UInt8*) : Void
  fun async_initable_newv_async = g_async_initable_newv_async(object_type : UInt64, n_parameters : UInt32, parameters : LibGObject::Parameter*, io_priority : Int32, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun bus_get = g_bus_get(bus_type : LibGio::BusType, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun bus_get_finish = g_bus_get_finish(res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::DBusConnection*
  fun bus_get_sync = g_bus_get_sync(bus_type : LibGio::BusType, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::DBusConnection*
  fun bus_own_name_on_connection = g_bus_own_name_on_connection_with_closures(connection : LibGio::DBusConnection*, name : UInt8*, flags : LibGio::BusNameOwnerFlags, name_acquired_closure : LibGObject::Closure*, name_lost_closure : LibGObject::Closure*) : UInt32
  fun bus_own_name = g_bus_own_name_with_closures(bus_type : LibGio::BusType, name : UInt8*, flags : LibGio::BusNameOwnerFlags, bus_acquired_closure : LibGObject::Closure*, name_acquired_closure : LibGObject::Closure*, name_lost_closure : LibGObject::Closure*) : UInt32
  fun bus_unown_name = g_bus_unown_name(owner_id : UInt32) : Void
  fun bus_unwatch_name = g_bus_unwatch_name(watcher_id : UInt32) : Void
  fun bus_watch_name_on_connection = g_bus_watch_name_on_connection_with_closures(connection : LibGio::DBusConnection*, name : UInt8*, flags : LibGio::BusNameWatcherFlags, name_appeared_closure : LibGObject::Closure*, name_vanished_closure : LibGObject::Closure*) : UInt32
  fun bus_watch_name = g_bus_watch_name_with_closures(bus_type : LibGio::BusType, name : UInt8*, flags : LibGio::BusNameWatcherFlags, name_appeared_closure : LibGObject::Closure*, name_vanished_closure : LibGObject::Closure*) : UInt32
  fun content_type_can_be_executable = g_content_type_can_be_executable(type : UInt8*) : Bool
  fun content_type_equals = g_content_type_equals(type1 : UInt8*, type2 : UInt8*) : Bool
  fun content_type_from_mime_type = g_content_type_from_mime_type(mime_type : UInt8*) : UInt8*
  fun content_type_get_description = g_content_type_get_description(type : UInt8*) : UInt8*
  fun content_type_get_generic_icon_name = g_content_type_get_generic_icon_name(type : UInt8*) : UInt8*
  fun content_type_get_icon = g_content_type_get_icon(type : UInt8*) : LibGio::Icon*
  fun content_type_get_mime_type = g_content_type_get_mime_type(type : UInt8*) : UInt8*
  fun content_type_get_symbolic_icon = g_content_type_get_symbolic_icon(type : UInt8*) : LibGio::Icon*
  fun content_type_guess = g_content_type_guess(filename : UInt8*, data : UInt8*, data_size : UInt64, result_uncertain : Bool*) : UInt8*
  fun content_type_guess_for_tree = g_content_type_guess_for_tree(root : LibGio::File*) : UInt8**
  fun content_type_is_a = g_content_type_is_a(type : UInt8*, supertype : UInt8*) : Bool
  fun content_type_is_mime_type = g_content_type_is_mime_type(type : UInt8*, mime_type : UInt8*) : Bool
  fun content_type_is_unknown = g_content_type_is_unknown(type : UInt8*) : Bool
  fun content_types_get_registered = g_content_types_get_registered() : Void**
  fun dbus_address_escape_value = g_dbus_address_escape_value(string : UInt8*) : UInt8*
  fun dbus_address_get_for_bus_sync = g_dbus_address_get_for_bus_sync(bus_type : LibGio::BusType, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : UInt8*
  fun dbus_address_get_stream = g_dbus_address_get_stream(address : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun dbus_address_get_stream_finish = g_dbus_address_get_stream_finish(res : LibGio::AsyncResult*, out_guid : UInt8**, error : LibGLib::Error**) : LibGio::IOStream*
  fun dbus_address_get_stream_sync = g_dbus_address_get_stream_sync(address : UInt8*, out_guid : UInt8**, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGio::IOStream*
  fun dbus_annotation_info_lookup = g_dbus_annotation_info_lookup(annotations : LibGio::DBusAnnotationInfo**, name : UInt8*) : UInt8*
  fun dbus_error_encode_gerror = g_dbus_error_encode_gerror(error : LibGLib::Error**) : UInt8*
  fun dbus_error_get_remote_error = g_dbus_error_get_remote_error(error : LibGLib::Error**) : UInt8*
  fun dbus_error_is_remote_error = g_dbus_error_is_remote_error(error : LibGLib::Error**) : Bool
  fun dbus_error_new_for_dbus_error = g_dbus_error_new_for_dbus_error(dbus_error_name : UInt8*, dbus_error_message : UInt8*) : LibGLib::Error**
  fun dbus_error_quark = g_dbus_error_quark() : UInt32
  fun dbus_error_register_error = g_dbus_error_register_error(error_domain : UInt32, error_code : Int32, dbus_error_name : UInt8*) : Bool
  fun dbus_error_register_error_domain = g_dbus_error_register_error_domain(error_domain_quark_name : UInt8*, quark_volatile : UInt64*, entries : LibGio::DBusErrorEntry*, num_entries : UInt32) : Void
  fun dbus_error_strip_remote_error = g_dbus_error_strip_remote_error(error : LibGLib::Error**) : Bool
  fun dbus_error_unregister_error = g_dbus_error_unregister_error(error_domain : UInt32, error_code : Int32, dbus_error_name : UInt8*) : Bool
  fun dbus_generate_guid = g_dbus_generate_guid() : UInt8*
  fun dbus_gvalue_to_gvariant = g_dbus_gvalue_to_gvariant(gvalue : LibGObject::Value*, type : LibGLib::VariantType*) : LibGLib::Variant*
  fun dbus_gvariant_to_gvalue = g_dbus_gvariant_to_gvalue(value : LibGLib::Variant*, out_gvalue : LibGObject::Value*) : Void
  fun dbus_is_address = g_dbus_is_address(string : UInt8*) : Bool
  fun dbus_is_guid = g_dbus_is_guid(string : UInt8*) : Bool
  fun dbus_is_interface_name = g_dbus_is_interface_name(string : UInt8*) : Bool
  fun dbus_is_member_name = g_dbus_is_member_name(string : UInt8*) : Bool
  fun dbus_is_name = g_dbus_is_name(string : UInt8*) : Bool
  fun dbus_is_supported_address = g_dbus_is_supported_address(string : UInt8*, error : LibGLib::Error**) : Bool
  fun dbus_is_unique_name = g_dbus_is_unique_name(string : UInt8*) : Bool
  fun dtls_client_connection_new = g_dtls_client_connection_new(base_socket : LibGio::DatagramBased*, server_identity : LibGio::SocketConnectable*, error : LibGLib::Error**) : LibGio::DtlsClientConnection*
  fun dtls_server_connection_new = g_dtls_server_connection_new(base_socket : LibGio::DatagramBased*, certificate : LibGio::TlsCertificate*, error : LibGLib::Error**) : LibGio::DtlsServerConnection*
  fun file_new_for_commandline_arg = g_file_new_for_commandline_arg(arg : UInt8*) : LibGio::File*
  fun file_new_for_commandline_arg_and_cwd = g_file_new_for_commandline_arg_and_cwd(arg : UInt8*, cwd : UInt8*) : LibGio::File*
  fun file_new_for_path = g_file_new_for_path(path : UInt8*) : LibGio::File*
  fun file_new_for_uri = g_file_new_for_uri(uri : UInt8*) : LibGio::File*
  fun file_new_tmp = g_file_new_tmp(tmpl : UInt8*, iostream : LibGio::FileIOStream**, error : LibGLib::Error**) : LibGio::File*
  fun file_parse_name = g_file_parse_name(parse_name : UInt8*) : LibGio::File*
  fun icon_deserialize = g_icon_deserialize(value : LibGLib::Variant*) : LibGio::Icon*
  fun icon_hash = g_icon_hash(icon : Void*) : UInt32
  fun icon_new_for_string = g_icon_new_for_string(str : UInt8*, error : LibGLib::Error**) : LibGio::Icon*
  fun initable_newv = g_initable_newv(object_type : UInt64, n_parameters : UInt32, parameters : LibGObject::Parameter*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : LibGObject::Object*
  fun io_error_from_errno = g_io_error_from_errno(err_no : Int32) : LibGio::IOErrorEnum
  fun io_error_quark = g_io_error_quark() : UInt32
  fun io_extension_point_implement = g_io_extension_point_implement(extension_point_name : UInt8*, type : UInt64, extension_name : UInt8*, priority : Int32) : LibGio::IOExtension*
  fun io_extension_point_lookup = g_io_extension_point_lookup(name : UInt8*) : LibGio::IOExtensionPoint*
  fun io_extension_point_register = g_io_extension_point_register(name : UInt8*) : LibGio::IOExtensionPoint*
  fun io_modules_load_all_in_directory = g_io_modules_load_all_in_directory(dirname : UInt8*) : Void**
  fun io_modules_load_all_in_directory_with_scope = g_io_modules_load_all_in_directory_with_scope(dirname : UInt8*, scope : LibGio::IOModuleScope*) : Void**
  fun io_modules_scan_all_in_directory = g_io_modules_scan_all_in_directory(dirname : UInt8*) : Void
  fun io_modules_scan_all_in_directory_with_scope = g_io_modules_scan_all_in_directory_with_scope(dirname : UInt8*, scope : LibGio::IOModuleScope*) : Void
  fun io_scheduler_cancel_all_jobs = g_io_scheduler_cancel_all_jobs() : Void
  fun io_scheduler_push_job = g_io_scheduler_push_job(job_func : LibGio::IOSchedulerJobFunc, user_data : Void*, notify : LibGLib::DestroyNotify, io_priority : Int32, cancellable : LibGio::Cancellable*) : Void
  fun keyfile_settings_backend_new = g_keyfile_settings_backend_new(filename : UInt8*, root_path : UInt8*, root_group : UInt8*) : LibGio::SettingsBackend*
  fun memory_settings_backend_new = g_memory_settings_backend_new() : LibGio::SettingsBackend*
  fun network_monitor_get_default = g_network_monitor_get_default() : LibGio::NetworkMonitor*
  fun networking_init = g_networking_init() : Void
  fun null_settings_backend_new = g_null_settings_backend_new() : LibGio::SettingsBackend*
  fun pollable_source_new = g_pollable_source_new(pollable_stream : LibGObject::Object*) : LibGLib::Source*
  fun pollable_source_new_full = g_pollable_source_new_full(pollable_stream : LibGObject::Object*, child_source : LibGLib::Source*, cancellable : LibGio::Cancellable*) : LibGLib::Source*
  fun pollable_stream_read = g_pollable_stream_read(stream : LibGio::InputStream*, buffer : UInt8*, count : UInt64, blocking : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun pollable_stream_write = g_pollable_stream_write(stream : LibGio::OutputStream*, buffer : UInt8*, count : UInt64, blocking : Bool, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Int64
  fun pollable_stream_write_all = g_pollable_stream_write_all(stream : LibGio::OutputStream*, buffer : UInt8*, count : UInt64, blocking : Bool, bytes_written : UInt64*, cancellable : LibGio::Cancellable*, error : LibGLib::Error**) : Bool
  fun proxy_get_default_for_protocol = g_proxy_get_default_for_protocol(protocol : UInt8*) : LibGio::Proxy*
  fun proxy_resolver_get_default = g_proxy_resolver_get_default() : LibGio::ProxyResolver*
  fun resolver_error_quark = g_resolver_error_quark() : UInt32
  fun resource_error_quark = g_resource_error_quark() : UInt32
  fun resource_load = g_resource_load(filename : UInt8*, error : LibGLib::Error**) : LibGio::Resource*
  fun resources_enumerate_children = g_resources_enumerate_children(path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, error : LibGLib::Error**) : UInt8**
  fun resources_get_info = g_resources_get_info(path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, size : UInt64*, flags : UInt32*, error : LibGLib::Error**) : Bool
  fun resources_lookup_data = g_resources_lookup_data(path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, error : LibGLib::Error**) : LibGLib::Bytes*
  fun resources_open_stream = g_resources_open_stream(path : UInt8*, lookup_flags : LibGio::ResourceLookupFlags, error : LibGLib::Error**) : LibGio::InputStream*
  fun resources_register = g_resources_register(resource : LibGio::Resource*) : Void
  fun resources_unregister = g_resources_unregister(resource : LibGio::Resource*) : Void
  fun settings_schema_source_get_default = g_settings_schema_source_get_default() : LibGio::SettingsSchemaSource*
  fun simple_async_report_gerror_in_idle = g_simple_async_report_gerror_in_idle(object : LibGObject::Object*, callback : LibGio::AsyncReadyCallback, user_data : Void*, error : LibGLib::Error**) : Void
  fun tls_backend_get_default = g_tls_backend_get_default() : LibGio::TlsBackend*
  fun tls_client_connection_new = g_tls_client_connection_new(base_io_stream : LibGio::IOStream*, server_identity : LibGio::SocketConnectable*, error : LibGLib::Error**) : LibGio::TlsClientConnection*
  fun tls_error_quark = g_tls_error_quark() : UInt32
  fun tls_file_database_new = g_tls_file_database_new(anchors : UInt8*, error : LibGLib::Error**) : LibGio::TlsFileDatabase*
  fun tls_server_connection_new = g_tls_server_connection_new(base_io_stream : LibGio::IOStream*, certificate : LibGio::TlsCertificate*, error : LibGLib::Error**) : LibGio::TlsServerConnection*
  fun unix_is_mount_path_system_internal = g_unix_is_mount_path_system_internal(mount_path : UInt8*) : Bool
  fun unix_is_system_device_path = g_unix_is_system_device_path(device_path : UInt8*) : Bool
  fun unix_is_system_fs_type = g_unix_is_system_fs_type(fs_type : UInt8*) : Bool
  fun unix_mount_at = g_unix_mount_at(mount_path : UInt8*, time_read : UInt64*) : LibGio::UnixMountEntry*
  fun unix_mount_compare = g_unix_mount_compare(mount1 : LibGio::UnixMountEntry*, mount2 : LibGio::UnixMountEntry*) : Int32
  fun unix_mount_copy = g_unix_mount_copy(mount_entry : LibGio::UnixMountEntry*) : LibGio::UnixMountEntry*
  fun unix_mount_for = g_unix_mount_for(file_path : UInt8*, time_read : UInt64*) : LibGio::UnixMountEntry*
  fun unix_mount_free = g_unix_mount_free(mount_entry : LibGio::UnixMountEntry*) : Void
  fun unix_mount_get_device_path = g_unix_mount_get_device_path(mount_entry : LibGio::UnixMountEntry*) : UInt8*
  fun unix_mount_get_fs_type = g_unix_mount_get_fs_type(mount_entry : LibGio::UnixMountEntry*) : UInt8*
  fun unix_mount_get_mount_path = g_unix_mount_get_mount_path(mount_entry : LibGio::UnixMountEntry*) : UInt8*
  fun unix_mount_get_options = g_unix_mount_get_options(mount_entry : LibGio::UnixMountEntry*) : UInt8*
  fun unix_mount_guess_can_eject = g_unix_mount_guess_can_eject(mount_entry : LibGio::UnixMountEntry*) : Bool
  fun unix_mount_guess_icon = g_unix_mount_guess_icon(mount_entry : LibGio::UnixMountEntry*) : LibGio::Icon*
  fun unix_mount_guess_name = g_unix_mount_guess_name(mount_entry : LibGio::UnixMountEntry*) : UInt8*
  fun unix_mount_guess_should_display = g_unix_mount_guess_should_display(mount_entry : LibGio::UnixMountEntry*) : Bool
  fun unix_mount_guess_symbolic_icon = g_unix_mount_guess_symbolic_icon(mount_entry : LibGio::UnixMountEntry*) : LibGio::Icon*
  fun unix_mount_is_readonly = g_unix_mount_is_readonly(mount_entry : LibGio::UnixMountEntry*) : Bool
  fun unix_mount_is_system_internal = g_unix_mount_is_system_internal(mount_entry : LibGio::UnixMountEntry*) : Bool
  fun unix_mount_points_changed_since = g_unix_mount_points_changed_since(time : UInt64) : Bool
  fun unix_mount_points_get = g_unix_mount_points_get(time_read : UInt64*) : Void**
  fun unix_mounts_changed_since = g_unix_mounts_changed_since(time : UInt64) : Bool
  fun unix_mounts_get = g_unix_mounts_get(time_read : UInt64*) : Void**

  ###########################################
  ##    Callbacks
  ###########################################

 alias AsyncReadyCallback = LibGObject::Object*, LibGio::AsyncResult*, Void* -> Void
 alias BusAcquiredCallback = LibGio::DBusConnection*, UInt8*, Void* -> Void
 alias BusNameAcquiredCallback = LibGio::DBusConnection*, UInt8*, Void* -> Void
 alias BusNameAppearedCallback = LibGio::DBusConnection*, UInt8*, UInt8*, Void* -> Void
 alias BusNameLostCallback = LibGio::DBusConnection*, UInt8*, Void* -> Void
 alias BusNameVanishedCallback = LibGio::DBusConnection*, UInt8*, Void* -> Void
 alias CancellableSourceFunc = LibGio::Cancellable*, Void* -> Bool
 alias DBusInterfaceGetPropertyFunc = LibGio::DBusConnection*, UInt8*, UInt8*, UInt8*, UInt8*, LibGLib::Error**, Void* -> LibGLib::Variant*
 alias DBusInterfaceMethodCallFunc = LibGio::DBusConnection*, UInt8*, UInt8*, UInt8*, UInt8*, LibGLib::Variant*, LibGio::DBusMethodInvocation*, Void* -> Void
 alias DBusInterfaceSetPropertyFunc = LibGio::DBusConnection*, UInt8*, UInt8*, UInt8*, UInt8*, LibGLib::Variant*, LibGLib::Error**, Void* -> Bool
 alias DBusMessageFilterFunction = LibGio::DBusConnection*, LibGio::DBusMessage*, Bool, Void* -> LibGio::DBusMessage*
 alias DBusProxyTypeFunc = LibGio::DBusObjectManagerClient*, UInt8*, UInt8*, Void* -> UInt64
 alias DBusSignalCallback = LibGio::DBusConnection*, UInt8*, UInt8*, UInt8*, UInt8*, LibGLib::Variant*, Void* -> Void
 alias DBusSubtreeDispatchFunc = LibGio::DBusConnection*, UInt8*, UInt8*, UInt8*, UInt8*, Void*, Void* -> LibGio::DBusInterfaceVTable*
 alias DBusSubtreeIntrospectFunc = LibGio::DBusConnection*, UInt8*, UInt8*, UInt8*, Void* -> LibGio::DBusInterfaceInfo*
 alias DatagramBasedSourceFunc = LibGio::DatagramBased*, LibGLib::IOCondition, Void* -> Bool
 alias DesktopAppLaunchCallback = LibGio::DesktopAppInfo*, Int32, Void* -> Void
 alias FileMeasureProgressCallback = Bool, UInt64, UInt64, UInt64, Void* -> Void
 alias FileProgressCallback = Int64, Int64, Void* -> Void
 alias FileReadMoreCallback = UInt8*, Int64, Void* -> Bool
 alias IOSchedulerJobFunc = LibGio::IOSchedulerJob*, LibGio::Cancellable*, Void* -> Bool
 alias PollableSourceFunc = LibGObject::Object*, Void* -> Bool
 alias ReallocFunc = Void*, UInt64 -> Void*
 alias SettingsBindGetMapping = LibGObject::Value*, LibGLib::Variant*, Void* -> Bool
 alias SettingsBindSetMapping = LibGObject::Value*, LibGLib::VariantType*, Void* -> LibGLib::Variant*
 alias SettingsGetMapping = LibGLib::Variant*, Void*, Void* -> Bool
 alias SimpleAsyncThreadFunc = LibGio::SimpleAsyncResult*, LibGObject::Object*, LibGio::Cancellable* -> Void
 alias SocketSourceFunc = LibGio::Socket*, LibGLib::IOCondition, Void* -> Bool
 alias TaskThreadFunc = LibGio::Task*, LibGObject::Object*, Void*, LibGio::Cancellable* -> Void
 alias VfsFileLookupFunc = LibGio::Vfs*, UInt8*, Void* -> LibGio::File*
end

