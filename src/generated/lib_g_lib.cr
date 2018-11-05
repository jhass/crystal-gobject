@[Link("gobject-2.0")]
@[Link("glib-2.0")]
lib LibGLib

  ###########################################
  ##    Constants
  ###########################################

  ANALYZER_ANALYZING = 1 # : Int32
  ASCII_DTOSTR_BUF_SIZE = 39 # : Int32
  BIG_ENDIAN = 4321 # : Int32
  CSET_A_2_Z = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" # : UInt8*
  CSET_DIGITS = "0123456789" # : UInt8*
  CSET_a_2_z = "abcdefghijklmnopqrstuvwxyz" # : UInt8*
  DATALIST_FLAGS_MASK = 3 # : Int32
  DATE_BAD_DAY = 0 # : Int32
  DATE_BAD_JULIAN = 0 # : Int32
  DATE_BAD_YEAR = 0 # : Int32
  DIR_SEPARATOR = 47 # : Int32
  DIR_SEPARATOR_S = "/" # : UInt8*
  E = 2.718282 # : Float64
  GINT16_FORMAT = "hi" # : UInt8*
  GINT16_MODIFIER = "h" # : UInt8*
  GINT32_FORMAT = "i" # : UInt8*
  GINT32_MODIFIER = "" # : UInt8*
  GINT64_FORMAT = "li" # : UInt8*
  GINT64_MODIFIER = "l" # : UInt8*
  GINTPTR_FORMAT = "li" # : UInt8*
  GINTPTR_MODIFIER = "l" # : UInt8*
  GNUC_FUNCTION = "" # : UInt8*
  GNUC_PRETTY_FUNCTION = "" # : UInt8*
  GSIZE_FORMAT = "lu" # : UInt8*
  GSIZE_MODIFIER = "l" # : UInt8*
  GSSIZE_FORMAT = "li" # : UInt8*
  GSSIZE_MODIFIER = "l" # : UInt8*
  GUINT16_FORMAT = "hu" # : UInt8*
  GUINT32_FORMAT = "u" # : UInt8*
  GUINT64_FORMAT = "lu" # : UInt8*
  GUINTPTR_FORMAT = "lu" # : UInt8*
  HAVE_GINT64 = 1 # : Int32
  HAVE_GNUC_VARARGS = 1 # : Int32
  HAVE_GNUC_VISIBILITY = 1 # : Int32
  HAVE_ISO_VARARGS = 1 # : Int32
  HOOK_FLAG_USER_SHIFT = 4 # : Int32
  IEEE754_DOUBLE_BIAS = 1023 # : Int32
  IEEE754_FLOAT_BIAS = 127 # : Int32
  KEY_FILE_DESKTOP_GROUP = "Desktop Entry" # : UInt8*
  KEY_FILE_DESKTOP_KEY_ACTIONS = "Actions" # : UInt8*
  KEY_FILE_DESKTOP_KEY_CATEGORIES = "Categories" # : UInt8*
  KEY_FILE_DESKTOP_KEY_COMMENT = "Comment" # : UInt8*
  KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE = "DBusActivatable" # : UInt8*
  KEY_FILE_DESKTOP_KEY_EXEC = "Exec" # : UInt8*
  KEY_FILE_DESKTOP_KEY_GENERIC_NAME = "GenericName" # : UInt8*
  KEY_FILE_DESKTOP_KEY_HIDDEN = "Hidden" # : UInt8*
  KEY_FILE_DESKTOP_KEY_ICON = "Icon" # : UInt8*
  KEY_FILE_DESKTOP_KEY_MIME_TYPE = "MimeType" # : UInt8*
  KEY_FILE_DESKTOP_KEY_NAME = "Name" # : UInt8*
  KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN = "NotShowIn" # : UInt8*
  KEY_FILE_DESKTOP_KEY_NO_DISPLAY = "NoDisplay" # : UInt8*
  KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN = "OnlyShowIn" # : UInt8*
  KEY_FILE_DESKTOP_KEY_PATH = "Path" # : UInt8*
  KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY = "StartupNotify" # : UInt8*
  KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS = "StartupWMClass" # : UInt8*
  KEY_FILE_DESKTOP_KEY_TERMINAL = "Terminal" # : UInt8*
  KEY_FILE_DESKTOP_KEY_TRY_EXEC = "TryExec" # : UInt8*
  KEY_FILE_DESKTOP_KEY_TYPE = "Type" # : UInt8*
  KEY_FILE_DESKTOP_KEY_URL = "URL" # : UInt8*
  KEY_FILE_DESKTOP_KEY_VERSION = "Version" # : UInt8*
  KEY_FILE_DESKTOP_TYPE_APPLICATION = "Application" # : UInt8*
  KEY_FILE_DESKTOP_TYPE_DIRECTORY = "Directory" # : UInt8*
  KEY_FILE_DESKTOP_TYPE_LINK = "Link" # : UInt8*
  LITTLE_ENDIAN = 1234 # : Int32
  LN10 = 2.302585 # : Float64
  LN2 = 0.693147 # : Float64
  LOG_2_BASE_10 = 0.30103 # : Float64
  LOG_DOMAIN = 0_i8 # : Int8
  LOG_FATAL_MASK = 5 # : Int32
  LOG_LEVEL_USER_SHIFT = 8 # : Int32
  MAJOR_VERSION = 2 # : Int32
  MAXINT16 = 32767_i16 # : Int16
  MAXINT32 = 2147483647 # : Int32
  MAXINT64 = 9223372036854775807_i64 # : Int64
  MAXINT8 = 127_i8 # : Int8
  MAXUINT16 = 65535_u16 # : UInt16
  MAXUINT32 = 4294967295_u32 # : UInt32
  MAXUINT64 = 18446744073709551615_u64 # : UInt64
  MAXUINT8 = 255_u8 # : UInt8
  MICRO_VERSION = 0 # : Int32
  MININT16 = -32768_i16 # : Int16
  MININT32 = -2147483648 # : Int32
  MININT64 = -9223372036854775808_i64 # : Int64
  MININT8 = -128_i8 # : Int8
  MINOR_VERSION = 58 # : Int32
  MODULE_SUFFIX = "so" # : UInt8*
  OPTION_REMAINING = "" # : UInt8*
  PDP_ENDIAN = 3412 # : Int32
  PI = 3.141593 # : Float64
  PID_FORMAT = "i" # : UInt8*
  PI_2 = 1.570796 # : Float64
  PI_4 = 0.785398 # : Float64
  POLLFD_FORMAT = "%d" # : UInt8*
  PRIORITY_DEFAULT = 0 # : Int32
  PRIORITY_DEFAULT_IDLE = 200 # : Int32
  PRIORITY_HIGH = -100 # : Int32
  PRIORITY_HIGH_IDLE = 100 # : Int32
  PRIORITY_LOW = 300 # : Int32
  SEARCHPATH_SEPARATOR = 58 # : Int32
  SEARCHPATH_SEPARATOR_S = ":" # : UInt8*
  SIZEOF_LONG = 8 # : Int32
  SIZEOF_SIZE_T = 8 # : Int32
  SIZEOF_SSIZE_T = 8 # : Int32
  SIZEOF_VOID_P = 8 # : Int32
  SOURCE_CONTINUE = true # : Bool
  SOURCE_REMOVE = false # : Bool
  SQRT2 = 1.414214 # : Float64
  STR_DELIMITERS = "_-|> <." # : UInt8*
  SYSDEF_AF_INET = 2 # : Int32
  SYSDEF_AF_INET6 = 10 # : Int32
  SYSDEF_AF_UNIX = 1 # : Int32
  SYSDEF_MSG_DONTROUTE = 4 # : Int32
  SYSDEF_MSG_OOB = 1 # : Int32
  SYSDEF_MSG_PEEK = 2 # : Int32
  TIME_SPAN_DAY = 86400000000_i64 # : Int64
  TIME_SPAN_HOUR = 3600000000_i64 # : Int64
  TIME_SPAN_MILLISECOND = 1000_i64 # : Int64
  TIME_SPAN_MINUTE = 60000000_i64 # : Int64
  TIME_SPAN_SECOND = 1000000_i64 # : Int64
  UNICHAR_MAX_DECOMPOSITION_LENGTH = 18 # : Int32
  URI_RESERVED_CHARS_GENERIC_DELIMITERS = ":/?#[]@" # : UInt8*
  URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS = "!$&'()*+,;=" # : UInt8*
  USEC_PER_SEC = 1000000 # : Int32
  VA_COPY_AS_ARRAY = 1 # : Int32
  VERSION_MIN_REQUIRED = 2 # : Int32
  WIN32_MSG_HANDLE = 19981206 # : Int32

  ###########################################
  ##    Structs
  ###########################################

  struct Array # struct
    data : UInt8*
    len : UInt32
  end

  struct AsyncQueue # struct
    _data : UInt8[0]
  end
  fun async_queue_length = g_async_queue_length(this : AsyncQueue*) : Int32
  fun async_queue_length_unlocked = g_async_queue_length_unlocked(this : AsyncQueue*) : Int32
  fun async_queue_lock = g_async_queue_lock(this : AsyncQueue*) : Void
  fun async_queue_pop = g_async_queue_pop(this : AsyncQueue*) : Void*
  fun async_queue_pop_unlocked = g_async_queue_pop_unlocked(this : AsyncQueue*) : Void*
  fun async_queue_push = g_async_queue_push(this : AsyncQueue*, data : Void*) : Void
  fun async_queue_push_front = g_async_queue_push_front(this : AsyncQueue*, item : Void*) : Void
  fun async_queue_push_front_unlocked = g_async_queue_push_front_unlocked(this : AsyncQueue*, item : Void*) : Void
  fun async_queue_push_unlocked = g_async_queue_push_unlocked(this : AsyncQueue*, data : Void*) : Void
  fun async_queue_ref_unlocked = g_async_queue_ref_unlocked(this : AsyncQueue*) : Void
  fun async_queue_remove = g_async_queue_remove(this : AsyncQueue*, item : Void*) : Bool
  fun async_queue_remove_unlocked = g_async_queue_remove_unlocked(this : AsyncQueue*, item : Void*) : Bool
  fun async_queue_timed_pop = g_async_queue_timed_pop(this : AsyncQueue*, end_time : LibGLib::TimeVal*) : Void*
  fun async_queue_timed_pop_unlocked = g_async_queue_timed_pop_unlocked(this : AsyncQueue*, end_time : LibGLib::TimeVal*) : Void*
  fun async_queue_timeout_pop = g_async_queue_timeout_pop(this : AsyncQueue*, timeout : UInt64) : Void*
  fun async_queue_timeout_pop_unlocked = g_async_queue_timeout_pop_unlocked(this : AsyncQueue*, timeout : UInt64) : Void*
  fun async_queue_try_pop = g_async_queue_try_pop(this : AsyncQueue*) : Void*
  fun async_queue_try_pop_unlocked = g_async_queue_try_pop_unlocked(this : AsyncQueue*) : Void*
  fun async_queue_unlock = g_async_queue_unlock(this : AsyncQueue*) : Void
  fun async_queue_unref = g_async_queue_unref(this : AsyncQueue*) : Void
  fun async_queue_unref_and_unlock = g_async_queue_unref_and_unlock(this : AsyncQueue*) : Void

  struct BookmarkFile # struct
    _data : UInt8[0]
  end
  fun bookmark_file_add_application = g_bookmark_file_add_application(this : BookmarkFile*, uri : UInt8*, name : UInt8*, exec : UInt8*) : Void
  fun bookmark_file_add_group = g_bookmark_file_add_group(this : BookmarkFile*, uri : UInt8*, group : UInt8*) : Void
  fun bookmark_file_free = g_bookmark_file_free(this : BookmarkFile*) : Void
  fun bookmark_file_get_added = g_bookmark_file_get_added(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : Int64
  fun bookmark_file_get_app_info = g_bookmark_file_get_app_info(this : BookmarkFile*, uri : UInt8*, name : UInt8*, exec : UInt8**, count : UInt32*, stamp : Int64*, error : LibGLib::Error**) : Bool
  fun bookmark_file_get_applications = g_bookmark_file_get_applications(this : BookmarkFile*, uri : UInt8*, length : UInt64*, error : LibGLib::Error**) : UInt8**
  fun bookmark_file_get_description = g_bookmark_file_get_description(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : UInt8*
  fun bookmark_file_get_groups = g_bookmark_file_get_groups(this : BookmarkFile*, uri : UInt8*, length : UInt64*, error : LibGLib::Error**) : UInt8**
  fun bookmark_file_get_icon = g_bookmark_file_get_icon(this : BookmarkFile*, uri : UInt8*, href : UInt8**, mime_type : UInt8**, error : LibGLib::Error**) : Bool
  fun bookmark_file_get_is_private = g_bookmark_file_get_is_private(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_get_mime_type = g_bookmark_file_get_mime_type(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : UInt8*
  fun bookmark_file_get_modified = g_bookmark_file_get_modified(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : Int64
  fun bookmark_file_get_size = g_bookmark_file_get_size(this : BookmarkFile*) : Int32
  fun bookmark_file_get_title = g_bookmark_file_get_title(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : UInt8*
  fun bookmark_file_get_uris = g_bookmark_file_get_uris(this : BookmarkFile*, length : UInt64*) : UInt8**
  fun bookmark_file_get_visited = g_bookmark_file_get_visited(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : Int64
  fun bookmark_file_has_application = g_bookmark_file_has_application(this : BookmarkFile*, uri : UInt8*, name : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_has_group = g_bookmark_file_has_group(this : BookmarkFile*, uri : UInt8*, group : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_has_item = g_bookmark_file_has_item(this : BookmarkFile*, uri : UInt8*) : Bool
  fun bookmark_file_load_from_data = g_bookmark_file_load_from_data(this : BookmarkFile*, data : UInt8*, length : UInt64, error : LibGLib::Error**) : Bool
  fun bookmark_file_load_from_data_dirs = g_bookmark_file_load_from_data_dirs(this : BookmarkFile*, file : UInt8*, full_path : UInt8**, error : LibGLib::Error**) : Bool
  fun bookmark_file_load_from_file = g_bookmark_file_load_from_file(this : BookmarkFile*, filename : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_move_item = g_bookmark_file_move_item(this : BookmarkFile*, old_uri : UInt8*, new_uri : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_remove_application = g_bookmark_file_remove_application(this : BookmarkFile*, uri : UInt8*, name : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_remove_group = g_bookmark_file_remove_group(this : BookmarkFile*, uri : UInt8*, group : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_remove_item = g_bookmark_file_remove_item(this : BookmarkFile*, uri : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_set_added = g_bookmark_file_set_added(this : BookmarkFile*, uri : UInt8*, added : Int64) : Void
  fun bookmark_file_set_app_info = g_bookmark_file_set_app_info(this : BookmarkFile*, uri : UInt8*, name : UInt8*, exec : UInt8*, count : Int32, stamp : Int64, error : LibGLib::Error**) : Bool
  fun bookmark_file_set_description = g_bookmark_file_set_description(this : BookmarkFile*, uri : UInt8*, description : UInt8*) : Void
  fun bookmark_file_set_groups = g_bookmark_file_set_groups(this : BookmarkFile*, uri : UInt8*, groups : UInt8**, length : UInt64) : Void
  fun bookmark_file_set_icon = g_bookmark_file_set_icon(this : BookmarkFile*, uri : UInt8*, href : UInt8*, mime_type : UInt8*) : Void
  fun bookmark_file_set_is_private = g_bookmark_file_set_is_private(this : BookmarkFile*, uri : UInt8*, is_private : Bool) : Void
  fun bookmark_file_set_mime_type = g_bookmark_file_set_mime_type(this : BookmarkFile*, uri : UInt8*, mime_type : UInt8*) : Void
  fun bookmark_file_set_modified = g_bookmark_file_set_modified(this : BookmarkFile*, uri : UInt8*, modified : Int64) : Void
  fun bookmark_file_set_title = g_bookmark_file_set_title(this : BookmarkFile*, uri : UInt8*, title : UInt8*) : Void
  fun bookmark_file_set_visited = g_bookmark_file_set_visited(this : BookmarkFile*, uri : UInt8*, visited : Int64) : Void
  fun bookmark_file_to_data = g_bookmark_file_to_data(this : BookmarkFile*, length : UInt64*, error : LibGLib::Error**) : UInt8*
  fun bookmark_file_to_file = g_bookmark_file_to_file(this : BookmarkFile*, filename : UInt8*, error : LibGLib::Error**) : Bool
  fun bookmark_file_error_quark = g_bookmark_file_error_quark() : UInt32

  struct ByteArray # struct
    data : UInt8*
    len : UInt32
  end
  fun byte_array_free = g_byte_array_free(array : Void*, free_segment : Bool) : UInt8*
  fun byte_array_free_to_bytes = g_byte_array_free_to_bytes(array : Void*) : LibGLib::Bytes*
  fun byte_array_new = g_byte_array_new() : Void*
  fun byte_array_new_take = g_byte_array_new_take(data : UInt8*, len : UInt64) : Void*
  fun byte_array_unref = g_byte_array_unref(array : Void*) : Void

  struct Bytes # struct
    _data : UInt8[0]
  end
  fun bytes_new = g_bytes_new(data : UInt8*, size : UInt64) : LibGLib::Bytes*
  fun bytes_new_take = g_bytes_new_take(data : UInt8*, size : UInt64) : LibGLib::Bytes*
  fun bytes_compare = g_bytes_compare(this : Bytes*, bytes2 : LibGLib::Bytes*) : Int32
  fun bytes_equal = g_bytes_equal(this : Bytes*, bytes2 : LibGLib::Bytes*) : Bool
  fun bytes_get_data = g_bytes_get_data(this : Bytes*, size : UInt64*) : UInt8*
  fun bytes_get_size = g_bytes_get_size(this : Bytes*) : UInt64
  fun bytes_hash = g_bytes_hash(this : Bytes*) : UInt32
  fun bytes_new_from_bytes = g_bytes_new_from_bytes(this : Bytes*, offset : UInt64, length : UInt64) : LibGLib::Bytes*
  fun bytes_ref = g_bytes_ref(this : Bytes*) : LibGLib::Bytes*
  fun bytes_unref = g_bytes_unref(this : Bytes*) : Void
  fun bytes_unref_to_array = g_bytes_unref_to_array(this : Bytes*) : Void*
  fun bytes_unref_to_data = g_bytes_unref_to_data(this : Bytes*, size : UInt64*) : UInt8*

  struct Checksum # struct
    _data : UInt8[0]
  end
  fun checksum_new = g_checksum_new(checksum_type : LibGLib::ChecksumType) : LibGLib::Checksum*
  fun checksum_copy = g_checksum_copy(this : Checksum*) : LibGLib::Checksum*
  fun checksum_free = g_checksum_free(this : Checksum*) : Void
  fun checksum_get_string = g_checksum_get_string(this : Checksum*) : UInt8*
  fun checksum_reset = g_checksum_reset(this : Checksum*) : Void
  fun checksum_update = g_checksum_update(this : Checksum*, data : UInt8*, length : Int64) : Void
  fun checksum_type_get_length = g_checksum_type_get_length(checksum_type : LibGLib::ChecksumType) : Int64

  struct Cond # struct
    p : Void*
    i : UInt32
  end
  fun cond_broadcast = g_cond_broadcast(this : Cond*) : Void
  fun cond_clear = g_cond_clear(this : Cond*) : Void
  fun cond_init = g_cond_init(this : Cond*) : Void
  fun cond_signal = g_cond_signal(this : Cond*) : Void
  fun cond_wait = g_cond_wait(this : Cond*, mutex : LibGLib::Mutex*) : Void
  fun cond_wait_until = g_cond_wait_until(this : Cond*, mutex : LibGLib::Mutex*, end_time : Int64) : Bool

  struct Data # struct
    _data : UInt8[0]
  end

  struct Date # struct
    julian_days : UInt32
    julian : UInt32
    dmy : UInt32
    day : UInt32
    month : UInt32
    year : UInt32
  end
  fun date_new = g_date_new() : LibGLib::Date*
  fun date_new_dmy = g_date_new_dmy(day : UInt8, month : LibGLib::DateMonth, year : UInt16) : LibGLib::Date*
  fun date_new_julian = g_date_new_julian(julian_day : UInt32) : LibGLib::Date*
  fun date_add_days = g_date_add_days(this : Date*, n_days : UInt32) : Void
  fun date_add_months = g_date_add_months(this : Date*, n_months : UInt32) : Void
  fun date_add_years = g_date_add_years(this : Date*, n_years : UInt32) : Void
  fun date_clamp = g_date_clamp(this : Date*, min_date : LibGLib::Date*, max_date : LibGLib::Date*) : Void
  fun date_clear = g_date_clear(this : Date*, n_dates : UInt32) : Void
  fun date_compare = g_date_compare(this : Date*, rhs : LibGLib::Date*) : Int32
  fun date_copy = g_date_copy(this : Date*) : LibGLib::Date*
  fun date_days_between = g_date_days_between(this : Date*, date2 : LibGLib::Date*) : Int32
  fun date_free = g_date_free(this : Date*) : Void
  fun date_get_day = g_date_get_day(this : Date*) : UInt8
  fun date_get_day_of_year = g_date_get_day_of_year(this : Date*) : UInt32
  fun date_get_iso8601_week_of_year = g_date_get_iso8601_week_of_year(this : Date*) : UInt32
  fun date_get_julian = g_date_get_julian(this : Date*) : UInt32
  fun date_get_monday_week_of_year = g_date_get_monday_week_of_year(this : Date*) : UInt32
  fun date_get_month = g_date_get_month(this : Date*) : LibGLib::DateMonth
  fun date_get_sunday_week_of_year = g_date_get_sunday_week_of_year(this : Date*) : UInt32
  fun date_get_weekday = g_date_get_weekday(this : Date*) : LibGLib::DateWeekday
  fun date_get_year = g_date_get_year(this : Date*) : UInt16
  fun date_is_first_of_month = g_date_is_first_of_month(this : Date*) : Bool
  fun date_is_last_of_month = g_date_is_last_of_month(this : Date*) : Bool
  fun date_order = g_date_order(this : Date*, date2 : LibGLib::Date*) : Void
  fun date_set_day = g_date_set_day(this : Date*, day : UInt8) : Void
  fun date_set_dmy = g_date_set_dmy(this : Date*, day : UInt8, month : LibGLib::DateMonth, y : UInt16) : Void
  fun date_set_julian = g_date_set_julian(this : Date*, julian_date : UInt32) : Void
  fun date_set_month = g_date_set_month(this : Date*, month : LibGLib::DateMonth) : Void
  fun date_set_parse = g_date_set_parse(this : Date*, str : UInt8*) : Void
  fun date_set_time = g_date_set_time(this : Date*, time : Int32) : Void
  fun date_set_time_t = g_date_set_time_t(this : Date*, timet : Int64) : Void
  fun date_set_time_val = g_date_set_time_val(this : Date*, timeval : LibGLib::TimeVal*) : Void
  fun date_set_year = g_date_set_year(this : Date*, year : UInt16) : Void
  fun date_subtract_days = g_date_subtract_days(this : Date*, n_days : UInt32) : Void
  fun date_subtract_months = g_date_subtract_months(this : Date*, n_months : UInt32) : Void
  fun date_subtract_years = g_date_subtract_years(this : Date*, n_years : UInt32) : Void
  fun date_to_struct_tm = g_date_to_struct_tm(this : Date*, tm : Void*) : Void
  fun date_valid = g_date_valid(this : Date*) : Bool
  fun date_get_days_in_month = g_date_get_days_in_month(month : LibGLib::DateMonth, year : UInt16) : UInt8
  fun date_get_monday_weeks_in_year = g_date_get_monday_weeks_in_year(year : UInt16) : UInt8
  fun date_get_sunday_weeks_in_year = g_date_get_sunday_weeks_in_year(year : UInt16) : UInt8
  fun date_is_leap_year = g_date_is_leap_year(year : UInt16) : Bool
  fun date_strftime = g_date_strftime(s : UInt8*, slen : UInt64, format : UInt8*, date : LibGLib::Date*) : UInt64
  fun date_valid_day = g_date_valid_day(day : UInt8) : Bool
  fun date_valid_dmy = g_date_valid_dmy(day : UInt8, month : LibGLib::DateMonth, year : UInt16) : Bool
  fun date_valid_julian = g_date_valid_julian(julian_date : UInt32) : Bool
  fun date_valid_month = g_date_valid_month(month : LibGLib::DateMonth) : Bool
  fun date_valid_weekday = g_date_valid_weekday(weekday : LibGLib::DateWeekday) : Bool
  fun date_valid_year = g_date_valid_year(year : UInt16) : Bool

  struct DateTime # struct
    _data : UInt8[0]
  end
  fun date_time_new = g_date_time_new(tz : LibGLib::TimeZone*, year : Int32, month : Int32, day : Int32, hour : Int32, minute : Int32, seconds : Float64) : LibGLib::DateTime*
  fun date_time_new_from_iso8601 = g_date_time_new_from_iso8601(text : UInt8*, default_tz : LibGLib::TimeZone*) : LibGLib::DateTime*
  fun date_time_new_from_timeval_local = g_date_time_new_from_timeval_local(tv : LibGLib::TimeVal*) : LibGLib::DateTime*
  fun date_time_new_from_timeval_utc = g_date_time_new_from_timeval_utc(tv : LibGLib::TimeVal*) : LibGLib::DateTime*
  fun date_time_new_from_unix_local = g_date_time_new_from_unix_local(t : Int64) : LibGLib::DateTime*
  fun date_time_new_from_unix_utc = g_date_time_new_from_unix_utc(t : Int64) : LibGLib::DateTime*
  fun date_time_new_local = g_date_time_new_local(year : Int32, month : Int32, day : Int32, hour : Int32, minute : Int32, seconds : Float64) : LibGLib::DateTime*
  fun date_time_new_now = g_date_time_new_now(tz : LibGLib::TimeZone*) : LibGLib::DateTime*
  fun date_time_new_now_local = g_date_time_new_now_local() : LibGLib::DateTime*
  fun date_time_new_now_utc = g_date_time_new_now_utc() : LibGLib::DateTime*
  fun date_time_new_utc = g_date_time_new_utc(year : Int32, month : Int32, day : Int32, hour : Int32, minute : Int32, seconds : Float64) : LibGLib::DateTime*
  fun date_time_add = g_date_time_add(this : DateTime*, timespan : Int64) : LibGLib::DateTime*
  fun date_time_add_days = g_date_time_add_days(this : DateTime*, days : Int32) : LibGLib::DateTime*
  fun date_time_add_full = g_date_time_add_full(this : DateTime*, years : Int32, months : Int32, days : Int32, hours : Int32, minutes : Int32, seconds : Float64) : LibGLib::DateTime*
  fun date_time_add_hours = g_date_time_add_hours(this : DateTime*, hours : Int32) : LibGLib::DateTime*
  fun date_time_add_minutes = g_date_time_add_minutes(this : DateTime*, minutes : Int32) : LibGLib::DateTime*
  fun date_time_add_months = g_date_time_add_months(this : DateTime*, months : Int32) : LibGLib::DateTime*
  fun date_time_add_seconds = g_date_time_add_seconds(this : DateTime*, seconds : Float64) : LibGLib::DateTime*
  fun date_time_add_weeks = g_date_time_add_weeks(this : DateTime*, weeks : Int32) : LibGLib::DateTime*
  fun date_time_add_years = g_date_time_add_years(this : DateTime*, years : Int32) : LibGLib::DateTime*
  fun date_time_difference = g_date_time_difference(this : DateTime*, _begin : LibGLib::DateTime*) : Int64
  fun date_time_format = g_date_time_format(this : DateTime*, format : UInt8*) : UInt8*
  fun date_time_get_day_of_month = g_date_time_get_day_of_month(this : DateTime*) : Int32
  fun date_time_get_day_of_week = g_date_time_get_day_of_week(this : DateTime*) : Int32
  fun date_time_get_day_of_year = g_date_time_get_day_of_year(this : DateTime*) : Int32
  fun date_time_get_hour = g_date_time_get_hour(this : DateTime*) : Int32
  fun date_time_get_microsecond = g_date_time_get_microsecond(this : DateTime*) : Int32
  fun date_time_get_minute = g_date_time_get_minute(this : DateTime*) : Int32
  fun date_time_get_month = g_date_time_get_month(this : DateTime*) : Int32
  fun date_time_get_second = g_date_time_get_second(this : DateTime*) : Int32
  fun date_time_get_seconds = g_date_time_get_seconds(this : DateTime*) : Float64
  fun date_time_get_timezone = g_date_time_get_timezone(this : DateTime*) : LibGLib::TimeZone*
  fun date_time_get_timezone_abbreviation = g_date_time_get_timezone_abbreviation(this : DateTime*) : UInt8*
  fun date_time_get_utc_offset = g_date_time_get_utc_offset(this : DateTime*) : Int64
  fun date_time_get_week_numbering_year = g_date_time_get_week_numbering_year(this : DateTime*) : Int32
  fun date_time_get_week_of_year = g_date_time_get_week_of_year(this : DateTime*) : Int32
  fun date_time_get_year = g_date_time_get_year(this : DateTime*) : Int32
  fun date_time_get_ymd = g_date_time_get_ymd(this : DateTime*, year : Int32*, month : Int32*, day : Int32*) : Void
  fun date_time_is_daylight_savings = g_date_time_is_daylight_savings(this : DateTime*) : Bool
  fun date_time_ref = g_date_time_ref(this : DateTime*) : LibGLib::DateTime*
  fun date_time_to_local = g_date_time_to_local(this : DateTime*) : LibGLib::DateTime*
  fun date_time_to_timeval = g_date_time_to_timeval(this : DateTime*, tv : LibGLib::TimeVal*) : Bool
  fun date_time_to_timezone = g_date_time_to_timezone(this : DateTime*, tz : LibGLib::TimeZone*) : LibGLib::DateTime*
  fun date_time_to_unix = g_date_time_to_unix(this : DateTime*) : Int64
  fun date_time_to_utc = g_date_time_to_utc(this : DateTime*) : LibGLib::DateTime*
  fun date_time_unref = g_date_time_unref(this : DateTime*) : Void
  fun date_time_compare = g_date_time_compare(dt1 : Void*, dt2 : Void*) : Int32
  fun date_time_equal = g_date_time_equal(dt1 : Void*, dt2 : Void*) : Bool
  fun date_time_hash = g_date_time_hash(datetime : Void*) : UInt32

  struct DebugKey # struct
    key : UInt8*
    value : UInt32
  end

  struct Dir # struct
    _data : UInt8[0]
  end
  fun dir_close = g_dir_close(this : Dir*) : Void
  fun dir_read_name = g_dir_read_name(this : Dir*) : UInt8*
  fun dir_rewind = g_dir_rewind(this : Dir*) : Void
  fun dir_make_tmp = g_dir_make_tmp(tmpl : UInt8*, error : LibGLib::Error**) : UInt8*

  struct Error # struct
    domain : UInt32
    code : Int32
    message : UInt8*
  end
  fun error_new_literal = g_error_new_literal(domain : UInt32, code : Int32, message : UInt8*) : LibGLib::Error**
  fun error_copy = g_error_copy(this : Error*) : LibGLib::Error**
  fun error_free = g_error_free(this : Error*) : Void
  fun error_matches = g_error_matches(this : Error*, domain : UInt32, code : Int32) : Bool

  struct HashTable # struct
    _data : UInt8[0]
  end
  fun hash_table_add = g_hash_table_add(hash_table : Void**, key : Void*) : Bool
  fun hash_table_contains = g_hash_table_contains(hash_table : Void**, key : Void*) : Bool
  fun hash_table_destroy = g_hash_table_destroy(hash_table : Void**) : Void
  fun hash_table_insert = g_hash_table_insert(hash_table : Void**, key : Void*, value : Void*) : Bool
  fun hash_table_lookup = g_hash_table_lookup(hash_table : Void**, key : Void*) : Void*
  fun hash_table_lookup_extended = g_hash_table_lookup_extended(hash_table : Void**, lookup_key : Void*, orig_key : Void**, value : Void**) : Bool
  fun hash_table_remove = g_hash_table_remove(hash_table : Void**, key : Void*) : Bool
  fun hash_table_remove_all = g_hash_table_remove_all(hash_table : Void**) : Void
  fun hash_table_replace = g_hash_table_replace(hash_table : Void**, key : Void*, value : Void*) : Bool
  fun hash_table_size = g_hash_table_size(hash_table : Void**) : UInt32
  fun hash_table_steal = g_hash_table_steal(hash_table : Void**, key : Void*) : Bool
  fun hash_table_steal_all = g_hash_table_steal_all(hash_table : Void**) : Void
  fun hash_table_steal_extended = g_hash_table_steal_extended(hash_table : Void**, lookup_key : Void*, stolen_key : Void**, stolen_value : Void**) : Bool
  fun hash_table_unref = g_hash_table_unref(hash_table : Void**) : Void

  struct HashTableIter # struct
    dummy1 : Void*
    dummy2 : Void*
    dummy3 : Void*
    dummy4 : Int32
    dummy5 : Bool
    dummy6 : Void*
  end
  fun hash_table_iter_init = g_hash_table_iter_init(this : HashTableIter*, hash_table : Void**) : Void
  fun hash_table_iter_next = g_hash_table_iter_next(this : HashTableIter*, key : Void**, value : Void**) : Bool
  fun hash_table_iter_remove = g_hash_table_iter_remove(this : HashTableIter*) : Void
  fun hash_table_iter_replace = g_hash_table_iter_replace(this : HashTableIter*, value : Void*) : Void
  fun hash_table_iter_steal = g_hash_table_iter_steal(this : HashTableIter*) : Void

  struct Hmac # struct
    _data : UInt8[0]
  end
  fun hmac_get_digest = g_hmac_get_digest(this : Hmac*, buffer : UInt8*, digest_len : UInt64*) : Void
  fun hmac_get_string = g_hmac_get_string(this : Hmac*) : UInt8*
  fun hmac_unref = g_hmac_unref(this : Hmac*) : Void
  fun hmac_update = g_hmac_update(this : Hmac*, data : UInt8*, length : Int64) : Void

  struct Hook # struct
    data : Void*
    next_ : LibGLib::Hook*
    prev : LibGLib::Hook*
    ref_count : UInt32
    hook_id : UInt64
    flags : UInt32
    func : Void*
    destroy : LibGLib::DestroyNotify
  end
  fun hook_compare_ids = g_hook_compare_ids(this : Hook*, sibling : LibGLib::Hook*) : Int32
  fun hook_destroy = g_hook_destroy(hook_list : LibGLib::HookList*, hook_id : UInt64) : Bool
  fun hook_destroy_link = g_hook_destroy_link(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hook_free = g_hook_free(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hook_insert_before = g_hook_insert_before(hook_list : LibGLib::HookList*, sibling : LibGLib::Hook*, hook : LibGLib::Hook*) : Void
  fun hook_prepend = g_hook_prepend(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hook_unref = g_hook_unref(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void

  struct HookList # struct
    seq_id : UInt64
    hook_size : UInt32
    is_setup : UInt32
    hooks : LibGLib::Hook*
    dummy3 : Void*
    finalize_hook : LibGLib::HookFinalizeFunc
    dummy : Void*
  end
  fun hook_list_clear = g_hook_list_clear(this : HookList*) : Void
  fun hook_list_init = g_hook_list_init(this : HookList*, hook_size : UInt32) : Void
  fun hook_list_invoke = g_hook_list_invoke(this : HookList*, may_recurse : Bool) : Void
  fun hook_list_invoke_check = g_hook_list_invoke_check(this : HookList*, may_recurse : Bool) : Void

  struct IOChannel # struct
    ref_count : Int32
    funcs : LibGLib::IOFuncs*
    encoding : UInt8*
    read_cd : Void*
    write_cd : Void*
    line_term : UInt8*
    line_term_len : UInt32
    buf_size : UInt64
    read_buf : LibGLib::String*
    encoded_read_buf : LibGLib::String*
    write_buf : LibGLib::String*
    partial_write_buf : Int8
    use_buffer : UInt32
    do_encode : UInt32
    close_on_unref : UInt32
    is_readable : UInt32
    is_writeable : UInt32
    is_seekable : UInt32
    reserved1 : Void*
    reserved2 : Void*
  end
  fun i_o_channel_new_file = g_io_channel_new_file(filename : UInt8*, mode : UInt8*, error : LibGLib::Error**) : LibGLib::IOChannel*
  fun i_o_channel_unix_new = g_io_channel_unix_new(fd : Int32) : LibGLib::IOChannel*
  fun i_o_channel_close = g_io_channel_close(this : IOChannel*) : Void
  fun i_o_channel_flush = g_io_channel_flush(this : IOChannel*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_get_buffer_condition = g_io_channel_get_buffer_condition(this : IOChannel*) : LibGLib::IOCondition
  fun i_o_channel_get_buffer_size = g_io_channel_get_buffer_size(this : IOChannel*) : UInt64
  fun i_o_channel_get_buffered = g_io_channel_get_buffered(this : IOChannel*) : Bool
  fun i_o_channel_get_close_on_unref = g_io_channel_get_close_on_unref(this : IOChannel*) : Bool
  fun i_o_channel_get_encoding = g_io_channel_get_encoding(this : IOChannel*) : UInt8*
  fun i_o_channel_get_flags = g_io_channel_get_flags(this : IOChannel*) : LibGLib::IOFlags
  fun i_o_channel_get_line_term = g_io_channel_get_line_term(this : IOChannel*, length : Int32*) : UInt8*
  fun i_o_channel_init = g_io_channel_init(this : IOChannel*) : Void
  fun i_o_channel_read = g_io_channel_read(this : IOChannel*, buf : UInt8*, count : UInt64, bytes_read : UInt64*) : LibGLib::IOError
  fun i_o_channel_read_chars = g_io_channel_read_chars(this : IOChannel*, buf : UInt8**, count : UInt64, bytes_read : UInt64*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_read_line = g_io_channel_read_line(this : IOChannel*, str_return : UInt8**, length : UInt64*, terminator_pos : UInt64*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_read_line_string = g_io_channel_read_line_string(this : IOChannel*, buffer : LibGLib::String*, terminator_pos : UInt64*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_read_to_end = g_io_channel_read_to_end(this : IOChannel*, str_return : UInt8**, length : UInt64*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_read_unichar = g_io_channel_read_unichar(this : IOChannel*, thechar : UInt8*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_ref = g_io_channel_ref(this : IOChannel*) : LibGLib::IOChannel*
  fun i_o_channel_seek = g_io_channel_seek(this : IOChannel*, offset : Int64, type : LibGLib::SeekType) : LibGLib::IOError
  fun i_o_channel_seek_position = g_io_channel_seek_position(this : IOChannel*, offset : Int64, type : LibGLib::SeekType, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_set_buffer_size = g_io_channel_set_buffer_size(this : IOChannel*, size : UInt64) : Void
  fun i_o_channel_set_buffered = g_io_channel_set_buffered(this : IOChannel*, buffered : Bool) : Void
  fun i_o_channel_set_close_on_unref = g_io_channel_set_close_on_unref(this : IOChannel*, do_close : Bool) : Void
  fun i_o_channel_set_encoding = g_io_channel_set_encoding(this : IOChannel*, encoding : UInt8*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_set_flags = g_io_channel_set_flags(this : IOChannel*, flags : LibGLib::IOFlags, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_set_line_term = g_io_channel_set_line_term(this : IOChannel*, line_term : UInt8*, length : Int32) : Void
  fun i_o_channel_shutdown = g_io_channel_shutdown(this : IOChannel*, flush : Bool, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_unix_get_fd = g_io_channel_unix_get_fd(this : IOChannel*) : Int32
  fun i_o_channel_unref = g_io_channel_unref(this : IOChannel*) : Void
  fun i_o_channel_write = g_io_channel_write(this : IOChannel*, buf : UInt8*, count : UInt64, bytes_written : UInt64*) : LibGLib::IOError
  fun i_o_channel_write_chars = g_io_channel_write_chars(this : IOChannel*, buf : UInt8*, count : Int64, bytes_written : UInt64*, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_write_unichar = g_io_channel_write_unichar(this : IOChannel*, thechar : UInt8, error : LibGLib::Error**) : LibGLib::IOStatus
  fun i_o_channel_error_from_errno = g_io_channel_error_from_errno(en : Int32) : LibGLib::IOChannelError
  fun i_o_channel_error_quark = g_io_channel_error_quark() : UInt32

  struct IOFuncs # struct
    io_read : -> Void
    io_write : -> Void
    io_seek : -> Void
    io_close : -> Void
    io_create_watch : -> Void
    io_free : -> Void
    io_set_flags : -> Void
    io_get_flags : -> Void
  end

  struct KeyFile # struct
    _data : UInt8[0]
  end
  fun key_file_new = g_key_file_new() : LibGLib::KeyFile*
  fun key_file_get_boolean = g_key_file_get_boolean(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : Bool
  fun key_file_get_boolean_list = g_key_file_get_boolean_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, length : UInt64*, error : LibGLib::Error**) : Bool*
  fun key_file_get_comment = g_key_file_get_comment(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : UInt8*
  fun key_file_get_double = g_key_file_get_double(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : Float64
  fun key_file_get_double_list = g_key_file_get_double_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, length : UInt64*, error : LibGLib::Error**) : Float64*
  fun key_file_get_groups = g_key_file_get_groups(this : KeyFile*, length : UInt64*) : UInt8**
  fun key_file_get_int64 = g_key_file_get_int64(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : Int64
  fun key_file_get_integer = g_key_file_get_integer(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : Int32
  fun key_file_get_integer_list = g_key_file_get_integer_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, length : UInt64*, error : LibGLib::Error**) : Int32*
  fun key_file_get_keys = g_key_file_get_keys(this : KeyFile*, group_name : UInt8*, length : UInt64*, error : LibGLib::Error**) : UInt8**
  fun key_file_get_locale_for_key = g_key_file_get_locale_for_key(this : KeyFile*, group_name : UInt8*, key : UInt8*, locale : UInt8*) : UInt8*
  fun key_file_get_locale_string = g_key_file_get_locale_string(this : KeyFile*, group_name : UInt8*, key : UInt8*, locale : UInt8*, error : LibGLib::Error**) : UInt8*
  fun key_file_get_locale_string_list = g_key_file_get_locale_string_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, locale : UInt8*, length : UInt64*, error : LibGLib::Error**) : UInt8**
  fun key_file_get_start_group = g_key_file_get_start_group(this : KeyFile*) : UInt8*
  fun key_file_get_string = g_key_file_get_string(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : UInt8*
  fun key_file_get_string_list = g_key_file_get_string_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, length : UInt64*, error : LibGLib::Error**) : UInt8**
  fun key_file_get_uint64 = g_key_file_get_uint64(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : UInt64
  fun key_file_get_value = g_key_file_get_value(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : UInt8*
  fun key_file_has_group = g_key_file_has_group(this : KeyFile*, group_name : UInt8*) : Bool
  fun key_file_load_from_bytes = g_key_file_load_from_bytes(this : KeyFile*, bytes : LibGLib::Bytes*, flags : LibGLib::KeyFileFlags, error : LibGLib::Error**) : Bool
  fun key_file_load_from_data = g_key_file_load_from_data(this : KeyFile*, data : UInt8*, length : UInt64, flags : LibGLib::KeyFileFlags, error : LibGLib::Error**) : Bool
  fun key_file_load_from_data_dirs = g_key_file_load_from_data_dirs(this : KeyFile*, file : UInt8*, full_path : UInt8**, flags : LibGLib::KeyFileFlags, error : LibGLib::Error**) : Bool
  fun key_file_load_from_dirs = g_key_file_load_from_dirs(this : KeyFile*, file : UInt8*, search_dirs : UInt8**, full_path : UInt8**, flags : LibGLib::KeyFileFlags, error : LibGLib::Error**) : Bool
  fun key_file_load_from_file = g_key_file_load_from_file(this : KeyFile*, file : UInt8*, flags : LibGLib::KeyFileFlags, error : LibGLib::Error**) : Bool
  fun key_file_remove_comment = g_key_file_remove_comment(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : Bool
  fun key_file_remove_group = g_key_file_remove_group(this : KeyFile*, group_name : UInt8*, error : LibGLib::Error**) : Bool
  fun key_file_remove_key = g_key_file_remove_key(this : KeyFile*, group_name : UInt8*, key : UInt8*, error : LibGLib::Error**) : Bool
  fun key_file_save_to_file = g_key_file_save_to_file(this : KeyFile*, filename : UInt8*, error : LibGLib::Error**) : Bool
  fun key_file_set_boolean = g_key_file_set_boolean(this : KeyFile*, group_name : UInt8*, key : UInt8*, value : Bool) : Void
  fun key_file_set_boolean_list = g_key_file_set_boolean_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, list : Bool*, length : UInt64) : Void
  fun key_file_set_comment = g_key_file_set_comment(this : KeyFile*, group_name : UInt8*, key : UInt8*, comment : UInt8*, error : LibGLib::Error**) : Bool
  fun key_file_set_double = g_key_file_set_double(this : KeyFile*, group_name : UInt8*, key : UInt8*, value : Float64) : Void
  fun key_file_set_double_list = g_key_file_set_double_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, list : Float64*, length : UInt64) : Void
  fun key_file_set_int64 = g_key_file_set_int64(this : KeyFile*, group_name : UInt8*, key : UInt8*, value : Int64) : Void
  fun key_file_set_integer = g_key_file_set_integer(this : KeyFile*, group_name : UInt8*, key : UInt8*, value : Int32) : Void
  fun key_file_set_integer_list = g_key_file_set_integer_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, list : Int32*, length : UInt64) : Void
  fun key_file_set_list_separator = g_key_file_set_list_separator(this : KeyFile*, separator : Int8) : Void
  fun key_file_set_locale_string = g_key_file_set_locale_string(this : KeyFile*, group_name : UInt8*, key : UInt8*, locale : UInt8*, string : UInt8*) : Void
  fun key_file_set_locale_string_list = g_key_file_set_locale_string_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, locale : UInt8*, list : UInt8**, length : UInt64) : Void
  fun key_file_set_string = g_key_file_set_string(this : KeyFile*, group_name : UInt8*, key : UInt8*, string : UInt8*) : Void
  fun key_file_set_string_list = g_key_file_set_string_list(this : KeyFile*, group_name : UInt8*, key : UInt8*, list : UInt8**, length : UInt64) : Void
  fun key_file_set_uint64 = g_key_file_set_uint64(this : KeyFile*, group_name : UInt8*, key : UInt8*, value : UInt64) : Void
  fun key_file_set_value = g_key_file_set_value(this : KeyFile*, group_name : UInt8*, key : UInt8*, value : UInt8*) : Void
  fun key_file_to_data = g_key_file_to_data(this : KeyFile*, length : UInt64*, error : LibGLib::Error**) : UInt8*
  fun key_file_unref = g_key_file_unref(this : KeyFile*) : Void
  fun key_file_error_quark = g_key_file_error_quark() : UInt32

  struct List # struct
    data : Void*
    next_ : Void**
    prev : Void**
  end

  struct LogField # struct
    key : UInt8*
    value : Void*
    length : Int64
  end

  struct MainContext # struct
    _data : UInt8[0]
  end
  fun main_context_new = g_main_context_new() : LibGLib::MainContext*
  fun main_context_acquire = g_main_context_acquire(this : MainContext*) : Bool
  fun main_context_add_poll = g_main_context_add_poll(this : MainContext*, fd : LibGLib::PollFD*, priority : Int32) : Void
  fun main_context_check = g_main_context_check(this : MainContext*, max_priority : Int32, fds : LibGLib::PollFD*, n_fds : Int32) : Bool
  fun main_context_dispatch = g_main_context_dispatch(this : MainContext*) : Void
  fun main_context_find_source_by_funcs_user_data = g_main_context_find_source_by_funcs_user_data(this : MainContext*, funcs : LibGLib::SourceFuncs*, user_data : Void*) : LibGLib::Source*
  fun main_context_find_source_by_id = g_main_context_find_source_by_id(this : MainContext*, source_id : UInt32) : LibGLib::Source*
  fun main_context_find_source_by_user_data = g_main_context_find_source_by_user_data(this : MainContext*, user_data : Void*) : LibGLib::Source*
  fun main_context_invoke_full = g_main_context_invoke_full(this : MainContext*, priority : Int32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun main_context_is_owner = g_main_context_is_owner(this : MainContext*) : Bool
  fun main_context_iteration = g_main_context_iteration(this : MainContext*, may_block : Bool) : Bool
  fun main_context_pending = g_main_context_pending(this : MainContext*) : Bool
  fun main_context_pop_thread_default = g_main_context_pop_thread_default(this : MainContext*) : Void
  fun main_context_prepare = g_main_context_prepare(this : MainContext*, priority : Int32*) : Bool
  fun main_context_push_thread_default = g_main_context_push_thread_default(this : MainContext*) : Void
  fun main_context_query = g_main_context_query(this : MainContext*, max_priority : Int32, timeout : Int32*, fds : LibGLib::PollFD**, n_fds : Int32) : Int32
  fun main_context_ref = g_main_context_ref(this : MainContext*) : LibGLib::MainContext*
  fun main_context_release = g_main_context_release(this : MainContext*) : Void
  fun main_context_remove_poll = g_main_context_remove_poll(this : MainContext*, fd : LibGLib::PollFD*) : Void
  fun main_context_unref = g_main_context_unref(this : MainContext*) : Void
  fun main_context_wait = g_main_context_wait(this : MainContext*, cond : LibGLib::Cond*, mutex : LibGLib::Mutex*) : Bool
  fun main_context_wakeup = g_main_context_wakeup(this : MainContext*) : Void
  fun main_context_default = g_main_context_default() : LibGLib::MainContext*
  fun main_context_get_thread_default = g_main_context_get_thread_default() : LibGLib::MainContext*
  fun main_context_ref_thread_default = g_main_context_ref_thread_default() : LibGLib::MainContext*

  struct MainLoop # struct
    _data : UInt8[0]
  end
  fun main_loop_new = g_main_loop_new(context : LibGLib::MainContext*, is_running : Bool) : LibGLib::MainLoop*
  fun main_loop_get_context = g_main_loop_get_context(this : MainLoop*) : LibGLib::MainContext*
  fun main_loop_is_running = g_main_loop_is_running(this : MainLoop*) : Bool
  fun main_loop_quit = g_main_loop_quit(this : MainLoop*) : Void
  fun main_loop_ref = g_main_loop_ref(this : MainLoop*) : LibGLib::MainLoop*
  fun main_loop_run = g_main_loop_run(this : MainLoop*) : Void
  fun main_loop_unref = g_main_loop_unref(this : MainLoop*) : Void

  struct MappedFile # struct
    _data : UInt8[0]
  end
  fun mapped_file_new = g_mapped_file_new(filename : UInt8*, writable : Bool, error : LibGLib::Error**) : LibGLib::MappedFile*
  fun mapped_file_new_from_fd = g_mapped_file_new_from_fd(fd : Int32, writable : Bool, error : LibGLib::Error**) : LibGLib::MappedFile*
  fun mapped_file_free = g_mapped_file_free(this : MappedFile*) : Void
  fun mapped_file_get_bytes = g_mapped_file_get_bytes(this : MappedFile*) : LibGLib::Bytes*
  fun mapped_file_get_contents = g_mapped_file_get_contents(this : MappedFile*) : UInt8*
  fun mapped_file_get_length = g_mapped_file_get_length(this : MappedFile*) : UInt64
  fun mapped_file_ref = g_mapped_file_ref(this : MappedFile*) : LibGLib::MappedFile*
  fun mapped_file_unref = g_mapped_file_unref(this : MappedFile*) : Void

  struct MarkupParseContext # struct
    _data : UInt8[0]
  end
  fun markup_parse_context_new = g_markup_parse_context_new(parser : LibGLib::MarkupParser*, flags : LibGLib::MarkupParseFlags, user_data : Void*, user_data_dnotify : LibGLib::DestroyNotify) : LibGLib::MarkupParseContext*
  fun markup_parse_context_end_parse = g_markup_parse_context_end_parse(this : MarkupParseContext*, error : LibGLib::Error**) : Bool
  fun markup_parse_context_free = g_markup_parse_context_free(this : MarkupParseContext*) : Void
  fun markup_parse_context_get_element = g_markup_parse_context_get_element(this : MarkupParseContext*) : UInt8*
  fun markup_parse_context_get_position = g_markup_parse_context_get_position(this : MarkupParseContext*, line_number : Int32*, char_number : Int32*) : Void
  fun markup_parse_context_get_user_data = g_markup_parse_context_get_user_data(this : MarkupParseContext*) : Void*
  fun markup_parse_context_parse = g_markup_parse_context_parse(this : MarkupParseContext*, text : UInt8*, text_len : Int64, error : LibGLib::Error**) : Bool
  fun markup_parse_context_pop = g_markup_parse_context_pop(this : MarkupParseContext*) : Void*
  fun markup_parse_context_push = g_markup_parse_context_push(this : MarkupParseContext*, parser : LibGLib::MarkupParser*, user_data : Void*) : Void
  fun markup_parse_context_ref = g_markup_parse_context_ref(this : MarkupParseContext*) : LibGLib::MarkupParseContext*
  fun markup_parse_context_unref = g_markup_parse_context_unref(this : MarkupParseContext*) : Void

  struct MarkupParser # struct
    start_element : -> Void
    end_element : -> Void
    text : -> Void
    passthrough : -> Void
    error : -> Void
  end

  struct MatchInfo # struct
    _data : UInt8[0]
  end
  fun match_info_expand_references = g_match_info_expand_references(this : MatchInfo*, string_to_expand : UInt8*, error : LibGLib::Error**) : UInt8*
  fun match_info_fetch = g_match_info_fetch(this : MatchInfo*, match_num : Int32) : UInt8*
  fun match_info_fetch_all = g_match_info_fetch_all(this : MatchInfo*) : UInt8**
  fun match_info_fetch_named = g_match_info_fetch_named(this : MatchInfo*, name : UInt8*) : UInt8*
  fun match_info_fetch_named_pos = g_match_info_fetch_named_pos(this : MatchInfo*, name : UInt8*, start_pos : Int32*, end_pos : Int32*) : Bool
  fun match_info_fetch_pos = g_match_info_fetch_pos(this : MatchInfo*, match_num : Int32, start_pos : Int32*, end_pos : Int32*) : Bool
  fun match_info_free = g_match_info_free(this : MatchInfo*) : Void
  fun match_info_get_match_count = g_match_info_get_match_count(this : MatchInfo*) : Int32
  fun match_info_get_regex = g_match_info_get_regex(this : MatchInfo*) : LibGLib::Regex*
  fun match_info_get_string = g_match_info_get_string(this : MatchInfo*) : UInt8*
  fun match_info_is_partial_match = g_match_info_is_partial_match(this : MatchInfo*) : Bool
  fun match_info_matches = g_match_info_matches(this : MatchInfo*) : Bool
  fun match_info_next = g_match_info_next(this : MatchInfo*, error : LibGLib::Error**) : Bool
  fun match_info_ref = g_match_info_ref(this : MatchInfo*) : LibGLib::MatchInfo*
  fun match_info_unref = g_match_info_unref(this : MatchInfo*) : Void

  struct MemVTable # struct
    malloc : -> Void
    realloc : -> Void
    free : -> Void
    calloc : -> Void
    try_malloc : -> Void
    try_realloc : -> Void
  end

  struct Node # struct
    data : Void*
    next_ : LibGLib::Node*
    prev : LibGLib::Node*
    parent : LibGLib::Node*
    children : LibGLib::Node*
  end
  fun node_child_index = g_node_child_index(this : Node*, data : Void*) : Int32
  fun node_child_position = g_node_child_position(this : Node*, child : LibGLib::Node*) : Int32
  fun node_depth = g_node_depth(this : Node*) : UInt32
  fun node_destroy = g_node_destroy(this : Node*) : Void
  fun node_is_ancestor = g_node_is_ancestor(this : Node*, descendant : LibGLib::Node*) : Bool
  fun node_max_height = g_node_max_height(this : Node*) : UInt32
  fun node_n_children = g_node_n_children(this : Node*) : UInt32
  fun node_n_nodes = g_node_n_nodes(this : Node*, flags : LibGLib::TraverseFlags) : UInt32
  fun node_reverse_children = g_node_reverse_children(this : Node*) : Void
  fun node_unlink = g_node_unlink(this : Node*) : Void

  struct Once # struct
    status : LibGLib::OnceStatus
    retval : Void*
  end
  fun once_init_enter = g_once_init_enter(location : Void*) : Bool
  fun once_init_leave = g_once_init_leave(location : Void*, result : UInt64) : Void

  struct OptionContext # struct
    _data : UInt8[0]
  end
  fun option_context_add_group = g_option_context_add_group(this : OptionContext*, group : LibGLib::OptionGroup*) : Void
  fun option_context_add_main_entries = g_option_context_add_main_entries(this : OptionContext*, entries : LibGLib::OptionEntry*, translation_domain : UInt8*) : Void
  fun option_context_free = g_option_context_free(this : OptionContext*) : Void
  fun option_context_get_description = g_option_context_get_description(this : OptionContext*) : UInt8*
  fun option_context_get_help = g_option_context_get_help(this : OptionContext*, main_help : Bool, group : LibGLib::OptionGroup*) : UInt8*
  fun option_context_get_help_enabled = g_option_context_get_help_enabled(this : OptionContext*) : Bool
  fun option_context_get_ignore_unknown_options = g_option_context_get_ignore_unknown_options(this : OptionContext*) : Bool
  fun option_context_get_main_group = g_option_context_get_main_group(this : OptionContext*) : LibGLib::OptionGroup*
  fun option_context_get_strict_posix = g_option_context_get_strict_posix(this : OptionContext*) : Bool
  fun option_context_get_summary = g_option_context_get_summary(this : OptionContext*) : UInt8*
  fun option_context_parse = g_option_context_parse(this : OptionContext*, argc : Int32*, argv : UInt8***, error : LibGLib::Error**) : Bool
  fun option_context_parse_strv = g_option_context_parse_strv(this : OptionContext*, arguments : UInt8***, error : LibGLib::Error**) : Bool
  fun option_context_set_description = g_option_context_set_description(this : OptionContext*, description : UInt8*) : Void
  fun option_context_set_help_enabled = g_option_context_set_help_enabled(this : OptionContext*, help_enabled : Bool) : Void
  fun option_context_set_ignore_unknown_options = g_option_context_set_ignore_unknown_options(this : OptionContext*, ignore_unknown : Bool) : Void
  fun option_context_set_main_group = g_option_context_set_main_group(this : OptionContext*, group : LibGLib::OptionGroup*) : Void
  fun option_context_set_strict_posix = g_option_context_set_strict_posix(this : OptionContext*, strict_posix : Bool) : Void
  fun option_context_set_summary = g_option_context_set_summary(this : OptionContext*, summary : UInt8*) : Void
  fun option_context_set_translate_func = g_option_context_set_translate_func(this : OptionContext*, func : LibGLib::TranslateFunc, data : Void*, destroy_notify : LibGLib::DestroyNotify) : Void
  fun option_context_set_translation_domain = g_option_context_set_translation_domain(this : OptionContext*, domain : UInt8*) : Void

  struct OptionEntry # struct
    long_name : UInt8*
    short_name : Int8
    flags : Int32
    arg : LibGLib::OptionArg
    arg_data : Void*
    description : UInt8*
    arg_description : UInt8*
  end

  struct OptionGroup # struct
    _data : UInt8[0]
  end
  fun option_group_new = g_option_group_new(name : UInt8*, description : UInt8*, help_description : UInt8*, user_data : Void*, destroy : LibGLib::DestroyNotify) : LibGLib::OptionGroup*
  fun option_group_add_entries = g_option_group_add_entries(this : OptionGroup*, entries : LibGLib::OptionEntry*) : Void
  fun option_group_free = g_option_group_free(this : OptionGroup*) : Void
  fun option_group_ref = g_option_group_ref(this : OptionGroup*) : LibGLib::OptionGroup*
  fun option_group_set_translate_func = g_option_group_set_translate_func(this : OptionGroup*, func : LibGLib::TranslateFunc, data : Void*, destroy_notify : LibGLib::DestroyNotify) : Void
  fun option_group_set_translation_domain = g_option_group_set_translation_domain(this : OptionGroup*, domain : UInt8*) : Void
  fun option_group_unref = g_option_group_unref(this : OptionGroup*) : Void

  struct PatternSpec # struct
    _data : UInt8[0]
  end
  fun pattern_spec_equal = g_pattern_spec_equal(this : PatternSpec*, pspec2 : LibGLib::PatternSpec*) : Bool
  fun pattern_spec_free = g_pattern_spec_free(this : PatternSpec*) : Void

  struct PollFD # struct
    fd : Int32
    events : UInt16
    revents : UInt16
  end

  struct Private # struct
    p : Void*
    notify : LibGLib::DestroyNotify
    future : Void*
  end
  fun private_get = g_private_get(this : Private*) : Void*
  fun private_replace = g_private_replace(this : Private*, value : Void*) : Void
  fun private_set = g_private_set(this : Private*, value : Void*) : Void

  struct PtrArray # struct
    pdata : Void*
    len : UInt32
  end

  struct Queue # struct
    head : Void**
    tail : Void**
    length : UInt32
  end
  fun queue_clear = g_queue_clear(this : Queue*) : Void
  fun queue_free = g_queue_free(this : Queue*) : Void
  fun queue_free_full = g_queue_free_full(this : Queue*, free_func : LibGLib::DestroyNotify) : Void
  fun queue_get_length = g_queue_get_length(this : Queue*) : UInt32
  fun queue_index = g_queue_index(this : Queue*, data : Void*) : Int32
  fun queue_init = g_queue_init(this : Queue*) : Void
  fun queue_is_empty = g_queue_is_empty(this : Queue*) : Bool
  fun queue_peek_head = g_queue_peek_head(this : Queue*) : Void*
  fun queue_peek_nth = g_queue_peek_nth(this : Queue*, n : UInt32) : Void*
  fun queue_peek_tail = g_queue_peek_tail(this : Queue*) : Void*
  fun queue_pop_head = g_queue_pop_head(this : Queue*) : Void*
  fun queue_pop_nth = g_queue_pop_nth(this : Queue*, n : UInt32) : Void*
  fun queue_pop_tail = g_queue_pop_tail(this : Queue*) : Void*
  fun queue_push_head = g_queue_push_head(this : Queue*, data : Void*) : Void
  fun queue_push_nth = g_queue_push_nth(this : Queue*, data : Void*, n : Int32) : Void
  fun queue_push_tail = g_queue_push_tail(this : Queue*, data : Void*) : Void
  fun queue_remove = g_queue_remove(this : Queue*, data : Void*) : Bool
  fun queue_remove_all = g_queue_remove_all(this : Queue*, data : Void*) : UInt32
  fun queue_reverse = g_queue_reverse(this : Queue*) : Void

  struct RWLock # struct
    p : Void*
    i : UInt32
  end
  fun r_w_lock_clear = g_rw_lock_clear(this : RWLock*) : Void
  fun r_w_lock_init = g_rw_lock_init(this : RWLock*) : Void
  fun r_w_lock_reader_lock = g_rw_lock_reader_lock(this : RWLock*) : Void
  fun r_w_lock_reader_trylock = g_rw_lock_reader_trylock(this : RWLock*) : Bool
  fun r_w_lock_reader_unlock = g_rw_lock_reader_unlock(this : RWLock*) : Void
  fun r_w_lock_writer_lock = g_rw_lock_writer_lock(this : RWLock*) : Void
  fun r_w_lock_writer_trylock = g_rw_lock_writer_trylock(this : RWLock*) : Bool
  fun r_w_lock_writer_unlock = g_rw_lock_writer_unlock(this : RWLock*) : Void

  struct Rand # struct
    _data : UInt8[0]
  end
  fun rand_double = g_rand_double(this : Rand*) : Float64
  fun rand_double_range = g_rand_double_range(this : Rand*, _begin : Float64, _end : Float64) : Float64
  fun rand_free = g_rand_free(this : Rand*) : Void
  fun rand_int = g_rand_int(this : Rand*) : UInt32
  fun rand_int_range = g_rand_int_range(this : Rand*, _begin : Int32, _end : Int32) : Int32
  fun rand_set_seed = g_rand_set_seed(this : Rand*, seed : UInt32) : Void
  fun rand_set_seed_array = g_rand_set_seed_array(this : Rand*, seed : UInt32*, seed_length : UInt32) : Void

  struct RecMutex # struct
    p : Void*
    i : UInt32
  end
  fun rec_mutex_clear = g_rec_mutex_clear(this : RecMutex*) : Void
  fun rec_mutex_init = g_rec_mutex_init(this : RecMutex*) : Void
  fun rec_mutex_lock = g_rec_mutex_lock(this : RecMutex*) : Void
  fun rec_mutex_trylock = g_rec_mutex_trylock(this : RecMutex*) : Bool
  fun rec_mutex_unlock = g_rec_mutex_unlock(this : RecMutex*) : Void

  struct Regex # struct
    _data : UInt8[0]
  end
  fun regex_new = g_regex_new(pattern : UInt8*, compile_options : LibGLib::RegexCompileFlags, match_options : LibGLib::RegexMatchFlags, error : LibGLib::Error**) : LibGLib::Regex*
  fun regex_get_capture_count = g_regex_get_capture_count(this : Regex*) : Int32
  fun regex_get_compile_flags = g_regex_get_compile_flags(this : Regex*) : LibGLib::RegexCompileFlags
  fun regex_get_has_cr_or_lf = g_regex_get_has_cr_or_lf(this : Regex*) : Bool
  fun regex_get_match_flags = g_regex_get_match_flags(this : Regex*) : LibGLib::RegexMatchFlags
  fun regex_get_max_backref = g_regex_get_max_backref(this : Regex*) : Int32
  fun regex_get_max_lookbehind = g_regex_get_max_lookbehind(this : Regex*) : Int32
  fun regex_get_pattern = g_regex_get_pattern(this : Regex*) : UInt8*
  fun regex_get_string_number = g_regex_get_string_number(this : Regex*, name : UInt8*) : Int32
  fun regex_match = g_regex_match(this : Regex*, string : UInt8*, match_options : LibGLib::RegexMatchFlags, match_info : LibGLib::MatchInfo**) : Bool
  fun regex_match_all = g_regex_match_all(this : Regex*, string : UInt8*, match_options : LibGLib::RegexMatchFlags, match_info : LibGLib::MatchInfo**) : Bool
  fun regex_match_all_full = g_regex_match_all_full(this : Regex*, string : UInt8**, string_len : Int64, start_position : Int32, match_options : LibGLib::RegexMatchFlags, match_info : LibGLib::MatchInfo**, error : LibGLib::Error**) : Bool
  fun regex_match_full = g_regex_match_full(this : Regex*, string : UInt8**, string_len : Int64, start_position : Int32, match_options : LibGLib::RegexMatchFlags, match_info : LibGLib::MatchInfo**, error : LibGLib::Error**) : Bool
  fun regex_ref = g_regex_ref(this : Regex*) : LibGLib::Regex*
  fun regex_replace = g_regex_replace(this : Regex*, string : UInt8**, string_len : Int64, start_position : Int32, replacement : UInt8*, match_options : LibGLib::RegexMatchFlags, error : LibGLib::Error**) : UInt8*
  fun regex_replace_literal = g_regex_replace_literal(this : Regex*, string : UInt8**, string_len : Int64, start_position : Int32, replacement : UInt8*, match_options : LibGLib::RegexMatchFlags, error : LibGLib::Error**) : UInt8*
  fun regex_split = g_regex_split(this : Regex*, string : UInt8*, match_options : LibGLib::RegexMatchFlags) : UInt8**
  fun regex_split_full = g_regex_split_full(this : Regex*, string : UInt8**, string_len : Int64, start_position : Int32, match_options : LibGLib::RegexMatchFlags, max_tokens : Int32, error : LibGLib::Error**) : UInt8**
  fun regex_unref = g_regex_unref(this : Regex*) : Void
  fun regex_check_replacement = g_regex_check_replacement(replacement : UInt8*, has_references : Bool*, error : LibGLib::Error**) : Bool
  fun regex_error_quark = g_regex_error_quark() : UInt32
  fun regex_escape_nul = g_regex_escape_nul(string : UInt8*, length : Int32) : UInt8*
  fun regex_escape_string = g_regex_escape_string(string : UInt8**, length : Int32) : UInt8*
  fun regex_match_simple = g_regex_match_simple(pattern : UInt8*, string : UInt8*, compile_options : LibGLib::RegexCompileFlags, match_options : LibGLib::RegexMatchFlags) : Bool
  fun regex_split_simple = g_regex_split_simple(pattern : UInt8*, string : UInt8*, compile_options : LibGLib::RegexCompileFlags, match_options : LibGLib::RegexMatchFlags) : UInt8**

  struct SList # struct
    data : Void*
    next_ : Void**
  end

  struct Scanner # struct
    user_data : Void*
    max_parse_errors : UInt32
    parse_errors : UInt32
    input_name : UInt8*
    qdata : LibGLib::Data*
    config : LibGLib::ScannerConfig*
    token : LibGLib::TokenType
    value : LibGLib::TokenValue
    line : UInt32
    position : UInt32
    next_token : LibGLib::TokenType
    next_value : LibGLib::TokenValue
    next_line : UInt32
    next_position : UInt32
    symbol_table : Void**
    input_fd : Int32
    text : UInt8*
    text_end : UInt8*
    buffer : UInt8*
    scope_id : UInt32
    msg_handler : LibGLib::ScannerMsgFunc
  end
  fun scanner_cur_line = g_scanner_cur_line(this : Scanner*) : UInt32
  fun scanner_cur_position = g_scanner_cur_position(this : Scanner*) : UInt32
  fun scanner_cur_token = g_scanner_cur_token(this : Scanner*) : LibGLib::TokenType
  fun scanner_destroy = g_scanner_destroy(this : Scanner*) : Void
  fun scanner_eof = g_scanner_eof(this : Scanner*) : Bool
  fun scanner_get_next_token = g_scanner_get_next_token(this : Scanner*) : LibGLib::TokenType
  fun scanner_input_file = g_scanner_input_file(this : Scanner*, input_fd : Int32) : Void
  fun scanner_input_text = g_scanner_input_text(this : Scanner*, text : UInt8*, text_len : UInt32) : Void
  fun scanner_lookup_symbol = g_scanner_lookup_symbol(this : Scanner*, symbol : UInt8*) : Void*
  fun scanner_peek_next_token = g_scanner_peek_next_token(this : Scanner*) : LibGLib::TokenType
  fun scanner_scope_add_symbol = g_scanner_scope_add_symbol(this : Scanner*, scope_id : UInt32, symbol : UInt8*, value : Void*) : Void
  fun scanner_scope_lookup_symbol = g_scanner_scope_lookup_symbol(this : Scanner*, scope_id : UInt32, symbol : UInt8*) : Void*
  fun scanner_scope_remove_symbol = g_scanner_scope_remove_symbol(this : Scanner*, scope_id : UInt32, symbol : UInt8*) : Void
  fun scanner_set_scope = g_scanner_set_scope(this : Scanner*, scope_id : UInt32) : UInt32
  fun scanner_sync_file_offset = g_scanner_sync_file_offset(this : Scanner*) : Void
  fun scanner_unexp_token = g_scanner_unexp_token(this : Scanner*, expected_token : LibGLib::TokenType, identifier_spec : UInt8*, symbol_spec : UInt8*, symbol_name : UInt8*, message : UInt8*, is_error : Int32) : Void

  struct ScannerConfig # struct
    cset_skip_characters : UInt8*
    cset_identifier_first : UInt8*
    cset_identifier_nth : UInt8*
    cpair_comment_single : UInt8*
    case_sensitive : UInt32
    skip_comment_multi : UInt32
    skip_comment_single : UInt32
    scan_comment_multi : UInt32
    scan_identifier : UInt32
    scan_identifier_1char : UInt32
    scan_identifier_NULL : UInt32
    scan_symbols : UInt32
    scan_binary : UInt32
    scan_octal : UInt32
    scan_float : UInt32
    scan_hex : UInt32
    scan_hex_dollar : UInt32
    scan_string_sq : UInt32
    scan_string_dq : UInt32
    numbers_2_int : UInt32
    int_2_float : UInt32
    identifier_2_string : UInt32
    char_2_token : UInt32
    symbol_2_token : UInt32
    scope_0_fallback : UInt32
    store_int64 : UInt32
    padding_dummy : UInt32
  end

  struct Sequence # struct
    _data : UInt8[0]
  end
  fun sequence_append = g_sequence_append(this : Sequence*, data : Void*) : LibGLib::SequenceIter*
  fun sequence_free = g_sequence_free(this : Sequence*) : Void
  fun sequence_get_begin_iter = g_sequence_get_begin_iter(this : Sequence*) : LibGLib::SequenceIter*
  fun sequence_get_end_iter = g_sequence_get_end_iter(this : Sequence*) : LibGLib::SequenceIter*
  fun sequence_get_iter_at_pos = g_sequence_get_iter_at_pos(this : Sequence*, pos : Int32) : LibGLib::SequenceIter*
  fun sequence_get_length = g_sequence_get_length(this : Sequence*) : Int32
  fun sequence_is_empty = g_sequence_is_empty(this : Sequence*) : Bool
  fun sequence_prepend = g_sequence_prepend(this : Sequence*, data : Void*) : LibGLib::SequenceIter*
  fun sequence_get = g_sequence_get(iter : LibGLib::SequenceIter*) : Void*
  fun sequence_insert_before = g_sequence_insert_before(iter : LibGLib::SequenceIter*, data : Void*) : LibGLib::SequenceIter*
  fun sequence_move = g_sequence_move(src : LibGLib::SequenceIter*, dest : LibGLib::SequenceIter*) : Void
  fun sequence_move_range = g_sequence_move_range(dest : LibGLib::SequenceIter*, _begin : LibGLib::SequenceIter*, _end : LibGLib::SequenceIter*) : Void
  fun sequence_range_get_midpoint = g_sequence_range_get_midpoint(_begin : LibGLib::SequenceIter*, _end : LibGLib::SequenceIter*) : LibGLib::SequenceIter*
  fun sequence_remove = g_sequence_remove(iter : LibGLib::SequenceIter*) : Void
  fun sequence_remove_range = g_sequence_remove_range(_begin : LibGLib::SequenceIter*, _end : LibGLib::SequenceIter*) : Void
  fun sequence_set = g_sequence_set(iter : LibGLib::SequenceIter*, data : Void*) : Void
  fun sequence_swap = g_sequence_swap(a : LibGLib::SequenceIter*, b : LibGLib::SequenceIter*) : Void

  struct SequenceIter # struct
    _data : UInt8[0]
  end
  fun sequence_iter_compare = g_sequence_iter_compare(this : SequenceIter*, b : LibGLib::SequenceIter*) : Int32
  fun sequence_iter_get_position = g_sequence_iter_get_position(this : SequenceIter*) : Int32
  fun sequence_iter_get_sequence = g_sequence_iter_get_sequence(this : SequenceIter*) : LibGLib::Sequence*
  fun sequence_iter_is_begin = g_sequence_iter_is_begin(this : SequenceIter*) : Bool
  fun sequence_iter_is_end = g_sequence_iter_is_end(this : SequenceIter*) : Bool
  fun sequence_iter_move = g_sequence_iter_move(this : SequenceIter*, delta : Int32) : LibGLib::SequenceIter*
  fun sequence_iter_next = g_sequence_iter_next(this : SequenceIter*) : LibGLib::SequenceIter*
  fun sequence_iter_prev = g_sequence_iter_prev(this : SequenceIter*) : LibGLib::SequenceIter*

  struct Source # struct
    callback_data : Void*
    callback_funcs : LibGLib::SourceCallbackFuncs*
    source_funcs : LibGLib::SourceFuncs*
    ref_count : UInt32
    context : LibGLib::MainContext*
    priority : Int32
    flags : UInt32
    source_id : UInt32
    poll_fds : Void**
    prev : LibGLib::Source*
    next_ : LibGLib::Source*
    name : UInt8*
    priv : LibGLib::SourcePrivate*
  end
  fun source_new = g_source_new(source_funcs : LibGLib::SourceFuncs*, struct_size : UInt32) : LibGLib::Source*
  fun source_add_child_source = g_source_add_child_source(this : Source*, child_source : LibGLib::Source*) : Void
  fun source_add_poll = g_source_add_poll(this : Source*, fd : LibGLib::PollFD*) : Void
  fun source_add_unix_fd = g_source_add_unix_fd(this : Source*, fd : Int32, events : LibGLib::IOCondition) : Void*
  fun source_attach = g_source_attach(this : Source*, context : LibGLib::MainContext*) : UInt32
  fun source_destroy = g_source_destroy(this : Source*) : Void
  fun source_get_can_recurse = g_source_get_can_recurse(this : Source*) : Bool
  fun source_get_context = g_source_get_context(this : Source*) : LibGLib::MainContext*
  fun source_get_current_time = g_source_get_current_time(this : Source*, timeval : LibGLib::TimeVal*) : Void
  fun source_get_id = g_source_get_id(this : Source*) : UInt32
  fun source_get_name = g_source_get_name(this : Source*) : UInt8*
  fun source_get_priority = g_source_get_priority(this : Source*) : Int32
  fun source_get_ready_time = g_source_get_ready_time(this : Source*) : Int64
  fun source_get_time = g_source_get_time(this : Source*) : Int64
  fun source_is_destroyed = g_source_is_destroyed(this : Source*) : Bool
  fun source_modify_unix_fd = g_source_modify_unix_fd(this : Source*, tag : Void*, new_events : LibGLib::IOCondition) : Void
  fun source_query_unix_fd = g_source_query_unix_fd(this : Source*, tag : Void*) : LibGLib::IOCondition
  fun source_ref = g_source_ref(this : Source*) : LibGLib::Source*
  fun source_remove_child_source = g_source_remove_child_source(this : Source*, child_source : LibGLib::Source*) : Void
  fun source_remove_poll = g_source_remove_poll(this : Source*, fd : LibGLib::PollFD*) : Void
  fun source_remove_unix_fd = g_source_remove_unix_fd(this : Source*, tag : Void*) : Void
  fun source_set_callback = g_source_set_callback(this : Source*, func : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun source_set_callback_indirect = g_source_set_callback_indirect(this : Source*, callback_data : Void*, callback_funcs : LibGLib::SourceCallbackFuncs*) : Void
  fun source_set_can_recurse = g_source_set_can_recurse(this : Source*, can_recurse : Bool) : Void
  fun source_set_funcs = g_source_set_funcs(this : Source*, funcs : LibGLib::SourceFuncs*) : Void
  fun source_set_name = g_source_set_name(this : Source*, name : UInt8*) : Void
  fun source_set_priority = g_source_set_priority(this : Source*, priority : Int32) : Void
  fun source_set_ready_time = g_source_set_ready_time(this : Source*, ready_time : Int64) : Void
  fun source_unref = g_source_unref(this : Source*) : Void
  fun source_remove = g_source_remove(tag : UInt32) : Bool
  fun source_remove_by_funcs_user_data = g_source_remove_by_funcs_user_data(funcs : LibGLib::SourceFuncs*, user_data : Void*) : Bool
  fun source_remove_by_user_data = g_source_remove_by_user_data(user_data : Void*) : Bool
  fun source_set_name_by_id = g_source_set_name_by_id(tag : UInt32, name : UInt8*) : Void

  struct SourceCallbackFuncs # struct
    ref : -> Void
    unref : -> Void
    get : Void*
  end

  struct SourceFuncs # struct
    prepare : -> Void
    check : -> Void
    dispatch : Void*
    finalize : -> Void
    closure_callback : LibGLib::SourceFunc
    closure_marshal : LibGLib::SourceDummyMarshal
  end

  struct SourcePrivate # struct
    _data : UInt8[0]
  end

  struct StatBuf # struct
    _data : UInt8[0]
  end

  struct String # struct
    str : UInt8*
    len : UInt64
    allocated_len : UInt64
  end
  fun string_append = g_string_append(this : String*, val : UInt8*) : LibGLib::String*
  fun string_append_c = g_string_append_c(this : String*, c : Int8) : LibGLib::String*
  fun string_append_len = g_string_append_len(this : String*, val : UInt8*, len : Int64) : LibGLib::String*
  fun string_append_unichar = g_string_append_unichar(this : String*, wc : UInt8) : LibGLib::String*
  fun string_append_uri_escaped = g_string_append_uri_escaped(this : String*, unescaped : UInt8*, reserved_chars_allowed : UInt8*, allow_utf8 : Bool) : LibGLib::String*
  fun string_ascii_down = g_string_ascii_down(this : String*) : LibGLib::String*
  fun string_ascii_up = g_string_ascii_up(this : String*) : LibGLib::String*
  fun string_assign = g_string_assign(this : String*, rval : UInt8*) : LibGLib::String*
  fun string_down = g_string_down(this : String*) : LibGLib::String*
  fun string_equal = g_string_equal(this : String*, v2 : LibGLib::String*) : Bool
  fun string_erase = g_string_erase(this : String*, pos : Int64, len : Int64) : LibGLib::String*
  fun string_free = g_string_free(this : String*, free_segment : Bool) : UInt8*
  fun string_free_to_bytes = g_string_free_to_bytes(this : String*) : LibGLib::Bytes*
  fun string_hash = g_string_hash(this : String*) : UInt32
  fun string_insert = g_string_insert(this : String*, pos : Int64, val : UInt8*) : LibGLib::String*
  fun string_insert_c = g_string_insert_c(this : String*, pos : Int64, c : Int8) : LibGLib::String*
  fun string_insert_len = g_string_insert_len(this : String*, pos : Int64, val : UInt8*, len : Int64) : LibGLib::String*
  fun string_insert_unichar = g_string_insert_unichar(this : String*, pos : Int64, wc : UInt8) : LibGLib::String*
  fun string_overwrite = g_string_overwrite(this : String*, pos : UInt64, val : UInt8*) : LibGLib::String*
  fun string_overwrite_len = g_string_overwrite_len(this : String*, pos : UInt64, val : UInt8*, len : Int64) : LibGLib::String*
  fun string_prepend = g_string_prepend(this : String*, val : UInt8*) : LibGLib::String*
  fun string_prepend_c = g_string_prepend_c(this : String*, c : Int8) : LibGLib::String*
  fun string_prepend_len = g_string_prepend_len(this : String*, val : UInt8*, len : Int64) : LibGLib::String*
  fun string_prepend_unichar = g_string_prepend_unichar(this : String*, wc : UInt8) : LibGLib::String*
  fun string_set_size = g_string_set_size(this : String*, len : UInt64) : LibGLib::String*
  fun string_truncate = g_string_truncate(this : String*, len : UInt64) : LibGLib::String*
  fun string_up = g_string_up(this : String*) : LibGLib::String*

  struct StringChunk # struct
    _data : UInt8[0]
  end
  fun string_chunk_clear = g_string_chunk_clear(this : StringChunk*) : Void
  fun string_chunk_free = g_string_chunk_free(this : StringChunk*) : Void
  fun string_chunk_insert = g_string_chunk_insert(this : StringChunk*, string : UInt8*) : UInt8*
  fun string_chunk_insert_const = g_string_chunk_insert_const(this : StringChunk*, string : UInt8*) : UInt8*
  fun string_chunk_insert_len = g_string_chunk_insert_len(this : StringChunk*, string : UInt8*, len : Int64) : UInt8*

  struct TestCase # struct
    _data : UInt8[0]
  end

  struct TestConfig # struct
    test_initialized : Bool
    test_quick : Bool
    test_perf : Bool
    test_verbose : Bool
    test_quiet : Bool
    test_undefined : Bool
  end

  struct TestLogBuffer # struct
    data : LibGLib::String*
    msgs : Void**
  end
  fun test_log_buffer_free = g_test_log_buffer_free(this : TestLogBuffer*) : Void
  fun test_log_buffer_push = g_test_log_buffer_push(this : TestLogBuffer*, n_bytes : UInt32, bytes : UInt8*) : Void

  struct TestLogMsg # struct
    log_type : LibGLib::TestLogType
    n_strings : UInt32
    strings : UInt8*
    n_nums : UInt32
    nums : Int64*
  end
  fun test_log_msg_free = g_test_log_msg_free(this : TestLogMsg*) : Void

  struct TestSuite # struct
    _data : UInt8[0]
  end
  fun test_suite_add = g_test_suite_add(this : TestSuite*, test_case : LibGLib::TestCase*) : Void
  fun test_suite_add_suite = g_test_suite_add_suite(this : TestSuite*, nestedsuite : LibGLib::TestSuite*) : Void

  struct Thread # struct
    _data : UInt8[0]
  end
  fun thread_join = g_thread_join(this : Thread*) : Void*
  fun thread_ref = g_thread_ref(this : Thread*) : LibGLib::Thread*
  fun thread_unref = g_thread_unref(this : Thread*) : Void
  fun thread_error_quark = g_thread_error_quark() : UInt32
  fun thread_exit = g_thread_exit(retval : Void*) : Void
  fun thread_self = g_thread_self() : LibGLib::Thread*
  fun thread_yield = g_thread_yield() : Void

  struct ThreadPool # struct
    func : LibGLib::Func
    user_data : Void*
    exclusive : Bool
  end
  fun thread_pool_free = g_thread_pool_free(this : ThreadPool*, immediate : Bool, wait : Bool) : Void
  fun thread_pool_get_max_threads = g_thread_pool_get_max_threads(this : ThreadPool*) : Int32
  fun thread_pool_get_num_threads = g_thread_pool_get_num_threads(this : ThreadPool*) : UInt32
  fun thread_pool_move_to_front = g_thread_pool_move_to_front(this : ThreadPool*, data : Void*) : Bool
  fun thread_pool_push = g_thread_pool_push(this : ThreadPool*, data : Void*, error : LibGLib::Error**) : Bool
  fun thread_pool_set_max_threads = g_thread_pool_set_max_threads(this : ThreadPool*, max_threads : Int32, error : LibGLib::Error**) : Bool
  fun thread_pool_unprocessed = g_thread_pool_unprocessed(this : ThreadPool*) : UInt32
  fun thread_pool_get_max_idle_time = g_thread_pool_get_max_idle_time() : UInt32
  fun thread_pool_get_max_unused_threads = g_thread_pool_get_max_unused_threads() : Int32
  fun thread_pool_get_num_unused_threads = g_thread_pool_get_num_unused_threads() : UInt32
  fun thread_pool_set_max_idle_time = g_thread_pool_set_max_idle_time(interval : UInt32) : Void
  fun thread_pool_set_max_unused_threads = g_thread_pool_set_max_unused_threads(max_threads : Int32) : Void
  fun thread_pool_stop_unused_threads = g_thread_pool_stop_unused_threads() : Void

  struct TimeVal # struct
    tv_sec : Int64
    tv_usec : Int64
  end
  fun time_val_add = g_time_val_add(this : TimeVal*, microseconds : Int64) : Void
  fun time_val_to_iso8601 = g_time_val_to_iso8601(this : TimeVal*) : UInt8*
  fun time_val_from_iso8601 = g_time_val_from_iso8601(iso_date : UInt8*, time : LibGLib::TimeVal*) : Bool

  struct TimeZone # struct
    _data : UInt8[0]
  end
  fun time_zone_new = g_time_zone_new(identifier : UInt8*) : LibGLib::TimeZone*
  fun time_zone_new_local = g_time_zone_new_local() : LibGLib::TimeZone*
  fun time_zone_new_offset = g_time_zone_new_offset(seconds : Int32) : LibGLib::TimeZone*
  fun time_zone_new_utc = g_time_zone_new_utc() : LibGLib::TimeZone*
  fun time_zone_adjust_time = g_time_zone_adjust_time(this : TimeZone*, type : LibGLib::TimeType, time : Int64*) : Int32
  fun time_zone_find_interval = g_time_zone_find_interval(this : TimeZone*, type : LibGLib::TimeType, time : Int64) : Int32
  fun time_zone_get_abbreviation = g_time_zone_get_abbreviation(this : TimeZone*, interval : Int32) : UInt8*
  fun time_zone_get_identifier = g_time_zone_get_identifier(this : TimeZone*) : UInt8*
  fun time_zone_get_offset = g_time_zone_get_offset(this : TimeZone*, interval : Int32) : Int32
  fun time_zone_is_dst = g_time_zone_is_dst(this : TimeZone*, interval : Int32) : Bool
  fun time_zone_ref = g_time_zone_ref(this : TimeZone*) : LibGLib::TimeZone*
  fun time_zone_unref = g_time_zone_unref(this : TimeZone*) : Void

  struct Timer # struct
    _data : UInt8[0]
  end
  fun timer_continue = g_timer_continue(this : Timer*) : Void
  fun timer_destroy = g_timer_destroy(this : Timer*) : Void
  fun timer_elapsed = g_timer_elapsed(this : Timer*, microseconds : UInt64*) : Float64
  fun timer_reset = g_timer_reset(this : Timer*) : Void
  fun timer_start = g_timer_start(this : Timer*) : Void
  fun timer_stop = g_timer_stop(this : Timer*) : Void

  struct TrashStack # struct
    next_ : LibGLib::TrashStack*
  end
  fun trash_stack_height = g_trash_stack_height(stack_p : LibGLib::TrashStack*) : UInt32
  fun trash_stack_peek = g_trash_stack_peek(stack_p : LibGLib::TrashStack*) : Void*
  fun trash_stack_pop = g_trash_stack_pop(stack_p : LibGLib::TrashStack*) : Void*
  fun trash_stack_push = g_trash_stack_push(stack_p : LibGLib::TrashStack*, data_p : Void*) : Void

  struct Tree # struct
    _data : UInt8[0]
  end
  fun tree_destroy = g_tree_destroy(this : Tree*) : Void
  fun tree_height = g_tree_height(this : Tree*) : Int32
  fun tree_insert = g_tree_insert(this : Tree*, key : Void*, value : Void*) : Void
  fun tree_lookup = g_tree_lookup(this : Tree*, key : Void*) : Void*
  fun tree_lookup_extended = g_tree_lookup_extended(this : Tree*, lookup_key : Void*, orig_key : Void*, value : Void*) : Bool
  fun tree_nnodes = g_tree_nnodes(this : Tree*) : Int32
  fun tree_remove = g_tree_remove(this : Tree*, key : Void*) : Bool
  fun tree_replace = g_tree_replace(this : Tree*, key : Void*, value : Void*) : Void
  fun tree_steal = g_tree_steal(this : Tree*, key : Void*) : Bool
  fun tree_unref = g_tree_unref(this : Tree*) : Void

  struct Variant # struct
    _data : UInt8[0]
  end
  fun variant_new_array = g_variant_new_array(child_type : LibGLib::VariantType*, children : LibGLib::Variant**, n_children : UInt64) : LibGLib::Variant*
  fun variant_new_boolean = g_variant_new_boolean(value : Bool) : LibGLib::Variant*
  fun variant_new_byte = g_variant_new_byte(value : UInt8) : LibGLib::Variant*
  fun variant_new_bytestring = g_variant_new_bytestring(string : UInt8*) : LibGLib::Variant*
  fun variant_new_bytestring_array = g_variant_new_bytestring_array(strv : UInt8**, length : Int64) : LibGLib::Variant*
  fun variant_new_dict_entry = g_variant_new_dict_entry(key : LibGLib::Variant*, value : LibGLib::Variant*) : LibGLib::Variant*
  fun variant_new_double = g_variant_new_double(value : Float64) : LibGLib::Variant*
  fun variant_new_fixed_array = g_variant_new_fixed_array(element_type : LibGLib::VariantType*, elements : Void*, n_elements : UInt64, element_size : UInt64) : LibGLib::Variant*
  fun variant_new_from_bytes = g_variant_new_from_bytes(type : LibGLib::VariantType*, bytes : LibGLib::Bytes*, trusted : Bool) : LibGLib::Variant*
  fun variant_new_from_data = g_variant_new_from_data(type : LibGLib::VariantType*, data : UInt8*, size : UInt64, trusted : Bool, notify : LibGLib::DestroyNotify, user_data : Void*) : LibGLib::Variant*
  fun variant_new_handle = g_variant_new_handle(value : Int32) : LibGLib::Variant*
  fun variant_new_int16 = g_variant_new_int16(value : Int16) : LibGLib::Variant*
  fun variant_new_int32 = g_variant_new_int32(value : Int32) : LibGLib::Variant*
  fun variant_new_int64 = g_variant_new_int64(value : Int64) : LibGLib::Variant*
  fun variant_new_maybe = g_variant_new_maybe(child_type : LibGLib::VariantType*, child : LibGLib::Variant*) : LibGLib::Variant*
  fun variant_new_object_path = g_variant_new_object_path(object_path : UInt8*) : LibGLib::Variant*
  fun variant_new_objv = g_variant_new_objv(strv : UInt8**, length : Int64) : LibGLib::Variant*
  fun variant_new_signature = g_variant_new_signature(signature : UInt8*) : LibGLib::Variant*
  fun variant_new_string = g_variant_new_string(string : UInt8*) : LibGLib::Variant*
  fun variant_new_strv = g_variant_new_strv(strv : UInt8**, length : Int64) : LibGLib::Variant*
  fun variant_new_tuple = g_variant_new_tuple(children : LibGLib::Variant**, n_children : UInt64) : LibGLib::Variant*
  fun variant_new_uint16 = g_variant_new_uint16(value : UInt16) : LibGLib::Variant*
  fun variant_new_uint32 = g_variant_new_uint32(value : UInt32) : LibGLib::Variant*
  fun variant_new_uint64 = g_variant_new_uint64(value : UInt64) : LibGLib::Variant*
  fun variant_new_variant = g_variant_new_variant(value : LibGLib::Variant*) : LibGLib::Variant*
  fun variant_byteswap = g_variant_byteswap(this : Variant*) : LibGLib::Variant*
  fun variant_check_format_string = g_variant_check_format_string(this : Variant*, format_string : UInt8*, copy_only : Bool) : Bool
  fun variant_classify = g_variant_classify(this : Variant*) : LibGLib::VariantClass
  fun variant_compare = g_variant_compare(this : Variant*, two : LibGLib::Variant*) : Int32
  fun variant_dup_bytestring = g_variant_dup_bytestring(this : Variant*, length : UInt64*) : UInt8*
  fun variant_dup_bytestring_array = g_variant_dup_bytestring_array(this : Variant*, length : UInt64*) : UInt8**
  fun variant_dup_objv = g_variant_dup_objv(this : Variant*, length : UInt64*) : UInt8**
  fun variant_dup_string = g_variant_dup_string(this : Variant*, length : UInt64*) : UInt8*
  fun variant_dup_strv = g_variant_dup_strv(this : Variant*, length : UInt64*) : UInt8**
  fun variant_equal = g_variant_equal(this : Variant*, two : LibGLib::Variant*) : Bool
  fun variant_get_boolean = g_variant_get_boolean(this : Variant*) : Bool
  fun variant_get_byte = g_variant_get_byte(this : Variant*) : UInt8
  fun variant_get_bytestring = g_variant_get_bytestring(this : Variant*) : UInt8*
  fun variant_get_bytestring_array = g_variant_get_bytestring_array(this : Variant*, length : UInt64*) : UInt8**
  fun variant_get_child_value = g_variant_get_child_value(this : Variant*, index : UInt64) : LibGLib::Variant*
  fun variant_get_data = g_variant_get_data(this : Variant*) : Void*
  fun variant_get_data_as_bytes = g_variant_get_data_as_bytes(this : Variant*) : LibGLib::Bytes*
  fun variant_get_double = g_variant_get_double(this : Variant*) : Float64
  fun variant_get_handle = g_variant_get_handle(this : Variant*) : Int32
  fun variant_get_int16 = g_variant_get_int16(this : Variant*) : Int16
  fun variant_get_int32 = g_variant_get_int32(this : Variant*) : Int32
  fun variant_get_int64 = g_variant_get_int64(this : Variant*) : Int64
  fun variant_get_maybe = g_variant_get_maybe(this : Variant*) : LibGLib::Variant*
  fun variant_get_normal_form = g_variant_get_normal_form(this : Variant*) : LibGLib::Variant*
  fun variant_get_objv = g_variant_get_objv(this : Variant*, length : UInt64*) : UInt8**
  fun variant_get_size = g_variant_get_size(this : Variant*) : UInt64
  fun variant_get_string = g_variant_get_string(this : Variant*, length : UInt64*) : UInt8*
  fun variant_get_strv = g_variant_get_strv(this : Variant*, length : UInt64*) : UInt8**
  fun variant_get_type = g_variant_get_type(this : Variant*) : LibGLib::VariantType*
  fun variant_get_type_string = g_variant_get_type_string(this : Variant*) : UInt8*
  fun variant_get_uint16 = g_variant_get_uint16(this : Variant*) : UInt16
  fun variant_get_uint32 = g_variant_get_uint32(this : Variant*) : UInt32
  fun variant_get_uint64 = g_variant_get_uint64(this : Variant*) : UInt64
  fun variant_get_variant = g_variant_get_variant(this : Variant*) : LibGLib::Variant*
  fun variant_hash = g_variant_hash(this : Variant*) : UInt32
  fun variant_is_container = g_variant_is_container(this : Variant*) : Bool
  fun variant_is_floating = g_variant_is_floating(this : Variant*) : Bool
  fun variant_is_normal_form = g_variant_is_normal_form(this : Variant*) : Bool
  fun variant_is_of_type = g_variant_is_of_type(this : Variant*, type : LibGLib::VariantType*) : Bool
  fun variant_lookup_value = g_variant_lookup_value(this : Variant*, key : UInt8*, expected_type : LibGLib::VariantType*) : LibGLib::Variant*
  fun variant_n_children = g_variant_n_children(this : Variant*) : UInt64
  fun variant_print = g_variant_print(this : Variant*, type_annotate : Bool) : UInt8*
  fun variant_ref = g_variant_ref(this : Variant*) : LibGLib::Variant*
  fun variant_ref_sink = g_variant_ref_sink(this : Variant*) : LibGLib::Variant*
  fun variant_store = g_variant_store(this : Variant*, data : Void*) : Void
  fun variant_take_ref = g_variant_take_ref(this : Variant*) : LibGLib::Variant*
  fun variant_unref = g_variant_unref(this : Variant*) : Void
  fun variant_is_object_path = g_variant_is_object_path(string : UInt8*) : Bool
  fun variant_is_signature = g_variant_is_signature(string : UInt8*) : Bool
  fun variant_parse = g_variant_parse(type : LibGLib::VariantType*, text : UInt8*, limit : UInt8*, endptr : UInt8*, error : LibGLib::Error**) : LibGLib::Variant*
  fun variant_parse_error_print_context = g_variant_parse_error_print_context(error : LibGLib::Error**, source_str : UInt8*) : UInt8*
  fun variant_parse_error_quark = g_variant_parse_error_quark() : UInt32
  fun variant_parser_get_error_quark = g_variant_parser_get_error_quark() : UInt32

  struct VariantBuilder # struct
    _data : UInt8[0]
  end
  fun variant_builder_new = g_variant_builder_new(type : LibGLib::VariantType*) : LibGLib::VariantBuilder*
  fun variant_builder_add_value = g_variant_builder_add_value(this : VariantBuilder*, value : LibGLib::Variant*) : Void
  fun variant_builder_close = g_variant_builder_close(this : VariantBuilder*) : Void
  fun variant_builder_end = g_variant_builder_end(this : VariantBuilder*) : LibGLib::Variant*
  fun variant_builder_open = g_variant_builder_open(this : VariantBuilder*, type : LibGLib::VariantType*) : Void
  fun variant_builder_ref = g_variant_builder_ref(this : VariantBuilder*) : LibGLib::VariantBuilder*
  fun variant_builder_unref = g_variant_builder_unref(this : VariantBuilder*) : Void

  struct VariantDict # struct
    _data : UInt8[0]
  end
  fun variant_dict_new = g_variant_dict_new(from_asv : LibGLib::Variant*) : LibGLib::VariantDict*
  fun variant_dict_clear = g_variant_dict_clear(this : VariantDict*) : Void
  fun variant_dict_contains = g_variant_dict_contains(this : VariantDict*, key : UInt8*) : Bool
  fun variant_dict_end = g_variant_dict_end(this : VariantDict*) : LibGLib::Variant*
  fun variant_dict_insert_value = g_variant_dict_insert_value(this : VariantDict*, key : UInt8*, value : LibGLib::Variant*) : Void
  fun variant_dict_lookup_value = g_variant_dict_lookup_value(this : VariantDict*, key : UInt8*, expected_type : LibGLib::VariantType*) : LibGLib::Variant*
  fun variant_dict_ref = g_variant_dict_ref(this : VariantDict*) : LibGLib::VariantDict*
  fun variant_dict_remove = g_variant_dict_remove(this : VariantDict*, key : UInt8*) : Bool
  fun variant_dict_unref = g_variant_dict_unref(this : VariantDict*) : Void

  struct VariantType # struct
    _data : UInt8[0]
  end
  fun variant_type_new = g_variant_type_new(type_string : UInt8*) : LibGLib::VariantType*
  fun variant_type_new_array = g_variant_type_new_array(element : LibGLib::VariantType*) : LibGLib::VariantType*
  fun variant_type_new_dict_entry = g_variant_type_new_dict_entry(key : LibGLib::VariantType*, value : LibGLib::VariantType*) : LibGLib::VariantType*
  fun variant_type_new_maybe = g_variant_type_new_maybe(element : LibGLib::VariantType*) : LibGLib::VariantType*
  fun variant_type_new_tuple = g_variant_type_new_tuple(items : LibGLib::VariantType**, length : Int32) : LibGLib::VariantType*
  fun variant_type_copy = g_variant_type_copy(this : VariantType*) : LibGLib::VariantType*
  fun variant_type_dup_string = g_variant_type_dup_string(this : VariantType*) : UInt8*
  fun variant_type_element = g_variant_type_element(this : VariantType*) : LibGLib::VariantType*
  fun variant_type_equal = g_variant_type_equal(this : VariantType*, type2 : LibGLib::VariantType*) : Bool
  fun variant_type_first = g_variant_type_first(this : VariantType*) : LibGLib::VariantType*
  fun variant_type_free = g_variant_type_free(this : VariantType*) : Void
  fun variant_type_get_string_length = g_variant_type_get_string_length(this : VariantType*) : UInt64
  fun variant_type_hash = g_variant_type_hash(this : VariantType*) : UInt32
  fun variant_type_is_array = g_variant_type_is_array(this : VariantType*) : Bool
  fun variant_type_is_basic = g_variant_type_is_basic(this : VariantType*) : Bool
  fun variant_type_is_container = g_variant_type_is_container(this : VariantType*) : Bool
  fun variant_type_is_definite = g_variant_type_is_definite(this : VariantType*) : Bool
  fun variant_type_is_dict_entry = g_variant_type_is_dict_entry(this : VariantType*) : Bool
  fun variant_type_is_maybe = g_variant_type_is_maybe(this : VariantType*) : Bool
  fun variant_type_is_subtype_of = g_variant_type_is_subtype_of(this : VariantType*, supertype : LibGLib::VariantType*) : Bool
  fun variant_type_is_tuple = g_variant_type_is_tuple(this : VariantType*) : Bool
  fun variant_type_is_variant = g_variant_type_is_variant(this : VariantType*) : Bool
  fun variant_type_key = g_variant_type_key(this : VariantType*) : LibGLib::VariantType*
  fun variant_type_n_items = g_variant_type_n_items(this : VariantType*) : UInt64
  fun variant_type_next = g_variant_type_next(this : VariantType*) : LibGLib::VariantType*
  fun variant_type_value = g_variant_type_value(this : VariantType*) : LibGLib::VariantType*
  fun variant_type_checked_ = g_variant_type_checked_(arg0 : UInt8*) : LibGLib::VariantType*
  fun variant_type_string_is_valid = g_variant_type_string_is_valid(type_string : UInt8*) : Bool
  fun variant_type_string_scan = g_variant_type_string_scan(string : UInt8*, limit : UInt8*, endptr : UInt8**) : Bool


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum AsciiType : UInt32
    ZERO_NONE = 0
    ALNUM = 1
    ALPHA = 2
    CNTRL = 4
    DIGIT = 8
    GRAPH = 16
    LOWER = 32
    PRINT = 64
    PUNCT = 128
    SPACE = 256
    UPPER = 512
    XDIGIT = 1024
  end

  @[Flags]
  enum FileTest : UInt32
    ZERO_NONE = 0
    IS_REGULAR = 1
    IS_SYMLINK = 2
    IS_DIR = 4
    IS_EXECUTABLE = 8
    EXISTS = 16
  end

  @[Flags]
  enum FormatSizeFlags : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    LONG_FORMAT = 1
    IEC_UNITS = 2
    BITS = 4
  end

  @[Flags]
  enum HookFlagMask : UInt32
    ZERO_NONE = 0
    ACTIVE = 1
    IN_CALL = 2
    MASK = 15
  end

  @[Flags]
  enum IOCondition : UInt32
    ZERO_NONE = 0
    IN = 1
    OUT = 4
    PRI = 2
    ERR = 8
    HUP = 16
    NVAL = 32
  end

  @[Flags]
  enum IOFlags : UInt32
    ZERO_NONE = 0
    APPEND = 1
    NONBLOCK = 2
    IS_READABLE = 4
    IS_WRITABLE = 8
    IS_WRITEABLE = 8
    IS_SEEKABLE = 16
    MASK = 31
    GET_MASK = 31
    SET_MASK = 3
  end

  @[Flags]
  enum KeyFileFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    KEEP_COMMENTS = 1
    KEEP_TRANSLATIONS = 2
  end

  @[Flags]
  enum LogLevelFlags : Int32
    ZERO_NONE = 0
    FLAG_RECURSION = 1
    FLAG_FATAL = 2
    LEVEL_ERROR = 4
    LEVEL_CRITICAL = 8
    LEVEL_WARNING = 16
    LEVEL_MESSAGE = 32
    LEVEL_INFO = 64
    LEVEL_DEBUG = 128
    LEVEL_MASK = -4
  end

  @[Flags]
  enum MarkupCollectType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    STRING = 1
    STRDUP = 2
    BOOLEAN = 3
    TRISTATE = 4
    OPTIONAL = 65536
  end

  @[Flags]
  enum MarkupParseFlags : UInt32
    ZERO_NONE = 0
    DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1
    TREAT_CDATA_AS_TEXT = 2
    PREFIX_ERROR_POSITION = 4
    IGNORE_QUALIFIED = 8
  end

  @[Flags]
  enum OptionFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    HIDDEN = 1
    IN_MAIN = 2
    REVERSE = 4
    NO_ARG = 8
    FILENAME = 16
    OPTIONAL_ARG = 32
    NOALIAS = 64
  end

  @[Flags]
  enum RegexCompileFlags : UInt32
    ZERO_NONE = 0
    CASELESS = 1
    MULTILINE = 2
    DOTALL = 4
    EXTENDED = 8
    ANCHORED = 16
    DOLLAR_ENDONLY = 32
    UNGREEDY = 512
    RAW = 2048
    NO_AUTO_CAPTURE = 4096
    OPTIMIZE = 8192
    FIRSTLINE = 262144
    DUPNAMES = 524288
    NEWLINE_CR = 1048576
    NEWLINE_LF = 2097152
    NEWLINE_CRLF = 3145728
    NEWLINE_ANYCRLF = 5242880
    BSR_ANYCRLF = 8388608
    JAVASCRIPT_COMPAT = 33554432
  end

  @[Flags]
  enum RegexMatchFlags : UInt32
    ZERO_NONE = 0
    ANCHORED = 16
    NOTBOL = 128
    NOTEOL = 256
    NOTEMPTY = 1024
    PARTIAL = 32768
    NEWLINE_CR = 1048576
    NEWLINE_LF = 2097152
    NEWLINE_CRLF = 3145728
    NEWLINE_ANY = 4194304
    NEWLINE_ANYCRLF = 5242880
    BSR_ANYCRLF = 8388608
    BSR_ANY = 16777216
    PARTIAL_SOFT = 32768
    PARTIAL_HARD = 134217728
    NOTEMPTY_ATSTART = 268435456
  end

  @[Flags]
  enum SpawnFlags : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    LEAVE_DESCRIPTORS_OPEN = 1
    DO_NOT_REAP_CHILD = 2
    SEARCH_PATH = 4
    STDOUT_TO_DEV_NULL = 8
    STDERR_TO_DEV_NULL = 16
    CHILD_INHERITS_STDIN = 32
    FILE_AND_ARGV_ZERO = 64
    SEARCH_PATH_FROM_ENVP = 128
    CLOEXEC_PIPES = 256
  end

  @[Flags]
  enum TestSubprocessFlags : UInt32
    ZERO_NONE = 0
    STDIN = 1
    STDOUT = 2
    STDERR = 4
  end

  @[Flags]
  enum TestTrapFlags : UInt32
    ZERO_NONE = 0
    SILENCE_STDOUT = 128
    SILENCE_STDERR = 256
    INHERIT_STDIN = 512
  end

  @[Flags]
  enum TraverseFlags : UInt32
    ZERO_NONE = 0
    LEAVES = 1
    NON_LEAVES = 2
    ALL = 3
    MASK = 3
    LEAFS = 1
    NON_LEAFS = 2
  end


  ###########################################
  ##    Enums
  ###########################################

  enum BookmarkFileError : UInt32
    ZERO_NONE = 0
    INVALID_URI = 0
    INVALID_VALUE = 1
    APP_NOT_REGISTERED = 2
    URI_NOT_FOUND = 3
    READ = 4
    UNKNOWN_ENCODING = 5
    WRITE = 6
    FILE_NOT_FOUND = 7
  end

  enum ChecksumType : UInt32
    ZERO_NONE = 0
    MD5 = 0
    SHA1 = 1
    SHA256 = 2
    SHA512 = 3
    SHA384 = 4
  end

  enum ConvertError : UInt32
    ZERO_NONE = 0
    NO_CONVERSION = 0
    ILLEGAL_SEQUENCE = 1
    FAILED = 2
    PARTIAL_INPUT = 3
    BAD_URI = 4
    NOT_ABSOLUTE_PATH = 5
    NO_MEMORY = 6
    EMBEDDED_NUL = 7
  end

  enum DateDMY : UInt32
    ZERO_NONE = 0
    DAY = 0
    MONTH = 1
    YEAR = 2
  end

  enum DateMonth : UInt32
    ZERO_NONE = 0
    BAD_MONTH = 0
    JANUARY = 1
    FEBRUARY = 2
    MARCH = 3
    APRIL = 4
    MAY = 5
    JUNE = 6
    JULY = 7
    AUGUST = 8
    SEPTEMBER = 9
    OCTOBER = 10
    NOVEMBER = 11
    DECEMBER = 12
  end

  enum DateWeekday : UInt32
    ZERO_NONE = 0
    BAD_WEEKDAY = 0
    MONDAY = 1
    TUESDAY = 2
    WEDNESDAY = 3
    THURSDAY = 4
    FRIDAY = 5
    SATURDAY = 6
    SUNDAY = 7
  end

  enum ErrorType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    UNEXP_EOF = 1
    UNEXP_EOF_IN_STRING = 2
    UNEXP_EOF_IN_COMMENT = 3
    NON_DIGIT_IN_CONST = 4
    DIGIT_RADIX = 5
    FLOAT_RADIX = 6
    FLOAT_MALFORMED = 7
  end

  enum FileError : UInt32
    ZERO_NONE = 0
    EXIST = 0
    ISDIR = 1
    ACCES = 2
    NAMETOOLONG = 3
    NOENT = 4
    NOTDIR = 5
    NXIO = 6
    NODEV = 7
    ROFS = 8
    TXTBSY = 9
    FAULT = 10
    LOOP = 11
    NOSPC = 12
    NOMEM = 13
    MFILE = 14
    NFILE = 15
    BADF = 16
    INVAL = 17
    PIPE = 18
    AGAIN = 19
    INTR = 20
    IO = 21
    PERM = 22
    NOSYS = 23
    FAILED = 24
  end

  enum IOChannelError : UInt32
    ZERO_NONE = 0
    FBIG = 0
    INVAL = 1
    IO = 2
    ISDIR = 3
    NOSPC = 4
    NXIO = 5
    OVERFLOW = 6
    PIPE = 7
    FAILED = 8
  end

  enum IOError : UInt32
    ZERO_NONE = 0
    NONE = 0
    AGAIN = 1
    INVAL = 2
    UNKNOWN = 3
  end

  enum IOStatus : UInt32
    ZERO_NONE = 0
    ERROR = 0
    NORMAL = 1
    EOF = 2
    AGAIN = 3
  end

  enum KeyFileError : UInt32
    ZERO_NONE = 0
    UNKNOWN_ENCODING = 0
    PARSE = 1
    NOT_FOUND = 2
    KEY_NOT_FOUND = 3
    GROUP_NOT_FOUND = 4
    INVALID_VALUE = 5
  end

  enum LogWriterOutput : UInt32
    ZERO_NONE = 0
    HANDLED = 1
    UNHANDLED = 0
  end

  enum MarkupError : UInt32
    ZERO_NONE = 0
    BAD_UTF8 = 0
    EMPTY = 1
    PARSE = 2
    UNKNOWN_ELEMENT = 3
    UNKNOWN_ATTRIBUTE = 4
    INVALID_CONTENT = 5
    MISSING_ATTRIBUTE = 6
  end

  enum NormalizeMode : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    NFD = 0
    DEFAULT_COMPOSE = 1
    NFC = 1
    ALL = 2
    NFKD = 2
    ALL_COMPOSE = 3
    NFKC = 3
  end

  enum NumberParserError : UInt32
    ZERO_NONE = 0
    INVALID = 0
    OUT_OF_BOUNDS = 1
  end

  enum OnceStatus : UInt32
    ZERO_NONE = 0
    NOTCALLED = 0
    PROGRESS = 1
    READY = 2
  end

  enum OptionArg : UInt32
    ZERO_NONE = 0
    NONE = 0
    STRING = 1
    INT = 2
    CALLBACK = 3
    FILENAME = 4
    STRING_ARRAY = 5
    FILENAME_ARRAY = 6
    DOUBLE = 7
    INT64 = 8
  end

  enum OptionError : UInt32
    ZERO_NONE = 0
    UNKNOWN_OPTION = 0
    BAD_VALUE = 1
    FAILED = 2
  end

  enum RegexError : UInt32
    ZERO_NONE = 0
    COMPILE = 0
    OPTIMIZE = 1
    REPLACE = 2
    MATCH = 3
    INTERNAL = 4
    STRAY_BACKSLASH = 101
    MISSING_CONTROL_CHAR = 102
    UNRECOGNIZED_ESCAPE = 103
    QUANTIFIERS_OUT_OF_ORDER = 104
    QUANTIFIER_TOO_BIG = 105
    UNTERMINATED_CHARACTER_CLASS = 106
    INVALID_ESCAPE_IN_CHARACTER_CLASS = 107
    RANGE_OUT_OF_ORDER = 108
    NOTHING_TO_REPEAT = 109
    UNRECOGNIZED_CHARACTER = 112
    POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113
    UNMATCHED_PARENTHESIS = 114
    INEXISTENT_SUBPATTERN_REFERENCE = 115
    UNTERMINATED_COMMENT = 118
    EXPRESSION_TOO_LARGE = 120
    MEMORY_ERROR = 121
    VARIABLE_LENGTH_LOOKBEHIND = 125
    MALFORMED_CONDITION = 126
    TOO_MANY_CONDITIONAL_BRANCHES = 127
    ASSERTION_EXPECTED = 128
    UNKNOWN_POSIX_CLASS_NAME = 130
    POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131
    HEX_CODE_TOO_LARGE = 134
    INVALID_CONDITION = 135
    SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136
    INFINITE_LOOP = 140
    MISSING_SUBPATTERN_NAME_TERMINATOR = 142
    DUPLICATE_SUBPATTERN_NAME = 143
    MALFORMED_PROPERTY = 146
    UNKNOWN_PROPERTY = 147
    SUBPATTERN_NAME_TOO_LONG = 148
    TOO_MANY_SUBPATTERNS = 149
    INVALID_OCTAL_VALUE = 151
    TOO_MANY_BRANCHES_IN_DEFINE = 154
    DEFINE_REPETION = 155
    INCONSISTENT_NEWLINE_OPTIONS = 156
    MISSING_BACK_REFERENCE = 157
    INVALID_RELATIVE_REFERENCE = 158
    BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159
    UNKNOWN_BACKTRACKING_CONTROL_VERB = 160
    NUMBER_TOO_BIG = 161
    MISSING_SUBPATTERN_NAME = 162
    MISSING_DIGIT = 163
    INVALID_DATA_CHARACTER = 164
    EXTRA_SUBPATTERN_NAME = 165
    BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166
    INVALID_CONTROL_CHAR = 168
    MISSING_NAME = 169
    NOT_SUPPORTED_IN_CLASS = 171
    TOO_MANY_FORWARD_REFERENCES = 172
    NAME_TOO_LONG = 175
    CHARACTER_VALUE_TOO_LARGE = 176
  end

  enum SeekType : UInt32
    ZERO_NONE = 0
    CUR = 0
    SET = 1
    END = 2
  end

  enum ShellError : UInt32
    ZERO_NONE = 0
    BAD_QUOTING = 0
    EMPTY_STRING = 1
    FAILED = 2
  end

  enum SliceConfig : UInt32
    ZERO_NONE = 0
    ALWAYS_MALLOC = 1
    BYPASS_MAGAZINES = 2
    WORKING_SET_MSECS = 3
    COLOR_INCREMENT = 4
    CHUNK_SIZES = 5
    CONTENTION_COUNTER = 6
  end

  enum SpawnError : UInt32
    ZERO_NONE = 0
    FORK = 0
    READ = 1
    CHDIR = 2
    ACCES = 3
    PERM = 4
    TOO_BIG = 5
    # 2BIG = 5
    NOEXEC = 6
    NAMETOOLONG = 7
    NOENT = 8
    NOMEM = 9
    NOTDIR = 10
    LOOP = 11
    TXTBUSY = 12
    IO = 13
    NFILE = 14
    MFILE = 15
    INVAL = 16
    ISDIR = 17
    LIBBAD = 18
    FAILED = 19
  end

  enum TestFileType : UInt32
    ZERO_NONE = 0
    DIST = 0
    BUILT = 1
  end

  enum TestLogType : UInt32
    ZERO_NONE = 0
    NONE = 0
    ERROR = 1
    START_BINARY = 2
    LIST_CASE = 3
    SKIP_CASE = 4
    START_CASE = 5
    STOP_CASE = 6
    MIN_RESULT = 7
    MAX_RESULT = 8
    MESSAGE = 9
    START_SUITE = 10
    STOP_SUITE = 11
  end

  enum TestResult : UInt32
    ZERO_NONE = 0
    SUCCESS = 0
    SKIPPED = 1
    FAILURE = 2
    INCOMPLETE = 3
  end

  enum ThreadError : UInt32
    ZERO_NONE = 0
    THREAD_ERROR_AGAIN = 0
  end

  enum TimeType : UInt32
    ZERO_NONE = 0
    STANDARD = 0
    DAYLIGHT = 1
    UNIVERSAL = 2
  end

  enum TokenType : UInt32
    ZERO_NONE = 0
    EOF = 0
    LEFT_PAREN = 40
    RIGHT_PAREN = 41
    LEFT_CURLY = 123
    RIGHT_CURLY = 125
    LEFT_BRACE = 91
    RIGHT_BRACE = 93
    EQUAL_SIGN = 61
    COMMA = 44
    NONE = 256
    ERROR = 257
    CHAR = 258
    BINARY = 259
    OCTAL = 260
    INT = 261
    HEX = 262
    FLOAT = 263
    STRING = 264
    SYMBOL = 265
    IDENTIFIER = 266
    IDENTIFIER_NULL = 267
    COMMENT_SINGLE = 268
    COMMENT_MULTI = 269
  end

  enum TraverseType : UInt32
    ZERO_NONE = 0
    IN_ORDER = 0
    PRE_ORDER = 1
    POST_ORDER = 2
    LEVEL_ORDER = 3
  end

  enum UnicodeBreakType : UInt32
    ZERO_NONE = 0
    MANDATORY = 0
    CARRIAGE_RETURN = 1
    LINE_FEED = 2
    COMBINING_MARK = 3
    SURROGATE = 4
    ZERO_WIDTH_SPACE = 5
    INSEPARABLE = 6
    NON_BREAKING_GLUE = 7
    CONTINGENT = 8
    SPACE = 9
    AFTER = 10
    BEFORE = 11
    BEFORE_AND_AFTER = 12
    HYPHEN = 13
    NON_STARTER = 14
    OPEN_PUNCTUATION = 15
    CLOSE_PUNCTUATION = 16
    QUOTATION = 17
    EXCLAMATION = 18
    IDEOGRAPHIC = 19
    NUMERIC = 20
    INFIX_SEPARATOR = 21
    SYMBOL = 22
    ALPHABETIC = 23
    PREFIX = 24
    POSTFIX = 25
    COMPLEX_CONTEXT = 26
    AMBIGUOUS = 27
    UNKNOWN = 28
    NEXT_LINE = 29
    WORD_JOINER = 30
    HANGUL_L_JAMO = 31
    HANGUL_V_JAMO = 32
    HANGUL_T_JAMO = 33
    HANGUL_LV_SYLLABLE = 34
    HANGUL_LVT_SYLLABLE = 35
    CLOSE_PARANTHESIS = 36
    CONDITIONAL_JAPANESE_STARTER = 37
    HEBREW_LETTER = 38
    REGIONAL_INDICATOR = 39
    EMOJI_BASE = 40
    EMOJI_MODIFIER = 41
    ZERO_WIDTH_JOINER = 42
  end

  enum UnicodeScript : Int32
    ZERO_NONE = 0
    INVALID_CODE = -1
    COMMON = 0
    INHERITED = 1
    ARABIC = 2
    ARMENIAN = 3
    BENGALI = 4
    BOPOMOFO = 5
    CHEROKEE = 6
    COPTIC = 7
    CYRILLIC = 8
    DESERET = 9
    DEVANAGARI = 10
    ETHIOPIC = 11
    GEORGIAN = 12
    GOTHIC = 13
    GREEK = 14
    GUJARATI = 15
    GURMUKHI = 16
    HAN = 17
    HANGUL = 18
    HEBREW = 19
    HIRAGANA = 20
    KANNADA = 21
    KATAKANA = 22
    KHMER = 23
    LAO = 24
    LATIN = 25
    MALAYALAM = 26
    MONGOLIAN = 27
    MYANMAR = 28
    OGHAM = 29
    OLD_ITALIC = 30
    ORIYA = 31
    RUNIC = 32
    SINHALA = 33
    SYRIAC = 34
    TAMIL = 35
    TELUGU = 36
    THAANA = 37
    THAI = 38
    TIBETAN = 39
    CANADIAN_ABORIGINAL = 40
    YI = 41
    TAGALOG = 42
    HANUNOO = 43
    BUHID = 44
    TAGBANWA = 45
    BRAILLE = 46
    CYPRIOT = 47
    LIMBU = 48
    OSMANYA = 49
    SHAVIAN = 50
    LINEAR_B = 51
    TAI_LE = 52
    UGARITIC = 53
    NEW_TAI_LUE = 54
    BUGINESE = 55
    GLAGOLITIC = 56
    TIFINAGH = 57
    SYLOTI_NAGRI = 58
    OLD_PERSIAN = 59
    KHAROSHTHI = 60
    UNKNOWN = 61
    BALINESE = 62
    CUNEIFORM = 63
    PHOENICIAN = 64
    PHAGS_PA = 65
    NKO = 66
    KAYAH_LI = 67
    LEPCHA = 68
    REJANG = 69
    SUNDANESE = 70
    SAURASHTRA = 71
    CHAM = 72
    OL_CHIKI = 73
    VAI = 74
    CARIAN = 75
    LYCIAN = 76
    LYDIAN = 77
    AVESTAN = 78
    BAMUM = 79
    EGYPTIAN_HIEROGLYPHS = 80
    IMPERIAL_ARAMAIC = 81
    INSCRIPTIONAL_PAHLAVI = 82
    INSCRIPTIONAL_PARTHIAN = 83
    JAVANESE = 84
    KAITHI = 85
    LISU = 86
    MEETEI_MAYEK = 87
    OLD_SOUTH_ARABIAN = 88
    OLD_TURKIC = 89
    SAMARITAN = 90
    TAI_THAM = 91
    TAI_VIET = 92
    BATAK = 93
    BRAHMI = 94
    MANDAIC = 95
    CHAKMA = 96
    MEROITIC_CURSIVE = 97
    MEROITIC_HIEROGLYPHS = 98
    MIAO = 99
    SHARADA = 100
    SORA_SOMPENG = 101
    TAKRI = 102
    BASSA_VAH = 103
    CAUCASIAN_ALBANIAN = 104
    DUPLOYAN = 105
    ELBASAN = 106
    GRANTHA = 107
    KHOJKI = 108
    KHUDAWADI = 109
    LINEAR_A = 110
    MAHAJANI = 111
    MANICHAEAN = 112
    MENDE_KIKAKUI = 113
    MODI = 114
    MRO = 115
    NABATAEAN = 116
    OLD_NORTH_ARABIAN = 117
    OLD_PERMIC = 118
    PAHAWH_HMONG = 119
    PALMYRENE = 120
    PAU_CIN_HAU = 121
    PSALTER_PAHLAVI = 122
    SIDDHAM = 123
    TIRHUTA = 124
    WARANG_CITI = 125
    AHOM = 126
    ANATOLIAN_HIEROGLYPHS = 127
    HATRAN = 128
    MULTANI = 129
    OLD_HUNGARIAN = 130
    SIGNWRITING = 131
    ADLAM = 132
    BHAIKSUKI = 133
    MARCHEN = 134
    NEWA = 135
    OSAGE = 136
    TANGUT = 137
    MASARAM_GONDI = 138
    NUSHU = 139
    SOYOMBO = 140
    ZANABAZAR_SQUARE = 141
    DOGRA = 142
    GUNJALA_GONDI = 143
    HANIFI_ROHINGYA = 144
    MAKASAR = 145
    MEDEFAIDRIN = 146
    OLD_SOGDIAN = 147
    SOGDIAN = 148
  end

  enum UnicodeType : UInt32
    ZERO_NONE = 0
    CONTROL = 0
    FORMAT = 1
    UNASSIGNED = 2
    PRIVATE_USE = 3
    SURROGATE = 4
    LOWERCASE_LETTER = 5
    MODIFIER_LETTER = 6
    OTHER_LETTER = 7
    TITLECASE_LETTER = 8
    UPPERCASE_LETTER = 9
    SPACING_MARK = 10
    ENCLOSING_MARK = 11
    NON_SPACING_MARK = 12
    DECIMAL_NUMBER = 13
    LETTER_NUMBER = 14
    OTHER_NUMBER = 15
    CONNECT_PUNCTUATION = 16
    DASH_PUNCTUATION = 17
    CLOSE_PUNCTUATION = 18
    FINAL_PUNCTUATION = 19
    INITIAL_PUNCTUATION = 20
    OTHER_PUNCTUATION = 21
    OPEN_PUNCTUATION = 22
    CURRENCY_SYMBOL = 23
    MODIFIER_SYMBOL = 24
    MATH_SYMBOL = 25
    OTHER_SYMBOL = 26
    LINE_SEPARATOR = 27
    PARAGRAPH_SEPARATOR = 28
    SPACE_SEPARATOR = 29
  end

  enum UserDirectory : UInt32
    ZERO_NONE = 0
    DIRECTORY_DESKTOP = 0
    DIRECTORY_DOCUMENTS = 1
    DIRECTORY_DOWNLOAD = 2
    DIRECTORY_MUSIC = 3
    DIRECTORY_PICTURES = 4
    DIRECTORY_PUBLIC_SHARE = 5
    DIRECTORY_TEMPLATES = 6
    DIRECTORY_VIDEOS = 7
    N_DIRECTORIES = 8
  end

  enum VariantClass : UInt32
    ZERO_NONE = 0
    BOOLEAN = 98
    BYTE = 121
    INT16 = 110
    UINT16 = 113
    INT32 = 105
    UINT32 = 117
    INT64 = 120
    UINT64 = 116
    HANDLE = 104
    DOUBLE = 100
    STRING = 115
    OBJECT_PATH = 111
    SIGNATURE = 103
    VARIANT = 118
    MAYBE = 109
    ARRAY = 97
    TUPLE = 40
    DICT_ENTRY = 123
  end

  enum VariantParseError : UInt32
    ZERO_NONE = 0
    FAILED = 0
    BASIC_TYPE_EXPECTED = 1
    CANNOT_INFER_TYPE = 2
    DEFINITE_TYPE_EXPECTED = 3
    INPUT_NOT_AT_END = 4
    INVALID_CHARACTER = 5
    INVALID_FORMAT_STRING = 6
    INVALID_OBJECT_PATH = 7
    INVALID_SIGNATURE = 8
    INVALID_TYPE_STRING = 9
    NO_COMMON_TYPE = 10
    NUMBER_OUT_OF_RANGE = 11
    NUMBER_TOO_BIG = 12
    TYPE_ERROR = 13
    UNEXPECTED_TOKEN = 14
    UNKNOWN_KEYWORD = 15
    UNTERMINATED_STRING_CONSTANT = 16
    VALUE_EXPECTED = 17
  end


  ###########################################
  ##    Unions
  ###########################################

  union DoubleIEEE754
    v_double : Float64
  end

  union FloatIEEE754
    v_float : Float32
  end

  union Mutex
    p : Void*
    i : UInt32
  end
  fun mutex_clear = g_mutex_clear(this : Mutex*) : Void
  fun mutex_init = g_mutex_init(this : Mutex*) : Void
  fun mutex_lock = g_mutex_lock(this : Mutex*) : Void
  fun mutex_trylock = g_mutex_trylock(this : Mutex*) : Bool
  fun mutex_unlock = g_mutex_unlock(this : Mutex*) : Void

  union TokenValue
    v_symbol : Void*
    v_identifier : UInt8*
    v_binary : UInt64
    v_octal : UInt64
    v_int : UInt64
    v_int64 : UInt64
    v_float : Float64
    v_hex : UInt64
    v_string : UInt8*
    v_comment : UInt8*
    v_char : UInt8
    v_error : UInt32
  end


  ###########################################
  ##    Functions
  ###########################################

  fun access = g_access(filename : UInt8*, mode : Int32) : Int32
  fun ascii_digit_value = g_ascii_digit_value(c : Int8) : Int32
  fun ascii_dtostr = g_ascii_dtostr(buffer : UInt8*, buf_len : Int32, d : Float64) : UInt8*
  fun ascii_formatd = g_ascii_formatd(buffer : UInt8*, buf_len : Int32, format : UInt8*, d : Float64) : UInt8*
  fun ascii_strcasecmp = g_ascii_strcasecmp(s1 : UInt8*, s2 : UInt8*) : Int32
  fun ascii_strdown = g_ascii_strdown(str : UInt8*, len : Int64) : UInt8*
  fun ascii_string_to_signed = g_ascii_string_to_signed(str : UInt8*, base : UInt32, min : Int64, max : Int64, out_num : Int64*, error : LibGLib::Error**) : Bool
  fun ascii_string_to_unsigned = g_ascii_string_to_unsigned(str : UInt8*, base : UInt32, min : UInt64, max : UInt64, out_num : UInt64*, error : LibGLib::Error**) : Bool
  fun ascii_strncasecmp = g_ascii_strncasecmp(s1 : UInt8*, s2 : UInt8*, n : UInt64) : Int32
  fun ascii_strtod = g_ascii_strtod(nptr : UInt8*, endptr : UInt8**) : Float64
  fun ascii_strtoll = g_ascii_strtoll(nptr : UInt8*, endptr : UInt8**, base : UInt32) : Int64
  fun ascii_strtoull = g_ascii_strtoull(nptr : UInt8*, endptr : UInt8**, base : UInt32) : UInt64
  fun ascii_strup = g_ascii_strup(str : UInt8*, len : Int64) : UInt8*
  fun ascii_tolower = g_ascii_tolower(c : Int8) : Int8
  fun ascii_toupper = g_ascii_toupper(c : Int8) : Int8
  fun ascii_xdigit_value = g_ascii_xdigit_value(c : Int8) : Int32
  fun assert_warning = g_assert_warning(log_domain : UInt8*, file : UInt8*, line : Int32, pretty_function : UInt8*, expression : UInt8*) : Void
  fun assertion_message = g_assertion_message(domain : UInt8*, file : UInt8*, line : Int32, func : UInt8*, message : UInt8*) : Void
  fun assertion_message_cmpstr = g_assertion_message_cmpstr(domain : UInt8*, file : UInt8*, line : Int32, func : UInt8*, expr : UInt8*, arg1 : UInt8*, cmp : UInt8*, arg2 : UInt8*) : Void
  fun assertion_message_error = g_assertion_message_error(domain : UInt8*, file : UInt8*, line : Int32, func : UInt8*, expr : UInt8*, error : LibGLib::Error**, error_domain : UInt32, error_code : Int32) : Void
  fun atexit = g_atexit(func : LibGLib::VoidFunc) : Void
  fun atomic_int_add = g_atomic_int_add(atomic : Int32*, val : Int32) : Int32
  fun atomic_int_and = g_atomic_int_and(atomic : UInt32*, val : UInt32) : UInt32
  fun atomic_int_compare_and_exchange = g_atomic_int_compare_and_exchange(atomic : Int32*, oldval : Int32, newval : Int32) : Bool
  fun atomic_int_dec_and_test = g_atomic_int_dec_and_test(atomic : Int32*) : Bool
  fun atomic_int_exchange_and_add = g_atomic_int_exchange_and_add(atomic : Int32*, val : Int32) : Int32
  fun atomic_int_get = g_atomic_int_get(atomic : Int32*) : Int32
  fun atomic_int_inc = g_atomic_int_inc(atomic : Int32*) : Void
  fun atomic_int_or = g_atomic_int_or(atomic : UInt32*, val : UInt32) : UInt32
  fun atomic_int_set = g_atomic_int_set(atomic : Int32*, newval : Int32) : Void
  fun atomic_int_xor = g_atomic_int_xor(atomic : UInt32*, val : UInt32) : UInt32
  fun atomic_pointer_add = g_atomic_pointer_add(atomic : Void*, val : Int64) : Int64
  fun atomic_pointer_and = g_atomic_pointer_and(atomic : Void*, val : UInt64) : UInt64
  fun atomic_pointer_compare_and_exchange = g_atomic_pointer_compare_and_exchange(atomic : Void*, oldval : Void*, newval : Void*) : Bool
  fun atomic_pointer_get = g_atomic_pointer_get(atomic : Void*) : Void*
  fun atomic_pointer_or = g_atomic_pointer_or(atomic : Void*, val : UInt64) : UInt64
  fun atomic_pointer_set = g_atomic_pointer_set(atomic : Void*, newval : Void*) : Void
  fun atomic_pointer_xor = g_atomic_pointer_xor(atomic : Void*, val : UInt64) : UInt64
  fun atomic_rc_box_acquire = g_atomic_rc_box_acquire(mem_block : Void*) : Void*
  fun atomic_rc_box_alloc = g_atomic_rc_box_alloc(block_size : UInt64) : Void*
  fun atomic_rc_box_alloc0 = g_atomic_rc_box_alloc0(block_size : UInt64) : Void*
  fun atomic_rc_box_dup = g_atomic_rc_box_dup(block_size : UInt64, mem_block : Void*) : Void*
  fun atomic_rc_box_get_size = g_atomic_rc_box_get_size(mem_block : Void*) : UInt64
  fun atomic_rc_box_release = g_atomic_rc_box_release(mem_block : Void*) : Void
  fun atomic_rc_box_release_full = g_atomic_rc_box_release_full(mem_block : Void*, clear_func : LibGLib::DestroyNotify) : Void
  fun base64_decode = g_base64_decode(text : UInt8*, out_len : UInt64*) : UInt8*
  fun base64_decode_inplace = g_base64_decode_inplace(text : UInt8**, out_len : UInt64*) : UInt8*
  fun base64_encode = g_base64_encode(data : UInt8*, len : UInt64) : UInt8*
  fun base64_encode_close = g_base64_encode_close(break_lines : Bool, _out : UInt8**, state : Int32*, save : Int32*) : UInt64
  fun base64_encode_step = g_base64_encode_step(in : UInt8*, len : UInt64, break_lines : Bool, _out : UInt8**, state : Int32*, save : Int32*) : UInt64
  fun basename = g_basename(file_name : UInt8*) : UInt8*
  fun bit_lock = g_bit_lock(address : Int32*, lock_bit : Int32) : Void
  fun bit_nth_lsf = g_bit_nth_lsf(mask : UInt64, nth_bit : Int32) : Int32
  fun bit_nth_msf = g_bit_nth_msf(mask : UInt64, nth_bit : Int32) : Int32
  fun bit_storage = g_bit_storage(number : UInt64) : UInt32
  fun bit_trylock = g_bit_trylock(address : Int32*, lock_bit : Int32) : Bool
  fun bit_unlock = g_bit_unlock(address : Int32*, lock_bit : Int32) : Void
  fun bookmark_file_error_quark = g_bookmark_file_error_quark() : UInt32
  fun build_filenamev = g_build_filenamev(args : UInt8**) : UInt8*
  fun build_pathv = g_build_pathv(separator : UInt8*, args : UInt8**) : UInt8*
  fun byte_array_free = g_byte_array_free(array : Void*, free_segment : Bool) : UInt8*
  fun byte_array_free_to_bytes = g_byte_array_free_to_bytes(array : Void*) : LibGLib::Bytes*
  fun byte_array_new = g_byte_array_new() : Void*
  fun byte_array_new_take = g_byte_array_new_take(data : UInt8*, len : UInt64) : Void*
  fun byte_array_unref = g_byte_array_unref(array : Void*) : Void
  fun canonicalize_filename = g_canonicalize_filename(filename : UInt8*, relative_to : UInt8*) : UInt8*
  fun chdir = g_chdir(path : UInt8*) : Int32
  fun check_version = glib_check_version(required_major : UInt32, required_minor : UInt32, required_micro : UInt32) : UInt8*
  fun checksum_type_get_length = g_checksum_type_get_length(checksum_type : LibGLib::ChecksumType) : Int64
  fun child_watch_add = g_child_watch_add_full(priority : Int32, pid : Int32, function : LibGLib::ChildWatchFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun child_watch_source_new = g_child_watch_source_new(pid : Int32) : LibGLib::Source*
  fun clear_error = g_clear_error(error : LibGLib::Error**) : Void
  fun close = g_close(fd : Int32, error : LibGLib::Error**) : Bool
  fun compute_checksum_for_bytes = g_compute_checksum_for_bytes(checksum_type : LibGLib::ChecksumType, data : LibGLib::Bytes*) : UInt8*
  fun compute_checksum_for_data = g_compute_checksum_for_data(checksum_type : LibGLib::ChecksumType, data : UInt8*, length : UInt64) : UInt8*
  fun compute_checksum_for_string = g_compute_checksum_for_string(checksum_type : LibGLib::ChecksumType, str : UInt8*, length : Int64) : UInt8*
  fun compute_hmac_for_bytes = g_compute_hmac_for_bytes(digest_type : LibGLib::ChecksumType, key : LibGLib::Bytes*, data : LibGLib::Bytes*) : UInt8*
  fun compute_hmac_for_data = g_compute_hmac_for_data(digest_type : LibGLib::ChecksumType, key : UInt8*, key_len : UInt64, data : UInt8*, length : UInt64) : UInt8*
  fun compute_hmac_for_string = g_compute_hmac_for_string(digest_type : LibGLib::ChecksumType, key : UInt8*, key_len : UInt64, str : UInt8*, length : Int64) : UInt8*
  fun convert = g_convert(str : UInt8*, len : Int64, to_codeset : UInt8*, from_codeset : UInt8*, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : UInt8*
  fun convert_error_quark = g_convert_error_quark() : UInt32
  fun convert_with_fallback = g_convert_with_fallback(str : UInt8*, len : Int64, to_codeset : UInt8*, from_codeset : UInt8*, fallback : UInt8*, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : UInt8*
  fun datalist_foreach = g_datalist_foreach(datalist : LibGLib::Data*, func : LibGLib::DataForeachFunc, user_data : Void*) : Void
  fun datalist_get_data = g_datalist_get_data(datalist : LibGLib::Data*, key : UInt8*) : Void*
  fun datalist_get_flags = g_datalist_get_flags(datalist : LibGLib::Data*) : UInt32
  fun datalist_id_get_data = g_datalist_id_get_data(datalist : LibGLib::Data*, key_id : UInt32) : Void*
  fun datalist_set_flags = g_datalist_set_flags(datalist : LibGLib::Data*, flags : UInt32) : Void
  fun datalist_unset_flags = g_datalist_unset_flags(datalist : LibGLib::Data*, flags : UInt32) : Void
  fun dataset_destroy = g_dataset_destroy(dataset_location : Void*) : Void
  fun dataset_foreach = g_dataset_foreach(dataset_location : Void*, func : LibGLib::DataForeachFunc, user_data : Void*) : Void
  fun dataset_id_get_data = g_dataset_id_get_data(dataset_location : Void*, key_id : UInt32) : Void*
  fun date_get_days_in_month = g_date_get_days_in_month(month : LibGLib::DateMonth, year : UInt16) : UInt8
  fun date_get_monday_weeks_in_year = g_date_get_monday_weeks_in_year(year : UInt16) : UInt8
  fun date_get_sunday_weeks_in_year = g_date_get_sunday_weeks_in_year(year : UInt16) : UInt8
  fun date_is_leap_year = g_date_is_leap_year(year : UInt16) : Bool
  fun date_strftime = g_date_strftime(s : UInt8*, slen : UInt64, format : UInt8*, date : LibGLib::Date*) : UInt64
  fun date_time_compare = g_date_time_compare(dt1 : Void*, dt2 : Void*) : Int32
  fun date_time_equal = g_date_time_equal(dt1 : Void*, dt2 : Void*) : Bool
  fun date_time_hash = g_date_time_hash(datetime : Void*) : UInt32
  fun date_valid_day = g_date_valid_day(day : UInt8) : Bool
  fun date_valid_dmy = g_date_valid_dmy(day : UInt8, month : LibGLib::DateMonth, year : UInt16) : Bool
  fun date_valid_julian = g_date_valid_julian(julian_date : UInt32) : Bool
  fun date_valid_month = g_date_valid_month(month : LibGLib::DateMonth) : Bool
  fun date_valid_weekday = g_date_valid_weekday(weekday : LibGLib::DateWeekday) : Bool
  fun date_valid_year = g_date_valid_year(year : UInt16) : Bool
  fun dcgettext = g_dcgettext(domain : UInt8*, msgid : UInt8*, category : Int32) : UInt8*
  fun dgettext = g_dgettext(domain : UInt8*, msgid : UInt8*) : UInt8*
  fun dir_make_tmp = g_dir_make_tmp(tmpl : UInt8*, error : LibGLib::Error**) : UInt8*
  fun direct_equal = g_direct_equal(v1 : Void*, v2 : Void*) : Bool
  fun direct_hash = g_direct_hash(v : Void*) : UInt32
  fun dngettext = g_dngettext(domain : UInt8*, msgid : UInt8*, msgid_plural : UInt8*, n : UInt64) : UInt8*
  fun double_equal = g_double_equal(v1 : Void*, v2 : Void*) : Bool
  fun double_hash = g_double_hash(v : Void*) : UInt32
  fun dpgettext = g_dpgettext(domain : UInt8*, msgctxtid : UInt8*, msgidoffset : UInt64) : UInt8*
  fun dpgettext2 = g_dpgettext2(domain : UInt8*, context : UInt8*, msgid : UInt8*) : UInt8*
  fun environ_getenv = g_environ_getenv(envp : UInt8**, variable : UInt8*) : UInt8*
  fun environ_setenv = g_environ_setenv(envp : UInt8**, variable : UInt8*, value : UInt8*, overwrite : Bool) : UInt8**
  fun environ_unsetenv = g_environ_unsetenv(envp : UInt8**, variable : UInt8*) : UInt8**
  fun file_error_from_errno = g_file_error_from_errno(err_no : Int32) : LibGLib::FileError
  fun file_error_quark = g_file_error_quark() : UInt32
  fun file_get_contents = g_file_get_contents(filename : UInt8*, contents : UInt8**, length : UInt64*, error : LibGLib::Error**) : Bool
  fun file_open_tmp = g_file_open_tmp(tmpl : UInt8*, name_used : UInt8**, error : LibGLib::Error**) : Int32
  fun file_read_link = g_file_read_link(filename : UInt8*, error : LibGLib::Error**) : UInt8*
  fun file_set_contents = g_file_set_contents(filename : UInt8*, contents : UInt8*, length : Int64, error : LibGLib::Error**) : Bool
  fun file_test = g_file_test(filename : UInt8*, test : LibGLib::FileTest) : Bool
  fun filename_display_basename = g_filename_display_basename(filename : UInt8*) : UInt8*
  fun filename_display_name = g_filename_display_name(filename : UInt8*) : UInt8*
  fun filename_from_uri = g_filename_from_uri(uri : UInt8*, hostname : UInt8**, error : LibGLib::Error**) : UInt8*
  fun filename_from_utf8 = g_filename_from_utf8(utf8string : UInt8*, len : Int64, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : UInt8*
  fun filename_to_uri = g_filename_to_uri(filename : UInt8*, hostname : UInt8*, error : LibGLib::Error**) : UInt8*
  fun filename_to_utf8 = g_filename_to_utf8(opsysstring : UInt8*, len : Int64, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : UInt8*
  fun find_program_in_path = g_find_program_in_path(program : UInt8*) : UInt8*
  fun format_size = g_format_size(size : UInt64) : UInt8*
  fun format_size_for_display = g_format_size_for_display(size : Int64) : UInt8*
  fun format_size_full = g_format_size_full(size : UInt64, flags : LibGLib::FormatSizeFlags) : UInt8*
  fun free = g_free(mem : Void*) : Void
  fun get_application_name = g_get_application_name() : UInt8*
  fun get_charset = g_get_charset(charset : UInt8**) : Bool
  fun get_codeset = g_get_codeset() : UInt8*
  fun get_current_dir = g_get_current_dir() : UInt8*
  fun get_current_time = g_get_current_time(result : LibGLib::TimeVal*) : Void
  fun get_environ = g_get_environ() : UInt8**
  fun get_filename_charsets = g_get_filename_charsets(filename_charsets : UInt8***) : Bool
  fun get_home_dir = g_get_home_dir() : UInt8*
  fun get_host_name = g_get_host_name() : UInt8*
  fun get_language_names = g_get_language_names() : UInt8**
  fun get_language_names_with_category = g_get_language_names_with_category(category_name : UInt8*) : UInt8**
  fun get_locale_variants = g_get_locale_variants(locale : UInt8*) : UInt8**
  fun get_monotonic_time = g_get_monotonic_time() : Int64
  fun get_num_processors = g_get_num_processors() : UInt32
  fun get_prgname = g_get_prgname() : UInt8*
  fun get_real_name = g_get_real_name() : UInt8*
  fun get_real_time = g_get_real_time() : Int64
  fun get_system_config_dirs = g_get_system_config_dirs() : UInt8**
  fun get_system_data_dirs = g_get_system_data_dirs() : UInt8**
  fun get_tmp_dir = g_get_tmp_dir() : UInt8*
  fun get_user_cache_dir = g_get_user_cache_dir() : UInt8*
  fun get_user_config_dir = g_get_user_config_dir() : UInt8*
  fun get_user_data_dir = g_get_user_data_dir() : UInt8*
  fun get_user_name = g_get_user_name() : UInt8*
  fun get_user_runtime_dir = g_get_user_runtime_dir() : UInt8*
  fun get_user_special_dir = g_get_user_special_dir(directory : LibGLib::UserDirectory) : UInt8*
  fun getenv = g_getenv(variable : UInt8*) : UInt8*
  fun hash_table_add = g_hash_table_add(hash_table : Void**, key : Void*) : Bool
  fun hash_table_contains = g_hash_table_contains(hash_table : Void**, key : Void*) : Bool
  fun hash_table_destroy = g_hash_table_destroy(hash_table : Void**) : Void
  fun hash_table_insert = g_hash_table_insert(hash_table : Void**, key : Void*, value : Void*) : Bool
  fun hash_table_lookup = g_hash_table_lookup(hash_table : Void**, key : Void*) : Void*
  fun hash_table_lookup_extended = g_hash_table_lookup_extended(hash_table : Void**, lookup_key : Void*, orig_key : Void**, value : Void**) : Bool
  fun hash_table_remove = g_hash_table_remove(hash_table : Void**, key : Void*) : Bool
  fun hash_table_remove_all = g_hash_table_remove_all(hash_table : Void**) : Void
  fun hash_table_replace = g_hash_table_replace(hash_table : Void**, key : Void*, value : Void*) : Bool
  fun hash_table_size = g_hash_table_size(hash_table : Void**) : UInt32
  fun hash_table_steal = g_hash_table_steal(hash_table : Void**, key : Void*) : Bool
  fun hash_table_steal_all = g_hash_table_steal_all(hash_table : Void**) : Void
  fun hash_table_steal_extended = g_hash_table_steal_extended(hash_table : Void**, lookup_key : Void*, stolen_key : Void**, stolen_value : Void**) : Bool
  fun hash_table_unref = g_hash_table_unref(hash_table : Void**) : Void
  fun hook_destroy = g_hook_destroy(hook_list : LibGLib::HookList*, hook_id : UInt64) : Bool
  fun hook_destroy_link = g_hook_destroy_link(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hook_free = g_hook_free(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hook_insert_before = g_hook_insert_before(hook_list : LibGLib::HookList*, sibling : LibGLib::Hook*, hook : LibGLib::Hook*) : Void
  fun hook_prepend = g_hook_prepend(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hook_unref = g_hook_unref(hook_list : LibGLib::HookList*, hook : LibGLib::Hook*) : Void
  fun hostname_is_ascii_encoded = g_hostname_is_ascii_encoded(hostname : UInt8*) : Bool
  fun hostname_is_ip_address = g_hostname_is_ip_address(hostname : UInt8*) : Bool
  fun hostname_is_non_ascii = g_hostname_is_non_ascii(hostname : UInt8*) : Bool
  fun hostname_to_ascii = g_hostname_to_ascii(hostname : UInt8*) : UInt8*
  fun hostname_to_unicode = g_hostname_to_unicode(hostname : UInt8*) : UInt8*
  fun idle_add = g_idle_add_full(priority : Int32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun idle_remove_by_data = g_idle_remove_by_data(data : Void*) : Bool
  fun idle_source_new = g_idle_source_new() : LibGLib::Source*
  fun int64_equal = g_int64_equal(v1 : Void*, v2 : Void*) : Bool
  fun int64_hash = g_int64_hash(v : Void*) : UInt32
  fun int_equal = g_int_equal(v1 : Void*, v2 : Void*) : Bool
  fun int_hash = g_int_hash(v : Void*) : UInt32
  fun intern_static_string = g_intern_static_string(string : UInt8*) : UInt8*
  fun intern_string = g_intern_string(string : UInt8*) : UInt8*
  fun io_add_watch = g_io_add_watch_full(channel : LibGLib::IOChannel*, priority : Int32, condition : LibGLib::IOCondition, func : LibGLib::IOFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun io_channel_error_from_errno = g_io_channel_error_from_errno(en : Int32) : LibGLib::IOChannelError
  fun io_channel_error_quark = g_io_channel_error_quark() : UInt32
  fun io_create_watch = g_io_create_watch(channel : LibGLib::IOChannel*, condition : LibGLib::IOCondition) : LibGLib::Source*
  fun key_file_error_quark = g_key_file_error_quark() : UInt32
  fun listenv = g_listenv() : UInt8**
  fun locale_from_utf8 = g_locale_from_utf8(utf8string : UInt8*, len : Int64, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : UInt8*
  fun locale_to_utf8 = g_locale_to_utf8(opsysstring : UInt8*, len : Int64, bytes_read : UInt64*, bytes_written : UInt64*, error : LibGLib::Error**) : UInt8*
  fun log_default_handler = g_log_default_handler(log_domain : UInt8*, log_level : LibGLib::LogLevelFlags, message : UInt8*, unused_data : Void*) : Void
  fun log_remove_handler = g_log_remove_handler(log_domain : UInt8*, handler_id : UInt32) : Void
  fun log_set_always_fatal = g_log_set_always_fatal(fatal_mask : LibGLib::LogLevelFlags) : LibGLib::LogLevelFlags
  fun log_set_fatal_mask = g_log_set_fatal_mask(log_domain : UInt8*, fatal_mask : LibGLib::LogLevelFlags) : LibGLib::LogLevelFlags
  fun log_set_handler = g_log_set_handler_full(log_domain : UInt8*, log_levels : LibGLib::LogLevelFlags, log_func : LibGLib::LogFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : UInt32
  fun log_set_writer_func = g_log_set_writer_func(func : LibGLib::LogWriterFunc, user_data : Void*, user_data_free : LibGLib::DestroyNotify) : Void
  fun log_structured_array = g_log_structured_array(log_level : LibGLib::LogLevelFlags, fields : LibGLib::LogField*, n_fields : UInt64) : Void
  fun log_variant = g_log_variant(log_domain : UInt8*, log_level : LibGLib::LogLevelFlags, fields : LibGLib::Variant*) : Void
  fun log_writer_default = g_log_writer_default(log_level : LibGLib::LogLevelFlags, fields : LibGLib::LogField*, n_fields : UInt64, user_data : Void*) : LibGLib::LogWriterOutput
  fun log_writer_format_fields = g_log_writer_format_fields(log_level : LibGLib::LogLevelFlags, fields : LibGLib::LogField*, n_fields : UInt64, use_color : Bool) : UInt8*
  fun log_writer_is_journald = g_log_writer_is_journald(output_fd : Int32) : Bool
  fun log_writer_journald = g_log_writer_journald(log_level : LibGLib::LogLevelFlags, fields : LibGLib::LogField*, n_fields : UInt64, user_data : Void*) : LibGLib::LogWriterOutput
  fun log_writer_standard_streams = g_log_writer_standard_streams(log_level : LibGLib::LogLevelFlags, fields : LibGLib::LogField*, n_fields : UInt64, user_data : Void*) : LibGLib::LogWriterOutput
  fun log_writer_supports_color = g_log_writer_supports_color(output_fd : Int32) : Bool
  fun main_context_default = g_main_context_default() : LibGLib::MainContext*
  fun main_context_get_thread_default = g_main_context_get_thread_default() : LibGLib::MainContext*
  fun main_context_ref_thread_default = g_main_context_ref_thread_default() : LibGLib::MainContext*
  fun main_current_source = g_main_current_source() : LibGLib::Source*
  fun main_depth = g_main_depth() : Int32
  fun malloc = g_malloc(n_bytes : UInt64) : Void*
  fun malloc0 = g_malloc0(n_bytes : UInt64) : Void*
  fun malloc0_n = g_malloc0_n(n_blocks : UInt64, n_block_bytes : UInt64) : Void*
  fun malloc_n = g_malloc_n(n_blocks : UInt64, n_block_bytes : UInt64) : Void*
  fun markup_error_quark = g_markup_error_quark() : UInt32
  fun markup_escape_text = g_markup_escape_text(text : UInt8*, length : Int64) : UInt8*
  fun mem_is_system_malloc = g_mem_is_system_malloc() : Bool
  fun mem_profile = g_mem_profile() : Void
  fun mem_set_vtable = g_mem_set_vtable(vtable : LibGLib::MemVTable*) : Void
  fun memdup = g_memdup(mem : Void*, byte_size : UInt32) : Void*
  fun mkdir_with_parents = g_mkdir_with_parents(pathname : UInt8*, mode : Int32) : Int32
  fun nullify_pointer = g_nullify_pointer(nullify_location : Void*) : Void
  fun number_parser_error_quark = g_number_parser_error_quark() : UInt32
  fun on_error_query = g_on_error_query(prg_name : UInt8*) : Void
  fun on_error_stack_trace = g_on_error_stack_trace(prg_name : UInt8*) : Void
  fun once_init_enter = g_once_init_enter(location : Void*) : Bool
  fun once_init_leave = g_once_init_leave(location : Void*, result : UInt64) : Void
  fun option_error_quark = g_option_error_quark() : UInt32
  fun parse_debug_string = g_parse_debug_string(string : UInt8*, keys : LibGLib::DebugKey*, nkeys : UInt32) : UInt32
  fun path_get_basename = g_path_get_basename(file_name : UInt8*) : UInt8*
  fun path_get_dirname = g_path_get_dirname(file_name : UInt8*) : UInt8*
  fun path_is_absolute = g_path_is_absolute(file_name : UInt8*) : Bool
  fun path_skip_root = g_path_skip_root(file_name : UInt8*) : UInt8*
  fun pattern_match = g_pattern_match(pspec : LibGLib::PatternSpec*, string_length : UInt32, string : UInt8*, string_reversed : UInt8*) : Bool
  fun pattern_match_simple = g_pattern_match_simple(pattern : UInt8*, string : UInt8*) : Bool
  fun pattern_match_string = g_pattern_match_string(pspec : LibGLib::PatternSpec*, string : UInt8*) : Bool
  fun pointer_bit_lock = g_pointer_bit_lock(address : Void*, lock_bit : Int32) : Void
  fun pointer_bit_trylock = g_pointer_bit_trylock(address : Void*, lock_bit : Int32) : Bool
  fun pointer_bit_unlock = g_pointer_bit_unlock(address : Void*, lock_bit : Int32) : Void
  fun poll = g_poll(fds : LibGLib::PollFD*, nfds : UInt32, timeout : Int32) : Int32
  fun propagate_error = g_propagate_error(dest : LibGLib::Error***, src : LibGLib::Error**) : Void
  fun quark_from_static_string = g_quark_from_static_string(string : UInt8*) : UInt32
  fun quark_from_string = g_quark_from_string(string : UInt8*) : UInt32
  fun quark_to_string = g_quark_to_string(quark : UInt32) : UInt8*
  fun quark_try_string = g_quark_try_string(string : UInt8*) : UInt32
  fun random_double = g_random_double() : Float64
  fun random_double_range = g_random_double_range(_begin : Float64, _end : Float64) : Float64
  fun random_int = g_random_int() : UInt32
  fun random_int_range = g_random_int_range(_begin : Int32, _end : Int32) : Int32
  fun random_set_seed = g_random_set_seed(seed : UInt32) : Void
  fun rc_box_acquire = g_rc_box_acquire(mem_block : Void*) : Void*
  fun rc_box_alloc = g_rc_box_alloc(block_size : UInt64) : Void*
  fun rc_box_alloc0 = g_rc_box_alloc0(block_size : UInt64) : Void*
  fun rc_box_dup = g_rc_box_dup(block_size : UInt64, mem_block : Void*) : Void*
  fun rc_box_get_size = g_rc_box_get_size(mem_block : Void*) : UInt64
  fun rc_box_release = g_rc_box_release(mem_block : Void*) : Void
  fun rc_box_release_full = g_rc_box_release_full(mem_block : Void*, clear_func : LibGLib::DestroyNotify) : Void
  fun realloc = g_realloc(mem : Void*, n_bytes : UInt64) : Void*
  fun realloc_n = g_realloc_n(mem : Void*, n_blocks : UInt64, n_block_bytes : UInt64) : Void*
  fun ref_string_acquire = g_ref_string_acquire(str : UInt8*) : UInt8*
  fun ref_string_length = g_ref_string_length(str : UInt8*) : UInt64
  fun ref_string_new = g_ref_string_new(str : UInt8*) : UInt8*
  fun ref_string_new_intern = g_ref_string_new_intern(str : UInt8*) : UInt8*
  fun ref_string_new_len = g_ref_string_new_len(str : UInt8*, len : Int64) : UInt8*
  fun ref_string_release = g_ref_string_release(str : UInt8*) : Void
  fun regex_check_replacement = g_regex_check_replacement(replacement : UInt8*, has_references : Bool*, error : LibGLib::Error**) : Bool
  fun regex_error_quark = g_regex_error_quark() : UInt32
  fun regex_escape_nul = g_regex_escape_nul(string : UInt8*, length : Int32) : UInt8*
  fun regex_escape_string = g_regex_escape_string(string : UInt8**, length : Int32) : UInt8*
  fun regex_match_simple = g_regex_match_simple(pattern : UInt8*, string : UInt8*, compile_options : LibGLib::RegexCompileFlags, match_options : LibGLib::RegexMatchFlags) : Bool
  fun regex_split_simple = g_regex_split_simple(pattern : UInt8*, string : UInt8*, compile_options : LibGLib::RegexCompileFlags, match_options : LibGLib::RegexMatchFlags) : UInt8**
  fun reload_user_special_dirs_cache = g_reload_user_special_dirs_cache() : Void
  fun rmdir = g_rmdir(filename : UInt8*) : Int32
  fun sequence_get = g_sequence_get(iter : LibGLib::SequenceIter*) : Void*
  fun sequence_insert_before = g_sequence_insert_before(iter : LibGLib::SequenceIter*, data : Void*) : LibGLib::SequenceIter*
  fun sequence_move = g_sequence_move(src : LibGLib::SequenceIter*, dest : LibGLib::SequenceIter*) : Void
  fun sequence_move_range = g_sequence_move_range(dest : LibGLib::SequenceIter*, _begin : LibGLib::SequenceIter*, _end : LibGLib::SequenceIter*) : Void
  fun sequence_range_get_midpoint = g_sequence_range_get_midpoint(_begin : LibGLib::SequenceIter*, _end : LibGLib::SequenceIter*) : LibGLib::SequenceIter*
  fun sequence_remove = g_sequence_remove(iter : LibGLib::SequenceIter*) : Void
  fun sequence_remove_range = g_sequence_remove_range(_begin : LibGLib::SequenceIter*, _end : LibGLib::SequenceIter*) : Void
  fun sequence_set = g_sequence_set(iter : LibGLib::SequenceIter*, data : Void*) : Void
  fun sequence_swap = g_sequence_swap(a : LibGLib::SequenceIter*, b : LibGLib::SequenceIter*) : Void
  fun set_application_name = g_set_application_name(application_name : UInt8*) : Void
  fun set_error_literal = g_set_error_literal(err : LibGLib::Error***, domain : UInt32, code : Int32, message : UInt8*) : Void
  fun set_prgname = g_set_prgname(prgname : UInt8*) : Void
  fun setenv = g_setenv(variable : UInt8*, value : UInt8*, overwrite : Bool) : Bool
  fun shell_error_quark = g_shell_error_quark() : UInt32
  fun shell_parse_argv = g_shell_parse_argv(command_line : UInt8*, argcp : Int32*, argvp : UInt8***, error : LibGLib::Error**) : Bool
  fun shell_quote = g_shell_quote(unquoted_string : UInt8*) : UInt8*
  fun shell_unquote = g_shell_unquote(quoted_string : UInt8*, error : LibGLib::Error**) : UInt8*
  fun slice_alloc = g_slice_alloc(block_size : UInt64) : Void*
  fun slice_alloc0 = g_slice_alloc0(block_size : UInt64) : Void*
  fun slice_copy = g_slice_copy(block_size : UInt64, mem_block : Void*) : Void*
  fun slice_free1 = g_slice_free1(block_size : UInt64, mem_block : Void*) : Void
  fun slice_free_chain_with_offset = g_slice_free_chain_with_offset(block_size : UInt64, mem_chain : Void*, next_offset : UInt64) : Void
  fun slice_get_config = g_slice_get_config(ckey : LibGLib::SliceConfig) : Int64
  fun slice_get_config_state = g_slice_get_config_state(ckey : LibGLib::SliceConfig, address : Int64, n_values : UInt32*) : Int64*
  fun slice_set_config = g_slice_set_config(ckey : LibGLib::SliceConfig, value : Int64) : Void
  fun source_remove = g_source_remove(tag : UInt32) : Bool
  fun source_remove_by_funcs_user_data = g_source_remove_by_funcs_user_data(funcs : LibGLib::SourceFuncs*, user_data : Void*) : Bool
  fun source_remove_by_user_data = g_source_remove_by_user_data(user_data : Void*) : Bool
  fun source_set_name_by_id = g_source_set_name_by_id(tag : UInt32, name : UInt8*) : Void
  fun spaced_primes_closest = g_spaced_primes_closest(num : UInt32) : UInt32
  fun spawn_async = g_spawn_async(working_directory : UInt8*, argv : UInt8**, envp : UInt8**, flags : LibGLib::SpawnFlags, child_setup : LibGLib::SpawnChildSetupFunc, user_data : Void*, child_pid : Int32*, error : LibGLib::Error**) : Bool
  fun spawn_async_with_fds = g_spawn_async_with_fds(working_directory : UInt8*, argv : UInt8**, envp : UInt8**, flags : LibGLib::SpawnFlags, child_setup : LibGLib::SpawnChildSetupFunc, user_data : Void*, child_pid : Int32*, stdin_fd : Int32, stdout_fd : Int32, stderr_fd : Int32, error : LibGLib::Error**) : Bool
  fun spawn_async_with_pipes = g_spawn_async_with_pipes(working_directory : UInt8*, argv : UInt8**, envp : UInt8**, flags : LibGLib::SpawnFlags, child_setup : LibGLib::SpawnChildSetupFunc, user_data : Void*, child_pid : Int32*, standard_input : Int32*, standard_output : Int32*, standard_error : Int32*, error : LibGLib::Error**) : Bool
  fun spawn_check_exit_status = g_spawn_check_exit_status(exit_status : Int32, error : LibGLib::Error**) : Bool
  fun spawn_close_pid = g_spawn_close_pid(pid : Int32) : Void
  fun spawn_command_line_async = g_spawn_command_line_async(command_line : UInt8*, error : LibGLib::Error**) : Bool
  fun spawn_command_line_sync = g_spawn_command_line_sync(command_line : UInt8*, standard_output : UInt8**, standard_error : UInt8**, exit_status : Int32*, error : LibGLib::Error**) : Bool
  fun spawn_error_quark = g_spawn_error_quark() : UInt32
  fun spawn_exit_error_quark = g_spawn_exit_error_quark() : UInt32
  fun spawn_sync = g_spawn_sync(working_directory : UInt8*, argv : UInt8**, envp : UInt8**, flags : LibGLib::SpawnFlags, child_setup : LibGLib::SpawnChildSetupFunc, user_data : Void*, standard_output : UInt8**, standard_error : UInt8**, exit_status : Int32*, error : LibGLib::Error**) : Bool
  fun stpcpy = g_stpcpy(dest : UInt8*, src : UInt8*) : UInt8*
  fun str_equal = g_str_equal(v1 : Void*, v2 : Void*) : Bool
  fun str_has_prefix = g_str_has_prefix(str : UInt8*, prefix : UInt8*) : Bool
  fun str_has_suffix = g_str_has_suffix(str : UInt8*, suffix : UInt8*) : Bool
  fun str_hash = g_str_hash(v : Void*) : UInt32
  fun str_is_ascii = g_str_is_ascii(str : UInt8*) : Bool
  fun str_match_string = g_str_match_string(search_term : UInt8*, potential_hit : UInt8*, accept_alternates : Bool) : Bool
  fun str_to_ascii = g_str_to_ascii(str : UInt8*, from_locale : UInt8*) : UInt8*
  fun str_tokenize_and_fold = g_str_tokenize_and_fold(string : UInt8*, translit_locale : UInt8*, ascii_alternates : UInt8***) : UInt8**
  fun strcanon = g_strcanon(string : UInt8*, valid_chars : UInt8*, substitutor : Int8) : UInt8*
  fun strcasecmp = g_strcasecmp(s1 : UInt8*, s2 : UInt8*) : Int32
  fun strchomp = g_strchomp(string : UInt8*) : UInt8*
  fun strchug = g_strchug(string : UInt8*) : UInt8*
  fun strcmp0 = g_strcmp0(str1 : UInt8*, str2 : UInt8*) : Int32
  fun strcompress = g_strcompress(source : UInt8*) : UInt8*
  fun strdelimit = g_strdelimit(string : UInt8*, delimiters : UInt8*, new_delimiter : Int8) : UInt8*
  fun strdown = g_strdown(string : UInt8*) : UInt8*
  fun strdup = g_strdup(str : UInt8*) : UInt8*
  fun strerror = g_strerror(errnum : Int32) : UInt8*
  fun strescape = g_strescape(source : UInt8*, exceptions : UInt8*) : UInt8*
  fun strfreev = g_strfreev(str_array : UInt8*) : Void
  fun string_new = g_string_new(init : UInt8*) : LibGLib::String*
  fun string_new_len = g_string_new_len(init : UInt8*, len : Int64) : LibGLib::String*
  fun string_sized_new = g_string_sized_new(dfl_size : UInt64) : LibGLib::String*
  fun strip_context = g_strip_context(msgid : UInt8*, msgval : UInt8*) : UInt8*
  fun strjoinv = g_strjoinv(separator : UInt8*, str_array : UInt8*) : UInt8*
  fun strlcat = g_strlcat(dest : UInt8*, src : UInt8*, dest_size : UInt64) : UInt64
  fun strlcpy = g_strlcpy(dest : UInt8*, src : UInt8*, dest_size : UInt64) : UInt64
  fun strncasecmp = g_strncasecmp(s1 : UInt8*, s2 : UInt8*, n : UInt32) : Int32
  fun strndup = g_strndup(str : UInt8*, n : UInt64) : UInt8*
  fun strnfill = g_strnfill(length : UInt64, fill_char : Int8) : UInt8*
  fun strreverse = g_strreverse(string : UInt8*) : UInt8*
  fun strrstr = g_strrstr(haystack : UInt8*, needle : UInt8*) : UInt8*
  fun strrstr_len = g_strrstr_len(haystack : UInt8*, haystack_len : Int64, needle : UInt8*) : UInt8*
  fun strsignal = g_strsignal(signum : Int32) : UInt8*
  fun strstr_len = g_strstr_len(haystack : UInt8*, haystack_len : Int64, needle : UInt8*) : UInt8*
  fun strtod = g_strtod(nptr : UInt8*, endptr : UInt8**) : Float64
  fun strup = g_strup(string : UInt8*) : UInt8*
  fun strv_contains = g_strv_contains(strv : UInt8*, str : UInt8*) : Bool
  fun strv_get_type = g_strv_get_type() : UInt64
  fun strv_length = g_strv_length(str_array : UInt8*) : UInt32
  fun test_add_data_func = g_test_add_data_func(testpath : UInt8*, test_data : Void*, test_func : LibGLib::TestDataFunc) : Void
  fun test_add_data_func_full = g_test_add_data_func_full(testpath : UInt8*, test_data : Void*, test_func : LibGLib::TestDataFunc, data_free_func : LibGLib::DestroyNotify) : Void
  fun test_add_func = g_test_add_func(testpath : UInt8*, test_func : LibGLib::TestFunc) : Void
  fun test_assert_expected_messages_internal = g_test_assert_expected_messages_internal(domain : UInt8*, file : UInt8*, line : Int32, func : UInt8*) : Void
  fun test_bug = g_test_bug(bug_uri_snippet : UInt8*) : Void
  fun test_bug_base = g_test_bug_base(uri_pattern : UInt8*) : Void
  fun test_expect_message = g_test_expect_message(log_domain : UInt8*, log_level : LibGLib::LogLevelFlags, pattern : UInt8*) : Void
  fun test_fail = g_test_fail() : Void
  fun test_failed = g_test_failed() : Bool
  fun test_get_dir = g_test_get_dir(file_type : LibGLib::TestFileType) : UInt8*
  fun test_incomplete = g_test_incomplete(msg : UInt8*) : Void
  fun test_log_type_name = g_test_log_type_name(log_type : LibGLib::TestLogType) : UInt8*
  fun test_queue_destroy = g_test_queue_destroy(destroy_func : LibGLib::DestroyNotify, destroy_data : Void*) : Void
  fun test_queue_free = g_test_queue_free(gfree_pointer : Void*) : Void
  fun test_rand_double = g_test_rand_double() : Float64
  fun test_rand_double_range = g_test_rand_double_range(range_start : Float64, range_end : Float64) : Float64
  fun test_rand_int = g_test_rand_int() : Int32
  fun test_rand_int_range = g_test_rand_int_range(_begin : Int32, _end : Int32) : Int32
  fun test_run = g_test_run() : Int32
  fun test_run_suite = g_test_run_suite(suite : LibGLib::TestSuite*) : Int32
  fun test_set_nonfatal_assertions = g_test_set_nonfatal_assertions() : Void
  fun test_skip = g_test_skip(msg : UInt8*) : Void
  fun test_subprocess = g_test_subprocess() : Bool
  fun test_timer_elapsed = g_test_timer_elapsed() : Float64
  fun test_timer_last = g_test_timer_last() : Float64
  fun test_timer_start = g_test_timer_start() : Void
  fun test_trap_assertions = g_test_trap_assertions(domain : UInt8*, file : UInt8*, line : Int32, func : UInt8*, assertion_flags : UInt64, pattern : UInt8*) : Void
  fun test_trap_fork = g_test_trap_fork(usec_timeout : UInt64, test_trap_flags : LibGLib::TestTrapFlags) : Bool
  fun test_trap_has_passed = g_test_trap_has_passed() : Bool
  fun test_trap_reached_timeout = g_test_trap_reached_timeout() : Bool
  fun test_trap_subprocess = g_test_trap_subprocess(test_path : UInt8*, usec_timeout : UInt64, test_flags : LibGLib::TestSubprocessFlags) : Void
  fun thread_error_quark = g_thread_error_quark() : UInt32
  fun thread_exit = g_thread_exit(retval : Void*) : Void
  fun thread_pool_get_max_idle_time = g_thread_pool_get_max_idle_time() : UInt32
  fun thread_pool_get_max_unused_threads = g_thread_pool_get_max_unused_threads() : Int32
  fun thread_pool_get_num_unused_threads = g_thread_pool_get_num_unused_threads() : UInt32
  fun thread_pool_set_max_idle_time = g_thread_pool_set_max_idle_time(interval : UInt32) : Void
  fun thread_pool_set_max_unused_threads = g_thread_pool_set_max_unused_threads(max_threads : Int32) : Void
  fun thread_pool_stop_unused_threads = g_thread_pool_stop_unused_threads() : Void
  fun thread_self = g_thread_self() : LibGLib::Thread*
  fun thread_yield = g_thread_yield() : Void
  fun time_val_from_iso8601 = g_time_val_from_iso8601(iso_date : UInt8*, time : LibGLib::TimeVal*) : Bool
  fun timeout_add = g_timeout_add_full(priority : Int32, interval : UInt32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun timeout_add_seconds = g_timeout_add_seconds_full(priority : Int32, interval : UInt32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun timeout_source_new = g_timeout_source_new(interval : UInt32) : LibGLib::Source*
  fun timeout_source_new_seconds = g_timeout_source_new_seconds(interval : UInt32) : LibGLib::Source*
  fun trash_stack_height = g_trash_stack_height(stack_p : LibGLib::TrashStack*) : UInt32
  fun trash_stack_peek = g_trash_stack_peek(stack_p : LibGLib::TrashStack*) : Void*
  fun trash_stack_pop = g_trash_stack_pop(stack_p : LibGLib::TrashStack*) : Void*
  fun trash_stack_push = g_trash_stack_push(stack_p : LibGLib::TrashStack*, data_p : Void*) : Void
  fun try_malloc = g_try_malloc(n_bytes : UInt64) : Void*
  fun try_malloc0 = g_try_malloc0(n_bytes : UInt64) : Void*
  fun try_malloc0_n = g_try_malloc0_n(n_blocks : UInt64, n_block_bytes : UInt64) : Void*
  fun try_malloc_n = g_try_malloc_n(n_blocks : UInt64, n_block_bytes : UInt64) : Void*
  fun try_realloc = g_try_realloc(mem : Void*, n_bytes : UInt64) : Void*
  fun try_realloc_n = g_try_realloc_n(mem : Void*, n_blocks : UInt64, n_block_bytes : UInt64) : Void*
  fun ucs4_to_utf16 = g_ucs4_to_utf16(str : UInt8*, len : Int64, items_read : Int64*, items_written : Int64*, error : LibGLib::Error**) : UInt16*
  fun ucs4_to_utf8 = g_ucs4_to_utf8(str : UInt8*, len : Int64, items_read : Int64*, items_written : Int64*, error : LibGLib::Error**) : UInt8*
  fun unichar_break_type = g_unichar_break_type(c : UInt8) : LibGLib::UnicodeBreakType
  fun unichar_combining_class = g_unichar_combining_class(uc : UInt8) : Int32
  fun unichar_compose = g_unichar_compose(a : UInt8, b : UInt8, ch : UInt8*) : Bool
  fun unichar_decompose = g_unichar_decompose(ch : UInt8, a : UInt8*, b : UInt8*) : Bool
  fun unichar_digit_value = g_unichar_digit_value(c : UInt8) : Int32
  fun unichar_fully_decompose = g_unichar_fully_decompose(ch : UInt8, compat : Bool, result : UInt8*, result_len : UInt64) : UInt64
  fun unichar_get_mirror_char = g_unichar_get_mirror_char(ch : UInt8, mirrored_ch : UInt8*) : Bool
  fun unichar_get_script = g_unichar_get_script(ch : UInt8) : LibGLib::UnicodeScript
  fun unichar_isalnum = g_unichar_isalnum(c : UInt8) : Bool
  fun unichar_isalpha = g_unichar_isalpha(c : UInt8) : Bool
  fun unichar_iscntrl = g_unichar_iscntrl(c : UInt8) : Bool
  fun unichar_isdefined = g_unichar_isdefined(c : UInt8) : Bool
  fun unichar_isdigit = g_unichar_isdigit(c : UInt8) : Bool
  fun unichar_isgraph = g_unichar_isgraph(c : UInt8) : Bool
  fun unichar_islower = g_unichar_islower(c : UInt8) : Bool
  fun unichar_ismark = g_unichar_ismark(c : UInt8) : Bool
  fun unichar_isprint = g_unichar_isprint(c : UInt8) : Bool
  fun unichar_ispunct = g_unichar_ispunct(c : UInt8) : Bool
  fun unichar_isspace = g_unichar_isspace(c : UInt8) : Bool
  fun unichar_istitle = g_unichar_istitle(c : UInt8) : Bool
  fun unichar_isupper = g_unichar_isupper(c : UInt8) : Bool
  fun unichar_iswide = g_unichar_iswide(c : UInt8) : Bool
  fun unichar_iswide_cjk = g_unichar_iswide_cjk(c : UInt8) : Bool
  fun unichar_isxdigit = g_unichar_isxdigit(c : UInt8) : Bool
  fun unichar_iszerowidth = g_unichar_iszerowidth(c : UInt8) : Bool
  fun unichar_to_utf8 = g_unichar_to_utf8(c : UInt8, outbuf : UInt8**) : Int32
  fun unichar_tolower = g_unichar_tolower(c : UInt8) : UInt8
  fun unichar_totitle = g_unichar_totitle(c : UInt8) : UInt8
  fun unichar_toupper = g_unichar_toupper(c : UInt8) : UInt8
  fun unichar_type = g_unichar_type(c : UInt8) : LibGLib::UnicodeType
  fun unichar_validate = g_unichar_validate(ch : UInt8) : Bool
  fun unichar_xdigit_value = g_unichar_xdigit_value(c : UInt8) : Int32
  fun unicode_canonical_decomposition = g_unicode_canonical_decomposition(ch : UInt8, result_len : UInt64*) : UInt8*
  fun unicode_canonical_ordering = g_unicode_canonical_ordering(string : UInt8*, len : UInt64) : Void
  fun unicode_script_from_iso15924 = g_unicode_script_from_iso15924(iso15924 : UInt32) : LibGLib::UnicodeScript
  fun unicode_script_to_iso15924 = g_unicode_script_to_iso15924(script : LibGLib::UnicodeScript) : UInt32
  fun unix_error_quark = g_unix_error_quark() : UInt32
  fun unix_fd_add_full = g_unix_fd_add_full(priority : Int32, fd : Int32, condition : LibGLib::IOCondition, function : LibGLib::UnixFDSourceFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun unix_fd_source_new = g_unix_fd_source_new(fd : Int32, condition : LibGLib::IOCondition) : LibGLib::Source*
  fun unix_open_pipe = g_unix_open_pipe(fds : Int32*, flags : Int32, error : LibGLib::Error**) : Bool
  fun unix_set_fd_nonblocking = g_unix_set_fd_nonblocking(fd : Int32, nonblock : Bool, error : LibGLib::Error**) : Bool
  fun unix_signal_add = g_unix_signal_add_full(priority : Int32, signum : Int32, handler : LibGLib::SourceFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun unix_signal_source_new = g_unix_signal_source_new(signum : Int32) : LibGLib::Source*
  fun unlink = g_unlink(filename : UInt8*) : Int32
  fun unsetenv = g_unsetenv(variable : UInt8*) : Void
  fun uri_escape_string = g_uri_escape_string(unescaped : UInt8*, reserved_chars_allowed : UInt8*, allow_utf8 : Bool) : UInt8*
  fun uri_list_extract_uris = g_uri_list_extract_uris(uri_list : UInt8*) : UInt8**
  fun uri_parse_scheme = g_uri_parse_scheme(uri : UInt8*) : UInt8*
  fun uri_unescape_segment = g_uri_unescape_segment(escaped_string : UInt8*, escaped_string_end : UInt8*, illegal_characters : UInt8*) : UInt8*
  fun uri_unescape_string = g_uri_unescape_string(escaped_string : UInt8*, illegal_characters : UInt8*) : UInt8*
  fun usleep = g_usleep(microseconds : UInt64) : Void
  fun utf16_to_ucs4 = g_utf16_to_ucs4(str : UInt16*, len : Int64, items_read : Int64*, items_written : Int64*, error : LibGLib::Error**) : UInt8*
  fun utf16_to_utf8 = g_utf16_to_utf8(str : UInt16*, len : Int64, items_read : Int64*, items_written : Int64*, error : LibGLib::Error**) : UInt8*
  fun utf8_casefold = g_utf8_casefold(str : UInt8*, len : Int64) : UInt8*
  fun utf8_collate = g_utf8_collate(str1 : UInt8*, str2 : UInt8*) : Int32
  fun utf8_collate_key = g_utf8_collate_key(str : UInt8*, len : Int64) : UInt8*
  fun utf8_collate_key_for_filename = g_utf8_collate_key_for_filename(str : UInt8*, len : Int64) : UInt8*
  fun utf8_find_next_char = g_utf8_find_next_char(p : UInt8*, _end : UInt8*) : UInt8*
  fun utf8_find_prev_char = g_utf8_find_prev_char(str : UInt8*, p : UInt8*) : UInt8*
  fun utf8_get_char = g_utf8_get_char(p : UInt8*) : UInt8
  fun utf8_get_char_validated = g_utf8_get_char_validated(p : UInt8*, max_len : Int64) : UInt8
  fun utf8_make_valid = g_utf8_make_valid(str : UInt8*, len : Int64) : UInt8*
  fun utf8_normalize = g_utf8_normalize(str : UInt8*, len : Int64, mode : LibGLib::NormalizeMode) : UInt8*
  fun utf8_offset_to_pointer = g_utf8_offset_to_pointer(str : UInt8*, offset : Int64) : UInt8*
  fun utf8_pointer_to_offset = g_utf8_pointer_to_offset(str : UInt8*, pos : UInt8*) : Int64
  fun utf8_prev_char = g_utf8_prev_char(p : UInt8*) : UInt8*
  fun utf8_strchr = g_utf8_strchr(p : UInt8*, len : Int64, c : UInt8) : UInt8*
  fun utf8_strdown = g_utf8_strdown(str : UInt8*, len : Int64) : UInt8*
  fun utf8_strlen = g_utf8_strlen(p : UInt8*, max : Int64) : Int64
  fun utf8_strncpy = g_utf8_strncpy(dest : UInt8*, src : UInt8*, n : UInt64) : UInt8*
  fun utf8_strrchr = g_utf8_strrchr(p : UInt8*, len : Int64, c : UInt8) : UInt8*
  fun utf8_strreverse = g_utf8_strreverse(str : UInt8*, len : Int64) : UInt8*
  fun utf8_strup = g_utf8_strup(str : UInt8*, len : Int64) : UInt8*
  fun utf8_substring = g_utf8_substring(str : UInt8*, start_pos : Int64, end_pos : Int64) : UInt8*
  fun utf8_to_ucs4 = g_utf8_to_ucs4(str : UInt8*, len : Int64, items_read : Int64*, items_written : Int64*, error : LibGLib::Error**) : UInt8*
  fun utf8_to_ucs4_fast = g_utf8_to_ucs4_fast(str : UInt8*, len : Int64, items_written : Int64*) : UInt8*
  fun utf8_to_utf16 = g_utf8_to_utf16(str : UInt8*, len : Int64, items_read : Int64*, items_written : Int64*, error : LibGLib::Error**) : UInt16*
  fun utf8_validate = g_utf8_validate(str : UInt8*, max_len : Int64, _end : UInt8**) : Bool
  fun uuid_string_is_valid = g_uuid_string_is_valid(str : UInt8*) : Bool
  fun uuid_string_random = g_uuid_string_random() : UInt8*
  fun variant_get_gtype = g_variant_get_gtype() : UInt64
  fun variant_is_object_path = g_variant_is_object_path(string : UInt8*) : Bool
  fun variant_is_signature = g_variant_is_signature(string : UInt8*) : Bool
  fun variant_parse = g_variant_parse(type : LibGLib::VariantType*, text : UInt8*, limit : UInt8*, endptr : UInt8*, error : LibGLib::Error**) : LibGLib::Variant*
  fun variant_parse_error_print_context = g_variant_parse_error_print_context(error : LibGLib::Error**, source_str : UInt8*) : UInt8*
  fun variant_parse_error_quark = g_variant_parse_error_quark() : UInt32
  fun variant_parser_get_error_quark = g_variant_parser_get_error_quark() : UInt32
  fun variant_type_checked_ = g_variant_type_checked_(arg0 : UInt8*) : LibGLib::VariantType*
  fun variant_type_string_is_valid = g_variant_type_string_is_valid(type_string : UInt8*) : Bool
  fun variant_type_string_scan = g_variant_type_string_scan(string : UInt8*, limit : UInt8*, endptr : UInt8**) : Bool

  ###########################################
  ##    Callbacks
  ###########################################

 alias ChildWatchFunc = Int32, Int32, Void* -> Void
 alias ClearHandleFunc = UInt32 -> Void
 alias CompareDataFunc = Void*, Void*, Void* -> Int32
 alias CompareFunc = Void*, Void* -> Int32
 alias CopyFunc = Void*, Void* -> Void*
 alias DataForeachFunc = UInt32, Void*, Void* -> Void
 alias DestroyNotify = Void* -> Void
 alias DuplicateFunc = Void*, Void* -> Void*
 alias EqualFunc = Void*, Void* -> Bool
 alias FreeFunc = Void* -> Void
 alias Func = Void*, Void* -> Void
 alias HFunc = Void*, Void*, Void* -> Void
 alias HRFunc = Void*, Void*, Void* -> Bool
 alias HashFunc = Void* -> UInt32
 alias HookCheckFunc = Void* -> Bool
 alias HookCheckMarshaller = LibGLib::Hook*, Void* -> Bool
 alias HookCompareFunc = LibGLib::Hook*, LibGLib::Hook* -> Int32
 alias HookFinalizeFunc = LibGLib::HookList*, LibGLib::Hook* -> Void
 alias HookFindFunc = LibGLib::Hook*, Void* -> Bool
 alias HookFunc = Void* -> Void
 alias HookMarshaller = LibGLib::Hook*, Void* -> Void
 alias IOFunc = LibGLib::IOChannel*, LibGLib::IOCondition, Void* -> Bool
 alias LogFunc = UInt8*, LibGLib::LogLevelFlags, UInt8*, Void* -> Void
 alias LogWriterFunc = LibGLib::LogLevelFlags, LibGLib::LogField*, UInt64, Void* -> LibGLib::LogWriterOutput
 alias NodeForeachFunc = LibGLib::Node*, Void* -> Void
 alias NodeTraverseFunc = LibGLib::Node*, Void* -> Bool
 alias OptionArgFunc = UInt8*, UInt8*, Void*, LibGLib::Error** -> Bool
 alias OptionErrorFunc = LibGLib::OptionContext*, LibGLib::OptionGroup*, Void*, LibGLib::Error** -> Void
 alias OptionParseFunc = LibGLib::OptionContext*, LibGLib::OptionGroup*, Void*, LibGLib::Error** -> Bool
 alias PollFunc = LibGLib::PollFD*, UInt32, Int32 -> Int32
 alias PrintFunc = UInt8* -> Void
 alias RegexEvalCallback = LibGLib::MatchInfo*, LibGLib::String*, Void* -> Bool
 alias ScannerMsgFunc = LibGLib::Scanner*, UInt8*, Bool -> Void
 alias SequenceIterCompareFunc = LibGLib::SequenceIter*, LibGLib::SequenceIter*, Void* -> Int32
 alias SourceDummyMarshal =  -> Void
 alias SourceFunc = Void* -> Bool
 alias SpawnChildSetupFunc = Void* -> Void
 alias TestDataFunc = Void* -> Void
 alias TestFixtureFunc = Void*, Void* -> Void
 alias TestFunc =  -> Void
 alias TestLogFatalFunc = UInt8*, LibGLib::LogLevelFlags, UInt8*, Void* -> Bool
 alias ThreadFunc = Void* -> Void*
 alias TranslateFunc = UInt8*, Void* -> UInt8*
 alias TraverseFunc = Void*, Void*, Void* -> Bool
 alias UnixFDSourceFunc = Int32, LibGLib::IOCondition, Void* -> Bool
 alias VoidFunc =  -> Void
end

