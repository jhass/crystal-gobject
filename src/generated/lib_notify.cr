require "./lib_g_lib"
require "./lib_gdk_pixbuf"
require "./lib_gio"
require "./lib_g_module"
require "./lib_g_object"

@[Link("notify")]
lib LibNotify

  ###########################################
  ##    Constants
  ###########################################

  EXPIRES_DEFAULT = -1 # : Int32
  EXPIRES_NEVER = 0 # : Int32
  VERSION_MAJOR = 0 # : Int32
  VERSION_MICRO = 6 # : Int32
  VERSION_MINOR = 7 # : Int32

  ###########################################
  ##    Objects
  ###########################################

  struct Notification # object
    parent_object : LibGObject::Object
    priv : LibNotify::NotificationPrivate*
    # Signal closed
    # Virtual function closed
  end
  fun notification_new = notify_notification_new(summary : UInt8*, body : UInt8*, icon : UInt8*) : LibNotify::Notification*
  fun notification_add_action = notify_notification_add_action(this : Notification*, action : UInt8*, label : UInt8*, callback : LibNotify::ActionCallback, user_data : Void*, free_func : LibGLib::DestroyNotify) : Void
  fun notification_clear_actions = notify_notification_clear_actions(this : Notification*) : Void
  fun notification_clear_hints = notify_notification_clear_hints(this : Notification*) : Void
  fun notification_close = notify_notification_close(this : Notification*, error : LibGLib::Error**) : Bool
  fun notification_get_closed_reason = notify_notification_get_closed_reason(this : Notification*) : Int32
  fun notification_set_app_name = notify_notification_set_app_name(this : Notification*, app_name : UInt8*) : Void
  fun notification_set_category = notify_notification_set_category(this : Notification*, category : UInt8*) : Void
  fun notification_set_hint = notify_notification_set_hint(this : Notification*, key : UInt8*, value : LibGLib::Variant*) : Void
  fun notification_set_hint_byte = notify_notification_set_hint_byte(this : Notification*, key : UInt8*, value : UInt8) : Void
  fun notification_set_hint_byte_array = notify_notification_set_hint_byte_array(this : Notification*, key : UInt8*, value : UInt8*, len : UInt64) : Void
  fun notification_set_hint_double = notify_notification_set_hint_double(this : Notification*, key : UInt8*, value : Float64) : Void
  fun notification_set_hint_int32 = notify_notification_set_hint_int32(this : Notification*, key : UInt8*, value : Int32) : Void
  fun notification_set_hint_string = notify_notification_set_hint_string(this : Notification*, key : UInt8*, value : UInt8*) : Void
  fun notification_set_hint_uint32 = notify_notification_set_hint_uint32(this : Notification*, key : UInt8*, value : UInt32) : Void
  fun notification_set_icon_from_pixbuf = notify_notification_set_icon_from_pixbuf(this : Notification*, icon : LibGdkPixbuf::Pixbuf*) : Void
  fun notification_set_image_from_pixbuf = notify_notification_set_image_from_pixbuf(this : Notification*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun notification_set_timeout = notify_notification_set_timeout(this : Notification*, timeout : Int32) : Void
  fun notification_set_urgency = notify_notification_set_urgency(this : Notification*, urgency : LibNotify::Urgency) : Void
  fun notification_show = notify_notification_show(this : Notification*, error : LibGLib::Error**) : Bool
  fun notification_update = notify_notification_update(this : Notification*, summary : UInt8*, body : UInt8*, icon : UInt8*) : Bool


  ###########################################
  ##    Structs
  ###########################################

  struct NotificationPrivate # struct
    _data : UInt8[0]
  end


  ###########################################
  ##    Enums
  ###########################################

  enum Urgency : UInt32
    ZERO_NONE = 0
    LOW = 0
    NORMAL = 1
    CRITICAL = 2
  end


  ###########################################
  ##    Functions
  ###########################################

  fun get_app_name = notify_get_app_name() : UInt8*
  fun get_server_caps = notify_get_server_caps() : Void**
  fun get_server_info = notify_get_server_info(ret_name : UInt8**, ret_vendor : UInt8**, ret_version : UInt8**, ret_spec_version : UInt8**) : Bool
  fun init = notify_init(app_name : UInt8*) : Bool
  fun is_initted = notify_is_initted() : Bool
  fun set_app_name = notify_set_app_name(app_name : UInt8*) : Void
  fun uninit = notify_uninit() : Void

  ###########################################
  ##    Callbacks
  ###########################################

 alias ActionCallback = LibNotify::Notification*, UInt8*, Void* -> Void
end

