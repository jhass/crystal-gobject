require "./lib_g_lib"
require "./lib_g_object"
require "./lib_g_module"

@[Link("gstreamer-1.0")]
lib LibGst

  ###########################################
  ##    Constants
  ###########################################

  ALLOCATOR_SYSMEM = "SystemMemory" # : UInt8*
  # BUFFER_COPY_ALL = ungeneratable value
  # BUFFER_COPY_METADATA = ungeneratable value
  BUFFER_OFFSET_NONE = 18446744073709551615_u64 # : UInt64
  CAN_INLINE = 1 # : Int32
  CAPS_FEATURE_MEMORY_SYSTEM_MEMORY = "memory:SystemMemory" # : UInt8*
  CLOCK_TIME_NONE = 18446744073709551615_u64 # : UInt64
  DEBUG_BG_MASK = 240 # : Int32
  DEBUG_FG_MASK = 15 # : Int32
  DEBUG_FORMAT_MASK = 65280 # : Int32
  ELEMENT_FACTORY_KLASS_DECODER = "Decoder" # : UInt8*
  ELEMENT_FACTORY_KLASS_DECRYPTOR = "Decryptor" # : UInt8*
  ELEMENT_FACTORY_KLASS_DEMUXER = "Demuxer" # : UInt8*
  ELEMENT_FACTORY_KLASS_DEPAYLOADER = "Depayloader" # : UInt8*
  ELEMENT_FACTORY_KLASS_ENCODER = "Encoder" # : UInt8*
  ELEMENT_FACTORY_KLASS_ENCRYPTOR = "Encryptor" # : UInt8*
  ELEMENT_FACTORY_KLASS_FORMATTER = "Formatter" # : UInt8*
  ELEMENT_FACTORY_KLASS_MEDIA_AUDIO = "Audio" # : UInt8*
  ELEMENT_FACTORY_KLASS_MEDIA_IMAGE = "Image" # : UInt8*
  ELEMENT_FACTORY_KLASS_MEDIA_METADATA = "Metadata" # : UInt8*
  ELEMENT_FACTORY_KLASS_MEDIA_SUBTITLE = "Subtitle" # : UInt8*
  ELEMENT_FACTORY_KLASS_MEDIA_VIDEO = "Video" # : UInt8*
  ELEMENT_FACTORY_KLASS_MUXER = "Muxer" # : UInt8*
  ELEMENT_FACTORY_KLASS_PARSER = "Parser" # : UInt8*
  ELEMENT_FACTORY_KLASS_PAYLOADER = "Payloader" # : UInt8*
  ELEMENT_FACTORY_KLASS_SINK = "Sink" # : UInt8*
  ELEMENT_FACTORY_KLASS_SRC = "Source" # : UInt8*
  ELEMENT_FACTORY_TYPE_ANY = 562949953421311_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_AUDIOVIDEO_SINKS = 3940649673949188_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_AUDIO_ENCODER = 1125899906842626_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_DECODABLE = 1377_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_DECODER = 1_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_DECRYPTOR = 1024_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_DEMUXER = 32_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_DEPAYLOADER = 256_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_ENCODER = 2_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_ENCRYPTOR = 2048_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_FORMATTER = 512_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MAX_ELEMENTS = 281474976710656_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MEDIA_ANY = 18446462598732840960_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MEDIA_AUDIO = 1125899906842624_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MEDIA_IMAGE = 2251799813685248_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MEDIA_METADATA = 9007199254740992_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MEDIA_SUBTITLE = 4503599627370496_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MEDIA_VIDEO = 562949953421312_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_MUXER = 16_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_PARSER = 64_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_PAYLOADER = 128_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_SINK = 4_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_SRC = 8_u64 # : UInt64
  ELEMENT_FACTORY_TYPE_VIDEO_ENCODER = 2814749767106562_u64 # : UInt64
  ELEMENT_METADATA_AUTHOR = "author" # : UInt8*
  ELEMENT_METADATA_DESCRIPTION = "description" # : UInt8*
  ELEMENT_METADATA_DOC_URI = "doc-uri" # : UInt8*
  ELEMENT_METADATA_ICON_NAME = "icon-name" # : UInt8*
  ELEMENT_METADATA_KLASS = "klass" # : UInt8*
  ELEMENT_METADATA_LONGNAME = "long-name" # : UInt8*
  ERROR_SYSTEM = "system error: %s" # : UInt8*
  EVENT_NUM_SHIFT = 8 # : Int32
  # EVENT_TYPE_BOTH = ungeneratable value
  FLAG_SET_MASK_EXACT = 4294967295_u32 # : UInt32
  FORMAT_PERCENT_MAX = 1000000_i64 # : Int64
  FORMAT_PERCENT_SCALE = 10000_i64 # : Int64
  FOURCC_FORMAT = "c%c%c%c" # : UInt8*
  GROUP_ID_INVALID = 0 # : Int32
  LICENSE_UNKNOWN = "unknown" # : UInt8*
  # LOCK_FLAG_READWRITE = ungeneratable value
  # MAP_READWRITE = ungeneratable value
  META_TAG_MEMORY_STR = "memory" # : UInt8*
  MSECOND = 1000000_i64 # : Int64
  NSECOND = 1_i64 # : Int64
  PARAM_CONTROLLABLE = 512 # : Int32
  PARAM_MUTABLE_PAUSED = 2048 # : Int32
  PARAM_MUTABLE_PLAYING = 4096 # : Int32
  PARAM_MUTABLE_READY = 1024 # : Int32
  PARAM_USER_SHIFT = 65536 # : Int32
  PROTECTION_SYSTEM_ID_CAPS_FIELD = "protection-system" # : UInt8*
  PTR_FORMAT = "paA" # : UInt8*
  QUERY_NUM_SHIFT = 8 # : Int32
  # QUERY_TYPE_BOTH = ungeneratable value
  SECOND = 1000000000_i64 # : Int64
  SEGMENT_FORMAT = "paB" # : UInt8*
  SEQNUM_INVALID = 0 # : Int32
  STIME_FORMAT = "c%" # : UInt8*
  TAG_ALBUM = "album" # : UInt8*
  TAG_ALBUM_ARTIST = "album-artist" # : UInt8*
  TAG_ALBUM_ARTIST_SORTNAME = "album-artist-sortname" # : UInt8*
  TAG_ALBUM_GAIN = "replaygain-album-gain" # : UInt8*
  TAG_ALBUM_PEAK = "replaygain-album-peak" # : UInt8*
  TAG_ALBUM_SORTNAME = "album-sortname" # : UInt8*
  TAG_ALBUM_VOLUME_COUNT = "album-disc-count" # : UInt8*
  TAG_ALBUM_VOLUME_NUMBER = "album-disc-number" # : UInt8*
  TAG_APPLICATION_DATA = "application-data" # : UInt8*
  TAG_APPLICATION_NAME = "application-name" # : UInt8*
  TAG_ARTIST = "artist" # : UInt8*
  TAG_ARTIST_SORTNAME = "artist-sortname" # : UInt8*
  TAG_ATTACHMENT = "attachment" # : UInt8*
  TAG_AUDIO_CODEC = "audio-codec" # : UInt8*
  TAG_BEATS_PER_MINUTE = "beats-per-minute" # : UInt8*
  TAG_BITRATE = "bitrate" # : UInt8*
  TAG_CODEC = "codec" # : UInt8*
  TAG_COMMENT = "comment" # : UInt8*
  TAG_COMPOSER = "composer" # : UInt8*
  TAG_COMPOSER_SORTNAME = "composer-sortname" # : UInt8*
  TAG_CONDUCTOR = "conductor" # : UInt8*
  TAG_CONTACT = "contact" # : UInt8*
  TAG_CONTAINER_FORMAT = "container-format" # : UInt8*
  TAG_COPYRIGHT = "copyright" # : UInt8*
  TAG_COPYRIGHT_URI = "copyright-uri" # : UInt8*
  TAG_DATE = "date" # : UInt8*
  TAG_DATE_TIME = "datetime" # : UInt8*
  TAG_DESCRIPTION = "description" # : UInt8*
  TAG_DEVICE_MANUFACTURER = "device-manufacturer" # : UInt8*
  TAG_DEVICE_MODEL = "device-model" # : UInt8*
  TAG_DURATION = "duration" # : UInt8*
  TAG_ENCODED_BY = "encoded-by" # : UInt8*
  TAG_ENCODER = "encoder" # : UInt8*
  TAG_ENCODER_VERSION = "encoder-version" # : UInt8*
  TAG_EXTENDED_COMMENT = "extended-comment" # : UInt8*
  TAG_GENRE = "genre" # : UInt8*
  TAG_GEO_LOCATION_CAPTURE_DIRECTION = "geo-location-capture-direction" # : UInt8*
  TAG_GEO_LOCATION_CITY = "geo-location-city" # : UInt8*
  TAG_GEO_LOCATION_COUNTRY = "geo-location-country" # : UInt8*
  TAG_GEO_LOCATION_ELEVATION = "geo-location-elevation" # : UInt8*
  TAG_GEO_LOCATION_HORIZONTAL_ERROR = "geo-location-horizontal-error" # : UInt8*
  TAG_GEO_LOCATION_LATITUDE = "geo-location-latitude" # : UInt8*
  TAG_GEO_LOCATION_LONGITUDE = "geo-location-longitude" # : UInt8*
  TAG_GEO_LOCATION_MOVEMENT_DIRECTION = "geo-location-movement-direction" # : UInt8*
  TAG_GEO_LOCATION_MOVEMENT_SPEED = "geo-location-movement-speed" # : UInt8*
  TAG_GEO_LOCATION_NAME = "geo-location-name" # : UInt8*
  TAG_GEO_LOCATION_SUBLOCATION = "geo-location-sublocation" # : UInt8*
  TAG_GROUPING = "grouping" # : UInt8*
  TAG_HOMEPAGE = "homepage" # : UInt8*
  TAG_IMAGE = "image" # : UInt8*
  TAG_IMAGE_ORIENTATION = "image-orientation" # : UInt8*
  TAG_INTERPRETED_BY = "interpreted-by" # : UInt8*
  TAG_ISRC = "isrc" # : UInt8*
  TAG_KEYWORDS = "keywords" # : UInt8*
  TAG_LANGUAGE_CODE = "language-code" # : UInt8*
  TAG_LANGUAGE_NAME = "language-name" # : UInt8*
  TAG_LICENSE = "license" # : UInt8*
  TAG_LICENSE_URI = "license-uri" # : UInt8*
  TAG_LOCATION = "location" # : UInt8*
  TAG_LYRICS = "lyrics" # : UInt8*
  TAG_MAXIMUM_BITRATE = "maximum-bitrate" # : UInt8*
  TAG_MIDI_BASE_NOTE = "midi-base-note" # : UInt8*
  TAG_MINIMUM_BITRATE = "minimum-bitrate" # : UInt8*
  TAG_NOMINAL_BITRATE = "nominal-bitrate" # : UInt8*
  TAG_ORGANIZATION = "organization" # : UInt8*
  TAG_PERFORMER = "performer" # : UInt8*
  TAG_PREVIEW_IMAGE = "preview-image" # : UInt8*
  TAG_PRIVATE_DATA = "private-data" # : UInt8*
  TAG_PUBLISHER = "publisher" # : UInt8*
  TAG_REFERENCE_LEVEL = "replaygain-reference-level" # : UInt8*
  TAG_SERIAL = "serial" # : UInt8*
  TAG_SHOW_EPISODE_NUMBER = "show-episode-number" # : UInt8*
  TAG_SHOW_NAME = "show-name" # : UInt8*
  TAG_SHOW_SEASON_NUMBER = "show-season-number" # : UInt8*
  TAG_SHOW_SORTNAME = "show-sortname" # : UInt8*
  TAG_SUBTITLE_CODEC = "subtitle-codec" # : UInt8*
  TAG_TITLE = "title" # : UInt8*
  TAG_TITLE_SORTNAME = "title-sortname" # : UInt8*
  TAG_TRACK_COUNT = "track-count" # : UInt8*
  TAG_TRACK_GAIN = "replaygain-track-gain" # : UInt8*
  TAG_TRACK_NUMBER = "track-number" # : UInt8*
  TAG_TRACK_PEAK = "replaygain-track-peak" # : UInt8*
  TAG_USER_RATING = "user-rating" # : UInt8*
  TAG_VERSION = "version" # : UInt8*
  TAG_VIDEO_CODEC = "video-codec" # : UInt8*
  TIME_FORMAT = "u:%02u:%02u.%09u" # : UInt8*
  TOC_REPEAT_COUNT_INFINITE = -1 # : Int32
  URI_NO_PORT = 0 # : Int32
  USECOND = 1000_i64 # : Int64
  VALUE_EQUAL = 0 # : Int32
  VALUE_GREATER_THAN = 1 # : Int32
  VALUE_LESS_THAN = -1 # : Int32
  VALUE_UNORDERED = 2 # : Int32
  VERSION_MAJOR = 1 # : Int32
  VERSION_MICRO = 4 # : Int32
  VERSION_MINOR = 14 # : Int32
  VERSION_NANO = 0 # : Int32

  ###########################################
  ##    Structs
  ###########################################

  struct AllocationParams # struct
    flags : LibGst::MemoryFlags
    align : UInt64
    prefix : UInt64
    padding : UInt64
    _gst_reserved : Void*
  end
  fun allocation_params_copy = gst_allocation_params_copy(this : AllocationParams*) : LibGst::AllocationParams*
  fun allocation_params_free = gst_allocation_params_free(this : AllocationParams*) : Void
  fun allocation_params_init = gst_allocation_params_init(this : AllocationParams*) : Void

  struct AllocatorPrivate # struct
    _data : UInt8[0]
  end

  struct AtomicQueue # struct
    _data : UInt8[0]
  end
  fun atomic_queue_new = gst_atomic_queue_new(initial_size : UInt32) : LibGst::AtomicQueue*
  fun atomic_queue_length = gst_atomic_queue_length(this : AtomicQueue*) : UInt32
  fun atomic_queue_peek = gst_atomic_queue_peek(this : AtomicQueue*) : Void*
  fun atomic_queue_pop = gst_atomic_queue_pop(this : AtomicQueue*) : Void*
  fun atomic_queue_push = gst_atomic_queue_push(this : AtomicQueue*, data : Void*) : Void
  fun atomic_queue_ref = gst_atomic_queue_ref(this : AtomicQueue*) : Void
  fun atomic_queue_unref = gst_atomic_queue_unref(this : AtomicQueue*) : Void

  struct BinPrivate # struct
    _data : UInt8[0]
  end

  struct Buffer # struct
    mini_object : LibGst::MiniObject
    pool : LibGst::BufferPool*
    pts : UInt64
    dts : UInt64
    duration : UInt64
    offset : UInt64
    offset_end : UInt64
  end
  fun buffer_new = gst_buffer_new() : LibGst::Buffer*
  fun buffer_new_allocate = gst_buffer_new_allocate(allocator : LibGst::Allocator*, size : UInt64, params : LibGst::AllocationParams*) : LibGst::Buffer*
  fun buffer_new_wrapped = gst_buffer_new_wrapped(data : UInt8*, size : UInt64) : LibGst::Buffer*
  fun buffer_new_wrapped_full = gst_buffer_new_wrapped_full(flags : LibGst::MemoryFlags, data : UInt8*, maxsize : UInt64, offset : UInt64, size : UInt64, user_data : Void*, notify : LibGLib::DestroyNotify) : LibGst::Buffer*
  fun buffer_add_meta = gst_buffer_add_meta(this : Buffer*, info : LibGst::MetaInfo*, params : Void*) : LibGst::Meta*
  fun buffer_add_parent_buffer_meta = gst_buffer_add_parent_buffer_meta(this : Buffer*, ref : LibGst::Buffer*) : LibGst::ParentBufferMeta*
  fun buffer_add_protection_meta = gst_buffer_add_protection_meta(this : Buffer*, info : LibGst::Structure*) : LibGst::ProtectionMeta*
  fun buffer_add_reference_timestamp_meta = gst_buffer_add_reference_timestamp_meta(this : Buffer*, reference : LibGst::Caps*, timestamp : UInt64, duration : UInt64) : LibGst::ReferenceTimestampMeta*
  fun buffer_append = gst_buffer_append(this : Buffer*, buf2 : LibGst::Buffer*) : LibGst::Buffer*
  fun buffer_append_memory = gst_buffer_append_memory(this : Buffer*, mem : LibGst::Memory*) : Void
  fun buffer_append_region = gst_buffer_append_region(this : Buffer*, buf2 : LibGst::Buffer*, offset : Int64, size : Int64) : LibGst::Buffer*
  fun buffer_copy_deep = gst_buffer_copy_deep(this : Buffer*) : LibGst::Buffer*
  fun buffer_copy_into = gst_buffer_copy_into(this : Buffer*, src : LibGst::Buffer*, flags : LibGst::BufferCopyFlags, offset : UInt64, size : UInt64) : Bool
  fun buffer_copy_region = gst_buffer_copy_region(this : Buffer*, flags : LibGst::BufferCopyFlags, offset : UInt64, size : UInt64) : LibGst::Buffer*
  fun buffer_extract = gst_buffer_extract(this : Buffer*, offset : UInt64, dest : UInt8**, size : UInt64*) : UInt64
  fun buffer_extract_dup = gst_buffer_extract_dup(this : Buffer*, offset : UInt64, size : UInt64, dest : UInt8**, dest_size : UInt64*) : Void
  fun buffer_fill = gst_buffer_fill(this : Buffer*, offset : UInt64, src : UInt8*, size : UInt64) : UInt64
  fun buffer_find_memory = gst_buffer_find_memory(this : Buffer*, offset : UInt64, size : UInt64, idx : UInt32*, length : UInt32*, skip : UInt64*) : Bool
  fun buffer_foreach_meta = gst_buffer_foreach_meta(this : Buffer*, func : LibGst::BufferForeachMetaFunc, user_data : Void*) : Bool
  fun buffer_get_all_memory = gst_buffer_get_all_memory(this : Buffer*) : LibGst::Memory*
  fun buffer_get_flags = gst_buffer_get_flags(this : Buffer*) : LibGst::BufferFlags
  fun buffer_get_memory = gst_buffer_get_memory(this : Buffer*, idx : UInt32) : LibGst::Memory*
  fun buffer_get_memory_range = gst_buffer_get_memory_range(this : Buffer*, idx : UInt32, length : Int32) : LibGst::Memory*
  fun buffer_get_meta = gst_buffer_get_meta(this : Buffer*, api : UInt64) : LibGst::Meta*
  fun buffer_get_n_meta = gst_buffer_get_n_meta(this : Buffer*, api_type : UInt64) : UInt32
  fun buffer_get_reference_timestamp_meta = gst_buffer_get_reference_timestamp_meta(this : Buffer*, reference : LibGst::Caps*) : LibGst::ReferenceTimestampMeta*
  fun buffer_get_size = gst_buffer_get_size(this : Buffer*) : UInt64
  fun buffer_get_sizes = gst_buffer_get_sizes(this : Buffer*, offset : UInt64*, maxsize : UInt64*) : UInt64
  fun buffer_get_sizes_range = gst_buffer_get_sizes_range(this : Buffer*, idx : UInt32, length : Int32, offset : UInt64*, maxsize : UInt64*) : UInt64
  fun buffer_has_flags = gst_buffer_has_flags(this : Buffer*, flags : LibGst::BufferFlags) : Bool
  fun buffer_insert_memory = gst_buffer_insert_memory(this : Buffer*, idx : Int32, mem : LibGst::Memory*) : Void
  fun buffer_is_all_memory_writable = gst_buffer_is_all_memory_writable(this : Buffer*) : Bool
  fun buffer_is_memory_range_writable = gst_buffer_is_memory_range_writable(this : Buffer*, idx : UInt32, length : Int32) : Bool
  fun buffer_map = gst_buffer_map(this : Buffer*, info : LibGst::MapInfo*, flags : LibGst::MapFlags) : Bool
  fun buffer_map_range = gst_buffer_map_range(this : Buffer*, idx : UInt32, length : Int32, info : LibGst::MapInfo*, flags : LibGst::MapFlags) : Bool
  fun buffer_memcmp = gst_buffer_memcmp(this : Buffer*, offset : UInt64, mem : UInt8*, size : UInt64) : Int32
  fun buffer_memset = gst_buffer_memset(this : Buffer*, offset : UInt64, val : UInt8, size : UInt64) : UInt64
  fun buffer_n_memory = gst_buffer_n_memory(this : Buffer*) : UInt32
  fun buffer_peek_memory = gst_buffer_peek_memory(this : Buffer*, idx : UInt32) : LibGst::Memory*
  fun buffer_prepend_memory = gst_buffer_prepend_memory(this : Buffer*, mem : LibGst::Memory*) : Void
  fun buffer_remove_all_memory = gst_buffer_remove_all_memory(this : Buffer*) : Void
  fun buffer_remove_memory = gst_buffer_remove_memory(this : Buffer*, idx : UInt32) : Void
  fun buffer_remove_memory_range = gst_buffer_remove_memory_range(this : Buffer*, idx : UInt32, length : Int32) : Void
  fun buffer_remove_meta = gst_buffer_remove_meta(this : Buffer*, meta : LibGst::Meta*) : Bool
  fun buffer_replace_all_memory = gst_buffer_replace_all_memory(this : Buffer*, mem : LibGst::Memory*) : Void
  fun buffer_replace_memory = gst_buffer_replace_memory(this : Buffer*, idx : UInt32, mem : LibGst::Memory*) : Void
  fun buffer_replace_memory_range = gst_buffer_replace_memory_range(this : Buffer*, idx : UInt32, length : Int32, mem : LibGst::Memory*) : Void
  fun buffer_resize = gst_buffer_resize(this : Buffer*, offset : Int64, size : Int64) : Void
  fun buffer_resize_range = gst_buffer_resize_range(this : Buffer*, idx : UInt32, length : Int32, offset : Int64, size : Int64) : Bool
  fun buffer_set_flags = gst_buffer_set_flags(this : Buffer*, flags : LibGst::BufferFlags) : Bool
  fun buffer_set_size = gst_buffer_set_size(this : Buffer*, size : Int64) : Void
  fun buffer_unmap = gst_buffer_unmap(this : Buffer*, info : LibGst::MapInfo*) : Void
  fun buffer_unset_flags = gst_buffer_unset_flags(this : Buffer*, flags : LibGst::BufferFlags) : Bool
  fun buffer_get_max_memory = gst_buffer_get_max_memory() : UInt32

  struct BufferList # struct
    _data : UInt8[0]
  end
  fun buffer_list_new = gst_buffer_list_new() : LibGst::BufferList*
  fun buffer_list_new_sized = gst_buffer_list_new_sized(size : UInt32) : LibGst::BufferList*
  fun buffer_list_calculate_size = gst_buffer_list_calculate_size(this : BufferList*) : UInt64
  fun buffer_list_copy_deep = gst_buffer_list_copy_deep(this : BufferList*) : LibGst::BufferList*
  fun buffer_list_foreach = gst_buffer_list_foreach(this : BufferList*, func : LibGst::BufferListFunc, user_data : Void*) : Bool
  fun buffer_list_get = gst_buffer_list_get(this : BufferList*, idx : UInt32) : LibGst::Buffer*
  fun buffer_list_get_writable = gst_buffer_list_get_writable(this : BufferList*, idx : UInt32) : LibGst::Buffer*
  fun buffer_list_insert = gst_buffer_list_insert(this : BufferList*, idx : Int32, buffer : LibGst::Buffer*) : Void
  fun buffer_list_length = gst_buffer_list_length(this : BufferList*) : UInt32
  fun buffer_list_remove = gst_buffer_list_remove(this : BufferList*, idx : UInt32, length : UInt32) : Void

  struct BufferPoolAcquireParams # struct
    format : LibGst::Format
    start : Int64
    stop : Int64
    flags : LibGst::BufferPoolAcquireFlags
    _gst_reserved : Void*
  end

  struct BufferPoolPrivate # struct
    _data : UInt8[0]
  end

  struct BusPrivate # struct
    _data : UInt8[0]
  end

  struct Caps # struct
    mini_object : LibGst::MiniObject
  end
  fun caps_new_any = gst_caps_new_any() : LibGst::Caps*
  fun caps_new_empty = gst_caps_new_empty() : LibGst::Caps*
  fun caps_new_empty_simple = gst_caps_new_empty_simple(media_type : UInt8*) : LibGst::Caps*
  fun caps_append = gst_caps_append(this : Caps*, caps2 : LibGst::Caps*) : Void
  fun caps_append_structure = gst_caps_append_structure(this : Caps*, structure : LibGst::Structure*) : Void
  fun caps_append_structure_full = gst_caps_append_structure_full(this : Caps*, structure : LibGst::Structure*, features : LibGst::CapsFeatures*) : Void
  fun caps_can_intersect = gst_caps_can_intersect(this : Caps*, caps2 : LibGst::Caps*) : Bool
  fun caps_copy_nth = gst_caps_copy_nth(this : Caps*, nth : UInt32) : LibGst::Caps*
  fun caps_filter_and_map_in_place = gst_caps_filter_and_map_in_place(this : Caps*, func : LibGst::CapsFilterMapFunc, user_data : Void*) : Void
  fun caps_fixate = gst_caps_fixate(this : Caps*) : LibGst::Caps*
  fun caps_foreach = gst_caps_foreach(this : Caps*, func : LibGst::CapsForeachFunc, user_data : Void*) : Bool
  fun caps_get_features = gst_caps_get_features(this : Caps*, index : UInt32) : LibGst::CapsFeatures*
  fun caps_get_size = gst_caps_get_size(this : Caps*) : UInt32
  fun caps_get_structure = gst_caps_get_structure(this : Caps*, index : UInt32) : LibGst::Structure*
  fun caps_intersect = gst_caps_intersect(this : Caps*, caps2 : LibGst::Caps*) : LibGst::Caps*
  fun caps_intersect_full = gst_caps_intersect_full(this : Caps*, caps2 : LibGst::Caps*, mode : LibGst::CapsIntersectMode) : LibGst::Caps*
  fun caps_is_always_compatible = gst_caps_is_always_compatible(this : Caps*, caps2 : LibGst::Caps*) : Bool
  fun caps_is_any = gst_caps_is_any(this : Caps*) : Bool
  fun caps_is_empty = gst_caps_is_empty(this : Caps*) : Bool
  fun caps_is_equal = gst_caps_is_equal(this : Caps*, caps2 : LibGst::Caps*) : Bool
  fun caps_is_equal_fixed = gst_caps_is_equal_fixed(this : Caps*, caps2 : LibGst::Caps*) : Bool
  fun caps_is_fixed = gst_caps_is_fixed(this : Caps*) : Bool
  fun caps_is_strictly_equal = gst_caps_is_strictly_equal(this : Caps*, caps2 : LibGst::Caps*) : Bool
  fun caps_is_subset = gst_caps_is_subset(this : Caps*, superset : LibGst::Caps*) : Bool
  fun caps_is_subset_structure = gst_caps_is_subset_structure(this : Caps*, structure : LibGst::Structure*) : Bool
  fun caps_is_subset_structure_full = gst_caps_is_subset_structure_full(this : Caps*, structure : LibGst::Structure*, features : LibGst::CapsFeatures*) : Bool
  fun caps_map_in_place = gst_caps_map_in_place(this : Caps*, func : LibGst::CapsMapFunc, user_data : Void*) : Bool
  fun caps_merge = gst_caps_merge(this : Caps*, caps2 : LibGst::Caps*) : LibGst::Caps*
  fun caps_merge_structure = gst_caps_merge_structure(this : Caps*, structure : LibGst::Structure*) : LibGst::Caps*
  fun caps_merge_structure_full = gst_caps_merge_structure_full(this : Caps*, structure : LibGst::Structure*, features : LibGst::CapsFeatures*) : LibGst::Caps*
  fun caps_normalize = gst_caps_normalize(this : Caps*) : LibGst::Caps*
  fun caps_remove_structure = gst_caps_remove_structure(this : Caps*, idx : UInt32) : Void
  fun caps_set_features = gst_caps_set_features(this : Caps*, index : UInt32, features : LibGst::CapsFeatures*) : Void
  fun caps_set_value = gst_caps_set_value(this : Caps*, field : UInt8*, value : LibGObject::Value*) : Void
  fun caps_simplify = gst_caps_simplify(this : Caps*) : LibGst::Caps*
  fun caps_steal_structure = gst_caps_steal_structure(this : Caps*, index : UInt32) : LibGst::Structure*
  fun caps_subtract = gst_caps_subtract(this : Caps*, subtrahend : LibGst::Caps*) : LibGst::Caps*
  fun caps_to_string = gst_caps_to_string(this : Caps*) : UInt8*
  fun caps_truncate = gst_caps_truncate(this : Caps*) : LibGst::Caps*
  fun caps_from_string = gst_caps_from_string(string : UInt8*) : LibGst::Caps*

  struct CapsFeatures # struct
    _data : UInt8[0]
  end
  fun caps_features_new_any = gst_caps_features_new_any() : LibGst::CapsFeatures*
  fun caps_features_new_empty = gst_caps_features_new_empty() : LibGst::CapsFeatures*
  fun caps_features_add = gst_caps_features_add(this : CapsFeatures*, feature : UInt8*) : Void
  fun caps_features_add_id = gst_caps_features_add_id(this : CapsFeatures*, feature : UInt32) : Void
  fun caps_features_contains = gst_caps_features_contains(this : CapsFeatures*, feature : UInt8*) : Bool
  fun caps_features_contains_id = gst_caps_features_contains_id(this : CapsFeatures*, feature : UInt32) : Bool
  fun caps_features_copy = gst_caps_features_copy(this : CapsFeatures*) : LibGst::CapsFeatures*
  fun caps_features_free = gst_caps_features_free(this : CapsFeatures*) : Void
  fun caps_features_get_nth = gst_caps_features_get_nth(this : CapsFeatures*, i : UInt32) : UInt8*
  fun caps_features_get_nth_id = gst_caps_features_get_nth_id(this : CapsFeatures*, i : UInt32) : UInt32
  fun caps_features_get_size = gst_caps_features_get_size(this : CapsFeatures*) : UInt32
  fun caps_features_is_any = gst_caps_features_is_any(this : CapsFeatures*) : Bool
  fun caps_features_is_equal = gst_caps_features_is_equal(this : CapsFeatures*, features2 : LibGst::CapsFeatures*) : Bool
  fun caps_features_remove = gst_caps_features_remove(this : CapsFeatures*, feature : UInt8*) : Void
  fun caps_features_remove_id = gst_caps_features_remove_id(this : CapsFeatures*, feature : UInt32) : Void
  fun caps_features_set_parent_refcount = gst_caps_features_set_parent_refcount(this : CapsFeatures*, refcount : Int32*) : Bool
  fun caps_features_to_string = gst_caps_features_to_string(this : CapsFeatures*) : UInt8*
  fun caps_features_from_string = gst_caps_features_from_string(features : UInt8*) : LibGst::CapsFeatures*

  struct ClockEntry # struct
    refcount : Int32
    clock : LibGst::Clock*
    type : LibGst::ClockEntryType
    time : UInt64
    interval : UInt64
    status : LibGst::ClockReturn
    func : LibGst::ClockCallback
    user_data : Void*
    destroy_data : LibGLib::DestroyNotify
    unscheduled : Bool
    woken_up : Bool
    _gst_reserved : Void*
  end

  struct ClockPrivate # struct
    _data : UInt8[0]
  end

  struct Context # struct
    _data : UInt8[0]
  end
  fun context_new = gst_context_new(context_type : UInt8*, persistent : Bool) : LibGst::Context*
  fun context_get_context_type = gst_context_get_context_type(this : Context*) : UInt8*
  fun context_get_structure = gst_context_get_structure(this : Context*) : LibGst::Structure*
  fun context_has_context_type = gst_context_has_context_type(this : Context*, context_type : UInt8*) : Bool
  fun context_is_persistent = gst_context_is_persistent(this : Context*) : Bool
  fun context_writable_structure = gst_context_writable_structure(this : Context*) : LibGst::Structure*

  struct ControlBindingPrivate # struct
    _data : UInt8[0]
  end

  struct DateTime # struct
    _data : UInt8[0]
  end
  fun date_time_new = gst_date_time_new(tzoffset : Float32, year : Int32, month : Int32, day : Int32, hour : Int32, minute : Int32, seconds : Float64) : LibGst::DateTime*
  fun date_time_new_from_g_date_time = gst_date_time_new_from_g_date_time(dt : LibGLib::DateTime*) : LibGst::DateTime*
  fun date_time_new_from_iso8601_string = gst_date_time_new_from_iso8601_string(string : UInt8*) : LibGst::DateTime*
  fun date_time_new_from_unix_epoch_local_time = gst_date_time_new_from_unix_epoch_local_time(secs : Int64) : LibGst::DateTime*
  fun date_time_new_from_unix_epoch_utc = gst_date_time_new_from_unix_epoch_utc(secs : Int64) : LibGst::DateTime*
  fun date_time_new_local_time = gst_date_time_new_local_time(year : Int32, month : Int32, day : Int32, hour : Int32, minute : Int32, seconds : Float64) : LibGst::DateTime*
  fun date_time_new_now_local_time = gst_date_time_new_now_local_time() : LibGst::DateTime*
  fun date_time_new_now_utc = gst_date_time_new_now_utc() : LibGst::DateTime*
  fun date_time_new_y = gst_date_time_new_y(year : Int32) : LibGst::DateTime*
  fun date_time_new_ym = gst_date_time_new_ym(year : Int32, month : Int32) : LibGst::DateTime*
  fun date_time_new_ymd = gst_date_time_new_ymd(year : Int32, month : Int32, day : Int32) : LibGst::DateTime*
  fun date_time_get_day = gst_date_time_get_day(this : DateTime*) : Int32
  fun date_time_get_hour = gst_date_time_get_hour(this : DateTime*) : Int32
  fun date_time_get_microsecond = gst_date_time_get_microsecond(this : DateTime*) : Int32
  fun date_time_get_minute = gst_date_time_get_minute(this : DateTime*) : Int32
  fun date_time_get_month = gst_date_time_get_month(this : DateTime*) : Int32
  fun date_time_get_second = gst_date_time_get_second(this : DateTime*) : Int32
  fun date_time_get_time_zone_offset = gst_date_time_get_time_zone_offset(this : DateTime*) : Float32
  fun date_time_get_year = gst_date_time_get_year(this : DateTime*) : Int32
  fun date_time_has_day = gst_date_time_has_day(this : DateTime*) : Bool
  fun date_time_has_month = gst_date_time_has_month(this : DateTime*) : Bool
  fun date_time_has_second = gst_date_time_has_second(this : DateTime*) : Bool
  fun date_time_has_time = gst_date_time_has_time(this : DateTime*) : Bool
  fun date_time_has_year = gst_date_time_has_year(this : DateTime*) : Bool
  fun date_time_ref = gst_date_time_ref(this : DateTime*) : LibGst::DateTime*
  fun date_time_to_g_date_time = gst_date_time_to_g_date_time(this : DateTime*) : LibGLib::DateTime*
  fun date_time_to_iso8601_string = gst_date_time_to_iso8601_string(this : DateTime*) : UInt8*
  fun date_time_unref = gst_date_time_unref(this : DateTime*) : Void

  struct DebugCategory # struct
    threshold : Int32
    color : UInt32
    name : UInt8*
    description : UInt8*
  end
  fun debug_category_free = gst_debug_category_free(this : DebugCategory*) : Void
  fun debug_category_get_color = gst_debug_category_get_color(this : DebugCategory*) : UInt32
  fun debug_category_get_description = gst_debug_category_get_description(this : DebugCategory*) : UInt8*
  fun debug_category_get_name = gst_debug_category_get_name(this : DebugCategory*) : UInt8*
  fun debug_category_get_threshold = gst_debug_category_get_threshold(this : DebugCategory*) : LibGst::DebugLevel
  fun debug_category_reset_threshold = gst_debug_category_reset_threshold(this : DebugCategory*) : Void
  fun debug_category_set_threshold = gst_debug_category_set_threshold(this : DebugCategory*, level : LibGst::DebugLevel) : Void

  struct DebugMessage # struct
    _data : UInt8[0]
  end
  fun debug_message_get = gst_debug_message_get(this : DebugMessage*) : UInt8*

  struct DeviceMonitorPrivate # struct
    _data : UInt8[0]
  end

  struct DevicePrivate # struct
    _data : UInt8[0]
  end

  struct DeviceProviderPrivate # struct
    _data : UInt8[0]
  end

  struct Event # struct
    mini_object : LibGst::MiniObject
    type : LibGst::EventType
    timestamp : UInt64
    seqnum : UInt32
  end
  fun event_new_buffer_size = gst_event_new_buffer_size(format : LibGst::Format, minsize : Int64, maxsize : Int64, async : Bool) : LibGst::Event*
  fun event_new_caps = gst_event_new_caps(caps : LibGst::Caps*) : LibGst::Event*
  fun event_new_custom = gst_event_new_custom(type : LibGst::EventType, structure : LibGst::Structure*) : LibGst::Event*
  fun event_new_eos = gst_event_new_eos() : LibGst::Event*
  fun event_new_flush_start = gst_event_new_flush_start() : LibGst::Event*
  fun event_new_flush_stop = gst_event_new_flush_stop(reset_time : Bool) : LibGst::Event*
  fun event_new_gap = gst_event_new_gap(timestamp : UInt64, duration : UInt64) : LibGst::Event*
  fun event_new_latency = gst_event_new_latency(latency : UInt64) : LibGst::Event*
  fun event_new_navigation = gst_event_new_navigation(structure : LibGst::Structure*) : LibGst::Event*
  fun event_new_protection = gst_event_new_protection(system_id : UInt8*, data : LibGst::Buffer*, origin : UInt8*) : LibGst::Event*
  fun event_new_qos = gst_event_new_qos(type : LibGst::QOSType, proportion : Float64, diff : Int64, timestamp : UInt64) : LibGst::Event*
  fun event_new_reconfigure = gst_event_new_reconfigure() : LibGst::Event*
  fun event_new_seek = gst_event_new_seek(rate : Float64, format : LibGst::Format, flags : LibGst::SeekFlags, start_type : LibGst::SeekType, start : Int64, stop_type : LibGst::SeekType, stop : Int64) : LibGst::Event*
  fun event_new_segment = gst_event_new_segment(segment : LibGst::Segment*) : LibGst::Event*
  fun event_new_segment_done = gst_event_new_segment_done(format : LibGst::Format, position : Int64) : LibGst::Event*
  fun event_new_select_streams = gst_event_new_select_streams(streams : Void**) : LibGst::Event*
  fun event_new_sink_message = gst_event_new_sink_message(name : UInt8*, msg : LibGst::Message*) : LibGst::Event*
  fun event_new_step = gst_event_new_step(format : LibGst::Format, amount : UInt64, rate : Float64, flush : Bool, intermediate : Bool) : LibGst::Event*
  fun event_new_stream_collection = gst_event_new_stream_collection(collection : LibGst::StreamCollection*) : LibGst::Event*
  fun event_new_stream_group_done = gst_event_new_stream_group_done(group_id : UInt32) : LibGst::Event*
  fun event_new_stream_start = gst_event_new_stream_start(stream_id : UInt8*) : LibGst::Event*
  fun event_new_tag = gst_event_new_tag(taglist : LibGst::TagList*) : LibGst::Event*
  fun event_new_toc = gst_event_new_toc(toc : LibGst::Toc*, updated : Bool) : LibGst::Event*
  fun event_new_toc_select = gst_event_new_toc_select(uid : UInt8*) : LibGst::Event*
  fun event_copy_segment = gst_event_copy_segment(this : Event*, segment : LibGst::Segment*) : Void
  fun event_get_running_time_offset = gst_event_get_running_time_offset(this : Event*) : Int64
  fun event_get_seqnum = gst_event_get_seqnum(this : Event*) : UInt32
  fun event_get_structure = gst_event_get_structure(this : Event*) : LibGst::Structure*
  fun event_has_name = gst_event_has_name(this : Event*, name : UInt8*) : Bool
  fun event_parse_buffer_size = gst_event_parse_buffer_size(this : Event*, format : LibGst::Format*, minsize : Int64*, maxsize : Int64*, async : Bool*) : Void
  fun event_parse_caps = gst_event_parse_caps(this : Event*, caps : LibGst::Caps**) : Void
  fun event_parse_flush_stop = gst_event_parse_flush_stop(this : Event*, reset_time : Bool*) : Void
  fun event_parse_gap = gst_event_parse_gap(this : Event*, timestamp : UInt64*, duration : UInt64*) : Void
  fun event_parse_group_id = gst_event_parse_group_id(this : Event*, group_id : UInt32*) : Bool
  fun event_parse_latency = gst_event_parse_latency(this : Event*, latency : UInt64*) : Void
  fun event_parse_protection = gst_event_parse_protection(this : Event*, system_id : UInt8**, data : LibGst::Buffer**, origin : UInt8**) : Void
  fun event_parse_qos = gst_event_parse_qos(this : Event*, type : LibGst::QOSType*, proportion : Float64*, diff : Int64*, timestamp : UInt64*) : Void
  fun event_parse_seek = gst_event_parse_seek(this : Event*, rate : Float64*, format : LibGst::Format*, flags : LibGst::SeekFlags*, start_type : LibGst::SeekType*, start : Int64*, stop_type : LibGst::SeekType*, stop : Int64*) : Void
  fun event_parse_segment = gst_event_parse_segment(this : Event*, segment : LibGst::Segment**) : Void
  fun event_parse_segment_done = gst_event_parse_segment_done(this : Event*, format : LibGst::Format*, position : Int64*) : Void
  fun event_parse_select_streams = gst_event_parse_select_streams(this : Event*, streams : Void***) : Void
  fun event_parse_sink_message = gst_event_parse_sink_message(this : Event*, msg : LibGst::Message**) : Void
  fun event_parse_step = gst_event_parse_step(this : Event*, format : LibGst::Format*, amount : UInt64*, rate : Float64*, flush : Bool*, intermediate : Bool*) : Void
  fun event_parse_stream = gst_event_parse_stream(this : Event*, stream : LibGst::Stream**) : Void
  fun event_parse_stream_collection = gst_event_parse_stream_collection(this : Event*, collection : LibGst::StreamCollection**) : Void
  fun event_parse_stream_flags = gst_event_parse_stream_flags(this : Event*, flags : LibGst::StreamFlags*) : Void
  fun event_parse_stream_group_done = gst_event_parse_stream_group_done(this : Event*, group_id : UInt32*) : Void
  fun event_parse_stream_start = gst_event_parse_stream_start(this : Event*, stream_id : UInt8**) : Void
  fun event_parse_tag = gst_event_parse_tag(this : Event*, taglist : LibGst::TagList**) : Void
  fun event_parse_toc = gst_event_parse_toc(this : Event*, toc : LibGst::Toc**, updated : Bool*) : Void
  fun event_parse_toc_select = gst_event_parse_toc_select(this : Event*, uid : UInt8**) : Void
  fun event_set_group_id = gst_event_set_group_id(this : Event*, group_id : UInt32) : Void
  fun event_set_running_time_offset = gst_event_set_running_time_offset(this : Event*, offset : Int64) : Void
  fun event_set_seqnum = gst_event_set_seqnum(this : Event*, seqnum : UInt32) : Void
  fun event_set_stream = gst_event_set_stream(this : Event*, stream : LibGst::Stream*) : Void
  fun event_set_stream_flags = gst_event_set_stream_flags(this : Event*, flags : LibGst::StreamFlags) : Void
  fun event_writable_structure = gst_event_writable_structure(this : Event*) : LibGst::Structure*

  struct FormatDefinition # struct
    value : LibGst::Format
    nick : UInt8*
    description : UInt8*
    quark : UInt32
  end

  struct GhostPadPrivate # struct
    _data : UInt8[0]
  end

  struct Iterator # struct
    copy : LibGst::IteratorCopyFunction
    next_ : LibGst::IteratorNextFunction
    item : LibGst::IteratorItemFunction
    resync : LibGst::IteratorResyncFunction
    free : LibGst::IteratorFreeFunction
    pushed : LibGst::Iterator*
    type : UInt64
    lock : LibGLib::Mutex*
    cookie : UInt32
    master_cookie : UInt32*
    size : UInt32
    _gst_reserved : Void*
  end
  fun iterator_new_single = gst_iterator_new_single(type : UInt64, object : LibGObject::Value*) : LibGst::Iterator*
  fun iterator_copy = gst_iterator_copy(this : Iterator*) : LibGst::Iterator*
  fun iterator_filter = gst_iterator_filter(this : Iterator*, func : LibGLib::CompareFunc, user_data : LibGObject::Value*) : LibGst::Iterator*
  fun iterator_find_custom = gst_iterator_find_custom(this : Iterator*, func : LibGLib::CompareFunc, elem : LibGObject::Value*, user_data : Void*) : Bool
  fun iterator_fold = gst_iterator_fold(this : Iterator*, func : LibGst::IteratorFoldFunction, ret : LibGObject::Value*, user_data : Void*) : LibGst::IteratorResult
  fun iterator_foreach = gst_iterator_foreach(this : Iterator*, func : LibGst::IteratorForeachFunction, user_data : Void*) : LibGst::IteratorResult
  fun iterator_free = gst_iterator_free(this : Iterator*) : Void
  fun iterator_next = gst_iterator_next(this : Iterator*, elem : LibGObject::Value*) : LibGst::IteratorResult
  fun iterator_push = gst_iterator_push(this : Iterator*, other : LibGst::Iterator*) : Void
  fun iterator_resync = gst_iterator_resync(this : Iterator*) : Void

  struct MapInfo # struct
    memory : LibGst::Memory*
    flags : LibGst::MapFlags
    data : UInt8*
    size : UInt64
    maxsize : UInt64
    user_data : Void*
    _gst_reserved : Void*
  end

  struct Memory # struct
    mini_object : LibGst::MiniObject
    allocator : LibGst::Allocator*
    parent : LibGst::Memory*
    maxsize : UInt64
    align : UInt64
    offset : UInt64
    size : UInt64
  end
  fun memory_new_wrapped = gst_memory_new_wrapped(flags : LibGst::MemoryFlags, data : UInt8*, maxsize : UInt64, offset : UInt64, size : UInt64, user_data : Void*, notify : LibGLib::DestroyNotify) : LibGst::Memory*
  fun memory_copy = gst_memory_copy(this : Memory*, offset : Int64, size : Int64) : LibGst::Memory*
  fun memory_get_sizes = gst_memory_get_sizes(this : Memory*, offset : UInt64*, maxsize : UInt64*) : UInt64
  fun memory_is_span = gst_memory_is_span(this : Memory*, mem2 : LibGst::Memory*, offset : UInt64*) : Bool
  fun memory_is_type = gst_memory_is_type(this : Memory*, mem_type : UInt8*) : Bool
  fun memory_make_mapped = gst_memory_make_mapped(this : Memory*, info : LibGst::MapInfo*, flags : LibGst::MapFlags) : LibGst::Memory*
  fun memory_map = gst_memory_map(this : Memory*, info : LibGst::MapInfo*, flags : LibGst::MapFlags) : Bool
  fun memory_resize = gst_memory_resize(this : Memory*, offset : Int64, size : UInt64) : Void
  fun memory_share = gst_memory_share(this : Memory*, offset : Int64, size : Int64) : LibGst::Memory*
  fun memory_unmap = gst_memory_unmap(this : Memory*, info : LibGst::MapInfo*) : Void

  struct Message # struct
    mini_object : LibGst::MiniObject
    type : LibGst::MessageType
    timestamp : UInt64
    src : LibGst::Object*
    seqnum : UInt32
    lock : LibGLib::Mutex
    cond : LibGLib::Cond
  end
  fun message_new_application = gst_message_new_application(src : LibGst::Object*, structure : LibGst::Structure*) : LibGst::Message*
  fun message_new_async_done = gst_message_new_async_done(src : LibGst::Object*, running_time : UInt64) : LibGst::Message*
  fun message_new_async_start = gst_message_new_async_start(src : LibGst::Object*) : LibGst::Message*
  fun message_new_buffering = gst_message_new_buffering(src : LibGst::Object*, percent : Int32) : LibGst::Message*
  fun message_new_clock_lost = gst_message_new_clock_lost(src : LibGst::Object*, clock : LibGst::Clock*) : LibGst::Message*
  fun message_new_clock_provide = gst_message_new_clock_provide(src : LibGst::Object*, clock : LibGst::Clock*, ready : Bool) : LibGst::Message*
  fun message_new_custom = gst_message_new_custom(type : LibGst::MessageType, src : LibGst::Object*, structure : LibGst::Structure*) : LibGst::Message*
  fun message_new_device_added = gst_message_new_device_added(src : LibGst::Object*, device : LibGst::Device*) : LibGst::Message*
  fun message_new_device_removed = gst_message_new_device_removed(src : LibGst::Object*, device : LibGst::Device*) : LibGst::Message*
  fun message_new_duration_changed = gst_message_new_duration_changed(src : LibGst::Object*) : LibGst::Message*
  fun message_new_element = gst_message_new_element(src : LibGst::Object*, structure : LibGst::Structure*) : LibGst::Message*
  fun message_new_eos = gst_message_new_eos(src : LibGst::Object*) : LibGst::Message*
  fun message_new_error = gst_message_new_error(src : LibGst::Object*, error : LibGLib::Error**, debug : UInt8*) : LibGst::Message*
  fun message_new_error_with_details = gst_message_new_error_with_details(src : LibGst::Object*, error : LibGLib::Error**, debug : UInt8*, details : LibGst::Structure*) : LibGst::Message*
  fun message_new_have_context = gst_message_new_have_context(src : LibGst::Object*, context : LibGst::Context*) : LibGst::Message*
  fun message_new_info = gst_message_new_info(src : LibGst::Object*, error : LibGLib::Error**, debug : UInt8*) : LibGst::Message*
  fun message_new_info_with_details = gst_message_new_info_with_details(src : LibGst::Object*, error : LibGLib::Error**, debug : UInt8*, details : LibGst::Structure*) : LibGst::Message*
  fun message_new_latency = gst_message_new_latency(src : LibGst::Object*) : LibGst::Message*
  fun message_new_need_context = gst_message_new_need_context(src : LibGst::Object*, context_type : UInt8*) : LibGst::Message*
  fun message_new_new_clock = gst_message_new_new_clock(src : LibGst::Object*, clock : LibGst::Clock*) : LibGst::Message*
  fun message_new_progress = gst_message_new_progress(src : LibGst::Object*, type : LibGst::ProgressType, code : UInt8*, text : UInt8*) : LibGst::Message*
  fun message_new_property_notify = gst_message_new_property_notify(src : LibGst::Object*, property_name : UInt8*, val : LibGObject::Value*) : LibGst::Message*
  fun message_new_qos = gst_message_new_qos(src : LibGst::Object*, live : Bool, running_time : UInt64, stream_time : UInt64, timestamp : UInt64, duration : UInt64) : LibGst::Message*
  fun message_new_redirect = gst_message_new_redirect(src : LibGst::Object*, location : UInt8*, tag_list : LibGst::TagList*, entry_struct : LibGst::Structure*) : LibGst::Message*
  fun message_new_request_state = gst_message_new_request_state(src : LibGst::Object*, state : LibGst::State) : LibGst::Message*
  fun message_new_reset_time = gst_message_new_reset_time(src : LibGst::Object*, running_time : UInt64) : LibGst::Message*
  fun message_new_segment_done = gst_message_new_segment_done(src : LibGst::Object*, format : LibGst::Format, position : Int64) : LibGst::Message*
  fun message_new_segment_start = gst_message_new_segment_start(src : LibGst::Object*, format : LibGst::Format, position : Int64) : LibGst::Message*
  fun message_new_state_changed = gst_message_new_state_changed(src : LibGst::Object*, oldstate : LibGst::State, newstate : LibGst::State, pending : LibGst::State) : LibGst::Message*
  fun message_new_state_dirty = gst_message_new_state_dirty(src : LibGst::Object*) : LibGst::Message*
  fun message_new_step_done = gst_message_new_step_done(src : LibGst::Object*, format : LibGst::Format, amount : UInt64, rate : Float64, flush : Bool, intermediate : Bool, duration : UInt64, eos : Bool) : LibGst::Message*
  fun message_new_step_start = gst_message_new_step_start(src : LibGst::Object*, active : Bool, format : LibGst::Format, amount : UInt64, rate : Float64, flush : Bool, intermediate : Bool) : LibGst::Message*
  fun message_new_stream_collection = gst_message_new_stream_collection(src : LibGst::Object*, collection : LibGst::StreamCollection*) : LibGst::Message*
  fun message_new_stream_start = gst_message_new_stream_start(src : LibGst::Object*) : LibGst::Message*
  fun message_new_stream_status = gst_message_new_stream_status(src : LibGst::Object*, type : LibGst::StreamStatusType, owner : LibGst::Element*) : LibGst::Message*
  fun message_new_streams_selected = gst_message_new_streams_selected(src : LibGst::Object*, collection : LibGst::StreamCollection*) : LibGst::Message*
  fun message_new_structure_change = gst_message_new_structure_change(src : LibGst::Object*, type : LibGst::StructureChangeType, owner : LibGst::Element*, busy : Bool) : LibGst::Message*
  fun message_new_tag = gst_message_new_tag(src : LibGst::Object*, tag_list : LibGst::TagList*) : LibGst::Message*
  fun message_new_toc = gst_message_new_toc(src : LibGst::Object*, toc : LibGst::Toc*, updated : Bool) : LibGst::Message*
  fun message_new_warning = gst_message_new_warning(src : LibGst::Object*, error : LibGLib::Error**, debug : UInt8*) : LibGst::Message*
  fun message_new_warning_with_details = gst_message_new_warning_with_details(src : LibGst::Object*, error : LibGLib::Error**, debug : UInt8*, details : LibGst::Structure*) : LibGst::Message*
  fun message_add_redirect_entry = gst_message_add_redirect_entry(this : Message*, location : UInt8*, tag_list : LibGst::TagList*, entry_struct : LibGst::Structure*) : Void
  fun message_get_num_redirect_entries = gst_message_get_num_redirect_entries(this : Message*) : UInt64
  fun message_get_seqnum = gst_message_get_seqnum(this : Message*) : UInt32
  fun message_get_stream_status_object = gst_message_get_stream_status_object(this : Message*) : LibGObject::Value*
  fun message_get_structure = gst_message_get_structure(this : Message*) : LibGst::Structure*
  fun message_has_name = gst_message_has_name(this : Message*, name : UInt8*) : Bool
  fun message_parse_async_done = gst_message_parse_async_done(this : Message*, running_time : UInt64*) : Void
  fun message_parse_buffering = gst_message_parse_buffering(this : Message*, percent : Int32*) : Void
  fun message_parse_buffering_stats = gst_message_parse_buffering_stats(this : Message*, mode : LibGst::BufferingMode*, avg_in : Int32*, avg_out : Int32*, buffering_left : Int64*) : Void
  fun message_parse_clock_lost = gst_message_parse_clock_lost(this : Message*, clock : LibGst::Clock**) : Void
  fun message_parse_clock_provide = gst_message_parse_clock_provide(this : Message*, clock : LibGst::Clock**, ready : Bool*) : Void
  fun message_parse_context_type = gst_message_parse_context_type(this : Message*, context_type : UInt8**) : Bool
  fun message_parse_device_added = gst_message_parse_device_added(this : Message*, device : LibGst::Device**) : Void
  fun message_parse_device_removed = gst_message_parse_device_removed(this : Message*, device : LibGst::Device**) : Void
  fun message_parse_error = gst_message_parse_error(this : Message*, gerror : LibGLib::Error***, debug : UInt8**) : Void
  fun message_parse_error_details = gst_message_parse_error_details(this : Message*, structure : LibGst::Structure**) : Void
  fun message_parse_group_id = gst_message_parse_group_id(this : Message*, group_id : UInt32*) : Bool
  fun message_parse_have_context = gst_message_parse_have_context(this : Message*, context : LibGst::Context**) : Void
  fun message_parse_info = gst_message_parse_info(this : Message*, gerror : LibGLib::Error***, debug : UInt8**) : Void
  fun message_parse_info_details = gst_message_parse_info_details(this : Message*, structure : LibGst::Structure**) : Void
  fun message_parse_new_clock = gst_message_parse_new_clock(this : Message*, clock : LibGst::Clock**) : Void
  fun message_parse_progress = gst_message_parse_progress(this : Message*, type : LibGst::ProgressType*, code : UInt8**, text : UInt8**) : Void
  fun message_parse_property_notify = gst_message_parse_property_notify(this : Message*, object : LibGst::Object**, property_name : UInt8**, property_value : LibGObject::Value**) : Void
  fun message_parse_qos = gst_message_parse_qos(this : Message*, live : Bool*, running_time : UInt64*, stream_time : UInt64*, timestamp : UInt64*, duration : UInt64*) : Void
  fun message_parse_qos_stats = gst_message_parse_qos_stats(this : Message*, format : LibGst::Format*, processed : UInt64*, dropped : UInt64*) : Void
  fun message_parse_qos_values = gst_message_parse_qos_values(this : Message*, jitter : Int64*, proportion : Float64*, quality : Int32*) : Void
  fun message_parse_redirect_entry = gst_message_parse_redirect_entry(this : Message*, entry_index : UInt64, location : UInt8**, tag_list : LibGst::TagList**, entry_struct : LibGst::Structure**) : Void
  fun message_parse_request_state = gst_message_parse_request_state(this : Message*, state : LibGst::State*) : Void
  fun message_parse_reset_time = gst_message_parse_reset_time(this : Message*, running_time : UInt64*) : Void
  fun message_parse_segment_done = gst_message_parse_segment_done(this : Message*, format : LibGst::Format*, position : Int64*) : Void
  fun message_parse_segment_start = gst_message_parse_segment_start(this : Message*, format : LibGst::Format*, position : Int64*) : Void
  fun message_parse_state_changed = gst_message_parse_state_changed(this : Message*, oldstate : LibGst::State*, newstate : LibGst::State*, pending : LibGst::State*) : Void
  fun message_parse_step_done = gst_message_parse_step_done(this : Message*, format : LibGst::Format*, amount : UInt64*, rate : Float64*, flush : Bool*, intermediate : Bool*, duration : UInt64*, eos : Bool*) : Void
  fun message_parse_step_start = gst_message_parse_step_start(this : Message*, active : Bool*, format : LibGst::Format*, amount : UInt64*, rate : Float64*, flush : Bool*, intermediate : Bool*) : Void
  fun message_parse_stream_collection = gst_message_parse_stream_collection(this : Message*, collection : LibGst::StreamCollection**) : Void
  fun message_parse_stream_status = gst_message_parse_stream_status(this : Message*, type : LibGst::StreamStatusType*, owner : LibGst::Element**) : Void
  fun message_parse_streams_selected = gst_message_parse_streams_selected(this : Message*, collection : LibGst::StreamCollection**) : Void
  fun message_parse_structure_change = gst_message_parse_structure_change(this : Message*, type : LibGst::StructureChangeType*, owner : LibGst::Element**, busy : Bool*) : Void
  fun message_parse_tag = gst_message_parse_tag(this : Message*, tag_list : LibGst::TagList**) : Void
  fun message_parse_toc = gst_message_parse_toc(this : Message*, toc : LibGst::Toc**, updated : Bool*) : Void
  fun message_parse_warning = gst_message_parse_warning(this : Message*, gerror : LibGLib::Error***, debug : UInt8**) : Void
  fun message_parse_warning_details = gst_message_parse_warning_details(this : Message*, structure : LibGst::Structure**) : Void
  fun message_set_buffering_stats = gst_message_set_buffering_stats(this : Message*, mode : LibGst::BufferingMode, avg_in : Int32, avg_out : Int32, buffering_left : Int64) : Void
  fun message_set_group_id = gst_message_set_group_id(this : Message*, group_id : UInt32) : Void
  fun message_set_qos_stats = gst_message_set_qos_stats(this : Message*, format : LibGst::Format, processed : UInt64, dropped : UInt64) : Void
  fun message_set_qos_values = gst_message_set_qos_values(this : Message*, jitter : Int64, proportion : Float64, quality : Int32) : Void
  fun message_set_seqnum = gst_message_set_seqnum(this : Message*, seqnum : UInt32) : Void
  fun message_set_stream_status_object = gst_message_set_stream_status_object(this : Message*, object : LibGObject::Value*) : Void
  fun message_streams_selected_add = gst_message_streams_selected_add(this : Message*, stream : LibGst::Stream*) : Void
  fun message_streams_selected_get_size = gst_message_streams_selected_get_size(this : Message*) : UInt32
  fun message_streams_selected_get_stream = gst_message_streams_selected_get_stream(this : Message*, idx : UInt32) : LibGst::Stream*
  fun message_writable_structure = gst_message_writable_structure(this : Message*) : LibGst::Structure*

  struct Meta # struct
    flags : LibGst::MetaFlags
    info : LibGst::MetaInfo*
  end
  fun meta_api_type_get_tags = gst_meta_api_type_get_tags(api : UInt64) : UInt8**
  fun meta_api_type_has_tag = gst_meta_api_type_has_tag(api : UInt64, tag : UInt32) : Bool
  fun meta_api_type_register = gst_meta_api_type_register(api : UInt8*, tags : UInt8**) : UInt64
  fun meta_get_info = gst_meta_get_info(impl : UInt8*) : LibGst::MetaInfo*
  fun meta_register = gst_meta_register(api : UInt64, impl : UInt8*, size : UInt64, init_func : LibGst::MetaInitFunction, free_func : LibGst::MetaFreeFunction, transform_func : LibGst::MetaTransformFunction) : LibGst::MetaInfo*

  struct MetaInfo # struct
    api : UInt64
    type : UInt64
    size : UInt64
    init_func : LibGst::MetaInitFunction
    free_func : LibGst::MetaFreeFunction
    transform_func : LibGst::MetaTransformFunction
  end

  struct MetaTransformCopy # struct
    region : Bool
    offset : UInt64
    size : UInt64
  end

  struct MiniObject # struct
    type : UInt64
    refcount : Int32
    lockstate : Int32
    flags : UInt32
    copy : Void*
    dispose : LibGst::MiniObjectDisposeFunction
    free : LibGst::MiniObjectFreeFunction
    n_qdata : UInt32
    qdata : Void*
  end
  fun mini_object_get_qdata = gst_mini_object_get_qdata(this : MiniObject*, quark : UInt32) : Void*
  fun mini_object_is_writable = gst_mini_object_is_writable(this : MiniObject*) : Bool
  fun mini_object_lock = gst_mini_object_lock(this : MiniObject*, flags : LibGst::LockFlags) : Bool
  fun mini_object_set_qdata = gst_mini_object_set_qdata(this : MiniObject*, quark : UInt32, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun mini_object_steal_qdata = gst_mini_object_steal_qdata(this : MiniObject*, quark : UInt32) : Void*
  fun mini_object_unlock = gst_mini_object_unlock(this : MiniObject*, flags : LibGst::LockFlags) : Void
  fun mini_object_replace = gst_mini_object_replace(olddata : LibGst::MiniObject**, newdata : LibGst::MiniObject*) : Bool
  fun mini_object_take = gst_mini_object_take(olddata : LibGst::MiniObject**, newdata : LibGst::MiniObject*) : Bool

  struct PadPrivate # struct
    _data : UInt8[0]
  end

  struct PadProbeInfo # struct
    type : LibGst::PadProbeType
    id : UInt64
    data : Void*
    offset : UInt64
    size : UInt32
  end
  fun pad_probe_info_get_buffer = gst_pad_probe_info_get_buffer(this : PadProbeInfo*) : LibGst::Buffer*
  fun pad_probe_info_get_buffer_list = gst_pad_probe_info_get_buffer_list(this : PadProbeInfo*) : LibGst::BufferList*
  fun pad_probe_info_get_event = gst_pad_probe_info_get_event(this : PadProbeInfo*) : LibGst::Event*
  fun pad_probe_info_get_query = gst_pad_probe_info_get_query(this : PadProbeInfo*) : LibGst::Query*

  struct ParamSpecArray # struct
    parent_instance : LibGObject::ParamSpec*
    element_spec : LibGObject::ParamSpec*
  end

  struct ParamSpecFraction # struct
    parent_instance : LibGObject::ParamSpec*
    min_num : Int32
    min_den : Int32
    max_num : Int32
    max_den : Int32
    def_num : Int32
    def_den : Int32
  end

  struct ParentBufferMeta # struct
    parent : LibGst::Meta
    buffer : LibGst::Buffer*
  end
  fun parent_buffer_meta_get_info = gst_parent_buffer_meta_get_info() : LibGst::MetaInfo*

  struct ParseContext # struct
    _data : UInt8[0]
  end
  fun parse_context_new = gst_parse_context_new() : LibGst::ParseContext*
  fun parse_context_copy = gst_parse_context_copy(this : ParseContext*) : LibGst::ParseContext*
  fun parse_context_free = gst_parse_context_free(this : ParseContext*) : Void
  fun parse_context_get_missing_elements = gst_parse_context_get_missing_elements(this : ParseContext*) : UInt8**

  struct PipelinePrivate # struct
    _data : UInt8[0]
  end

  struct PluginDesc # struct
    major_version : Int32
    minor_version : Int32
    name : UInt8*
    description : UInt8*
    plugin_init : LibGst::PluginInitFunc
    version : UInt8*
    license : UInt8*
    source : UInt8*
    package : UInt8*
    origin : UInt8*
    release_datetime : UInt8*
    _gst_reserved : Void*
  end

  struct Poll # struct
    _data : UInt8[0]
  end
  fun poll_add_fd = gst_poll_add_fd(this : Poll*, fd : LibGst::PollFD*) : Bool
  fun poll_fd_can_read = gst_poll_fd_can_read(this : Poll*, fd : LibGst::PollFD*) : Bool
  fun poll_fd_can_write = gst_poll_fd_can_write(this : Poll*, fd : LibGst::PollFD*) : Bool
  fun poll_fd_ctl_read = gst_poll_fd_ctl_read(this : Poll*, fd : LibGst::PollFD*, active : Bool) : Bool
  fun poll_fd_ctl_write = gst_poll_fd_ctl_write(this : Poll*, fd : LibGst::PollFD*, active : Bool) : Bool
  fun poll_fd_has_closed = gst_poll_fd_has_closed(this : Poll*, fd : LibGst::PollFD*) : Bool
  fun poll_fd_has_error = gst_poll_fd_has_error(this : Poll*, fd : LibGst::PollFD*) : Bool
  fun poll_fd_ignored = gst_poll_fd_ignored(this : Poll*, fd : LibGst::PollFD*) : Void
  fun poll_free = gst_poll_free(this : Poll*) : Void
  fun poll_get_read_gpollfd = gst_poll_get_read_gpollfd(this : Poll*, fd : LibGLib::PollFD*) : Void
  fun poll_read_control = gst_poll_read_control(this : Poll*) : Bool
  fun poll_remove_fd = gst_poll_remove_fd(this : Poll*, fd : LibGst::PollFD*) : Bool
  fun poll_restart = gst_poll_restart(this : Poll*) : Void
  fun poll_set_controllable = gst_poll_set_controllable(this : Poll*, controllable : Bool) : Bool
  fun poll_set_flushing = gst_poll_set_flushing(this : Poll*, flushing : Bool) : Void
  fun poll_wait = gst_poll_wait(this : Poll*, timeout : UInt64) : Int32
  fun poll_write_control = gst_poll_write_control(this : Poll*) : Bool

  struct PollFD # struct
    fd : Int32
    idx : Int32
  end
  fun poll_f_d_init = gst_poll_fd_init(this : PollFD*) : Void

  struct Promise # struct
    parent : LibGst::MiniObject
  end
  fun promise_new = gst_promise_new() : LibGst::Promise*
  fun promise_new_with_change_func = gst_promise_new_with_change_func(func : LibGst::PromiseChangeFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : LibGst::Promise*
  fun promise_expire = gst_promise_expire(this : Promise*) : Void
  fun promise_get_reply = gst_promise_get_reply(this : Promise*) : LibGst::Structure*
  fun promise_interrupt = gst_promise_interrupt(this : Promise*) : Void
  fun promise_reply = gst_promise_reply(this : Promise*, s : LibGst::Structure*) : Void
  fun promise_wait = gst_promise_wait(this : Promise*) : LibGst::PromiseResult

  struct ProtectionMeta # struct
    meta : LibGst::Meta
    info : LibGst::Structure*
  end
  fun protection_meta_get_info = gst_protection_meta_get_info() : LibGst::MetaInfo*

  struct ProxyPadPrivate # struct
    _data : UInt8[0]
  end

  struct Query # struct
    mini_object : LibGst::MiniObject
    type : LibGst::QueryType
  end
  fun query_new_accept_caps = gst_query_new_accept_caps(caps : LibGst::Caps*) : LibGst::Query*
  fun query_new_allocation = gst_query_new_allocation(caps : LibGst::Caps*, need_pool : Bool) : LibGst::Query*
  fun query_new_buffering = gst_query_new_buffering(format : LibGst::Format) : LibGst::Query*
  fun query_new_caps = gst_query_new_caps(filter : LibGst::Caps*) : LibGst::Query*
  fun query_new_context = gst_query_new_context(context_type : UInt8*) : LibGst::Query*
  fun query_new_convert = gst_query_new_convert(src_format : LibGst::Format, value : Int64, dest_format : LibGst::Format) : LibGst::Query*
  fun query_new_custom = gst_query_new_custom(type : LibGst::QueryType, structure : LibGst::Structure*) : LibGst::Query*
  fun query_new_drain = gst_query_new_drain() : LibGst::Query*
  fun query_new_duration = gst_query_new_duration(format : LibGst::Format) : LibGst::Query*
  fun query_new_formats = gst_query_new_formats() : LibGst::Query*
  fun query_new_latency = gst_query_new_latency() : LibGst::Query*
  fun query_new_position = gst_query_new_position(format : LibGst::Format) : LibGst::Query*
  fun query_new_scheduling = gst_query_new_scheduling() : LibGst::Query*
  fun query_new_seeking = gst_query_new_seeking(format : LibGst::Format) : LibGst::Query*
  fun query_new_segment = gst_query_new_segment(format : LibGst::Format) : LibGst::Query*
  fun query_new_uri = gst_query_new_uri() : LibGst::Query*
  fun query_add_allocation_meta = gst_query_add_allocation_meta(this : Query*, api : UInt64, params : LibGst::Structure*) : Void
  fun query_add_allocation_param = gst_query_add_allocation_param(this : Query*, allocator : LibGst::Allocator*, params : LibGst::AllocationParams*) : Void
  fun query_add_allocation_pool = gst_query_add_allocation_pool(this : Query*, pool : LibGst::BufferPool*, size : UInt32, min_buffers : UInt32, max_buffers : UInt32) : Void
  fun query_add_buffering_range = gst_query_add_buffering_range(this : Query*, start : Int64, stop : Int64) : Bool
  fun query_add_scheduling_mode = gst_query_add_scheduling_mode(this : Query*, mode : LibGst::PadMode) : Void
  fun query_find_allocation_meta = gst_query_find_allocation_meta(this : Query*, api : UInt64, index : UInt32*) : Bool
  fun query_get_n_allocation_metas = gst_query_get_n_allocation_metas(this : Query*) : UInt32
  fun query_get_n_allocation_params = gst_query_get_n_allocation_params(this : Query*) : UInt32
  fun query_get_n_allocation_pools = gst_query_get_n_allocation_pools(this : Query*) : UInt32
  fun query_get_n_buffering_ranges = gst_query_get_n_buffering_ranges(this : Query*) : UInt32
  fun query_get_n_scheduling_modes = gst_query_get_n_scheduling_modes(this : Query*) : UInt32
  fun query_get_structure = gst_query_get_structure(this : Query*) : LibGst::Structure*
  fun query_has_scheduling_mode = gst_query_has_scheduling_mode(this : Query*, mode : LibGst::PadMode) : Bool
  fun query_has_scheduling_mode_with_flags = gst_query_has_scheduling_mode_with_flags(this : Query*, mode : LibGst::PadMode, flags : LibGst::SchedulingFlags) : Bool
  fun query_parse_accept_caps = gst_query_parse_accept_caps(this : Query*, caps : LibGst::Caps**) : Void
  fun query_parse_accept_caps_result = gst_query_parse_accept_caps_result(this : Query*, result : Bool*) : Void
  fun query_parse_allocation = gst_query_parse_allocation(this : Query*, caps : LibGst::Caps**, need_pool : Bool*) : Void
  fun query_parse_buffering_percent = gst_query_parse_buffering_percent(this : Query*, busy : Bool*, percent : Int32*) : Void
  fun query_parse_buffering_range = gst_query_parse_buffering_range(this : Query*, format : LibGst::Format*, start : Int64*, stop : Int64*, estimated_total : Int64*) : Void
  fun query_parse_buffering_stats = gst_query_parse_buffering_stats(this : Query*, mode : LibGst::BufferingMode*, avg_in : Int32*, avg_out : Int32*, buffering_left : Int64*) : Void
  fun query_parse_caps = gst_query_parse_caps(this : Query*, filter : LibGst::Caps**) : Void
  fun query_parse_caps_result = gst_query_parse_caps_result(this : Query*, caps : LibGst::Caps**) : Void
  fun query_parse_context = gst_query_parse_context(this : Query*, context : LibGst::Context**) : Void
  fun query_parse_context_type = gst_query_parse_context_type(this : Query*, context_type : UInt8**) : Bool
  fun query_parse_convert = gst_query_parse_convert(this : Query*, src_format : LibGst::Format*, src_value : Int64*, dest_format : LibGst::Format*, dest_value : Int64*) : Void
  fun query_parse_duration = gst_query_parse_duration(this : Query*, format : LibGst::Format*, duration : Int64*) : Void
  fun query_parse_latency = gst_query_parse_latency(this : Query*, live : Bool*, min_latency : UInt64*, max_latency : UInt64*) : Void
  fun query_parse_n_formats = gst_query_parse_n_formats(this : Query*, n_formats : UInt32*) : Void
  fun query_parse_nth_allocation_meta = gst_query_parse_nth_allocation_meta(this : Query*, index : UInt32, params : LibGst::Structure**) : UInt64
  fun query_parse_nth_allocation_param = gst_query_parse_nth_allocation_param(this : Query*, index : UInt32, allocator : LibGst::Allocator**, params : LibGst::AllocationParams*) : Void
  fun query_parse_nth_allocation_pool = gst_query_parse_nth_allocation_pool(this : Query*, index : UInt32, pool : LibGst::BufferPool**, size : UInt32*, min_buffers : UInt32*, max_buffers : UInt32*) : Void
  fun query_parse_nth_buffering_range = gst_query_parse_nth_buffering_range(this : Query*, index : UInt32, start : Int64*, stop : Int64*) : Bool
  fun query_parse_nth_format = gst_query_parse_nth_format(this : Query*, nth : UInt32, format : LibGst::Format*) : Void
  fun query_parse_nth_scheduling_mode = gst_query_parse_nth_scheduling_mode(this : Query*, index : UInt32) : LibGst::PadMode
  fun query_parse_position = gst_query_parse_position(this : Query*, format : LibGst::Format*, cur : Int64*) : Void
  fun query_parse_scheduling = gst_query_parse_scheduling(this : Query*, flags : LibGst::SchedulingFlags*, minsize : Int32*, maxsize : Int32*, align : Int32*) : Void
  fun query_parse_seeking = gst_query_parse_seeking(this : Query*, format : LibGst::Format*, seekable : Bool*, segment_start : Int64*, segment_end : Int64*) : Void
  fun query_parse_segment = gst_query_parse_segment(this : Query*, rate : Float64*, format : LibGst::Format*, start_value : Int64*, stop_value : Int64*) : Void
  fun query_parse_uri = gst_query_parse_uri(this : Query*, uri : UInt8**) : Void
  fun query_parse_uri_redirection = gst_query_parse_uri_redirection(this : Query*, uri : UInt8**) : Void
  fun query_parse_uri_redirection_permanent = gst_query_parse_uri_redirection_permanent(this : Query*, permanent : Bool*) : Void
  fun query_remove_nth_allocation_meta = gst_query_remove_nth_allocation_meta(this : Query*, index : UInt32) : Void
  fun query_remove_nth_allocation_param = gst_query_remove_nth_allocation_param(this : Query*, index : UInt32) : Void
  fun query_remove_nth_allocation_pool = gst_query_remove_nth_allocation_pool(this : Query*, index : UInt32) : Void
  fun query_set_accept_caps_result = gst_query_set_accept_caps_result(this : Query*, result : Bool) : Void
  fun query_set_buffering_percent = gst_query_set_buffering_percent(this : Query*, busy : Bool, percent : Int32) : Void
  fun query_set_buffering_range = gst_query_set_buffering_range(this : Query*, format : LibGst::Format, start : Int64, stop : Int64, estimated_total : Int64) : Void
  fun query_set_buffering_stats = gst_query_set_buffering_stats(this : Query*, mode : LibGst::BufferingMode, avg_in : Int32, avg_out : Int32, buffering_left : Int64) : Void
  fun query_set_caps_result = gst_query_set_caps_result(this : Query*, caps : LibGst::Caps*) : Void
  fun query_set_context = gst_query_set_context(this : Query*, context : LibGst::Context*) : Void
  fun query_set_convert = gst_query_set_convert(this : Query*, src_format : LibGst::Format, src_value : Int64, dest_format : LibGst::Format, dest_value : Int64) : Void
  fun query_set_duration = gst_query_set_duration(this : Query*, format : LibGst::Format, duration : Int64) : Void
  fun query_set_formatsv = gst_query_set_formatsv(this : Query*, n_formats : Int32, formats : LibGst::Format*) : Void
  fun query_set_latency = gst_query_set_latency(this : Query*, live : Bool, min_latency : UInt64, max_latency : UInt64) : Void
  fun query_set_nth_allocation_param = gst_query_set_nth_allocation_param(this : Query*, index : UInt32, allocator : LibGst::Allocator*, params : LibGst::AllocationParams*) : Void
  fun query_set_nth_allocation_pool = gst_query_set_nth_allocation_pool(this : Query*, index : UInt32, pool : LibGst::BufferPool*, size : UInt32, min_buffers : UInt32, max_buffers : UInt32) : Void
  fun query_set_position = gst_query_set_position(this : Query*, format : LibGst::Format, cur : Int64) : Void
  fun query_set_scheduling = gst_query_set_scheduling(this : Query*, flags : LibGst::SchedulingFlags, minsize : Int32, maxsize : Int32, align : Int32) : Void
  fun query_set_seeking = gst_query_set_seeking(this : Query*, format : LibGst::Format, seekable : Bool, segment_start : Int64, segment_end : Int64) : Void
  fun query_set_segment = gst_query_set_segment(this : Query*, rate : Float64, format : LibGst::Format, start_value : Int64, stop_value : Int64) : Void
  fun query_set_uri = gst_query_set_uri(this : Query*, uri : UInt8*) : Void
  fun query_set_uri_redirection = gst_query_set_uri_redirection(this : Query*, uri : UInt8*) : Void
  fun query_set_uri_redirection_permanent = gst_query_set_uri_redirection_permanent(this : Query*, permanent : Bool) : Void
  fun query_writable_structure = gst_query_writable_structure(this : Query*) : LibGst::Structure*

  struct ReferenceTimestampMeta # struct
    parent : LibGst::Meta
    reference : LibGst::Caps*
    timestamp : UInt64
    duration : UInt64
  end
  fun reference_timestamp_meta_get_info = gst_reference_timestamp_meta_get_info() : LibGst::MetaInfo*

  struct RegistryPrivate # struct
    _data : UInt8[0]
  end

  struct Sample # struct
    _data : UInt8[0]
  end
  fun sample_new = gst_sample_new(buffer : LibGst::Buffer*, caps : LibGst::Caps*, segment : LibGst::Segment*, info : LibGst::Structure*) : LibGst::Sample*
  fun sample_get_buffer = gst_sample_get_buffer(this : Sample*) : LibGst::Buffer*
  fun sample_get_buffer_list = gst_sample_get_buffer_list(this : Sample*) : LibGst::BufferList*
  fun sample_get_caps = gst_sample_get_caps(this : Sample*) : LibGst::Caps*
  fun sample_get_info = gst_sample_get_info(this : Sample*) : LibGst::Structure*
  fun sample_get_segment = gst_sample_get_segment(this : Sample*) : LibGst::Segment*
  fun sample_set_buffer_list = gst_sample_set_buffer_list(this : Sample*, buffer_list : LibGst::BufferList*) : Void

  struct Segment # struct
    flags : LibGst::SegmentFlags
    rate : Float64
    applied_rate : Float64
    format : LibGst::Format
    base : UInt64
    offset : UInt64
    start : UInt64
    stop : UInt64
    time : UInt64
    position : UInt64
    duration : UInt64
    _gst_reserved : Void*
  end
  fun segment_new = gst_segment_new() : LibGst::Segment*
  fun segment_clip = gst_segment_clip(this : Segment*, format : LibGst::Format, start : UInt64, stop : UInt64, clip_start : UInt64*, clip_stop : UInt64*) : Bool
  fun segment_copy = gst_segment_copy(this : Segment*) : LibGst::Segment*
  fun segment_copy_into = gst_segment_copy_into(this : Segment*, dest : LibGst::Segment*) : Void
  fun segment_do_seek = gst_segment_do_seek(this : Segment*, rate : Float64, format : LibGst::Format, flags : LibGst::SeekFlags, start_type : LibGst::SeekType, start : UInt64, stop_type : LibGst::SeekType, stop : UInt64, update : Bool*) : Bool
  fun segment_free = gst_segment_free(this : Segment*) : Void
  fun segment_init = gst_segment_init(this : Segment*, format : LibGst::Format) : Void
  fun segment_is_equal = gst_segment_is_equal(this : Segment*, s1 : LibGst::Segment*) : Bool
  fun segment_offset_running_time = gst_segment_offset_running_time(this : Segment*, format : LibGst::Format, offset : Int64) : Bool
  fun segment_position_from_running_time = gst_segment_position_from_running_time(this : Segment*, format : LibGst::Format, running_time : UInt64) : UInt64
  fun segment_position_from_running_time_full = gst_segment_position_from_running_time_full(this : Segment*, format : LibGst::Format, running_time : UInt64, position : UInt64*) : Int32
  fun segment_position_from_stream_time = gst_segment_position_from_stream_time(this : Segment*, format : LibGst::Format, stream_time : UInt64) : UInt64
  fun segment_position_from_stream_time_full = gst_segment_position_from_stream_time_full(this : Segment*, format : LibGst::Format, stream_time : UInt64, position : UInt64*) : Int32
  fun segment_set_running_time = gst_segment_set_running_time(this : Segment*, format : LibGst::Format, running_time : UInt64) : Bool
  fun segment_to_position = gst_segment_to_position(this : Segment*, format : LibGst::Format, running_time : UInt64) : UInt64
  fun segment_to_running_time = gst_segment_to_running_time(this : Segment*, format : LibGst::Format, position : UInt64) : UInt64
  fun segment_to_running_time_full = gst_segment_to_running_time_full(this : Segment*, format : LibGst::Format, position : UInt64, running_time : UInt64*) : Int32
  fun segment_to_stream_time = gst_segment_to_stream_time(this : Segment*, format : LibGst::Format, position : UInt64) : UInt64
  fun segment_to_stream_time_full = gst_segment_to_stream_time_full(this : Segment*, format : LibGst::Format, position : UInt64, stream_time : UInt64*) : Int32

  struct StaticCaps # struct
    caps : LibGst::Caps*
    string : UInt8*
    _gst_reserved : Void*
  end
  fun static_caps_cleanup = gst_static_caps_cleanup(this : StaticCaps*) : Void
  fun static_caps_get = gst_static_caps_get(this : StaticCaps*) : LibGst::Caps*

  struct StaticPadTemplate # struct
    name_template : UInt8*
    direction : LibGst::PadDirection
    presence : LibGst::PadPresence
    static_caps : LibGst::StaticCaps
  end
  fun static_pad_template_get = gst_static_pad_template_get(this : StaticPadTemplate*) : LibGst::PadTemplate*
  fun static_pad_template_get_caps = gst_static_pad_template_get_caps(this : StaticPadTemplate*) : LibGst::Caps*

  struct StreamCollectionPrivate # struct
    _data : UInt8[0]
  end

  struct StreamPrivate # struct
    _data : UInt8[0]
  end

  struct Structure # struct
    type : UInt64
    name : UInt32
  end
  fun structure_new_empty = gst_structure_new_empty(name : UInt8*) : LibGst::Structure*
  fun structure_new_from_string = gst_structure_new_from_string(string : UInt8*) : LibGst::Structure*
  fun structure_new_id_empty = gst_structure_new_id_empty(quark : UInt32) : LibGst::Structure*
  fun structure_can_intersect = gst_structure_can_intersect(this : Structure*, struct2 : LibGst::Structure*) : Bool
  fun structure_copy = gst_structure_copy(this : Structure*) : LibGst::Structure*
  fun structure_filter_and_map_in_place = gst_structure_filter_and_map_in_place(this : Structure*, func : LibGst::StructureFilterMapFunc, user_data : Void*) : Void
  fun structure_fixate = gst_structure_fixate(this : Structure*) : Void
  fun structure_fixate_field = gst_structure_fixate_field(this : Structure*, field_name : UInt8*) : Bool
  fun structure_fixate_field_boolean = gst_structure_fixate_field_boolean(this : Structure*, field_name : UInt8*, target : Bool) : Bool
  fun structure_fixate_field_nearest_double = gst_structure_fixate_field_nearest_double(this : Structure*, field_name : UInt8*, target : Float64) : Bool
  fun structure_fixate_field_nearest_fraction = gst_structure_fixate_field_nearest_fraction(this : Structure*, field_name : UInt8*, target_numerator : Int32, target_denominator : Int32) : Bool
  fun structure_fixate_field_nearest_int = gst_structure_fixate_field_nearest_int(this : Structure*, field_name : UInt8*, target : Int32) : Bool
  fun structure_fixate_field_string = gst_structure_fixate_field_string(this : Structure*, field_name : UInt8*, target : UInt8*) : Bool
  fun structure_foreach = gst_structure_foreach(this : Structure*, func : LibGst::StructureForeachFunc, user_data : Void*) : Bool
  fun structure_free = gst_structure_free(this : Structure*) : Void
  fun structure_get_array = gst_structure_get_array(this : Structure*, fieldname : UInt8*, array : LibGObject::ValueArray**) : Bool
  fun structure_get_boolean = gst_structure_get_boolean(this : Structure*, fieldname : UInt8*, value : Bool*) : Bool
  fun structure_get_clock_time = gst_structure_get_clock_time(this : Structure*, fieldname : UInt8*, value : UInt64*) : Bool
  fun structure_get_date = gst_structure_get_date(this : Structure*, fieldname : UInt8*, value : LibGLib::Date**) : Bool
  fun structure_get_date_time = gst_structure_get_date_time(this : Structure*, fieldname : UInt8*, value : LibGst::DateTime**) : Bool
  fun structure_get_double = gst_structure_get_double(this : Structure*, fieldname : UInt8*, value : Float64*) : Bool
  fun structure_get_enum = gst_structure_get_enum(this : Structure*, fieldname : UInt8*, enumtype : UInt64, value : Int32*) : Bool
  fun structure_get_field_type = gst_structure_get_field_type(this : Structure*, fieldname : UInt8*) : UInt64
  fun structure_get_flagset = gst_structure_get_flagset(this : Structure*, fieldname : UInt8*, value_flags : UInt32*, value_mask : UInt32*) : Bool
  fun structure_get_fraction = gst_structure_get_fraction(this : Structure*, fieldname : UInt8*, value_numerator : Int32*, value_denominator : Int32*) : Bool
  fun structure_get_int = gst_structure_get_int(this : Structure*, fieldname : UInt8*, value : Int32*) : Bool
  fun structure_get_int64 = gst_structure_get_int64(this : Structure*, fieldname : UInt8*, value : Int64*) : Bool
  fun structure_get_list = gst_structure_get_list(this : Structure*, fieldname : UInt8*, array : LibGObject::ValueArray**) : Bool
  fun structure_get_name = gst_structure_get_name(this : Structure*) : UInt8*
  fun structure_get_name_id = gst_structure_get_name_id(this : Structure*) : UInt32
  fun structure_get_string = gst_structure_get_string(this : Structure*, fieldname : UInt8*) : UInt8*
  fun structure_get_uint = gst_structure_get_uint(this : Structure*, fieldname : UInt8*, value : UInt32*) : Bool
  fun structure_get_uint64 = gst_structure_get_uint64(this : Structure*, fieldname : UInt8*, value : UInt64*) : Bool
  fun structure_get_value = gst_structure_get_value(this : Structure*, fieldname : UInt8*) : LibGObject::Value*
  fun structure_has_field = gst_structure_has_field(this : Structure*, fieldname : UInt8*) : Bool
  fun structure_has_field_typed = gst_structure_has_field_typed(this : Structure*, fieldname : UInt8*, type : UInt64) : Bool
  fun structure_has_name = gst_structure_has_name(this : Structure*, name : UInt8*) : Bool
  fun structure_id_get_value = gst_structure_id_get_value(this : Structure*, field : UInt32) : LibGObject::Value*
  fun structure_id_has_field = gst_structure_id_has_field(this : Structure*, field : UInt32) : Bool
  fun structure_id_has_field_typed = gst_structure_id_has_field_typed(this : Structure*, field : UInt32, type : UInt64) : Bool
  fun structure_id_set_value = gst_structure_id_set_value(this : Structure*, field : UInt32, value : LibGObject::Value*) : Void
  fun structure_id_take_value = gst_structure_id_take_value(this : Structure*, field : UInt32, value : LibGObject::Value*) : Void
  fun structure_intersect = gst_structure_intersect(this : Structure*, struct2 : LibGst::Structure*) : LibGst::Structure*
  fun structure_is_equal = gst_structure_is_equal(this : Structure*, structure2 : LibGst::Structure*) : Bool
  fun structure_is_subset = gst_structure_is_subset(this : Structure*, superset : LibGst::Structure*) : Bool
  fun structure_map_in_place = gst_structure_map_in_place(this : Structure*, func : LibGst::StructureMapFunc, user_data : Void*) : Bool
  fun structure_n_fields = gst_structure_n_fields(this : Structure*) : Int32
  fun structure_nth_field_name = gst_structure_nth_field_name(this : Structure*, index : UInt32) : UInt8*
  fun structure_remove_all_fields = gst_structure_remove_all_fields(this : Structure*) : Void
  fun structure_remove_field = gst_structure_remove_field(this : Structure*, fieldname : UInt8*) : Void
  fun structure_set_array = gst_structure_set_array(this : Structure*, fieldname : UInt8*, array : LibGObject::ValueArray*) : Void
  fun structure_set_list = gst_structure_set_list(this : Structure*, fieldname : UInt8*, array : LibGObject::ValueArray*) : Void
  fun structure_set_name = gst_structure_set_name(this : Structure*, name : UInt8*) : Void
  fun structure_set_parent_refcount = gst_structure_set_parent_refcount(this : Structure*, refcount : Int32*) : Bool
  fun structure_set_value = gst_structure_set_value(this : Structure*, fieldname : UInt8*, value : LibGObject::Value*) : Void
  fun structure_take_value = gst_structure_take_value(this : Structure*, fieldname : UInt8*, value : LibGObject::Value*) : Void
  fun structure_to_string = gst_structure_to_string(this : Structure*) : UInt8*
  fun structure_from_string = gst_structure_from_string(string : UInt8*, _end : UInt8**) : LibGst::Structure*

  struct SystemClockPrivate # struct
    _data : UInt8[0]
  end

  struct TagList # struct
    mini_object : LibGst::MiniObject
  end
  fun tag_list_new_empty = gst_tag_list_new_empty() : LibGst::TagList*
  fun tag_list_new_from_string = gst_tag_list_new_from_string(str : UInt8*) : LibGst::TagList*
  fun tag_list_add_value = gst_tag_list_add_value(this : TagList*, mode : LibGst::TagMergeMode, tag : UInt8*, value : LibGObject::Value*) : Void
  fun tag_list_foreach = gst_tag_list_foreach(this : TagList*, func : LibGst::TagForeachFunc, user_data : Void*) : Void
  fun tag_list_get_boolean = gst_tag_list_get_boolean(this : TagList*, tag : UInt8*, value : Bool*) : Bool
  fun tag_list_get_boolean_index = gst_tag_list_get_boolean_index(this : TagList*, tag : UInt8*, index : UInt32, value : Bool*) : Bool
  fun tag_list_get_date = gst_tag_list_get_date(this : TagList*, tag : UInt8*, value : LibGLib::Date**) : Bool
  fun tag_list_get_date_index = gst_tag_list_get_date_index(this : TagList*, tag : UInt8*, index : UInt32, value : LibGLib::Date**) : Bool
  fun tag_list_get_date_time = gst_tag_list_get_date_time(this : TagList*, tag : UInt8*, value : LibGst::DateTime**) : Bool
  fun tag_list_get_date_time_index = gst_tag_list_get_date_time_index(this : TagList*, tag : UInt8*, index : UInt32, value : LibGst::DateTime**) : Bool
  fun tag_list_get_double = gst_tag_list_get_double(this : TagList*, tag : UInt8*, value : Float64*) : Bool
  fun tag_list_get_double_index = gst_tag_list_get_double_index(this : TagList*, tag : UInt8*, index : UInt32, value : Float64*) : Bool
  fun tag_list_get_float = gst_tag_list_get_float(this : TagList*, tag : UInt8*, value : Float32*) : Bool
  fun tag_list_get_float_index = gst_tag_list_get_float_index(this : TagList*, tag : UInt8*, index : UInt32, value : Float32*) : Bool
  fun tag_list_get_int = gst_tag_list_get_int(this : TagList*, tag : UInt8*, value : Int32*) : Bool
  fun tag_list_get_int64 = gst_tag_list_get_int64(this : TagList*, tag : UInt8*, value : Int64*) : Bool
  fun tag_list_get_int64_index = gst_tag_list_get_int64_index(this : TagList*, tag : UInt8*, index : UInt32, value : Int64*) : Bool
  fun tag_list_get_int_index = gst_tag_list_get_int_index(this : TagList*, tag : UInt8*, index : UInt32, value : Int32*) : Bool
  fun tag_list_get_pointer = gst_tag_list_get_pointer(this : TagList*, tag : UInt8*, value : Void**) : Bool
  fun tag_list_get_pointer_index = gst_tag_list_get_pointer_index(this : TagList*, tag : UInt8*, index : UInt32, value : Void**) : Bool
  fun tag_list_get_sample = gst_tag_list_get_sample(this : TagList*, tag : UInt8*, sample : LibGst::Sample**) : Bool
  fun tag_list_get_sample_index = gst_tag_list_get_sample_index(this : TagList*, tag : UInt8*, index : UInt32, sample : LibGst::Sample**) : Bool
  fun tag_list_get_scope = gst_tag_list_get_scope(this : TagList*) : LibGst::TagScope
  fun tag_list_get_string = gst_tag_list_get_string(this : TagList*, tag : UInt8*, value : UInt8**) : Bool
  fun tag_list_get_string_index = gst_tag_list_get_string_index(this : TagList*, tag : UInt8*, index : UInt32, value : UInt8**) : Bool
  fun tag_list_get_tag_size = gst_tag_list_get_tag_size(this : TagList*, tag : UInt8*) : UInt32
  fun tag_list_get_uint = gst_tag_list_get_uint(this : TagList*, tag : UInt8*, value : UInt32*) : Bool
  fun tag_list_get_uint64 = gst_tag_list_get_uint64(this : TagList*, tag : UInt8*, value : UInt64*) : Bool
  fun tag_list_get_uint64_index = gst_tag_list_get_uint64_index(this : TagList*, tag : UInt8*, index : UInt32, value : UInt64*) : Bool
  fun tag_list_get_uint_index = gst_tag_list_get_uint_index(this : TagList*, tag : UInt8*, index : UInt32, value : UInt32*) : Bool
  fun tag_list_get_value_index = gst_tag_list_get_value_index(this : TagList*, tag : UInt8*, index : UInt32) : LibGObject::Value*
  fun tag_list_insert = gst_tag_list_insert(this : TagList*, from : LibGst::TagList*, mode : LibGst::TagMergeMode) : Void
  fun tag_list_is_empty = gst_tag_list_is_empty(this : TagList*) : Bool
  fun tag_list_is_equal = gst_tag_list_is_equal(this : TagList*, list2 : LibGst::TagList*) : Bool
  fun tag_list_merge = gst_tag_list_merge(this : TagList*, list2 : LibGst::TagList*, mode : LibGst::TagMergeMode) : LibGst::TagList*
  fun tag_list_n_tags = gst_tag_list_n_tags(this : TagList*) : Int32
  fun tag_list_nth_tag_name = gst_tag_list_nth_tag_name(this : TagList*, index : UInt32) : UInt8*
  fun tag_list_peek_string_index = gst_tag_list_peek_string_index(this : TagList*, tag : UInt8*, index : UInt32, value : UInt8**) : Bool
  fun tag_list_remove_tag = gst_tag_list_remove_tag(this : TagList*, tag : UInt8*) : Void
  fun tag_list_set_scope = gst_tag_list_set_scope(this : TagList*, scope : LibGst::TagScope) : Void
  fun tag_list_to_string = gst_tag_list_to_string(this : TagList*) : UInt8*
  fun tag_list_copy_value = gst_tag_list_copy_value(dest : LibGObject::Value*, list : LibGst::TagList*, tag : UInt8*) : Bool

  struct TaskPrivate # struct
    _data : UInt8[0]
  end

  struct TimedValue # struct
    timestamp : UInt64
    value : Float64
  end

  struct Toc # struct
    _data : UInt8[0]
  end
  fun toc_new = gst_toc_new(scope : LibGst::TocScope) : LibGst::Toc*
  fun toc_append_entry = gst_toc_append_entry(this : Toc*, entry : LibGst::TocEntry*) : Void
  fun toc_dump = gst_toc_dump(this : Toc*) : Void
  fun toc_find_entry = gst_toc_find_entry(this : Toc*, uid : UInt8*) : LibGst::TocEntry*
  fun toc_get_entries = gst_toc_get_entries(this : Toc*) : Void**
  fun toc_get_scope = gst_toc_get_scope(this : Toc*) : LibGst::TocScope
  fun toc_get_tags = gst_toc_get_tags(this : Toc*) : LibGst::TagList*
  fun toc_merge_tags = gst_toc_merge_tags(this : Toc*, tags : LibGst::TagList*, mode : LibGst::TagMergeMode) : Void
  fun toc_set_tags = gst_toc_set_tags(this : Toc*, tags : LibGst::TagList*) : Void

  struct TocEntry # struct
    _data : UInt8[0]
  end
  fun toc_entry_new = gst_toc_entry_new(type : LibGst::TocEntryType, uid : UInt8*) : LibGst::TocEntry*
  fun toc_entry_append_sub_entry = gst_toc_entry_append_sub_entry(this : TocEntry*, subentry : LibGst::TocEntry*) : Void
  fun toc_entry_get_entry_type = gst_toc_entry_get_entry_type(this : TocEntry*) : LibGst::TocEntryType
  fun toc_entry_get_loop = gst_toc_entry_get_loop(this : TocEntry*, loop_type : LibGst::TocLoopType*, repeat_count : Int32*) : Bool
  fun toc_entry_get_parent = gst_toc_entry_get_parent(this : TocEntry*) : LibGst::TocEntry*
  fun toc_entry_get_start_stop_times = gst_toc_entry_get_start_stop_times(this : TocEntry*, start : Int64*, stop : Int64*) : Bool
  fun toc_entry_get_sub_entries = gst_toc_entry_get_sub_entries(this : TocEntry*) : Void**
  fun toc_entry_get_tags = gst_toc_entry_get_tags(this : TocEntry*) : LibGst::TagList*
  fun toc_entry_get_toc = gst_toc_entry_get_toc(this : TocEntry*) : LibGst::Toc*
  fun toc_entry_get_uid = gst_toc_entry_get_uid(this : TocEntry*) : UInt8*
  fun toc_entry_is_alternative = gst_toc_entry_is_alternative(this : TocEntry*) : Bool
  fun toc_entry_is_sequence = gst_toc_entry_is_sequence(this : TocEntry*) : Bool
  fun toc_entry_merge_tags = gst_toc_entry_merge_tags(this : TocEntry*, tags : LibGst::TagList*, mode : LibGst::TagMergeMode) : Void
  fun toc_entry_set_loop = gst_toc_entry_set_loop(this : TocEntry*, loop_type : LibGst::TocLoopType, repeat_count : Int32) : Void
  fun toc_entry_set_start_stop_times = gst_toc_entry_set_start_stop_times(this : TocEntry*, start : Int64, stop : Int64) : Void
  fun toc_entry_set_tags = gst_toc_entry_set_tags(this : TocEntry*, tags : LibGst::TagList*) : Void

  struct TracerPrivate # struct
    _data : UInt8[0]
  end

  struct TypeFind # struct
    peek : -> Void
    suggest : -> Void
    data : Void*
    get_length : -> Void
    _gst_reserved : Void*
  end
  fun type_find_get_length = gst_type_find_get_length(this : TypeFind*) : UInt64
  fun type_find_peek = gst_type_find_peek(this : TypeFind*, offset : Int64, size : UInt32*) : UInt8*
  fun type_find_suggest = gst_type_find_suggest(this : TypeFind*, probability : UInt32, caps : LibGst::Caps*) : Void
  fun type_find_register = gst_type_find_register(plugin : LibGst::Plugin*, name : UInt8*, rank : UInt32, func : LibGst::TypeFindFunction, extensions : UInt8*, possible_caps : LibGst::Caps*, data : Void*, data_notify : LibGLib::DestroyNotify) : Bool

  struct Uri # struct
    _data : UInt8[0]
  end
  fun uri_new = gst_uri_new(scheme : UInt8*, userinfo : UInt8*, host : UInt8*, port : UInt32, path : UInt8*, query : UInt8*, fragment : UInt8*) : LibGst::Uri*
  fun uri_append_path = gst_uri_append_path(this : Uri*, relative_path : UInt8*) : Bool
  fun uri_append_path_segment = gst_uri_append_path_segment(this : Uri*, path_segment : UInt8*) : Bool
  fun uri_equal = gst_uri_equal(this : Uri*, second : LibGst::Uri*) : Bool
  fun uri_from_string_with_base = gst_uri_from_string_with_base(this : Uri*, uri : UInt8*) : LibGst::Uri*
  fun uri_get_fragment = gst_uri_get_fragment(this : Uri*) : UInt8*
  fun uri_get_host = gst_uri_get_host(this : Uri*) : UInt8*
  fun uri_get_media_fragment_table = gst_uri_get_media_fragment_table(this : Uri*) : Void**
  fun uri_get_path = gst_uri_get_path(this : Uri*) : UInt8*
  fun uri_get_path_segments = gst_uri_get_path_segments(this : Uri*) : Void**
  fun uri_get_path_string = gst_uri_get_path_string(this : Uri*) : UInt8*
  fun uri_get_port = gst_uri_get_port(this : Uri*) : UInt32
  fun uri_get_query_keys = gst_uri_get_query_keys(this : Uri*) : Void**
  fun uri_get_query_string = gst_uri_get_query_string(this : Uri*) : UInt8*
  fun uri_get_query_table = gst_uri_get_query_table(this : Uri*) : Void**
  fun uri_get_query_value = gst_uri_get_query_value(this : Uri*, query_key : UInt8*) : UInt8*
  fun uri_get_scheme = gst_uri_get_scheme(this : Uri*) : UInt8*
  fun uri_get_userinfo = gst_uri_get_userinfo(this : Uri*) : UInt8*
  fun uri_is_normalized = gst_uri_is_normalized(this : Uri*) : Bool
  fun uri_is_writable = gst_uri_is_writable(this : Uri*) : Bool
  fun uri_join = gst_uri_join(this : Uri*, ref_uri : LibGst::Uri*) : LibGst::Uri*
  fun uri_make_writable = gst_uri_make_writable(this : Uri*) : LibGst::Uri*
  fun uri_new_with_base = gst_uri_new_with_base(this : Uri*, scheme : UInt8*, userinfo : UInt8*, host : UInt8*, port : UInt32, path : UInt8*, query : UInt8*, fragment : UInt8*) : LibGst::Uri*
  fun uri_normalize = gst_uri_normalize(this : Uri*) : Bool
  fun uri_query_has_key = gst_uri_query_has_key(this : Uri*, query_key : UInt8*) : Bool
  fun uri_remove_query_key = gst_uri_remove_query_key(this : Uri*, query_key : UInt8*) : Bool
  fun uri_set_fragment = gst_uri_set_fragment(this : Uri*, fragment : UInt8*) : Bool
  fun uri_set_host = gst_uri_set_host(this : Uri*, host : UInt8*) : Bool
  fun uri_set_path = gst_uri_set_path(this : Uri*, path : UInt8*) : Bool
  fun uri_set_path_segments = gst_uri_set_path_segments(this : Uri*, path_segments : Void**) : Bool
  fun uri_set_path_string = gst_uri_set_path_string(this : Uri*, path : UInt8*) : Bool
  fun uri_set_port = gst_uri_set_port(this : Uri*, port : UInt32) : Bool
  fun uri_set_query_string = gst_uri_set_query_string(this : Uri*, query : UInt8*) : Bool
  fun uri_set_query_table = gst_uri_set_query_table(this : Uri*, query_table : Void**) : Bool
  fun uri_set_query_value = gst_uri_set_query_value(this : Uri*, query_key : UInt8*, query_value : UInt8*) : Bool
  fun uri_set_scheme = gst_uri_set_scheme(this : Uri*, scheme : UInt8*) : Bool
  fun uri_set_userinfo = gst_uri_set_userinfo(this : Uri*, userinfo : UInt8*) : Bool
  fun uri_to_string = gst_uri_to_string(this : Uri*) : UInt8*
  fun uri_construct = gst_uri_construct(protocol : UInt8*, location : UInt8*) : UInt8*
  fun uri_from_string = gst_uri_from_string(uri : UInt8*) : LibGst::Uri*
  fun uri_get_location = gst_uri_get_location(uri : UInt8*) : UInt8*
  fun uri_get_protocol = gst_uri_get_protocol(uri : UInt8*) : UInt8*
  fun uri_has_protocol = gst_uri_has_protocol(uri : UInt8*, protocol : UInt8*) : Bool
  fun uri_is_valid = gst_uri_is_valid(uri : UInt8*) : Bool
  fun uri_join_strings = gst_uri_join_strings(base_uri : UInt8*, ref_uri : UInt8*) : UInt8*
  fun uri_protocol_is_supported = gst_uri_protocol_is_supported(type : LibGst::URIType, protocol : UInt8*) : Bool
  fun uri_protocol_is_valid = gst_uri_protocol_is_valid(protocol : UInt8*) : Bool

  struct ValueTable # struct
    type : UInt64
    compare : LibGst::ValueCompareFunc
    serialize : LibGst::ValueSerializeFunc
    deserialize : LibGst::ValueDeserializeFunc
    _gst_reserved : Void*
  end


  ###########################################
  ##    Objects
  ###########################################

  struct Allocator # object
    object : LibGst::Object*
    mem_type : UInt8*
    mem_map : LibGst::MemoryMapFunction
    mem_unmap : LibGst::MemoryUnmapFunction
    mem_copy : LibGst::MemoryCopyFunction
    mem_share : LibGst::MemoryShareFunction
    mem_is_span : LibGst::MemoryIsSpanFunction
    mem_map_full : LibGst::MemoryMapFullFunction
    mem_unmap_full : LibGst::MemoryUnmapFullFunction
    _gst_reserved : Void*
    priv : LibGst::AllocatorPrivate*
    # Virtual function alloc
    # Virtual function free
  end
  fun allocator_find = gst_allocator_find(name : UInt8*) : LibGst::Allocator*
  fun allocator_register = gst_allocator_register(name : UInt8*, allocator : LibGst::Allocator*) : Void
  fun allocator_alloc = gst_allocator_alloc(this : Allocator*, size : UInt64, params : LibGst::AllocationParams*) : LibGst::Memory*
  fun allocator_free = gst_allocator_free(this : Allocator*, memory : LibGst::Memory*) : Void
  fun allocator_set_default = gst_allocator_set_default(this : Allocator*) : Void

  struct Bin # object
    element : LibGst::Element*
    numchildren : Int32
    children : Void**
    children_cookie : UInt32
    child_bus : LibGst::Bus*
    messages : Void**
    polling : Bool
    state_dirty : Bool
    clock_dirty : Bool
    provided_clock : LibGst::Clock*
    clock_provider : LibGst::Element*
    priv : LibGst::BinPrivate*
    _gst_reserved : Void*
    # Signal deep-element-added
    # Signal deep-element-removed
    # Signal do-latency
    # Signal element-added
    # Signal element-removed
    # Virtual function add_element
    # Virtual function deep_element_added
    # Virtual function deep_element_removed
    # Virtual function do_latency
    # Virtual function element_added
    # Virtual function element_removed
    # Virtual function handle_message
    # Virtual function remove_element
    # Property async_handling : Bool
    # Property message_forward : Bool
  end
  fun bin_new = gst_bin_new(name : UInt8*) : LibGst::Element*
  fun bin_add = gst_bin_add(this : Bin*, element : LibGst::Element*) : Bool
  fun bin_find_unlinked_pad = gst_bin_find_unlinked_pad(this : Bin*, direction : LibGst::PadDirection) : LibGst::Pad*
  fun bin_get_by_interface = gst_bin_get_by_interface(this : Bin*, iface : UInt64) : LibGst::Element*
  fun bin_get_by_name = gst_bin_get_by_name(this : Bin*, name : UInt8*) : LibGst::Element*
  fun bin_get_by_name_recurse_up = gst_bin_get_by_name_recurse_up(this : Bin*, name : UInt8*) : LibGst::Element*
  fun bin_get_suppressed_flags = gst_bin_get_suppressed_flags(this : Bin*) : LibGst::ElementFlags
  fun bin_iterate_all_by_interface = gst_bin_iterate_all_by_interface(this : Bin*, iface : UInt64) : LibGst::Iterator*
  fun bin_iterate_elements = gst_bin_iterate_elements(this : Bin*) : LibGst::Iterator*
  fun bin_iterate_recurse = gst_bin_iterate_recurse(this : Bin*) : LibGst::Iterator*
  fun bin_iterate_sinks = gst_bin_iterate_sinks(this : Bin*) : LibGst::Iterator*
  fun bin_iterate_sorted = gst_bin_iterate_sorted(this : Bin*) : LibGst::Iterator*
  fun bin_iterate_sources = gst_bin_iterate_sources(this : Bin*) : LibGst::Iterator*
  fun bin_recalculate_latency = gst_bin_recalculate_latency(this : Bin*) : Bool
  fun bin_remove = gst_bin_remove(this : Bin*, element : LibGst::Element*) : Bool
  fun bin_set_suppressed_flags = gst_bin_set_suppressed_flags(this : Bin*, flags : LibGst::ElementFlags) : Void
  fun bin_sync_children_states = gst_bin_sync_children_states(this : Bin*) : Bool

  struct Bitmask # object
    _data : UInt8[0]
  end

  struct BufferPool # object
    object : LibGst::Object*
    flushing : Int32
    priv : LibGst::BufferPoolPrivate*
    _gst_reserved : Void*
    # Virtual function acquire_buffer
    # Virtual function alloc_buffer
    # Virtual function flush_start
    # Virtual function flush_stop
    # Virtual function free_buffer
    # Virtual function get_options
    # Virtual function release_buffer
    # Virtual function reset_buffer
    # Virtual function set_config
    # Virtual function start
    # Virtual function stop
  end
  fun buffer_pool_new = gst_buffer_pool_new() : LibGst::BufferPool*
  fun buffer_pool_config_add_option = gst_buffer_pool_config_add_option(config : LibGst::Structure*, option : UInt8*) : Void
  fun buffer_pool_config_get_allocator = gst_buffer_pool_config_get_allocator(config : LibGst::Structure*, allocator : LibGst::Allocator**, params : LibGst::AllocationParams*) : Bool
  fun buffer_pool_config_get_option = gst_buffer_pool_config_get_option(config : LibGst::Structure*, index : UInt32) : UInt8*
  fun buffer_pool_config_get_params = gst_buffer_pool_config_get_params(config : LibGst::Structure*, caps : LibGst::Caps**, size : UInt32*, min_buffers : UInt32*, max_buffers : UInt32*) : Bool
  fun buffer_pool_config_has_option = gst_buffer_pool_config_has_option(config : LibGst::Structure*, option : UInt8*) : Bool
  fun buffer_pool_config_n_options = gst_buffer_pool_config_n_options(config : LibGst::Structure*) : UInt32
  fun buffer_pool_config_set_allocator = gst_buffer_pool_config_set_allocator(config : LibGst::Structure*, allocator : LibGst::Allocator*, params : LibGst::AllocationParams*) : Void
  fun buffer_pool_config_set_params = gst_buffer_pool_config_set_params(config : LibGst::Structure*, caps : LibGst::Caps*, size : UInt32, min_buffers : UInt32, max_buffers : UInt32) : Void
  fun buffer_pool_config_validate_params = gst_buffer_pool_config_validate_params(config : LibGst::Structure*, caps : LibGst::Caps*, size : UInt32, min_buffers : UInt32, max_buffers : UInt32) : Bool
  fun buffer_pool_acquire_buffer = gst_buffer_pool_acquire_buffer(this : BufferPool*, buffer : LibGst::Buffer**, params : LibGst::BufferPoolAcquireParams*) : LibGst::FlowReturn
  fun buffer_pool_get_config = gst_buffer_pool_get_config(this : BufferPool*) : LibGst::Structure*
  fun buffer_pool_get_options = gst_buffer_pool_get_options(this : BufferPool*) : UInt8**
  fun buffer_pool_has_option = gst_buffer_pool_has_option(this : BufferPool*, option : UInt8*) : Bool
  fun buffer_pool_is_active = gst_buffer_pool_is_active(this : BufferPool*) : Bool
  fun buffer_pool_release_buffer = gst_buffer_pool_release_buffer(this : BufferPool*, buffer : LibGst::Buffer*) : Void
  fun buffer_pool_set_active = gst_buffer_pool_set_active(this : BufferPool*, active : Bool) : Bool
  fun buffer_pool_set_config = gst_buffer_pool_set_config(this : BufferPool*, config : LibGst::Structure*) : Bool
  fun buffer_pool_set_flushing = gst_buffer_pool_set_flushing(this : BufferPool*, flushing : Bool) : Void

  struct Bus # object
    object : LibGst::Object*
    priv : LibGst::BusPrivate*
    _gst_reserved : Void*
    # Signal message
    # Signal sync-message
    # Virtual function message
    # Virtual function sync_message
    # Property enable_async : Bool
  end
  fun bus_new = gst_bus_new() : LibGst::Bus*
  fun bus_add_signal_watch = gst_bus_add_signal_watch(this : Bus*) : Void
  fun bus_add_signal_watch_full = gst_bus_add_signal_watch_full(this : Bus*, priority : Int32) : Void
  fun bus_add_watch = gst_bus_add_watch_full(this : Bus*, priority : Int32, func : LibGst::BusFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun bus_async_signal_func = gst_bus_async_signal_func(this : Bus*, message : LibGst::Message*, data : Void*) : Bool
  fun bus_create_watch = gst_bus_create_watch(this : Bus*) : LibGLib::Source*
  fun bus_disable_sync_message_emission = gst_bus_disable_sync_message_emission(this : Bus*) : Void
  fun bus_enable_sync_message_emission = gst_bus_enable_sync_message_emission(this : Bus*) : Void
  fun bus_get_pollfd = gst_bus_get_pollfd(this : Bus*, fd : LibGLib::PollFD*) : Void
  fun bus_have_pending = gst_bus_have_pending(this : Bus*) : Bool
  fun bus_peek = gst_bus_peek(this : Bus*) : LibGst::Message*
  fun bus_poll = gst_bus_poll(this : Bus*, events : LibGst::MessageType, timeout : UInt64) : LibGst::Message*
  fun bus_pop = gst_bus_pop(this : Bus*) : LibGst::Message*
  fun bus_pop_filtered = gst_bus_pop_filtered(this : Bus*, types : LibGst::MessageType) : LibGst::Message*
  fun bus_post = gst_bus_post(this : Bus*, message : LibGst::Message*) : Bool
  fun bus_remove_signal_watch = gst_bus_remove_signal_watch(this : Bus*) : Void
  fun bus_remove_watch = gst_bus_remove_watch(this : Bus*) : Bool
  fun bus_set_flushing = gst_bus_set_flushing(this : Bus*, flushing : Bool) : Void
  fun bus_set_sync_handler = gst_bus_set_sync_handler(this : Bus*, func : LibGst::BusSyncHandler, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun bus_sync_signal_handler = gst_bus_sync_signal_handler(this : Bus*, message : LibGst::Message*, data : Void*) : LibGst::BusSyncReply
  fun bus_timed_pop = gst_bus_timed_pop(this : Bus*, timeout : UInt64) : LibGst::Message*
  fun bus_timed_pop_filtered = gst_bus_timed_pop_filtered(this : Bus*, timeout : UInt64, types : LibGst::MessageType) : LibGst::Message*

  struct Clock # object
    object : LibGst::Object*
    priv : LibGst::ClockPrivate*
    _gst_reserved : Void*
    # Signal synced
    # Virtual function change_resolution
    # Virtual function get_internal_time
    # Virtual function get_resolution
    # Virtual function unschedule
    # Virtual function wait
    # Virtual function wait_async
    # Property timeout : UInt64
    # Property window_size : Int32
    # Property window_threshold : Int32
  end
  fun clock_id_compare_func = gst_clock_id_compare_func(id1 : Void*, id2 : Void*) : Int32
  fun clock_id_get_time = gst_clock_id_get_time(id : Void*) : UInt64
  fun clock_id_ref = gst_clock_id_ref(id : Void*) : Void*
  fun clock_id_unref = gst_clock_id_unref(id : Void*) : Void
  fun clock_id_unschedule = gst_clock_id_unschedule(id : Void*) : Void
  fun clock_id_wait = gst_clock_id_wait(id : Void*, jitter : Int64*) : LibGst::ClockReturn
  fun clock_id_wait_async = gst_clock_id_wait_async(id : Void*, func : LibGst::ClockCallback, user_data : Void*, destroy_data : LibGLib::DestroyNotify) : LibGst::ClockReturn
  fun clock_add_observation = gst_clock_add_observation(this : Clock*, slave : UInt64, master : UInt64, r_squared : Float64*) : Bool
  fun clock_add_observation_unapplied = gst_clock_add_observation_unapplied(this : Clock*, slave : UInt64, master : UInt64, r_squared : Float64*, internal : UInt64*, external : UInt64*, rate_num : UInt64*, rate_denom : UInt64*) : Bool
  fun clock_adjust_unlocked = gst_clock_adjust_unlocked(this : Clock*, internal : UInt64) : UInt64
  fun clock_adjust_with_calibration = gst_clock_adjust_with_calibration(this : Clock*, internal_target : UInt64, cinternal : UInt64, cexternal : UInt64, cnum : UInt64, cdenom : UInt64) : UInt64
  fun clock_get_calibration = gst_clock_get_calibration(this : Clock*, internal : UInt64*, external : UInt64*, rate_num : UInt64*, rate_denom : UInt64*) : Void
  fun clock_get_internal_time = gst_clock_get_internal_time(this : Clock*) : UInt64
  fun clock_get_master = gst_clock_get_master(this : Clock*) : LibGst::Clock*
  fun clock_get_resolution = gst_clock_get_resolution(this : Clock*) : UInt64
  fun clock_get_time = gst_clock_get_time(this : Clock*) : UInt64
  fun clock_get_timeout = gst_clock_get_timeout(this : Clock*) : UInt64
  fun clock_is_synced = gst_clock_is_synced(this : Clock*) : Bool
  fun clock_new_periodic_id = gst_clock_new_periodic_id(this : Clock*, start_time : UInt64, interval : UInt64) : Void*
  fun clock_new_single_shot_id = gst_clock_new_single_shot_id(this : Clock*, time : UInt64) : Void*
  fun clock_periodic_id_reinit = gst_clock_periodic_id_reinit(this : Clock*, id : Void*, start_time : UInt64, interval : UInt64) : Bool
  fun clock_set_calibration = gst_clock_set_calibration(this : Clock*, internal : UInt64, external : UInt64, rate_num : UInt64, rate_denom : UInt64) : Void
  fun clock_set_master = gst_clock_set_master(this : Clock*, master : LibGst::Clock*) : Bool
  fun clock_set_resolution = gst_clock_set_resolution(this : Clock*, resolution : UInt64) : UInt64
  fun clock_set_synced = gst_clock_set_synced(this : Clock*, synced : Bool) : Void
  fun clock_set_timeout = gst_clock_set_timeout(this : Clock*, timeout : UInt64) : Void
  fun clock_single_shot_id_reinit = gst_clock_single_shot_id_reinit(this : Clock*, id : Void*, time : UInt64) : Bool
  fun clock_unadjust_unlocked = gst_clock_unadjust_unlocked(this : Clock*, external : UInt64) : UInt64
  fun clock_unadjust_with_calibration = gst_clock_unadjust_with_calibration(this : Clock*, external_target : UInt64, cinternal : UInt64, cexternal : UInt64, cnum : UInt64, cdenom : UInt64) : UInt64
  fun clock_wait_for_sync = gst_clock_wait_for_sync(this : Clock*, timeout : UInt64) : Bool

  struct ControlBinding # object
    parent : LibGst::Object*
    name : UInt8*
    pspec : LibGObject::ParamSpec*
    object : LibGst::Object*
    disabled : Bool
    # Virtual function get_g_value_array
    # Virtual function get_value
    # Virtual function sync_values
    # Property name : UInt8*
    # Property object : LibGst::Object*
  end
  fun control_binding_get_g_value_array = gst_control_binding_get_g_value_array(this : ControlBinding*, timestamp : UInt64, interval : UInt64, n_values : UInt32, values : LibGObject::Value*) : Bool
  fun control_binding_get_value = gst_control_binding_get_value(this : ControlBinding*, timestamp : UInt64) : LibGObject::Value*
  fun control_binding_is_disabled = gst_control_binding_is_disabled(this : ControlBinding*) : Bool
  fun control_binding_set_disabled = gst_control_binding_set_disabled(this : ControlBinding*, disabled : Bool) : Void
  fun control_binding_sync_values = gst_control_binding_sync_values(this : ControlBinding*, object : LibGst::Object*, timestamp : UInt64, last_sync : UInt64) : Bool

  struct ControlSource # object
    parent : LibGst::Object*
    get_value : LibGst::ControlSourceGetValue
    get_value_array : LibGst::ControlSourceGetValueArray
    _gst_reserved : Void*
  end
  fun control_source_control_source_get_value = gst_control_source_get_value(this : ControlSource*, timestamp : UInt64, value : Float64*) : Bool
  fun control_source_control_source_get_value_array = gst_control_source_get_value_array(this : ControlSource*, timestamp : UInt64, interval : UInt64, n_values : UInt32, values : Float64*) : Bool

  struct Device # object
    parent : LibGst::Object*
    priv : LibGst::DevicePrivate*
    _gst_reserved : Void*
    # Signal removed
    # Virtual function create_element
    # Virtual function reconfigure_element
    # Property caps : LibGst::Caps
    # Property device_class : UInt8*
    # Property display_name : UInt8*
    # Property properties : LibGst::Structure
  end
  fun device_create_element = gst_device_create_element(this : Device*, name : UInt8*) : LibGst::Element*
  fun device_get_caps = gst_device_get_caps(this : Device*) : LibGst::Caps*
  fun device_get_device_class = gst_device_get_device_class(this : Device*) : UInt8*
  fun device_get_display_name = gst_device_get_display_name(this : Device*) : UInt8*
  fun device_get_properties = gst_device_get_properties(this : Device*) : LibGst::Structure*
  fun device_has_classes = gst_device_has_classes(this : Device*, classes : UInt8*) : Bool
  fun device_has_classesv = gst_device_has_classesv(this : Device*, classes : UInt8**) : Bool
  fun device_reconfigure_element = gst_device_reconfigure_element(this : Device*, element : LibGst::Element*) : Bool

  struct DeviceMonitor # object
    parent : LibGst::Object*
    priv : LibGst::DeviceMonitorPrivate*
    _gst_reserved : Void*
    # Property show_all : Bool
  end
  fun device_monitor_new = gst_device_monitor_new() : LibGst::DeviceMonitor*
  fun device_monitor_add_filter = gst_device_monitor_add_filter(this : DeviceMonitor*, classes : UInt8*, caps : LibGst::Caps*) : UInt32
  fun device_monitor_get_bus = gst_device_monitor_get_bus(this : DeviceMonitor*) : LibGst::Bus*
  fun device_monitor_get_devices = gst_device_monitor_get_devices(this : DeviceMonitor*) : Void**
  fun device_monitor_get_providers = gst_device_monitor_get_providers(this : DeviceMonitor*) : UInt8**
  fun device_monitor_get_show_all_devices = gst_device_monitor_get_show_all_devices(this : DeviceMonitor*) : Bool
  fun device_monitor_remove_filter = gst_device_monitor_remove_filter(this : DeviceMonitor*, filter_id : UInt32) : Bool
  fun device_monitor_set_show_all_devices = gst_device_monitor_set_show_all_devices(this : DeviceMonitor*, show_all : Bool) : Void
  fun device_monitor_start = gst_device_monitor_start(this : DeviceMonitor*) : Bool
  fun device_monitor_stop = gst_device_monitor_stop(this : DeviceMonitor*) : Void

  struct DeviceProvider # object
    parent : LibGst::Object*
    devices : Void**
    priv : LibGst::DeviceProviderPrivate*
    _gst_reserved : Void*
    # Signal provider-hidden
    # Signal provider-unhidden
    # Virtual function start
    # Virtual function stop
  end
  fun device_provider_register = gst_device_provider_register(plugin : LibGst::Plugin*, name : UInt8*, rank : UInt32, type : UInt64) : Bool
  fun device_provider_can_monitor = gst_device_provider_can_monitor(this : DeviceProvider*) : Bool
  fun device_provider_device_add = gst_device_provider_device_add(this : DeviceProvider*, device : LibGst::Device*) : Void
  fun device_provider_device_remove = gst_device_provider_device_remove(this : DeviceProvider*, device : LibGst::Device*) : Void
  fun device_provider_get_bus = gst_device_provider_get_bus(this : DeviceProvider*) : LibGst::Bus*
  fun device_provider_get_devices = gst_device_provider_get_devices(this : DeviceProvider*) : Void**
  fun device_provider_get_factory = gst_device_provider_get_factory(this : DeviceProvider*) : LibGst::DeviceProviderFactory*
  fun device_provider_get_hidden_providers = gst_device_provider_get_hidden_providers(this : DeviceProvider*) : UInt8**
  fun device_provider_get_metadata = gst_device_provider_get_metadata(this : DeviceProvider*, key : UInt8*) : UInt8*
  fun device_provider_hide_provider = gst_device_provider_hide_provider(this : DeviceProvider*, name : UInt8*) : Void
  fun device_provider_start = gst_device_provider_start(this : DeviceProvider*) : Bool
  fun device_provider_stop = gst_device_provider_stop(this : DeviceProvider*) : Void
  fun device_provider_unhide_provider = gst_device_provider_unhide_provider(this : DeviceProvider*, name : UInt8*) : Void

  struct DeviceProviderFactory # object
    _data : UInt8[0]
  end
  fun device_provider_factory_find = gst_device_provider_factory_find(name : UInt8*) : LibGst::DeviceProviderFactory*
  fun device_provider_factory_get_by_name = gst_device_provider_factory_get_by_name(factoryname : UInt8*) : LibGst::DeviceProvider*
  fun device_provider_factory_list_get_device_providers = gst_device_provider_factory_list_get_device_providers(minrank : LibGst::Rank) : Void**
  fun device_provider_factory_get = gst_device_provider_factory_get(this : DeviceProviderFactory*) : LibGst::DeviceProvider*
  fun device_provider_factory_get_device_provider_type = gst_device_provider_factory_get_device_provider_type(this : DeviceProviderFactory*) : UInt64
  fun device_provider_factory_get_metadata = gst_device_provider_factory_get_metadata(this : DeviceProviderFactory*, key : UInt8*) : UInt8*
  fun device_provider_factory_get_metadata_keys = gst_device_provider_factory_get_metadata_keys(this : DeviceProviderFactory*) : UInt8**
  fun device_provider_factory_has_classes = gst_device_provider_factory_has_classes(this : DeviceProviderFactory*, classes : UInt8*) : Bool
  fun device_provider_factory_has_classesv = gst_device_provider_factory_has_classesv(this : DeviceProviderFactory*, classes : UInt8**) : Bool

  struct DoubleRange # object
    _data : UInt8[0]
  end

  struct DynamicTypeFactory # object
    _data : UInt8[0]
  end
  fun dynamic_type_factory_load = gst_dynamic_type_factory_load(factoryname : UInt8*) : UInt64

  struct Element # object
    object : LibGst::Object*
    state_lock : LibGLib::RecMutex
    state_cond : LibGLib::Cond
    state_cookie : UInt32
    target_state : LibGst::State
    current_state : LibGst::State
    next_state : LibGst::State
    pending_state : LibGst::State
    last_return : LibGst::StateChangeReturn
    bus : LibGst::Bus*
    clock : LibGst::Clock*
    base_time : Int64
    start_time : UInt64
    numpads : UInt16
    pads : Void**
    numsrcpads : UInt16
    srcpads : Void**
    numsinkpads : UInt16
    sinkpads : Void**
    pads_cookie : UInt32
    contexts : Void**
    _gst_reserved : Void*
    # Signal no-more-pads
    # Signal pad-added
    # Signal pad-removed
    # Virtual function change_state
    # Virtual function get_state
    # Virtual function no_more_pads
    # Virtual function pad_added
    # Virtual function pad_removed
    # Virtual function post_message
    # Virtual function provide_clock
    # Virtual function query
    # Virtual function release_pad
    # Virtual function request_new_pad
    # Virtual function send_event
    # Virtual function set_bus
    # Virtual function set_clock
    # Virtual function set_context
    # Virtual function set_state
    # Virtual function state_changed
  end
  fun element_make_from_uri = gst_element_make_from_uri(type : LibGst::URIType, uri : UInt8*, elementname : UInt8*, error : LibGLib::Error**) : LibGst::Element*
  fun element_register = gst_element_register(plugin : LibGst::Plugin*, name : UInt8*, rank : UInt32, type : UInt64) : Bool
  fun element_state_change_return_get_name = gst_element_state_change_return_get_name(state_ret : LibGst::StateChangeReturn) : UInt8*
  fun element_state_get_name = gst_element_state_get_name(state : LibGst::State) : UInt8*
  fun element_abort_state = gst_element_abort_state(this : Element*) : Void
  fun element_add_pad = gst_element_add_pad(this : Element*, pad : LibGst::Pad*) : Bool
  fun element_add_property_deep_notify_watch = gst_element_add_property_deep_notify_watch(this : Element*, property_name : UInt8*, include_value : Bool) : UInt64
  fun element_add_property_notify_watch = gst_element_add_property_notify_watch(this : Element*, property_name : UInt8*, include_value : Bool) : UInt64
  fun element_call_async = gst_element_call_async(this : Element*, func : LibGst::ElementCallAsyncFunc, user_data : Void*, destroy_notify : LibGLib::DestroyNotify) : Void
  fun element_change_state = gst_element_change_state(this : Element*, transition : LibGst::StateChange) : LibGst::StateChangeReturn
  fun element_continue_state = gst_element_continue_state(this : Element*, ret : LibGst::StateChangeReturn) : LibGst::StateChangeReturn
  fun element_create_all_pads = gst_element_create_all_pads(this : Element*) : Void
  fun element_foreach_pad = gst_element_foreach_pad(this : Element*, func : LibGst::ElementForeachPadFunc, user_data : Void*) : Bool
  fun element_foreach_sink_pad = gst_element_foreach_sink_pad(this : Element*, func : LibGst::ElementForeachPadFunc, user_data : Void*) : Bool
  fun element_foreach_src_pad = gst_element_foreach_src_pad(this : Element*, func : LibGst::ElementForeachPadFunc, user_data : Void*) : Bool
  fun element_get_base_time = gst_element_get_base_time(this : Element*) : UInt64
  fun element_get_bus = gst_element_get_bus(this : Element*) : LibGst::Bus*
  fun element_get_clock = gst_element_get_clock(this : Element*) : LibGst::Clock*
  fun element_get_compatible_pad = gst_element_get_compatible_pad(this : Element*, pad : LibGst::Pad*, caps : LibGst::Caps*) : LibGst::Pad*
  fun element_get_compatible_pad_template = gst_element_get_compatible_pad_template(this : Element*, compattempl : LibGst::PadTemplate*) : LibGst::PadTemplate*
  fun element_get_context = gst_element_get_context(this : Element*, context_type : UInt8*) : LibGst::Context*
  fun element_get_context_unlocked = gst_element_get_context_unlocked(this : Element*, context_type : UInt8*) : LibGst::Context*
  fun element_get_contexts = gst_element_get_contexts(this : Element*) : Void**
  fun element_get_factory = gst_element_get_factory(this : Element*) : LibGst::ElementFactory*
  fun element_get_metadata = gst_element_get_metadata(this : Element*, key : UInt8*) : UInt8*
  fun element_get_pad_template = gst_element_get_pad_template(this : Element*, name : UInt8*) : LibGst::PadTemplate*
  fun element_get_pad_template_list = gst_element_get_pad_template_list(this : Element*) : Void**
  fun element_get_request_pad = gst_element_get_request_pad(this : Element*, name : UInt8*) : LibGst::Pad*
  fun element_get_start_time = gst_element_get_start_time(this : Element*) : UInt64
  fun element_get_state = gst_element_get_state(this : Element*, state : LibGst::State*, pending : LibGst::State*, timeout : UInt64) : LibGst::StateChangeReturn
  fun element_get_static_pad = gst_element_get_static_pad(this : Element*, name : UInt8*) : LibGst::Pad*
  fun element_is_locked_state = gst_element_is_locked_state(this : Element*) : Bool
  fun element_iterate_pads = gst_element_iterate_pads(this : Element*) : LibGst::Iterator*
  fun element_iterate_sink_pads = gst_element_iterate_sink_pads(this : Element*) : LibGst::Iterator*
  fun element_iterate_src_pads = gst_element_iterate_src_pads(this : Element*) : LibGst::Iterator*
  fun element_link = gst_element_link(this : Element*, dest : LibGst::Element*) : Bool
  fun element_link_filtered = gst_element_link_filtered(this : Element*, dest : LibGst::Element*, filter : LibGst::Caps*) : Bool
  fun element_link_pads = gst_element_link_pads(this : Element*, srcpadname : UInt8*, dest : LibGst::Element*, destpadname : UInt8*) : Bool
  fun element_link_pads_filtered = gst_element_link_pads_filtered(this : Element*, srcpadname : UInt8*, dest : LibGst::Element*, destpadname : UInt8*, filter : LibGst::Caps*) : Bool
  fun element_link_pads_full = gst_element_link_pads_full(this : Element*, srcpadname : UInt8*, dest : LibGst::Element*, destpadname : UInt8*, flags : LibGst::PadLinkCheck) : Bool
  fun element_lost_state = gst_element_lost_state(this : Element*) : Void
  fun element_message_full = gst_element_message_full(this : Element*, type : LibGst::MessageType, domain : UInt32, code : Int32, text : UInt8*, debug : UInt8*, file : UInt8*, function : UInt8*, line : Int32) : Void
  fun element_message_full_with_details = gst_element_message_full_with_details(this : Element*, type : LibGst::MessageType, domain : UInt32, code : Int32, text : UInt8*, debug : UInt8*, file : UInt8*, function : UInt8*, line : Int32, structure : LibGst::Structure*) : Void
  fun element_no_more_pads = gst_element_no_more_pads(this : Element*) : Void
  fun element_post_message = gst_element_post_message(this : Element*, message : LibGst::Message*) : Bool
  fun element_provide_clock = gst_element_provide_clock(this : Element*) : LibGst::Clock*
  fun element_query = gst_element_query(this : Element*, query : LibGst::Query*) : Bool
  fun element_query_convert = gst_element_query_convert(this : Element*, src_format : LibGst::Format, src_val : Int64, dest_format : LibGst::Format, dest_val : Int64*) : Bool
  fun element_query_duration = gst_element_query_duration(this : Element*, format : LibGst::Format, duration : Int64*) : Bool
  fun element_query_position = gst_element_query_position(this : Element*, format : LibGst::Format, cur : Int64*) : Bool
  fun element_release_request_pad = gst_element_release_request_pad(this : Element*, pad : LibGst::Pad*) : Void
  fun element_remove_pad = gst_element_remove_pad(this : Element*, pad : LibGst::Pad*) : Bool
  fun element_remove_property_notify_watch = gst_element_remove_property_notify_watch(this : Element*, watch_id : UInt64) : Void
  fun element_request_pad = gst_element_request_pad(this : Element*, templ : LibGst::PadTemplate*, name : UInt8*, caps : LibGst::Caps*) : LibGst::Pad*
  fun element_seek = gst_element_seek(this : Element*, rate : Float64, format : LibGst::Format, flags : LibGst::SeekFlags, start_type : LibGst::SeekType, start : Int64, stop_type : LibGst::SeekType, stop : Int64) : Bool
  fun element_seek_simple = gst_element_seek_simple(this : Element*, format : LibGst::Format, seek_flags : LibGst::SeekFlags, seek_pos : Int64) : Bool
  fun element_send_event = gst_element_send_event(this : Element*, event : LibGst::Event*) : Bool
  fun element_set_base_time = gst_element_set_base_time(this : Element*, time : UInt64) : Void
  fun element_set_bus = gst_element_set_bus(this : Element*, bus : LibGst::Bus*) : Void
  fun element_set_clock = gst_element_set_clock(this : Element*, clock : LibGst::Clock*) : Bool
  fun element_set_context = gst_element_set_context(this : Element*, context : LibGst::Context*) : Void
  fun element_set_locked_state = gst_element_set_locked_state(this : Element*, locked_state : Bool) : Bool
  fun element_set_start_time = gst_element_set_start_time(this : Element*, time : UInt64) : Void
  fun element_set_state = gst_element_set_state(this : Element*, state : LibGst::State) : LibGst::StateChangeReturn
  fun element_sync_state_with_parent = gst_element_sync_state_with_parent(this : Element*) : Bool
  fun element_unlink = gst_element_unlink(this : Element*, dest : LibGst::Element*) : Void
  fun element_unlink_pads = gst_element_unlink_pads(this : Element*, srcpadname : UInt8*, dest : LibGst::Element*, destpadname : UInt8*) : Void

  struct ElementFactory # object
    _data : UInt8[0]
  end
  fun element_factory_find = gst_element_factory_find(name : UInt8*) : LibGst::ElementFactory*
  fun element_factory_list_filter = gst_element_factory_list_filter(list : Void**, caps : LibGst::Caps*, direction : LibGst::PadDirection, subsetonly : Bool) : Void**
  fun element_factory_list_get_elements = gst_element_factory_list_get_elements(type : UInt64, minrank : LibGst::Rank) : Void**
  fun element_factory_make = gst_element_factory_make(factoryname : UInt8*, name : UInt8*) : LibGst::Element*
  fun element_factory_can_sink_all_caps = gst_element_factory_can_sink_all_caps(this : ElementFactory*, caps : LibGst::Caps*) : Bool
  fun element_factory_can_sink_any_caps = gst_element_factory_can_sink_any_caps(this : ElementFactory*, caps : LibGst::Caps*) : Bool
  fun element_factory_can_src_all_caps = gst_element_factory_can_src_all_caps(this : ElementFactory*, caps : LibGst::Caps*) : Bool
  fun element_factory_can_src_any_caps = gst_element_factory_can_src_any_caps(this : ElementFactory*, caps : LibGst::Caps*) : Bool
  fun element_factory_create = gst_element_factory_create(this : ElementFactory*, name : UInt8*) : LibGst::Element*
  fun element_factory_get_element_type = gst_element_factory_get_element_type(this : ElementFactory*) : UInt64
  fun element_factory_get_metadata = gst_element_factory_get_metadata(this : ElementFactory*, key : UInt8*) : UInt8*
  fun element_factory_get_metadata_keys = gst_element_factory_get_metadata_keys(this : ElementFactory*) : UInt8**
  fun element_factory_get_num_pad_templates = gst_element_factory_get_num_pad_templates(this : ElementFactory*) : UInt32
  fun element_factory_get_static_pad_templates = gst_element_factory_get_static_pad_templates(this : ElementFactory*) : Void**
  fun element_factory_get_uri_protocols = gst_element_factory_get_uri_protocols(this : ElementFactory*) : UInt8**
  fun element_factory_get_uri_type = gst_element_factory_get_uri_type(this : ElementFactory*) : LibGst::URIType
  fun element_factory_has_interface = gst_element_factory_has_interface(this : ElementFactory*, interfacename : UInt8*) : Bool
  fun element_factory_list_is_type = gst_element_factory_list_is_type(this : ElementFactory*, type : UInt64) : Bool

  struct FlagSet # object
    _data : UInt8[0]
  end
  fun flag_set_register = gst_flagset_register(flags_type : UInt64) : UInt64

  struct Fraction # object
    _data : UInt8[0]
  end

  struct FractionRange # object
    _data : UInt8[0]
  end

  struct GhostPad # object
    pad : LibGst::ProxyPad*
    priv : LibGst::GhostPadPrivate*
  end
  fun ghost_pad_new = gst_ghost_pad_new(name : UInt8*, target : LibGst::Pad*) : LibGst::Pad*
  fun ghost_pad_new_from_template = gst_ghost_pad_new_from_template(name : UInt8*, target : LibGst::Pad*, templ : LibGst::PadTemplate*) : LibGst::Pad*
  fun ghost_pad_new_no_target = gst_ghost_pad_new_no_target(name : UInt8*, dir : LibGst::PadDirection) : LibGst::Pad*
  fun ghost_pad_new_no_target_from_template = gst_ghost_pad_new_no_target_from_template(name : UInt8*, templ : LibGst::PadTemplate*) : LibGst::Pad*
  fun ghost_pad_activate_mode_default = gst_ghost_pad_activate_mode_default(pad : LibGst::Pad*, parent : LibGst::Object*, mode : LibGst::PadMode, active : Bool) : Bool
  fun ghost_pad_internal_activate_mode_default = gst_ghost_pad_internal_activate_mode_default(pad : LibGst::Pad*, parent : LibGst::Object*, mode : LibGst::PadMode, active : Bool) : Bool
  fun ghost_pad_construct = gst_ghost_pad_construct(this : GhostPad*) : Bool
  fun ghost_pad_get_target = gst_ghost_pad_get_target(this : GhostPad*) : LibGst::Pad*
  fun ghost_pad_set_target = gst_ghost_pad_set_target(this : GhostPad*, newtarget : LibGst::Pad*) : Bool

  struct Int64Range # object
    _data : UInt8[0]
  end

  struct IntRange # object
    _data : UInt8[0]
  end

  struct Object # object
    object : LibGObject::InitiallyUnowned*
    lock : LibGLib::Mutex
    name : UInt8*
    parent : LibGst::Object*
    flags : UInt32
    control_bindings : Void**
    control_rate : UInt64
    last_sync : UInt64
    _gst_reserved : Void*
    # Signal deep-notify
    # Virtual function deep_notify
    # Property name : UInt8*
    # Property parent : LibGst::Object*
  end
  fun object_check_uniqueness = gst_object_check_uniqueness(list : Void**, name : UInt8*) : Bool
  fun object_default_deep_notify = gst_object_default_deep_notify(object : LibGObject::Object*, orig : LibGst::Object*, pspec : LibGObject::ParamSpec*, excluded_props : UInt8**) : Void
  fun object_replace = gst_object_replace(oldobj : LibGst::Object**, newobj : LibGst::Object*) : Bool
  fun object_add_control_binding = gst_object_add_control_binding(this : Object*, binding : LibGst::ControlBinding*) : Bool
  fun object_default_error = gst_object_default_error(this : Object*, error : LibGLib::Error**, debug : UInt8*) : Void
  fun object_get_control_binding = gst_object_get_control_binding(this : Object*, property_name : UInt8*) : LibGst::ControlBinding*
  fun object_get_control_rate = gst_object_get_control_rate(this : Object*) : UInt64
  fun object_get_g_value_array = gst_object_get_g_value_array(this : Object*, property_name : UInt8*, timestamp : UInt64, interval : UInt64, n_values : UInt32, values : LibGObject::Value*) : Bool
  fun object_get_name = gst_object_get_name(this : Object*) : UInt8*
  fun object_get_parent = gst_object_get_parent(this : Object*) : LibGst::Object*
  fun object_get_path_string = gst_object_get_path_string(this : Object*) : UInt8*
  fun object_get_value = gst_object_get_value(this : Object*, property_name : UInt8*, timestamp : UInt64) : LibGObject::Value*
  fun object_has_active_control_bindings = gst_object_has_active_control_bindings(this : Object*) : Bool
  fun object_has_ancestor = gst_object_has_ancestor(this : Object*, ancestor : LibGst::Object*) : Bool
  fun object_has_as_ancestor = gst_object_has_as_ancestor(this : Object*, ancestor : LibGst::Object*) : Bool
  fun object_has_as_parent = gst_object_has_as_parent(this : Object*, parent : LibGst::Object*) : Bool
  fun object_ref = gst_object_ref(this : Object*) : LibGst::Object*
  fun object_remove_control_binding = gst_object_remove_control_binding(this : Object*, binding : LibGst::ControlBinding*) : Bool
  fun object_set_control_binding_disabled = gst_object_set_control_binding_disabled(this : Object*, property_name : UInt8*, disabled : Bool) : Void
  fun object_set_control_bindings_disabled = gst_object_set_control_bindings_disabled(this : Object*, disabled : Bool) : Void
  fun object_set_control_rate = gst_object_set_control_rate(this : Object*, control_rate : UInt64) : Void
  fun object_set_name = gst_object_set_name(this : Object*, name : UInt8*) : Bool
  fun object_set_parent = gst_object_set_parent(this : Object*, parent : LibGst::Object*) : Bool
  fun object_suggest_next_sync = gst_object_suggest_next_sync(this : Object*) : UInt64
  fun object_sync_values = gst_object_sync_values(this : Object*, timestamp : UInt64) : Bool
  fun object_unparent = gst_object_unparent(this : Object*) : Void
  fun object_unref = gst_object_unref(this : Object*) : Void

  struct Pad # object
    object : LibGst::Object*
    element_private : Void*
    padtemplate : LibGst::PadTemplate*
    direction : LibGst::PadDirection
    stream_rec_lock : LibGLib::RecMutex
    task : LibGst::Task*
    block_cond : LibGLib::Cond
    probes : LibGLib::HookList
    mode : LibGst::PadMode
    activatefunc : LibGst::PadActivateFunction
    activatedata : Void*
    activatenotify : LibGLib::DestroyNotify
    activatemodefunc : LibGst::PadActivateModeFunction
    activatemodedata : Void*
    activatemodenotify : LibGLib::DestroyNotify
    peer : LibGst::Pad*
    linkfunc : LibGst::PadLinkFunction
    linkdata : Void*
    linknotify : LibGLib::DestroyNotify
    unlinkfunc : LibGst::PadUnlinkFunction
    unlinkdata : Void*
    unlinknotify : LibGLib::DestroyNotify
    chainfunc : LibGst::PadChainFunction
    chaindata : Void*
    chainnotify : LibGLib::DestroyNotify
    chainlistfunc : LibGst::PadChainListFunction
    chainlistdata : Void*
    chainlistnotify : LibGLib::DestroyNotify
    getrangefunc : LibGst::PadGetRangeFunction
    getrangedata : Void*
    getrangenotify : LibGLib::DestroyNotify
    eventfunc : LibGst::PadEventFunction
    eventdata : Void*
    eventnotify : LibGLib::DestroyNotify
    offset : Int64
    queryfunc : LibGst::PadQueryFunction
    querydata : Void*
    querynotify : LibGLib::DestroyNotify
    iterintlinkfunc : LibGst::PadIterIntLinkFunction
    iterintlinkdata : Void*
    iterintlinknotify : LibGLib::DestroyNotify
    num_probes : Int32
    num_blocked : Int32
    priv : LibGst::PadPrivate*
    # Signal linked
    # Signal unlinked
    # Virtual function linked
    # Virtual function unlinked
    # Property caps : LibGst::Caps
    # Property direction : LibGst::PadDirection
    # Property offset : Int64
    # Property template : LibGst::PadTemplate*
  end
  fun pad_new = gst_pad_new(name : UInt8*, direction : LibGst::PadDirection) : LibGst::Pad*
  fun pad_new_from_static_template = gst_pad_new_from_static_template(templ : LibGst::StaticPadTemplate*, name : UInt8*) : LibGst::Pad*
  fun pad_new_from_template = gst_pad_new_from_template(templ : LibGst::PadTemplate*, name : UInt8*) : LibGst::Pad*
  fun pad_link_get_name = gst_pad_link_get_name(ret : LibGst::PadLinkReturn) : UInt8*
  fun pad_activate_mode = gst_pad_activate_mode(this : Pad*, mode : LibGst::PadMode, active : Bool) : Bool
  fun pad_add_probe = gst_pad_add_probe(this : Pad*, mask : LibGst::PadProbeType, callback : LibGst::PadProbeCallback, user_data : Void*, destroy_data : LibGLib::DestroyNotify) : UInt64
  fun pad_can_link = gst_pad_can_link(this : Pad*, sinkpad : LibGst::Pad*) : Bool
  fun pad_chain = gst_pad_chain(this : Pad*, buffer : LibGst::Buffer*) : LibGst::FlowReturn
  fun pad_chain_list = gst_pad_chain_list(this : Pad*, list : LibGst::BufferList*) : LibGst::FlowReturn
  fun pad_check_reconfigure = gst_pad_check_reconfigure(this : Pad*) : Bool
  fun pad_create_stream_id = gst_pad_create_stream_id(this : Pad*, parent : LibGst::Element*, stream_id : UInt8*) : UInt8*
  fun pad_event_default = gst_pad_event_default(this : Pad*, parent : LibGst::Object*, event : LibGst::Event*) : Bool
  fun pad_forward = gst_pad_forward(this : Pad*, forward : LibGst::PadForwardFunction, user_data : Void*) : Bool
  fun pad_get_allowed_caps = gst_pad_get_allowed_caps(this : Pad*) : LibGst::Caps*
  fun pad_get_current_caps = gst_pad_get_current_caps(this : Pad*) : LibGst::Caps*
  fun pad_get_direction = gst_pad_get_direction(this : Pad*) : LibGst::PadDirection
  fun pad_get_element_private = gst_pad_get_element_private(this : Pad*) : Void*
  fun pad_get_last_flow_return = gst_pad_get_last_flow_return(this : Pad*) : LibGst::FlowReturn
  fun pad_get_offset = gst_pad_get_offset(this : Pad*) : Int64
  fun pad_get_pad_template = gst_pad_get_pad_template(this : Pad*) : LibGst::PadTemplate*
  fun pad_get_pad_template_caps = gst_pad_get_pad_template_caps(this : Pad*) : LibGst::Caps*
  fun pad_get_parent_element = gst_pad_get_parent_element(this : Pad*) : LibGst::Element*
  fun pad_get_peer = gst_pad_get_peer(this : Pad*) : LibGst::Pad*
  fun pad_get_range = gst_pad_get_range(this : Pad*, offset : UInt64, size : UInt32, buffer : LibGst::Buffer**) : LibGst::FlowReturn
  fun pad_get_sticky_event = gst_pad_get_sticky_event(this : Pad*, event_type : LibGst::EventType, idx : UInt32) : LibGst::Event*
  fun pad_get_stream = gst_pad_get_stream(this : Pad*) : LibGst::Stream*
  fun pad_get_stream_id = gst_pad_get_stream_id(this : Pad*) : UInt8*
  fun pad_get_task_state = gst_pad_get_task_state(this : Pad*) : LibGst::TaskState
  fun pad_has_current_caps = gst_pad_has_current_caps(this : Pad*) : Bool
  fun pad_is_active = gst_pad_is_active(this : Pad*) : Bool
  fun pad_is_blocked = gst_pad_is_blocked(this : Pad*) : Bool
  fun pad_is_blocking = gst_pad_is_blocking(this : Pad*) : Bool
  fun pad_is_linked = gst_pad_is_linked(this : Pad*) : Bool
  fun pad_iterate_internal_links = gst_pad_iterate_internal_links(this : Pad*) : LibGst::Iterator*
  fun pad_iterate_internal_links_default = gst_pad_iterate_internal_links_default(this : Pad*, parent : LibGst::Object*) : LibGst::Iterator*
  fun pad_link = gst_pad_link(this : Pad*, sinkpad : LibGst::Pad*) : LibGst::PadLinkReturn
  fun pad_link_full = gst_pad_link_full(this : Pad*, sinkpad : LibGst::Pad*, flags : LibGst::PadLinkCheck) : LibGst::PadLinkReturn
  fun pad_link_maybe_ghosting = gst_pad_link_maybe_ghosting(this : Pad*, sink : LibGst::Pad*) : Bool
  fun pad_link_maybe_ghosting_full = gst_pad_link_maybe_ghosting_full(this : Pad*, sink : LibGst::Pad*, flags : LibGst::PadLinkCheck) : Bool
  fun pad_mark_reconfigure = gst_pad_mark_reconfigure(this : Pad*) : Void
  fun pad_needs_reconfigure = gst_pad_needs_reconfigure(this : Pad*) : Bool
  fun pad_pause_task = gst_pad_pause_task(this : Pad*) : Bool
  fun pad_peer_query = gst_pad_peer_query(this : Pad*, query : LibGst::Query*) : Bool
  fun pad_peer_query_accept_caps = gst_pad_peer_query_accept_caps(this : Pad*, caps : LibGst::Caps*) : Bool
  fun pad_peer_query_caps = gst_pad_peer_query_caps(this : Pad*, filter : LibGst::Caps*) : LibGst::Caps*
  fun pad_peer_query_convert = gst_pad_peer_query_convert(this : Pad*, src_format : LibGst::Format, src_val : Int64, dest_format : LibGst::Format, dest_val : Int64*) : Bool
  fun pad_peer_query_duration = gst_pad_peer_query_duration(this : Pad*, format : LibGst::Format, duration : Int64*) : Bool
  fun pad_peer_query_position = gst_pad_peer_query_position(this : Pad*, format : LibGst::Format, cur : Int64*) : Bool
  fun pad_proxy_query_accept_caps = gst_pad_proxy_query_accept_caps(this : Pad*, query : LibGst::Query*) : Bool
  fun pad_proxy_query_caps = gst_pad_proxy_query_caps(this : Pad*, query : LibGst::Query*) : Bool
  fun pad_pull_range = gst_pad_pull_range(this : Pad*, offset : UInt64, size : UInt32, buffer : LibGst::Buffer**) : LibGst::FlowReturn
  fun pad_push = gst_pad_push(this : Pad*, buffer : LibGst::Buffer*) : LibGst::FlowReturn
  fun pad_push_event = gst_pad_push_event(this : Pad*, event : LibGst::Event*) : Bool
  fun pad_push_list = gst_pad_push_list(this : Pad*, list : LibGst::BufferList*) : LibGst::FlowReturn
  fun pad_query = gst_pad_query(this : Pad*, query : LibGst::Query*) : Bool
  fun pad_query_accept_caps = gst_pad_query_accept_caps(this : Pad*, caps : LibGst::Caps*) : Bool
  fun pad_query_caps = gst_pad_query_caps(this : Pad*, filter : LibGst::Caps*) : LibGst::Caps*
  fun pad_query_convert = gst_pad_query_convert(this : Pad*, src_format : LibGst::Format, src_val : Int64, dest_format : LibGst::Format, dest_val : Int64*) : Bool
  fun pad_query_default = gst_pad_query_default(this : Pad*, parent : LibGst::Object*, query : LibGst::Query*) : Bool
  fun pad_query_duration = gst_pad_query_duration(this : Pad*, format : LibGst::Format, duration : Int64*) : Bool
  fun pad_query_position = gst_pad_query_position(this : Pad*, format : LibGst::Format, cur : Int64*) : Bool
  fun pad_remove_probe = gst_pad_remove_probe(this : Pad*, id : UInt64) : Void
  fun pad_send_event = gst_pad_send_event(this : Pad*, event : LibGst::Event*) : Bool
  fun pad_set_activate_function_full = gst_pad_set_activate_function_full(this : Pad*, activate : LibGst::PadActivateFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_activatemode_function_full = gst_pad_set_activatemode_function_full(this : Pad*, activatemode : LibGst::PadActivateModeFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_active = gst_pad_set_active(this : Pad*, active : Bool) : Bool
  fun pad_set_chain_function_full = gst_pad_set_chain_function_full(this : Pad*, chain : LibGst::PadChainFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_chain_list_function_full = gst_pad_set_chain_list_function_full(this : Pad*, chainlist : LibGst::PadChainListFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_element_private = gst_pad_set_element_private(this : Pad*, priv : Void*) : Void
  fun pad_set_event_full_function_full = gst_pad_set_event_full_function_full(this : Pad*, event : LibGst::PadEventFullFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_event_function_full = gst_pad_set_event_function_full(this : Pad*, event : LibGst::PadEventFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_getrange_function_full = gst_pad_set_getrange_function_full(this : Pad*, get : LibGst::PadGetRangeFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_iterate_internal_links_function_full = gst_pad_set_iterate_internal_links_function_full(this : Pad*, iterintlink : LibGst::PadIterIntLinkFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_link_function_full = gst_pad_set_link_function_full(this : Pad*, link : LibGst::PadLinkFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_offset = gst_pad_set_offset(this : Pad*, offset : Int64) : Void
  fun pad_set_query_function_full = gst_pad_set_query_function_full(this : Pad*, query : LibGst::PadQueryFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_set_unlink_function_full = gst_pad_set_unlink_function_full(this : Pad*, unlink : LibGst::PadUnlinkFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun pad_start_task = gst_pad_start_task(this : Pad*, func : LibGst::TaskFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Bool
  fun pad_sticky_events_foreach = gst_pad_sticky_events_foreach(this : Pad*, foreach_func : LibGst::PadStickyEventsForeachFunction, user_data : Void*) : Void
  fun pad_stop_task = gst_pad_stop_task(this : Pad*) : Bool
  fun pad_store_sticky_event = gst_pad_store_sticky_event(this : Pad*, event : LibGst::Event*) : LibGst::FlowReturn
  fun pad_unlink = gst_pad_unlink(this : Pad*, sinkpad : LibGst::Pad*) : Bool
  fun pad_use_fixed_caps = gst_pad_use_fixed_caps(this : Pad*) : Void

  struct PadTemplate # object
    object : LibGst::Object*
    name_template : UInt8*
    direction : LibGst::PadDirection
    presence : LibGst::PadPresence
    caps : LibGst::Caps*
    # Signal pad-created
    # Virtual function pad_created
    # Property caps : LibGst::Caps
    # Property direction : LibGst::PadDirection
    # Property gtype : UInt64
    # Property name_template : UInt8*
    # Property presence : LibGst::PadPresence
  end
  fun pad_template_new = gst_pad_template_new(name_template : UInt8*, direction : LibGst::PadDirection, presence : LibGst::PadPresence, caps : LibGst::Caps*) : LibGst::PadTemplate*
  fun pad_template_new_from_static_pad_template_with_gtype = gst_pad_template_new_from_static_pad_template_with_gtype(pad_template : LibGst::StaticPadTemplate*, pad_type : UInt64) : LibGst::PadTemplate*
  fun pad_template_new_with_gtype = gst_pad_template_new_with_gtype(name_template : UInt8*, direction : LibGst::PadDirection, presence : LibGst::PadPresence, caps : LibGst::Caps*, pad_type : UInt64) : LibGst::PadTemplate*
  fun pad_template_get_caps = gst_pad_template_get_caps(this : PadTemplate*) : LibGst::Caps*
  fun pad_template_pad_created = gst_pad_template_pad_created(this : PadTemplate*, pad : LibGst::Pad*) : Void

  struct ParamArray # object
    _data : UInt8[0]
  end

  struct ParamFraction # object
    _data : UInt8[0]
  end

  struct Pipeline # object
    bin : LibGst::Bin*
    fixed_clock : LibGst::Clock*
    stream_time : UInt64
    delay : UInt64
    priv : LibGst::PipelinePrivate*
    _gst_reserved : Void*
    # Property auto_flush_bus : Bool
    # Property delay : UInt64
    # Property latency : UInt64
  end
  fun pipeline_new = gst_pipeline_new(name : UInt8*) : LibGst::Element*
  fun pipeline_auto_clock = gst_pipeline_auto_clock(this : Pipeline*) : Void
  fun pipeline_get_auto_flush_bus = gst_pipeline_get_auto_flush_bus(this : Pipeline*) : Bool
  fun pipeline_get_bus = gst_pipeline_get_bus(this : Pipeline*) : LibGst::Bus*
  fun pipeline_get_delay = gst_pipeline_get_delay(this : Pipeline*) : UInt64
  fun pipeline_get_latency = gst_pipeline_get_latency(this : Pipeline*) : UInt64
  fun pipeline_get_pipeline_clock = gst_pipeline_get_pipeline_clock(this : Pipeline*) : LibGst::Clock*
  fun pipeline_set_auto_flush_bus = gst_pipeline_set_auto_flush_bus(this : Pipeline*, auto_flush : Bool) : Void
  fun pipeline_set_delay = gst_pipeline_set_delay(this : Pipeline*, delay : UInt64) : Void
  fun pipeline_set_latency = gst_pipeline_set_latency(this : Pipeline*, latency : UInt64) : Void
  fun pipeline_use_clock = gst_pipeline_use_clock(this : Pipeline*, clock : LibGst::Clock*) : Void

  struct Plugin # object
    _data : UInt8[0]
  end
  fun plugin_list_free = gst_plugin_list_free(list : Void**) : Void
  fun plugin_load_by_name = gst_plugin_load_by_name(name : UInt8*) : LibGst::Plugin*
  fun plugin_load_file = gst_plugin_load_file(filename : UInt8*, error : LibGLib::Error**) : LibGst::Plugin*
  fun plugin_register_static = gst_plugin_register_static(major_version : Int32, minor_version : Int32, name : UInt8*, description : UInt8*, init_func : LibGst::PluginInitFunc, version : UInt8*, license : UInt8*, source : UInt8*, package : UInt8*, origin : UInt8*) : Bool
  fun plugin_register_static_full = gst_plugin_register_static_full(major_version : Int32, minor_version : Int32, name : UInt8*, description : UInt8*, init_full_func : LibGst::PluginInitFullFunc, version : UInt8*, license : UInt8*, source : UInt8*, package : UInt8*, origin : UInt8*, user_data : Void*) : Bool
  fun plugin_add_dependency = gst_plugin_add_dependency(this : Plugin*, env_vars : UInt8**, paths : UInt8**, names : UInt8**, flags : LibGst::PluginDependencyFlags) : Void
  fun plugin_add_dependency_simple = gst_plugin_add_dependency_simple(this : Plugin*, env_vars : UInt8*, paths : UInt8*, names : UInt8*, flags : LibGst::PluginDependencyFlags) : Void
  fun plugin_get_cache_data = gst_plugin_get_cache_data(this : Plugin*) : LibGst::Structure*
  fun plugin_get_description = gst_plugin_get_description(this : Plugin*) : UInt8*
  fun plugin_get_filename = gst_plugin_get_filename(this : Plugin*) : UInt8*
  fun plugin_get_license = gst_plugin_get_license(this : Plugin*) : UInt8*
  fun plugin_get_name = gst_plugin_get_name(this : Plugin*) : UInt8*
  fun plugin_get_origin = gst_plugin_get_origin(this : Plugin*) : UInt8*
  fun plugin_get_package = gst_plugin_get_package(this : Plugin*) : UInt8*
  fun plugin_get_release_date_string = gst_plugin_get_release_date_string(this : Plugin*) : UInt8*
  fun plugin_get_source = gst_plugin_get_source(this : Plugin*) : UInt8*
  fun plugin_get_version = gst_plugin_get_version(this : Plugin*) : UInt8*
  fun plugin_is_loaded = gst_plugin_is_loaded(this : Plugin*) : Bool
  fun plugin_load = gst_plugin_load(this : Plugin*) : LibGst::Plugin*
  fun plugin_set_cache_data = gst_plugin_set_cache_data(this : Plugin*, cache_data : LibGst::Structure*) : Void

  struct PluginFeature # object
    _data : UInt8[0]
  end
  fun plugin_feature_list_copy = gst_plugin_feature_list_copy(list : Void**) : Void**
  fun plugin_feature_list_debug = gst_plugin_feature_list_debug(list : Void**) : Void
  fun plugin_feature_list_free = gst_plugin_feature_list_free(list : Void**) : Void
  fun plugin_feature_rank_compare_func = gst_plugin_feature_rank_compare_func(p1 : Void*, p2 : Void*) : Int32
  fun plugin_feature_check_version = gst_plugin_feature_check_version(this : PluginFeature*, min_major : UInt32, min_minor : UInt32, min_micro : UInt32) : Bool
  fun plugin_feature_get_plugin = gst_plugin_feature_get_plugin(this : PluginFeature*) : LibGst::Plugin*
  fun plugin_feature_get_plugin_name = gst_plugin_feature_get_plugin_name(this : PluginFeature*) : UInt8*
  fun plugin_feature_get_rank = gst_plugin_feature_get_rank(this : PluginFeature*) : UInt32
  fun plugin_feature_load = gst_plugin_feature_load(this : PluginFeature*) : LibGst::PluginFeature*
  fun plugin_feature_set_rank = gst_plugin_feature_set_rank(this : PluginFeature*, rank : UInt32) : Void

  struct ProxyPad # object
    pad : LibGst::Pad*
    priv : LibGst::ProxyPadPrivate*
  end
  fun proxy_pad_chain_default = gst_proxy_pad_chain_default(pad : LibGst::Pad*, parent : LibGst::Object*, buffer : LibGst::Buffer*) : LibGst::FlowReturn
  fun proxy_pad_chain_list_default = gst_proxy_pad_chain_list_default(pad : LibGst::Pad*, parent : LibGst::Object*, list : LibGst::BufferList*) : LibGst::FlowReturn
  fun proxy_pad_getrange_default = gst_proxy_pad_getrange_default(pad : LibGst::Pad*, parent : LibGst::Object*, offset : UInt64, size : UInt32, buffer : LibGst::Buffer**) : LibGst::FlowReturn
  fun proxy_pad_iterate_internal_links_default = gst_proxy_pad_iterate_internal_links_default(pad : LibGst::Pad*, parent : LibGst::Object*) : LibGst::Iterator*
  fun proxy_pad_get_internal = gst_proxy_pad_get_internal(this : ProxyPad*) : LibGst::ProxyPad*

  struct Registry # object
    object : LibGst::Object*
    priv : LibGst::RegistryPrivate*
    # Signal feature-added
    # Signal plugin-added
  end
  fun registry_fork_is_enabled = gst_registry_fork_is_enabled() : Bool
  fun registry_fork_set_enabled = gst_registry_fork_set_enabled(enabled : Bool) : Void
  fun registry_get = gst_registry_get() : LibGst::Registry*
  fun registry_add_feature = gst_registry_add_feature(this : Registry*, feature : LibGst::PluginFeature*) : Bool
  fun registry_add_plugin = gst_registry_add_plugin(this : Registry*, plugin : LibGst::Plugin*) : Bool
  fun registry_check_feature_version = gst_registry_check_feature_version(this : Registry*, feature_name : UInt8*, min_major : UInt32, min_minor : UInt32, min_micro : UInt32) : Bool
  fun registry_feature_filter = gst_registry_feature_filter(this : Registry*, filter : LibGst::PluginFeatureFilter, first : Bool, user_data : Void*) : Void**
  fun registry_find_feature = gst_registry_find_feature(this : Registry*, name : UInt8*, type : UInt64) : LibGst::PluginFeature*
  fun registry_find_plugin = gst_registry_find_plugin(this : Registry*, name : UInt8*) : LibGst::Plugin*
  fun registry_get_feature_list = gst_registry_get_feature_list(this : Registry*, type : UInt64) : Void**
  fun registry_get_feature_list_by_plugin = gst_registry_get_feature_list_by_plugin(this : Registry*, name : UInt8*) : Void**
  fun registry_get_feature_list_cookie = gst_registry_get_feature_list_cookie(this : Registry*) : UInt32
  fun registry_get_plugin_list = gst_registry_get_plugin_list(this : Registry*) : Void**
  fun registry_lookup = gst_registry_lookup(this : Registry*, filename : UInt8*) : LibGst::Plugin*
  fun registry_lookup_feature = gst_registry_lookup_feature(this : Registry*, name : UInt8*) : LibGst::PluginFeature*
  fun registry_plugin_filter = gst_registry_plugin_filter(this : Registry*, filter : LibGst::PluginFilter, first : Bool, user_data : Void*) : Void**
  fun registry_remove_feature = gst_registry_remove_feature(this : Registry*, feature : LibGst::PluginFeature*) : Void
  fun registry_remove_plugin = gst_registry_remove_plugin(this : Registry*, plugin : LibGst::Plugin*) : Void
  fun registry_scan_path = gst_registry_scan_path(this : Registry*, path : UInt8*) : Bool

  struct Stream # object
    object : LibGst::Object*
    stream_id : UInt8*
    priv : LibGst::StreamPrivate*
    _gst_reserved : Void*
    # Property caps : LibGst::Caps
    # Property stream_flags : LibGst::StreamFlags
    # Property stream_id : UInt8*
    # Property stream_type : LibGst::StreamType
    # Property tags : LibGst::TagList
  end
  fun stream_new = gst_stream_new(stream_id : UInt8*, caps : LibGst::Caps*, type : LibGst::StreamType, flags : LibGst::StreamFlags) : LibGst::Stream*
  fun stream_get_caps = gst_stream_get_caps(this : Stream*) : LibGst::Caps*
  fun stream_get_stream_flags = gst_stream_get_stream_flags(this : Stream*) : LibGst::StreamFlags
  fun stream_get_stream_id = gst_stream_get_stream_id(this : Stream*) : UInt8*
  fun stream_get_stream_type = gst_stream_get_stream_type(this : Stream*) : LibGst::StreamType
  fun stream_get_tags = gst_stream_get_tags(this : Stream*) : LibGst::TagList*
  fun stream_set_caps = gst_stream_set_caps(this : Stream*, caps : LibGst::Caps*) : Void
  fun stream_set_stream_flags = gst_stream_set_stream_flags(this : Stream*, flags : LibGst::StreamFlags) : Void
  fun stream_set_stream_type = gst_stream_set_stream_type(this : Stream*, stream_type : LibGst::StreamType) : Void
  fun stream_set_tags = gst_stream_set_tags(this : Stream*, tags : LibGst::TagList*) : Void

  struct StreamCollection # object
    object : LibGst::Object*
    upstream_id : UInt8*
    priv : LibGst::StreamCollectionPrivate*
    _gst_reserved : Void*
    # Signal stream-notify
    # Virtual function stream_notify
    # Property upstream_id : UInt8*
  end
  fun stream_collection_new = gst_stream_collection_new(upstream_id : UInt8*) : LibGst::StreamCollection*
  fun stream_collection_add_stream = gst_stream_collection_add_stream(this : StreamCollection*, stream : LibGst::Stream*) : Bool
  fun stream_collection_get_size = gst_stream_collection_get_size(this : StreamCollection*) : UInt32
  fun stream_collection_get_stream = gst_stream_collection_get_stream(this : StreamCollection*, index : UInt32) : LibGst::Stream*
  fun stream_collection_get_upstream_id = gst_stream_collection_get_upstream_id(this : StreamCollection*) : UInt8*

  struct SystemClock # object
    clock : LibGst::Clock*
    priv : LibGst::SystemClockPrivate*
    _gst_reserved : Void*
    # Property clock_type : LibGst::ClockType
  end
  fun system_clock_obtain = gst_system_clock_obtain() : LibGst::Clock*
  fun system_clock_set_default = gst_system_clock_set_default(new_clock : LibGst::Clock*) : Void

  struct Task # object
    object : LibGst::Object*
    state : LibGst::TaskState
    cond : LibGLib::Cond
    lock : LibGLib::RecMutex*
    func : LibGst::TaskFunction
    user_data : Void*
    notify : LibGLib::DestroyNotify
    running : Bool
    thread : LibGLib::Thread*
    priv : LibGst::TaskPrivate*
    _gst_reserved : Void*
  end
  fun task_new = gst_task_new(func : LibGst::TaskFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : LibGst::Task*
  fun task_cleanup_all = gst_task_cleanup_all() : Void
  fun task_get_pool = gst_task_get_pool(this : Task*) : LibGst::TaskPool*
  fun task_get_state = gst_task_get_state(this : Task*) : LibGst::TaskState
  fun task_join = gst_task_join(this : Task*) : Bool
  fun task_pause = gst_task_pause(this : Task*) : Bool
  fun task_set_enter_callback = gst_task_set_enter_callback(this : Task*, enter_func : LibGst::TaskThreadFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun task_set_leave_callback = gst_task_set_leave_callback(this : Task*, leave_func : LibGst::TaskThreadFunc, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun task_set_lock = gst_task_set_lock(this : Task*, mutex : LibGLib::RecMutex*) : Void
  fun task_set_pool = gst_task_set_pool(this : Task*, pool : LibGst::TaskPool*) : Void
  fun task_set_state = gst_task_set_state(this : Task*, state : LibGst::TaskState) : Bool
  fun task_start = gst_task_start(this : Task*) : Bool
  fun task_stop = gst_task_stop(this : Task*) : Bool

  struct TaskPool # object
    object : LibGst::Object*
    pool : LibGLib::ThreadPool*
    _gst_reserved : Void*
    # Virtual function cleanup
    # Virtual function join
    # Virtual function prepare
    # Virtual function push
  end
  fun task_pool_new = gst_task_pool_new() : LibGst::TaskPool*
  fun task_pool_cleanup = gst_task_pool_cleanup(this : TaskPool*) : Void
  fun task_pool_join = gst_task_pool_join(this : TaskPool*, id : Void*) : Void
  fun task_pool_prepare = gst_task_pool_prepare(this : TaskPool*, error : LibGLib::Error**) : Void
  fun task_pool_push = gst_task_pool_push(this : TaskPool*, func : LibGst::TaskPoolFunction, user_data : Void*, error : LibGLib::Error**) : Void*

  struct Tracer # object
    parent : LibGst::Object*
    priv : LibGst::TracerPrivate*
    _gst_reserved : Void*
    # Property params : UInt8*
  end

  struct TracerFactory # object
    _data : UInt8[0]
  end
  fun tracer_factory_get_list = gst_tracer_factory_get_list() : Void**
  fun tracer_factory_get_tracer_type = gst_tracer_factory_get_tracer_type(this : TracerFactory*) : UInt64

  struct TracerRecord # object
    _data : UInt8[0]
  end

  struct TypeFindFactory # object
    _data : UInt8[0]
  end
  fun type_find_factory_get_list = gst_type_find_factory_get_list() : Void**
  fun type_find_factory_call_function = gst_type_find_factory_call_function(this : TypeFindFactory*, find : LibGst::TypeFind*) : Void
  fun type_find_factory_get_caps = gst_type_find_factory_get_caps(this : TypeFindFactory*) : LibGst::Caps*
  fun type_find_factory_get_extensions = gst_type_find_factory_get_extensions(this : TypeFindFactory*) : UInt8**
  fun type_find_factory_has_function = gst_type_find_factory_has_function(this : TypeFindFactory*) : Bool

  struct ValueArray # object
    _data : UInt8[0]
  end
  fun value_array_append_and_take_value = gst_value_array_append_and_take_value(value : LibGObject::Value*, append_value : LibGObject::Value*) : Void
  fun value_array_append_value = gst_value_array_append_value(value : LibGObject::Value*, append_value : LibGObject::Value*) : Void
  fun value_array_get_size = gst_value_array_get_size(value : LibGObject::Value*) : UInt32
  fun value_array_get_value = gst_value_array_get_value(value : LibGObject::Value*, index : UInt32) : LibGObject::Value*
  fun value_array_prepend_value = gst_value_array_prepend_value(value : LibGObject::Value*, prepend_value : LibGObject::Value*) : Void

  struct ValueList # object
    _data : UInt8[0]
  end
  fun value_list_append_and_take_value = gst_value_list_append_and_take_value(value : LibGObject::Value*, append_value : LibGObject::Value*) : Void
  fun value_list_append_value = gst_value_list_append_value(value : LibGObject::Value*, append_value : LibGObject::Value*) : Void
  fun value_list_concat = gst_value_list_concat(dest : LibGObject::Value*, value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Void
  fun value_list_get_size = gst_value_list_get_size(value : LibGObject::Value*) : UInt32
  fun value_list_get_value = gst_value_list_get_value(value : LibGObject::Value*, index : UInt32) : LibGObject::Value*
  fun value_list_merge = gst_value_list_merge(dest : LibGObject::Value*, value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Void
  fun value_list_prepend_value = gst_value_list_prepend_value(value : LibGObject::Value*, prepend_value : LibGObject::Value*) : Void


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum AllocatorFlags : UInt32
    ZERO_NONE = 0
    CUSTOM_ALLOC = 16
    LAST = 1048576
  end

  @[Flags]
  enum BinFlags : UInt32
    ZERO_NONE = 0
    NO_RESYNC = 16384
    STREAMS_AWARE = 32768
    LAST = 524288
  end

  @[Flags]
  enum BufferCopyFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    FLAGS = 1
    TIMESTAMPS = 2
    META = 4
    MEMORY = 8
    MERGE = 16
    DEEP = 32
  end

  @[Flags]
  enum BufferFlags : UInt32
    ZERO_NONE = 0
    LIVE = 16
    DECODE_ONLY = 32
    DISCONT = 64
    RESYNC = 128
    CORRUPTED = 256
    MARKER = 512
    HEADER = 1024
    GAP = 2048
    DROPPABLE = 4096
    DELTA_UNIT = 8192
    TAG_MEMORY = 16384
    SYNC_AFTER = 32768
    NON_DROPPABLE = 65536
    LAST = 1048576
  end

  @[Flags]
  enum BufferPoolAcquireFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    KEY_UNIT = 1
    DONTWAIT = 2
    DISCONT = 4
    LAST = 65536
  end

  @[Flags]
  enum BusFlags : UInt32
    ZERO_NONE = 0
    FLUSHING = 16
    FLAG_LAST = 32
  end

  @[Flags]
  enum CapsFlags : UInt32
    ZERO_NONE = 0
    ANY = 16
  end

  @[Flags]
  enum ClockFlags : UInt32
    ZERO_NONE = 0
    CAN_DO_SINGLE_SYNC = 16
    CAN_DO_SINGLE_ASYNC = 32
    CAN_DO_PERIODIC_SYNC = 64
    CAN_DO_PERIODIC_ASYNC = 128
    CAN_SET_RESOLUTION = 256
    CAN_SET_MASTER = 512
    NEEDS_STARTUP_SYNC = 1024
    LAST = 4096
  end

  @[Flags]
  enum DebugColorFlags : UInt32
    ZERO_NONE = 0
    FG_BLACK = 0
    FG_RED = 1
    FG_GREEN = 2
    FG_YELLOW = 3
    FG_BLUE = 4
    FG_MAGENTA = 5
    FG_CYAN = 6
    FG_WHITE = 7
    BG_BLACK = 0
    BG_RED = 16
    BG_GREEN = 32
    BG_YELLOW = 48
    BG_BLUE = 64
    BG_MAGENTA = 80
    BG_CYAN = 96
    BG_WHITE = 112
    BOLD = 256
    UNDERLINE = 512
  end

  @[Flags]
  enum DebugGraphDetails : Int32
    ZERO_NONE = 0
    MEDIA_TYPE = 1
    CAPS_DETAILS = 2
    NON_DEFAULT_PARAMS = 4
    STATES = 8
    FULL_PARAMS = 16
    ALL = 15
    VERBOSE = -1
  end

  @[Flags]
  enum ElementFlags : UInt32
    ZERO_NONE = 0
    LOCKED_STATE = 16
    SINK = 32
    SOURCE = 64
    PROVIDE_CLOCK = 128
    REQUIRE_CLOCK = 256
    INDEXABLE = 512
    LAST = 16384
  end

  @[Flags]
  enum EventTypeFlags : UInt32
    ZERO_NONE = 0
    UPSTREAM = 1
    DOWNSTREAM = 2
    SERIALIZED = 4
    STICKY = 8
    STICKY_MULTI = 16
  end

  @[Flags]
  enum LockFlags : UInt32
    ZERO_NONE = 0
    READ = 1
    WRITE = 2
    EXCLUSIVE = 4
    LAST = 256
  end

  @[Flags]
  enum MapFlags : UInt32
    ZERO_NONE = 0
    READ = 1
    WRITE = 2
    FLAG_LAST = 65536
  end

  @[Flags]
  enum MemoryFlags : UInt32
    ZERO_NONE = 0
    READONLY = 2
    NO_SHARE = 16
    ZERO_PREFIXED = 32
    ZERO_PADDED = 64
    PHYSICALLY_CONTIGUOUS = 128
    NOT_MAPPABLE = 256
    LAST = 1048576
  end

  @[Flags]
  enum MessageType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    EOS = 1
    ERROR = 2
    WARNING = 4
    INFO = 8
    TAG = 16
    BUFFERING = 32
    STATE_CHANGED = 64
    STATE_DIRTY = 128
    STEP_DONE = 256
    CLOCK_PROVIDE = 512
    CLOCK_LOST = 1024
    NEW_CLOCK = 2048
    STRUCTURE_CHANGE = 4096
    STREAM_STATUS = 8192
    APPLICATION = 16384
    ELEMENT = 32768
    SEGMENT_START = 65536
    SEGMENT_DONE = 131072
    DURATION_CHANGED = 262144
    LATENCY = 524288
    ASYNC_START = 1048576
    ASYNC_DONE = 2097152
    REQUEST_STATE = 4194304
    STEP_START = 8388608
    QOS = 16777216
    PROGRESS = 33554432
    TOC = 67108864
    RESET_TIME = 134217728
    STREAM_START = 268435456
    NEED_CONTEXT = 536870912
    HAVE_CONTEXT = 1073741824
    EXTENDED = 2147483648
    DEVICE_ADDED = 2147483649
    DEVICE_REMOVED = 2147483650
    PROPERTY_NOTIFY = 2147483651
    STREAM_COLLECTION = 2147483652
    STREAMS_SELECTED = 2147483653
    REDIRECT = 2147483654
    ANY = 4294967295
  end
  fun message_type_get_name = gst_message_type_get_name(type : LibGst::MessageType) : UInt8*
  fun message_type_to_quark = gst_message_type_to_quark(type : LibGst::MessageType) : UInt32

  @[Flags]
  enum MetaFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    READONLY = 1
    POOLED = 2
    LOCKED = 4
    LAST = 65536
  end

  @[Flags]
  enum MiniObjectFlags : UInt32
    ZERO_NONE = 0
    LOCKABLE = 1
    LOCK_READONLY = 2
    MAY_BE_LEAKED = 4
    LAST = 16
  end

  @[Flags]
  enum ObjectFlags : UInt32
    ZERO_NONE = 0
    MAY_BE_LEAKED = 1
    LAST = 16
  end

  @[Flags]
  enum PadFlags : UInt32
    ZERO_NONE = 0
    BLOCKED = 16
    FLUSHING = 32
    EOS = 64
    BLOCKING = 128
    NEED_PARENT = 256
    NEED_RECONFIGURE = 512
    PENDING_EVENTS = 1024
    FIXED_CAPS = 2048
    PROXY_CAPS = 4096
    PROXY_ALLOCATION = 8192
    PROXY_SCHEDULING = 16384
    ACCEPT_INTERSECT = 32768
    ACCEPT_TEMPLATE = 65536
    LAST = 1048576
  end

  @[Flags]
  enum PadLinkCheck : UInt32
    ZERO_NONE = 0
    NOTHING = 0
    HIERARCHY = 1
    TEMPLATE_CAPS = 2
    CAPS = 4
    NO_RECONFIGURE = 8
    DEFAULT = 5
  end

  @[Flags]
  enum PadProbeType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    IDLE = 1
    BLOCK = 2
    BUFFER = 16
    BUFFER_LIST = 32
    EVENT_DOWNSTREAM = 64
    EVENT_UPSTREAM = 128
    EVENT_FLUSH = 256
    QUERY_DOWNSTREAM = 512
    QUERY_UPSTREAM = 1024
    PUSH = 4096
    PULL = 8192
    BLOCKING = 3
    DATA_DOWNSTREAM = 112
    DATA_UPSTREAM = 128
    DATA_BOTH = 240
    BLOCK_DOWNSTREAM = 114
    BLOCK_UPSTREAM = 130
    EVENT_BOTH = 192
    QUERY_BOTH = 1536
    ALL_BOTH = 1776
    SCHEDULING = 12288
  end

  @[Flags]
  enum PadTemplateFlags : UInt32
    ZERO_NONE = 0
    LAST = 256
  end

  @[Flags]
  enum ParseFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    FATAL_ERRORS = 1
    NO_SINGLE_ELEMENT_BINS = 2
    PLACE_IN_BIN = 4
  end

  @[Flags]
  enum PipelineFlags : UInt32
    ZERO_NONE = 0
    FIXED_CLOCK = 524288
    LAST = 8388608
  end

  @[Flags]
  enum PluginDependencyFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    RECURSE = 1
    PATHS_ARE_DEFAULT_ONLY = 2
    FILE_NAME_IS_SUFFIX = 4
    FILE_NAME_IS_PREFIX = 8
    PATHS_ARE_RELATIVE_TO_EXE = 16
  end

  @[Flags]
  enum PluginFlags : UInt32
    ZERO_NONE = 0
    CACHED = 16
    BLACKLISTED = 32
  end

  @[Flags]
  enum QueryTypeFlags : UInt32
    ZERO_NONE = 0
    UPSTREAM = 1
    DOWNSTREAM = 2
    SERIALIZED = 4
  end

  @[Flags]
  enum SchedulingFlags : UInt32
    ZERO_NONE = 0
    SEEKABLE = 1
    SEQUENTIAL = 2
    BANDWIDTH_LIMITED = 4
  end

  @[Flags]
  enum SeekFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    FLUSH = 1
    ACCURATE = 2
    KEY_UNIT = 4
    SEGMENT = 8
    TRICKMODE = 16
    SKIP = 16
    SNAP_BEFORE = 32
    SNAP_AFTER = 64
    SNAP_NEAREST = 96
    TRICKMODE_KEY_UNITS = 128
    TRICKMODE_NO_AUDIO = 256
  end

  @[Flags]
  enum SegmentFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    RESET = 1
    TRICKMODE = 16
    SKIP = 16
    SEGMENT = 8
    TRICKMODE_KEY_UNITS = 128
    TRICKMODE_NO_AUDIO = 256
  end

  @[Flags]
  enum StackTraceFlags : UInt32
    ZERO_NONE = 0
    FULL = 1
  end

  @[Flags]
  enum StreamFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    SPARSE = 1
    SELECT = 2
    UNSELECT = 4
  end

  @[Flags]
  enum StreamType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 1
    AUDIO = 2
    VIDEO = 4
    CONTAINER = 8
    TEXT = 16
  end
  fun stream_type_get_name = gst_stream_type_get_name(stype : LibGst::StreamType) : UInt8*

  @[Flags]
  enum TracerValueFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    OPTIONAL = 1
    AGGREGATED = 2
  end


  ###########################################
  ##    Enums
  ###########################################

  enum BufferingMode : UInt32
    ZERO_NONE = 0
    STREAM = 0
    DOWNLOAD = 1
    TIMESHIFT = 2
    LIVE = 3
  end

  enum BusSyncReply : UInt32
    ZERO_NONE = 0
    DROP = 0
    PASS = 1
    ASYNC = 2
  end

  enum CapsIntersectMode : UInt32
    ZERO_NONE = 0
    ZIG_ZAG = 0
    FIRST = 1
  end

  enum ClockEntryType : UInt32
    ZERO_NONE = 0
    SINGLE = 0
    PERIODIC = 1
  end

  enum ClockReturn : UInt32
    ZERO_NONE = 0
    OK = 0
    EARLY = 1
    UNSCHEDULED = 2
    BUSY = 3
    BADTIME = 4
    ERROR = 5
    UNSUPPORTED = 6
    DONE = 7
  end

  enum ClockType : UInt32
    ZERO_NONE = 0
    REALTIME = 0
    MONOTONIC = 1
    OTHER = 2
  end

  enum CoreError : UInt32
    ZERO_NONE = 0
    FAILED = 1
    TOO_LAZY = 2
    NOT_IMPLEMENTED = 3
    STATE_CHANGE = 4
    PAD = 5
    THREAD = 6
    NEGOTIATION = 7
    EVENT = 8
    SEEK = 9
    CAPS = 10
    TAG = 11
    MISSING_PLUGIN = 12
    CLOCK = 13
    DISABLED = 14
    NUM_ERRORS = 15
  end
  fun core_error_quark = gst_core_error_quark() : UInt32

  enum DebugColorMode : UInt32
    ZERO_NONE = 0
    OFF = 0
    ON = 1
    UNIX = 2
  end

  enum DebugLevel : UInt32
    ZERO_NONE = 0
    NONE = 0
    ERROR = 1
    WARNING = 2
    FIXME = 3
    INFO = 4
    DEBUG = 5
    LOG = 6
    TRACE = 7
    MEMDUMP = 9
    COUNT = 10
  end
  fun debug_level_get_name = gst_debug_level_get_name(level : LibGst::DebugLevel) : UInt8*

  enum EventType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    FLUSH_START = 2563
    FLUSH_STOP = 5127
    STREAM_START = 10254
    CAPS = 12814
    SEGMENT = 17934
    STREAM_COLLECTION = 19230
    TAG = 20510
    BUFFERSIZE = 23054
    SINK_MESSAGE = 25630
    STREAM_GROUP_DONE = 26894
    EOS = 28174
    TOC = 30750
    PROTECTION = 33310
    SEGMENT_DONE = 38406
    GAP = 40966
    QOS = 48641
    SEEK = 51201
    NAVIGATION = 53761
    LATENCY = 56321
    STEP = 58881
    RECONFIGURE = 61441
    TOC_SELECT = 64001
    SELECT_STREAMS = 66561
    CUSTOM_UPSTREAM = 69121
    CUSTOM_DOWNSTREAM = 71686
    CUSTOM_DOWNSTREAM_OOB = 74242
    CUSTOM_DOWNSTREAM_STICKY = 76830
    CUSTOM_BOTH = 79367
    CUSTOM_BOTH_OOB = 81923
  end
  fun event_type_get_flags = gst_event_type_get_flags(type : LibGst::EventType) : LibGst::EventTypeFlags
  fun event_type_get_name = gst_event_type_get_name(type : LibGst::EventType) : UInt8*
  fun event_type_to_quark = gst_event_type_to_quark(type : LibGst::EventType) : UInt32

  enum FlowReturn : Int32
    ZERO_NONE = 0
    CUSTOM_SUCCESS_2 = 102
    CUSTOM_SUCCESS_1 = 101
    CUSTOM_SUCCESS = 100
    OK = 0
    NOT_LINKED = -1
    FLUSHING = -2
    EOS = -3
    NOT_NEGOTIATED = -4
    ERROR = -5
    NOT_SUPPORTED = -6
    CUSTOM_ERROR = -100
    CUSTOM_ERROR_1 = -101
    CUSTOM_ERROR_2 = -102
  end

  enum Format : UInt32
    ZERO_NONE = 0
    UNDEFINED = 0
    DEFAULT = 1
    BYTES = 2
    TIME = 3
    BUFFERS = 4
    PERCENT = 5
  end
  fun format_get_by_nick = gst_format_get_by_nick(nick : UInt8*) : LibGst::Format
  fun format_get_details = gst_format_get_details(format : LibGst::Format) : LibGst::FormatDefinition*
  fun format_get_name = gst_format_get_name(format : LibGst::Format) : UInt8*
  fun format_iterate_definitions = gst_format_iterate_definitions() : LibGst::Iterator*
  fun format_register = gst_format_register(nick : UInt8*, description : UInt8*) : LibGst::Format
  fun format_to_quark = gst_format_to_quark(format : LibGst::Format) : UInt32

  enum IteratorItem : UInt32
    ZERO_NONE = 0
    SKIP = 0
    PASS = 1
    END = 2
  end

  enum IteratorResult : UInt32
    ZERO_NONE = 0
    DONE = 0
    OK = 1
    RESYNC = 2
    ERROR = 3
  end

  enum LibraryError : UInt32
    ZERO_NONE = 0
    FAILED = 1
    TOO_LAZY = 2
    INIT = 3
    SHUTDOWN = 4
    SETTINGS = 5
    ENCODE = 6
    NUM_ERRORS = 7
  end
  fun library_error_quark = gst_library_error_quark() : UInt32

  enum PadDirection : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    SRC = 1
    SINK = 2
  end

  enum PadLinkReturn : Int32
    ZERO_NONE = 0
    OK = 0
    WRONG_HIERARCHY = -1
    WAS_LINKED = -2
    WRONG_DIRECTION = -3
    NOFORMAT = -4
    NOSCHED = -5
    REFUSED = -6
  end

  enum PadMode : UInt32
    ZERO_NONE = 0
    NONE = 0
    PUSH = 1
    PULL = 2
  end
  fun pad_mode_get_name = gst_pad_mode_get_name(mode : LibGst::PadMode) : UInt8*

  enum PadPresence : UInt32
    ZERO_NONE = 0
    ALWAYS = 0
    SOMETIMES = 1
    REQUEST = 2
  end

  enum PadProbeReturn : UInt32
    ZERO_NONE = 0
    DROP = 0
    OK = 1
    REMOVE = 2
    PASS = 3
    HANDLED = 4
  end

  enum ParseError : UInt32
    ZERO_NONE = 0
    SYNTAX = 0
    NO_SUCH_ELEMENT = 1
    NO_SUCH_PROPERTY = 2
    LINK = 3
    COULD_NOT_SET_PROPERTY = 4
    EMPTY_BIN = 5
    EMPTY = 6
    DELAYED_LINK = 7
  end
  fun parse_error_quark = gst_parse_error_quark() : UInt32

  enum PluginError : UInt32
    ZERO_NONE = 0
    MODULE = 0
    DEPENDENCIES = 1
    NAME_MISMATCH = 2
  end
  fun plugin_error_quark = gst_plugin_error_quark() : UInt32

  enum ProgressType : UInt32
    ZERO_NONE = 0
    START = 0
    CONTINUE = 1
    COMPLETE = 2
    CANCELED = 3
    ERROR = 4
  end

  enum PromiseResult : UInt32
    ZERO_NONE = 0
    PENDING = 0
    INTERRUPTED = 1
    REPLIED = 2
    EXPIRED = 3
  end

  enum QOSType : UInt32
    ZERO_NONE = 0
    OVERFLOW = 0
    UNDERFLOW = 1
    THROTTLE = 2
  end

  enum QueryType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    POSITION = 2563
    DURATION = 5123
    LATENCY = 7683
    JITTER = 10243
    RATE = 12803
    SEEKING = 15363
    SEGMENT = 17923
    CONVERT = 20483
    FORMATS = 23043
    BUFFERING = 28163
    CUSTOM = 30723
    URI = 33283
    ALLOCATION = 35846
    SCHEDULING = 38401
    ACCEPT_CAPS = 40963
    CAPS = 43523
    DRAIN = 46086
    CONTEXT = 48643
  end
  fun query_type_get_flags = gst_query_type_get_flags(type : LibGst::QueryType) : LibGst::QueryTypeFlags
  fun query_type_get_name = gst_query_type_get_name(type : LibGst::QueryType) : UInt8*
  fun query_type_to_quark = gst_query_type_to_quark(type : LibGst::QueryType) : UInt32

  enum Rank : UInt32
    ZERO_NONE = 0
    NONE = 0
    MARGINAL = 64
    SECONDARY = 128
    PRIMARY = 256
  end

  enum ResourceError : UInt32
    ZERO_NONE = 0
    FAILED = 1
    TOO_LAZY = 2
    NOT_FOUND = 3
    BUSY = 4
    OPEN_READ = 5
    OPEN_WRITE = 6
    OPEN_READ_WRITE = 7
    CLOSE = 8
    READ = 9
    WRITE = 10
    SEEK = 11
    SYNC = 12
    SETTINGS = 13
    NO_SPACE_LEFT = 14
    NOT_AUTHORIZED = 15
    NUM_ERRORS = 16
  end
  fun resource_error_quark = gst_resource_error_quark() : UInt32

  enum SearchMode : UInt32
    ZERO_NONE = 0
    EXACT = 0
    BEFORE = 1
    AFTER = 2
  end

  enum SeekType : UInt32
    ZERO_NONE = 0
    NONE = 0
    SET = 1
    END = 2
  end

  enum State : UInt32
    ZERO_NONE = 0
    VOID_PENDING = 0
    NULL = 1
    READY = 2
    PAUSED = 3
    PLAYING = 4
  end

  enum StateChange : UInt32
    ZERO_NONE = 0
    NULL_TO_READY = 10
    READY_TO_PAUSED = 19
    PAUSED_TO_PLAYING = 28
    PLAYING_TO_PAUSED = 35
    PAUSED_TO_READY = 26
    READY_TO_NULL = 17
    NULL_TO_NULL = 9
    READY_TO_READY = 18
    PAUSED_TO_PAUSED = 27
    PLAYING_TO_PLAYING = 36
  end
  fun state_change_get_name = gst_state_change_get_name(transition : LibGst::StateChange) : UInt8*

  enum StateChangeReturn : UInt32
    ZERO_NONE = 0
    FAILURE = 0
    SUCCESS = 1
    ASYNC = 2
    NO_PREROLL = 3
  end

  enum StreamError : UInt32
    ZERO_NONE = 0
    FAILED = 1
    TOO_LAZY = 2
    NOT_IMPLEMENTED = 3
    TYPE_NOT_FOUND = 4
    WRONG_TYPE = 5
    CODEC_NOT_FOUND = 6
    DECODE = 7
    ENCODE = 8
    DEMUX = 9
    MUX = 10
    FORMAT = 11
    DECRYPT = 12
    DECRYPT_NOKEY = 13
    NUM_ERRORS = 14
  end
  fun stream_error_quark = gst_stream_error_quark() : UInt32

  enum StreamStatusType : UInt32
    ZERO_NONE = 0
    CREATE = 0
    ENTER = 1
    LEAVE = 2
    DESTROY = 3
    START = 8
    PAUSE = 9
    STOP = 10
  end

  enum StructureChangeType : UInt32
    ZERO_NONE = 0
    LINK = 0
    UNLINK = 1
  end

  enum TagFlag : UInt32
    ZERO_NONE = 0
    UNDEFINED = 0
    META = 1
    ENCODED = 2
    DECODED = 3
    COUNT = 4
  end

  enum TagMergeMode : UInt32
    ZERO_NONE = 0
    UNDEFINED = 0
    REPLACE_ALL = 1
    REPLACE = 2
    APPEND = 3
    PREPEND = 4
    KEEP = 5
    KEEP_ALL = 6
    COUNT = 7
  end

  enum TagScope : UInt32
    ZERO_NONE = 0
    STREAM = 0
    GLOBAL = 1
  end

  enum TaskState : UInt32
    ZERO_NONE = 0
    STARTED = 0
    STOPPED = 1
    PAUSED = 2
  end

  enum TocEntryType : Int32
    ZERO_NONE = 0
    ANGLE = -3
    VERSION = -2
    EDITION = -1
    INVALID = 0
    TITLE = 1
    TRACK = 2
    CHAPTER = 3
  end
  fun toc_entry_type_get_nick = gst_toc_entry_type_get_nick(type : LibGst::TocEntryType) : UInt8*

  enum TocLoopType : UInt32
    ZERO_NONE = 0
    NONE = 0
    FORWARD = 1
    REVERSE = 2
    PING_PONG = 3
  end

  enum TocScope : UInt32
    ZERO_NONE = 0
    GLOBAL = 1
    CURRENT = 2
  end

  enum TracerValueScope : UInt32
    ZERO_NONE = 0
    PROCESS = 0
    THREAD = 1
    ELEMENT = 2
    PAD = 3
  end

  enum TypeFindProbability : UInt32
    ZERO_NONE = 0
    NONE = 0
    MINIMUM = 1
    POSSIBLE = 50
    LIKELY = 80
    NEARLY_CERTAIN = 99
    MAXIMUM = 100
  end

  enum URIError : UInt32
    ZERO_NONE = 0
    UNSUPPORTED_PROTOCOL = 0
    BAD_URI = 1
    BAD_STATE = 2
    BAD_REFERENCE = 3
  end
  fun u_r_i_error_quark = gst_uri_error_quark() : UInt32

  enum URIType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    SINK = 1
    SRC = 2
  end


  ###########################################
  ##    Interfaces
  ###########################################

  struct ChildProxy # interface
    parent : LibGObject::TypeInterface
    get_child_by_name : -> Void
    get_child_by_index : -> Void
    get_children_count : -> Void
    child_added : -> Void
    child_removed : -> Void
    _gst_reserved : Void*
    # Signal child-added
    # Signal child-removed
    # Virtual function child_added
    # Virtual function child_removed
    # Virtual function get_child_by_index
    # Virtual function get_child_by_name
    # Virtual function get_children_count
  end
  fun child_proxy_child_added = gst_child_proxy_child_added(this : ChildProxy*, child : LibGObject::Object*, name : UInt8*) : Void
  fun child_proxy_child_removed = gst_child_proxy_child_removed(this : ChildProxy*, child : LibGObject::Object*, name : UInt8*) : Void
  fun child_proxy_get_child_by_index = gst_child_proxy_get_child_by_index(this : ChildProxy*, index : UInt32) : LibGObject::Object*
  fun child_proxy_get_child_by_name = gst_child_proxy_get_child_by_name(this : ChildProxy*, name : UInt8*) : LibGObject::Object*
  fun child_proxy_get_children_count = gst_child_proxy_get_children_count(this : ChildProxy*) : UInt32
  fun child_proxy_get_property = gst_child_proxy_get_property(this : ChildProxy*, name : UInt8*, value : LibGObject::Value*) : Void
  fun child_proxy_lookup = gst_child_proxy_lookup(this : ChildProxy*, name : UInt8*, target : LibGObject::Object**, pspec : LibGObject::ParamSpec**) : Bool
  fun child_proxy_set_property = gst_child_proxy_set_property(this : ChildProxy*, name : UInt8*, value : LibGObject::Value*) : Void

  struct Preset # interface
    parent : LibGObject::TypeInterface
    get_preset_names : -> Void
    get_property_names : -> Void
    load_preset : -> Void
    save_preset : -> Void
    rename_preset : -> Void
    delete_preset : -> Void
    set_meta : -> Void
    get_meta : -> Void
    _gst_reserved : Void*
    # Virtual function delete_preset
    # Virtual function get_meta
    # Virtual function get_preset_names
    # Virtual function get_property_names
    # Virtual function load_preset
    # Virtual function rename_preset
    # Virtual function save_preset
    # Virtual function set_meta
  end
  fun preset_get_app_dir = gst_preset_get_app_dir() : UInt8*
  fun preset_set_app_dir = gst_preset_set_app_dir(app_dir : UInt8*) : Bool
  fun preset_delete_preset = gst_preset_delete_preset(this : Preset*, name : UInt8*) : Bool
  fun preset_get_meta = gst_preset_get_meta(this : Preset*, name : UInt8*, tag : UInt8*, value : UInt8**) : Bool
  fun preset_get_preset_names = gst_preset_get_preset_names(this : Preset*) : UInt8**
  fun preset_get_property_names = gst_preset_get_property_names(this : Preset*) : UInt8**
  fun preset_is_editable = gst_preset_is_editable(this : Preset*) : Bool
  fun preset_load_preset = gst_preset_load_preset(this : Preset*, name : UInt8*) : Bool
  fun preset_rename_preset = gst_preset_rename_preset(this : Preset*, old_name : UInt8*, new_name : UInt8*) : Bool
  fun preset_save_preset = gst_preset_save_preset(this : Preset*, name : UInt8*) : Bool
  fun preset_set_meta = gst_preset_set_meta(this : Preset*, name : UInt8*, tag : UInt8*, value : UInt8*) : Bool

  struct TagSetter # interface
    g_iface : LibGObject::TypeInterface
  # Requires Element
  end
  fun tag_setter_add_tag_value = gst_tag_setter_add_tag_value(this : TagSetter*, mode : LibGst::TagMergeMode, tag : UInt8*, value : LibGObject::Value*) : Void
  fun tag_setter_get_tag_list = gst_tag_setter_get_tag_list(this : TagSetter*) : LibGst::TagList*
  fun tag_setter_get_tag_merge_mode = gst_tag_setter_get_tag_merge_mode(this : TagSetter*) : LibGst::TagMergeMode
  fun tag_setter_merge_tags = gst_tag_setter_merge_tags(this : TagSetter*, list : LibGst::TagList*, mode : LibGst::TagMergeMode) : Void
  fun tag_setter_reset_tags = gst_tag_setter_reset_tags(this : TagSetter*) : Void
  fun tag_setter_set_tag_merge_mode = gst_tag_setter_set_tag_merge_mode(this : TagSetter*, mode : LibGst::TagMergeMode) : Void

  struct TocSetter # interface
    g_iface : LibGObject::TypeInterface
  # Requires Element
  end
  fun toc_setter_get_toc = gst_toc_setter_get_toc(this : TocSetter*) : LibGst::Toc*
  fun toc_setter_reset = gst_toc_setter_reset(this : TocSetter*) : Void
  fun toc_setter_set_toc = gst_toc_setter_set_toc(this : TocSetter*, toc : LibGst::Toc*) : Void

  struct URIHandler # interface
    parent : LibGObject::TypeInterface
    get_type : -> Void
    get_protocols : -> Void
    get_uri : -> Void
    set_uri : -> Void
    # Virtual function get_uri
    # Virtual function set_uri
  end
  fun u_r_i_handler_get_protocols = gst_uri_handler_get_protocols(this : URIHandler*) : UInt8**
  fun u_r_i_handler_get_uri = gst_uri_handler_get_uri(this : URIHandler*) : UInt8*
  fun u_r_i_handler_get_uri_type = gst_uri_handler_get_uri_type(this : URIHandler*) : LibGst::URIType
  fun u_r_i_handler_set_uri = gst_uri_handler_set_uri(this : URIHandler*, uri : UInt8*, error : LibGLib::Error**) : Bool


  ###########################################
  ##    Functions
  ###########################################

  fun buffer_get_max_memory = gst_buffer_get_max_memory() : UInt32
  fun caps_features_from_string = gst_caps_features_from_string(features : UInt8*) : LibGst::CapsFeatures*
  fun caps_from_string = gst_caps_from_string(string : UInt8*) : LibGst::Caps*
  fun core_error_quark = gst_core_error_quark() : UInt32
  fun debug_add_log_function = gst_debug_add_log_function(func : LibGst::LogFunction, user_data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun debug_add_ring_buffer_logger = gst_debug_add_ring_buffer_logger(max_size_per_thread : UInt32, thread_timeout : UInt32) : Void
  fun debug_bin_to_dot_data = gst_debug_bin_to_dot_data(bin : LibGst::Bin*, details : LibGst::DebugGraphDetails) : UInt8*
  fun debug_bin_to_dot_file = gst_debug_bin_to_dot_file(bin : LibGst::Bin*, details : LibGst::DebugGraphDetails, file_name : UInt8*) : Void
  fun debug_bin_to_dot_file_with_ts = gst_debug_bin_to_dot_file_with_ts(bin : LibGst::Bin*, details : LibGst::DebugGraphDetails, file_name : UInt8*) : Void
  fun debug_construct_term_color = gst_debug_construct_term_color(colorinfo : UInt32) : UInt8*
  fun debug_construct_win_color = gst_debug_construct_win_color(colorinfo : UInt32) : Int32
  fun debug_get_all_categories = gst_debug_get_all_categories() : Void**
  fun debug_get_color_mode = gst_debug_get_color_mode() : LibGst::DebugColorMode
  fun debug_get_default_threshold = gst_debug_get_default_threshold() : LibGst::DebugLevel
  fun debug_get_stack_trace = gst_debug_get_stack_trace(flags : LibGst::StackTraceFlags) : UInt8*
  fun debug_is_active = gst_debug_is_active() : Bool
  fun debug_is_colored = gst_debug_is_colored() : Bool
  fun debug_level_get_name = gst_debug_level_get_name(level : LibGst::DebugLevel) : UInt8*
  fun debug_log_default = gst_debug_log_default(category : LibGst::DebugCategory*, level : LibGst::DebugLevel, file : UInt8*, function : UInt8*, line : Int32, object : LibGObject::Object*, message : LibGst::DebugMessage*, user_data : Void*) : Void
  fun debug_print_stack_trace = gst_debug_print_stack_trace() : Void
  fun debug_remove_log_function = gst_debug_remove_log_function(func : LibGst::LogFunction) : UInt32
  fun debug_remove_log_function_by_data = gst_debug_remove_log_function_by_data(data : Void*) : UInt32
  fun debug_remove_ring_buffer_logger = gst_debug_remove_ring_buffer_logger() : Void
  fun debug_ring_buffer_logger_get_logs = gst_debug_ring_buffer_logger_get_logs() : UInt8**
  fun debug_set_active = gst_debug_set_active(active : Bool) : Void
  fun debug_set_color_mode = gst_debug_set_color_mode(mode : LibGst::DebugColorMode) : Void
  fun debug_set_color_mode_from_string = gst_debug_set_color_mode_from_string(mode : UInt8*) : Void
  fun debug_set_colored = gst_debug_set_colored(colored : Bool) : Void
  fun debug_set_default_threshold = gst_debug_set_default_threshold(level : LibGst::DebugLevel) : Void
  fun debug_set_threshold_for_name = gst_debug_set_threshold_for_name(name : UInt8*, level : LibGst::DebugLevel) : Void
  fun debug_set_threshold_from_string = gst_debug_set_threshold_from_string(list : UInt8*, reset : Bool) : Void
  fun debug_unset_threshold_for_name = gst_debug_unset_threshold_for_name(name : UInt8*) : Void
  fun deinit = gst_deinit() : Void
  fun dynamic_type_register = gst_dynamic_type_register(plugin : LibGst::Plugin*, type : UInt64) : Bool
  fun error_get_message = gst_error_get_message(domain : UInt32, code : Int32) : UInt8*
  fun event_type_get_flags = gst_event_type_get_flags(type : LibGst::EventType) : LibGst::EventTypeFlags
  fun event_type_get_name = gst_event_type_get_name(type : LibGst::EventType) : UInt8*
  fun event_type_to_quark = gst_event_type_to_quark(type : LibGst::EventType) : UInt32
  fun filename_to_uri = gst_filename_to_uri(filename : UInt8*, error : LibGLib::Error**) : UInt8*
  fun flow_get_name = gst_flow_get_name(ret : LibGst::FlowReturn) : UInt8*
  fun flow_to_quark = gst_flow_to_quark(ret : LibGst::FlowReturn) : UInt32
  fun format_get_by_nick = gst_format_get_by_nick(nick : UInt8*) : LibGst::Format
  fun format_get_details = gst_format_get_details(format : LibGst::Format) : LibGst::FormatDefinition*
  fun format_get_name = gst_format_get_name(format : LibGst::Format) : UInt8*
  fun format_iterate_definitions = gst_format_iterate_definitions() : LibGst::Iterator*
  fun format_register = gst_format_register(nick : UInt8*, description : UInt8*) : LibGst::Format
  fun format_to_quark = gst_format_to_quark(format : LibGst::Format) : UInt32
  fun formats_contains = gst_formats_contains(formats : LibGst::Format*, format : LibGst::Format) : Bool
  fun get_main_executable_path = gst_get_main_executable_path() : UInt8*
  fun init = gst_init(argc : Int32*, argv : UInt8***) : Void
  fun init_check = gst_init_check(argc : Int32*, argv : UInt8***, error : LibGLib::Error**) : Bool
  fun is_caps_features = gst_is_caps_features(obj : Void*) : Bool
  fun is_initialized = gst_is_initialized() : Bool
  fun library_error_quark = gst_library_error_quark() : UInt32
  fun message_type_get_name = gst_message_type_get_name(type : LibGst::MessageType) : UInt8*
  fun message_type_to_quark = gst_message_type_to_quark(type : LibGst::MessageType) : UInt32
  fun meta_api_type_get_tags = gst_meta_api_type_get_tags(api : UInt64) : UInt8**
  fun meta_api_type_has_tag = gst_meta_api_type_has_tag(api : UInt64, tag : UInt32) : Bool
  fun meta_api_type_register = gst_meta_api_type_register(api : UInt8*, tags : UInt8**) : UInt64
  fun meta_get_info = gst_meta_get_info(impl : UInt8*) : LibGst::MetaInfo*
  fun meta_register = gst_meta_register(api : UInt64, impl : UInt8*, size : UInt64, init_func : LibGst::MetaInitFunction, free_func : LibGst::MetaFreeFunction, transform_func : LibGst::MetaTransformFunction) : LibGst::MetaInfo*
  fun mini_object_replace = gst_mini_object_replace(olddata : LibGst::MiniObject**, newdata : LibGst::MiniObject*) : Bool
  fun mini_object_take = gst_mini_object_take(olddata : LibGst::MiniObject**, newdata : LibGst::MiniObject*) : Bool
  fun pad_mode_get_name = gst_pad_mode_get_name(mode : LibGst::PadMode) : UInt8*
  fun param_spec_array = gst_param_spec_array(name : UInt8*, nick : UInt8*, blurb : UInt8*, element_spec : LibGObject::ParamSpec*, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_fraction = gst_param_spec_fraction(name : UInt8*, nick : UInt8*, blurb : UInt8*, min_num : Int32, min_denom : Int32, max_num : Int32, max_denom : Int32, default_num : Int32, default_denom : Int32, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun parent_buffer_meta_api_get_type = gst_parent_buffer_meta_api_get_type() : UInt64
  fun parent_buffer_meta_get_info = gst_parent_buffer_meta_get_info() : LibGst::MetaInfo*
  fun parse_bin_from_description = gst_parse_bin_from_description(bin_description : UInt8*, ghost_unlinked_pads : Bool, error : LibGLib::Error**) : LibGst::Bin*
  fun parse_bin_from_description_full = gst_parse_bin_from_description_full(bin_description : UInt8*, ghost_unlinked_pads : Bool, context : LibGst::ParseContext*, flags : LibGst::ParseFlags, error : LibGLib::Error**) : LibGst::Element*
  fun parse_error_quark = gst_parse_error_quark() : UInt32
  fun parse_launch = gst_parse_launch(pipeline_description : UInt8*, error : LibGLib::Error**) : LibGst::Element*
  fun parse_launch_full = gst_parse_launch_full(pipeline_description : UInt8*, context : LibGst::ParseContext*, flags : LibGst::ParseFlags, error : LibGLib::Error**) : LibGst::Element*
  fun parse_launchv = gst_parse_launchv(argv : UInt8**, error : LibGLib::Error**) : LibGst::Element*
  fun parse_launchv_full = gst_parse_launchv_full(argv : UInt8**, context : LibGst::ParseContext*, flags : LibGst::ParseFlags, error : LibGLib::Error**) : LibGst::Element*
  fun plugin_error_quark = gst_plugin_error_quark() : UInt32
  fun preset_get_app_dir = gst_preset_get_app_dir() : UInt8*
  fun preset_set_app_dir = gst_preset_set_app_dir(app_dir : UInt8*) : Bool
  fun protection_filter_systems_by_available_decryptors = gst_protection_filter_systems_by_available_decryptors(system_identifiers : UInt8**) : UInt8**
  fun protection_meta_api_get_type = gst_protection_meta_api_get_type() : UInt64
  fun protection_meta_get_info = gst_protection_meta_get_info() : LibGst::MetaInfo*
  fun protection_select_system = gst_protection_select_system(system_identifiers : UInt8**) : UInt8*
  fun query_type_get_flags = gst_query_type_get_flags(type : LibGst::QueryType) : LibGst::QueryTypeFlags
  fun query_type_get_name = gst_query_type_get_name(type : LibGst::QueryType) : UInt8*
  fun query_type_to_quark = gst_query_type_to_quark(type : LibGst::QueryType) : UInt32
  fun reference_timestamp_meta_api_get_type = gst_reference_timestamp_meta_api_get_type() : UInt64
  fun reference_timestamp_meta_get_info = gst_reference_timestamp_meta_get_info() : LibGst::MetaInfo*
  fun resource_error_quark = gst_resource_error_quark() : UInt32
  fun segtrap_is_enabled = gst_segtrap_is_enabled() : Bool
  fun segtrap_set_enabled = gst_segtrap_set_enabled(enabled : Bool) : Void
  fun state_change_get_name = gst_state_change_get_name(transition : LibGst::StateChange) : UInt8*
  fun static_caps_get_type = gst_static_caps_get_type() : UInt64
  fun static_pad_template_get_type = gst_static_pad_template_get_type() : UInt64
  fun stream_error_quark = gst_stream_error_quark() : UInt32
  fun stream_type_get_name = gst_stream_type_get_name(stype : LibGst::StreamType) : UInt8*
  fun structure_from_string = gst_structure_from_string(string : UInt8*, _end : UInt8**) : LibGst::Structure*
  fun tag_exists = gst_tag_exists(tag : UInt8*) : Bool
  fun tag_get_description = gst_tag_get_description(tag : UInt8*) : UInt8*
  fun tag_get_flag = gst_tag_get_flag(tag : UInt8*) : LibGst::TagFlag
  fun tag_get_nick = gst_tag_get_nick(tag : UInt8*) : UInt8*
  fun tag_get_type = gst_tag_get_type(tag : UInt8*) : UInt64
  fun tag_is_fixed = gst_tag_is_fixed(tag : UInt8*) : Bool
  fun tag_list_copy_value = gst_tag_list_copy_value(dest : LibGObject::Value*, list : LibGst::TagList*, tag : UInt8*) : Bool
  fun tag_merge_strings_with_comma = gst_tag_merge_strings_with_comma(dest : LibGObject::Value*, src : LibGObject::Value*) : Void
  fun tag_merge_use_first = gst_tag_merge_use_first(dest : LibGObject::Value*, src : LibGObject::Value*) : Void
  fun tag_register = gst_tag_register(name : UInt8*, flag : LibGst::TagFlag, type : UInt64, nick : UInt8*, blurb : UInt8*, func : LibGst::TagMergeFunc) : Void
  fun tag_register_static = gst_tag_register_static(name : UInt8*, flag : LibGst::TagFlag, type : UInt64, nick : UInt8*, blurb : UInt8*, func : LibGst::TagMergeFunc) : Void
  fun toc_entry_type_get_nick = gst_toc_entry_type_get_nick(type : LibGst::TocEntryType) : UInt8*
  fun type_find_get_type = gst_type_find_get_type() : UInt64
  fun type_find_register = gst_type_find_register(plugin : LibGst::Plugin*, name : UInt8*, rank : UInt32, func : LibGst::TypeFindFunction, extensions : UInt8*, possible_caps : LibGst::Caps*, data : Void*, data_notify : LibGLib::DestroyNotify) : Bool
  fun update_registry = gst_update_registry() : Bool
  fun uri_construct = gst_uri_construct(protocol : UInt8*, location : UInt8*) : UInt8*
  fun uri_error_quark = gst_uri_error_quark() : UInt32
  fun uri_from_string = gst_uri_from_string(uri : UInt8*) : LibGst::Uri*
  fun uri_get_location = gst_uri_get_location(uri : UInt8*) : UInt8*
  fun uri_get_protocol = gst_uri_get_protocol(uri : UInt8*) : UInt8*
  fun uri_has_protocol = gst_uri_has_protocol(uri : UInt8*, protocol : UInt8*) : Bool
  fun uri_is_valid = gst_uri_is_valid(uri : UInt8*) : Bool
  fun uri_join_strings = gst_uri_join_strings(base_uri : UInt8*, ref_uri : UInt8*) : UInt8*
  fun uri_protocol_is_supported = gst_uri_protocol_is_supported(type : LibGst::URIType, protocol : UInt8*) : Bool
  fun uri_protocol_is_valid = gst_uri_protocol_is_valid(protocol : UInt8*) : Bool
  fun util_array_binary_search = gst_util_array_binary_search(array : Void*, num_elements : UInt32, element_size : UInt64, search_func : LibGLib::CompareDataFunc, mode : LibGst::SearchMode, search_data : Void*, user_data : Void*) : Void*
  fun util_double_to_fraction = gst_util_double_to_fraction(src : Float64, dest_n : Int32*, dest_d : Int32*) : Void
  fun util_dump_buffer = gst_util_dump_buffer(buf : LibGst::Buffer*) : Void
  fun util_dump_mem = gst_util_dump_mem(mem : UInt8*, size : UInt32) : Void
  fun util_fraction_add = gst_util_fraction_add(a_n : Int32, a_d : Int32, b_n : Int32, b_d : Int32, res_n : Int32*, res_d : Int32*) : Bool
  fun util_fraction_compare = gst_util_fraction_compare(a_n : Int32, a_d : Int32, b_n : Int32, b_d : Int32) : Int32
  fun util_fraction_multiply = gst_util_fraction_multiply(a_n : Int32, a_d : Int32, b_n : Int32, b_d : Int32, res_n : Int32*, res_d : Int32*) : Bool
  fun util_fraction_to_double = gst_util_fraction_to_double(src_n : Int32, src_d : Int32, dest : Float64*) : Void
  fun util_gdouble_to_guint64 = gst_util_gdouble_to_guint64(value : Float64) : UInt64
  fun util_get_object_array = gst_util_get_object_array(object : LibGObject::Object*, name : UInt8*, array : LibGObject::ValueArray**) : Bool
  fun util_get_timestamp = gst_util_get_timestamp() : UInt64
  fun util_greatest_common_divisor = gst_util_greatest_common_divisor(a : Int32, b : Int32) : Int32
  fun util_greatest_common_divisor_int64 = gst_util_greatest_common_divisor_int64(a : Int64, b : Int64) : Int64
  fun util_group_id_next = gst_util_group_id_next() : UInt32
  fun util_guint64_to_gdouble = gst_util_guint64_to_gdouble(value : UInt64) : Float64
  fun util_seqnum_compare = gst_util_seqnum_compare(s1 : UInt32, s2 : UInt32) : Int32
  fun util_seqnum_next = gst_util_seqnum_next() : UInt32
  fun util_set_object_arg = gst_util_set_object_arg(object : LibGObject::Object*, name : UInt8*, value : UInt8*) : Void
  fun util_set_object_array = gst_util_set_object_array(object : LibGObject::Object*, name : UInt8*, array : LibGObject::ValueArray*) : Bool
  fun util_set_value_from_string = gst_util_set_value_from_string(value : LibGObject::Value*, value_str : UInt8*) : Void
  fun util_uint64_scale = gst_util_uint64_scale(val : UInt64, num : UInt64, denom : UInt64) : UInt64
  fun util_uint64_scale_ceil = gst_util_uint64_scale_ceil(val : UInt64, num : UInt64, denom : UInt64) : UInt64
  fun util_uint64_scale_int = gst_util_uint64_scale_int(val : UInt64, num : Int32, denom : Int32) : UInt64
  fun util_uint64_scale_int_ceil = gst_util_uint64_scale_int_ceil(val : UInt64, num : Int32, denom : Int32) : UInt64
  fun util_uint64_scale_int_round = gst_util_uint64_scale_int_round(val : UInt64, num : Int32, denom : Int32) : UInt64
  fun util_uint64_scale_round = gst_util_uint64_scale_round(val : UInt64, num : UInt64, denom : UInt64) : UInt64
  fun value_can_compare = gst_value_can_compare(value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Bool
  fun value_can_intersect = gst_value_can_intersect(value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Bool
  fun value_can_subtract = gst_value_can_subtract(minuend : LibGObject::Value*, subtrahend : LibGObject::Value*) : Bool
  fun value_can_union = gst_value_can_union(value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Bool
  fun value_compare = gst_value_compare(value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Int32
  fun value_deserialize = gst_value_deserialize(dest : LibGObject::Value*, src : UInt8*) : Bool
  fun value_fixate = gst_value_fixate(dest : LibGObject::Value*, src : LibGObject::Value*) : Bool
  fun value_fraction_multiply = gst_value_fraction_multiply(product : LibGObject::Value*, factor1 : LibGObject::Value*, factor2 : LibGObject::Value*) : Bool
  fun value_fraction_subtract = gst_value_fraction_subtract(dest : LibGObject::Value*, minuend : LibGObject::Value*, subtrahend : LibGObject::Value*) : Bool
  fun value_get_bitmask = gst_value_get_bitmask(value : LibGObject::Value*) : UInt64
  fun value_get_caps = gst_value_get_caps(value : LibGObject::Value*) : LibGst::Caps*
  fun value_get_caps_features = gst_value_get_caps_features(value : LibGObject::Value*) : LibGst::CapsFeatures*
  fun value_get_double_range_max = gst_value_get_double_range_max(value : LibGObject::Value*) : Float64
  fun value_get_double_range_min = gst_value_get_double_range_min(value : LibGObject::Value*) : Float64
  fun value_get_flagset_flags = gst_value_get_flagset_flags(value : LibGObject::Value*) : UInt32
  fun value_get_flagset_mask = gst_value_get_flagset_mask(value : LibGObject::Value*) : UInt32
  fun value_get_fraction_denominator = gst_value_get_fraction_denominator(value : LibGObject::Value*) : Int32
  fun value_get_fraction_numerator = gst_value_get_fraction_numerator(value : LibGObject::Value*) : Int32
  fun value_get_fraction_range_max = gst_value_get_fraction_range_max(value : LibGObject::Value*) : LibGObject::Value*
  fun value_get_fraction_range_min = gst_value_get_fraction_range_min(value : LibGObject::Value*) : LibGObject::Value*
  fun value_get_int64_range_max = gst_value_get_int64_range_max(value : LibGObject::Value*) : Int64
  fun value_get_int64_range_min = gst_value_get_int64_range_min(value : LibGObject::Value*) : Int64
  fun value_get_int64_range_step = gst_value_get_int64_range_step(value : LibGObject::Value*) : Int64
  fun value_get_int_range_max = gst_value_get_int_range_max(value : LibGObject::Value*) : Int32
  fun value_get_int_range_min = gst_value_get_int_range_min(value : LibGObject::Value*) : Int32
  fun value_get_int_range_step = gst_value_get_int_range_step(value : LibGObject::Value*) : Int32
  fun value_get_structure = gst_value_get_structure(value : LibGObject::Value*) : LibGst::Structure*
  fun value_init_and_copy = gst_value_init_and_copy(dest : LibGObject::Value*, src : LibGObject::Value*) : Void
  fun value_intersect = gst_value_intersect(dest : LibGObject::Value*, value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Bool
  fun value_is_fixed = gst_value_is_fixed(value : LibGObject::Value*) : Bool
  fun value_is_subset = gst_value_is_subset(value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Bool
  fun value_register = gst_value_register(table : LibGst::ValueTable*) : Void
  fun value_serialize = gst_value_serialize(value : LibGObject::Value*) : UInt8*
  fun value_set_bitmask = gst_value_set_bitmask(value : LibGObject::Value*, bitmask : UInt64) : Void
  fun value_set_caps = gst_value_set_caps(value : LibGObject::Value*, caps : LibGst::Caps*) : Void
  fun value_set_caps_features = gst_value_set_caps_features(value : LibGObject::Value*, features : LibGst::CapsFeatures*) : Void
  fun value_set_double_range = gst_value_set_double_range(value : LibGObject::Value*, start : Float64, _end : Float64) : Void
  fun value_set_flagset = gst_value_set_flagset(value : LibGObject::Value*, flags : UInt32, mask : UInt32) : Void
  fun value_set_fraction = gst_value_set_fraction(value : LibGObject::Value*, numerator : Int32, denominator : Int32) : Void
  fun value_set_fraction_range = gst_value_set_fraction_range(value : LibGObject::Value*, start : LibGObject::Value*, _end : LibGObject::Value*) : Void
  fun value_set_fraction_range_full = gst_value_set_fraction_range_full(value : LibGObject::Value*, numerator_start : Int32, denominator_start : Int32, numerator_end : Int32, denominator_end : Int32) : Void
  fun value_set_int64_range = gst_value_set_int64_range(value : LibGObject::Value*, start : Int64, _end : Int64) : Void
  fun value_set_int64_range_step = gst_value_set_int64_range_step(value : LibGObject::Value*, start : Int64, _end : Int64, step : Int64) : Void
  fun value_set_int_range = gst_value_set_int_range(value : LibGObject::Value*, start : Int32, _end : Int32) : Void
  fun value_set_int_range_step = gst_value_set_int_range_step(value : LibGObject::Value*, start : Int32, _end : Int32, step : Int32) : Void
  fun value_set_structure = gst_value_set_structure(value : LibGObject::Value*, structure : LibGst::Structure*) : Void
  fun value_subtract = gst_value_subtract(dest : LibGObject::Value*, minuend : LibGObject::Value*, subtrahend : LibGObject::Value*) : Bool
  fun value_union = gst_value_union(dest : LibGObject::Value*, value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Bool
  fun version = gst_version(major : UInt32*, minor : UInt32*, micro : UInt32*, nano : UInt32*) : Void
  fun version_string = gst_version_string() : UInt8*

  ###########################################
  ##    Callbacks
  ###########################################

 alias BufferForeachMetaFunc = LibGst::Buffer*, LibGst::Meta*, Void* -> Bool
 alias BufferListFunc = LibGst::Buffer*, UInt32, Void* -> Bool
 alias BusFunc = LibGst::Bus*, LibGst::Message*, Void* -> Bool
 alias BusSyncHandler = LibGst::Bus*, LibGst::Message*, Void* -> LibGst::BusSyncReply
 alias CapsFilterMapFunc = LibGst::CapsFeatures*, LibGst::Structure*, Void* -> Bool
 alias CapsForeachFunc = LibGst::CapsFeatures*, LibGst::Structure*, Void* -> Bool
 alias CapsMapFunc = LibGst::CapsFeatures*, LibGst::Structure*, Void* -> Bool
 alias ClockCallback = LibGst::Clock*, UInt64, Void*, Void* -> Bool
 alias ControlBindingConvert = LibGst::ControlBinding*, Float64, LibGObject::Value* -> Void
 alias ControlSourceGetValue = LibGst::ControlSource*, UInt64, Float64* -> Bool
 alias ControlSourceGetValueArray = LibGst::ControlSource*, UInt64, UInt64, UInt32, Float64* -> Bool
 alias DebugFuncPtr =  -> Void
 alias ElementCallAsyncFunc = LibGst::Element*, Void* -> Void
 alias ElementForeachPadFunc = LibGst::Element*, LibGst::Pad*, Void* -> Bool
 alias IteratorCopyFunction = LibGst::Iterator*, LibGst::Iterator* -> Void
 alias IteratorFoldFunction = LibGObject::Value*, LibGObject::Value*, Void* -> Bool
 alias IteratorForeachFunction = LibGObject::Value*, Void* -> Void
 alias IteratorFreeFunction = LibGst::Iterator* -> Void
 alias IteratorItemFunction = LibGst::Iterator*, LibGObject::Value* -> LibGst::IteratorItem
 alias IteratorNextFunction = LibGst::Iterator*, LibGObject::Value* -> LibGst::IteratorResult
 alias IteratorResyncFunction = LibGst::Iterator* -> Void
 alias LogFunction = LibGst::DebugCategory*, LibGst::DebugLevel, UInt8*, UInt8*, Int32, LibGObject::Object*, LibGst::DebugMessage*, Void* -> Void
 alias MemoryCopyFunction = LibGst::Memory*, Int64, Int64 -> LibGst::Memory*
 alias MemoryIsSpanFunction = LibGst::Memory*, LibGst::Memory*, UInt64* -> Bool
 alias MemoryMapFullFunction = LibGst::Memory*, LibGst::MapInfo*, UInt64 -> Void*
 alias MemoryMapFunction = LibGst::Memory*, UInt64, LibGst::MapFlags -> Void*
 alias MemoryShareFunction = LibGst::Memory*, Int64, Int64 -> LibGst::Memory*
 alias MemoryUnmapFullFunction = LibGst::Memory*, LibGst::MapInfo* -> Void
 alias MemoryUnmapFunction = LibGst::Memory* -> Void
 alias MetaFreeFunction = LibGst::Meta*, LibGst::Buffer* -> Void
 alias MetaInitFunction = LibGst::Meta*, Void*, LibGst::Buffer* -> Bool
 alias MetaTransformFunction = LibGst::Buffer*, LibGst::Meta*, LibGst::Buffer*, UInt32, Void* -> Bool
 alias MiniObjectDisposeFunction = LibGst::MiniObject* -> Bool
 alias MiniObjectFreeFunction = LibGst::MiniObject* -> Void
 alias MiniObjectNotify = Void*, LibGst::MiniObject* -> Void
 alias PadActivateFunction = LibGst::Pad*, LibGst::Object* -> Bool
 alias PadActivateModeFunction = LibGst::Pad*, LibGst::Object*, LibGst::PadMode, Bool -> Bool
 alias PadChainFunction = LibGst::Pad*, LibGst::Object*, LibGst::Buffer* -> LibGst::FlowReturn
 alias PadChainListFunction = LibGst::Pad*, LibGst::Object*, LibGst::BufferList* -> LibGst::FlowReturn
 alias PadEventFullFunction = LibGst::Pad*, LibGst::Object*, LibGst::Event* -> LibGst::FlowReturn
 alias PadEventFunction = LibGst::Pad*, LibGst::Object*, LibGst::Event* -> Bool
 alias PadForwardFunction = LibGst::Pad*, Void* -> Bool
 alias PadGetRangeFunction = LibGst::Pad*, LibGst::Object*, UInt64, UInt32, LibGst::Buffer* -> LibGst::FlowReturn
 alias PadIterIntLinkFunction = LibGst::Pad*, LibGst::Object* -> LibGst::Iterator*
 alias PadLinkFunction = LibGst::Pad*, LibGst::Object*, LibGst::Pad* -> LibGst::PadLinkReturn
 alias PadProbeCallback = LibGst::Pad*, LibGst::PadProbeInfo*, Void* -> LibGst::PadProbeReturn
 alias PadQueryFunction = LibGst::Pad*, LibGst::Object*, LibGst::Query* -> Bool
 alias PadStickyEventsForeachFunction = LibGst::Pad*, LibGst::Event*, Void* -> Bool
 alias PadUnlinkFunction = LibGst::Pad*, LibGst::Object* -> Void
 alias PluginFeatureFilter = LibGst::PluginFeature*, Void* -> Bool
 alias PluginFilter = LibGst::Plugin*, Void* -> Bool
 alias PluginInitFullFunc = LibGst::Plugin*, Void* -> Bool
 alias PluginInitFunc = LibGst::Plugin* -> Bool
 alias PromiseChangeFunc = LibGst::Promise*, Void* -> Void
 alias StructureFilterMapFunc = UInt32, LibGObject::Value*, Void* -> Bool
 alias StructureForeachFunc = UInt32, LibGObject::Value*, Void* -> Bool
 alias StructureMapFunc = UInt32, LibGObject::Value*, Void* -> Bool
 alias TagForeachFunc = LibGst::TagList*, UInt8*, Void* -> Void
 alias TagMergeFunc = LibGObject::Value*, LibGObject::Value* -> Void
 alias TaskFunction = Void* -> Void
 alias TaskPoolFunction = Void* -> Void
 alias TaskThreadFunc = LibGst::Task*, LibGLib::Thread*, Void* -> Void
 alias TypeFindFunction = LibGst::TypeFind*, Void* -> Void
 alias ValueCompareFunc = LibGObject::Value*, LibGObject::Value* -> Int32
 alias ValueDeserializeFunc = LibGObject::Value*, UInt8* -> Bool
 alias ValueSerializeFunc = LibGObject::Value* -> UInt8*
end

