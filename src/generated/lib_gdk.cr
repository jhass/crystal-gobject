require "./lib_cairo"
require "./lib_pango"
require "./lib_g_object"
require "./lib_gio"
require "./lib_g_lib"
require "./lib_gdk_pixbuf"
require "./lib_g_module"

@[Link("gdk-3")]
lib LibGdk

  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum AnchorHints : UInt32
    ZERO_NONE = 0
    FLIP_X = 1
    FLIP_Y = 2
    SLIDE_X = 4
    SLIDE_Y = 8
    RESIZE_X = 16
    RESIZE_Y = 32
    FLIP = 3
    SLIDE = 12
    RESIZE = 48
  end

  @[Flags]
  enum AxisFlags : UInt32
    ZERO_NONE = 0
    X = 2
    Y = 4
    PRESSURE = 8
    XTILT = 16
    YTILT = 32
    WHEEL = 64
    DISTANCE = 128
    ROTATION = 256
    SLIDER = 512
  end

  @[Flags]
  enum DragAction : UInt32
    ZERO_NONE = 0
    DEFAULT = 1
    COPY = 2
    MOVE = 4
    LINK = 8
    PRIVATE = 16
    ASK = 32
  end

  @[Flags]
  enum EventMask : UInt32
    ZERO_NONE = 0
    EXPOSURE_MASK = 2
    POINTER_MOTION_MASK = 4
    POINTER_MOTION_HINT_MASK = 8
    BUTTON_MOTION_MASK = 16
    BUTTON1_MOTION_MASK = 32
    BUTTON2_MOTION_MASK = 64
    BUTTON3_MOTION_MASK = 128
    BUTTON_PRESS_MASK = 256
    BUTTON_RELEASE_MASK = 512
    KEY_PRESS_MASK = 1024
    KEY_RELEASE_MASK = 2048
    ENTER_NOTIFY_MASK = 4096
    LEAVE_NOTIFY_MASK = 8192
    FOCUS_CHANGE_MASK = 16384
    STRUCTURE_MASK = 32768
    PROPERTY_CHANGE_MASK = 65536
    VISIBILITY_NOTIFY_MASK = 131072
    PROXIMITY_IN_MASK = 262144
    PROXIMITY_OUT_MASK = 524288
    SUBSTRUCTURE_MASK = 1048576
    SCROLL_MASK = 2097152
    TOUCH_MASK = 4194304
    SMOOTH_SCROLL_MASK = 8388608
    TOUCHPAD_GESTURE_MASK = 16777216
    TABLET_PAD_MASK = 33554432
    ALL_EVENTS_MASK = 67108862
  end

  @[Flags]
  enum FrameClockPhase : UInt32
    ZERO_NONE = 0
    NONE = 0
    FLUSH_EVENTS = 1
    BEFORE_PAINT = 2
    UPDATE = 4
    LAYOUT = 8
    PAINT = 16
    RESUME_EVENTS = 32
    AFTER_PAINT = 64
  end

  @[Flags]
  enum ModifierType : UInt32
    ZERO_NONE = 0
    SHIFT_MASK = 1
    LOCK_MASK = 2
    CONTROL_MASK = 4
    MOD1_MASK = 8
    MOD2_MASK = 16
    MOD3_MASK = 32
    MOD4_MASK = 64
    MOD5_MASK = 128
    BUTTON1_MASK = 256
    BUTTON2_MASK = 512
    BUTTON3_MASK = 1024
    BUTTON4_MASK = 2048
    BUTTON5_MASK = 4096
    MODIFIER_RESERVED_13_MASK = 8192
    MODIFIER_RESERVED_14_MASK = 16384
    MODIFIER_RESERVED_15_MASK = 32768
    MODIFIER_RESERVED_16_MASK = 65536
    MODIFIER_RESERVED_17_MASK = 131072
    MODIFIER_RESERVED_18_MASK = 262144
    MODIFIER_RESERVED_19_MASK = 524288
    MODIFIER_RESERVED_20_MASK = 1048576
    MODIFIER_RESERVED_21_MASK = 2097152
    MODIFIER_RESERVED_22_MASK = 4194304
    MODIFIER_RESERVED_23_MASK = 8388608
    MODIFIER_RESERVED_24_MASK = 16777216
    MODIFIER_RESERVED_25_MASK = 33554432
    SUPER_MASK = 67108864
    HYPER_MASK = 134217728
    META_MASK = 268435456
    MODIFIER_RESERVED_29_MASK = 536870912
    RELEASE_MASK = 1073741824
    MODIFIER_MASK = 1543512063
  end

  @[Flags]
  enum SeatCapabilities : UInt32
    ZERO_NONE = 0
    NONE = 0
    POINTER = 1
    TOUCH = 2
    TABLET_STYLUS = 4
    KEYBOARD = 8
    ALL_POINTING = 7
    ALL = 15
  end

  @[Flags]
  enum WMDecoration : UInt32
    ZERO_NONE = 0
    ALL = 1
    BORDER = 2
    RESIZEH = 4
    TITLE = 8
    MENU = 16
    MINIMIZE = 32
    MAXIMIZE = 64
  end

  @[Flags]
  enum WMFunction : UInt32
    ZERO_NONE = 0
    ALL = 1
    RESIZE = 2
    MOVE = 4
    MINIMIZE = 8
    MAXIMIZE = 16
    CLOSE = 32
  end

  @[Flags]
  enum WindowAttributesType : UInt32
    ZERO_NONE = 0
    TITLE = 2
    X = 4
    Y = 8
    CURSOR = 16
    VISUAL = 32
    WMCLASS = 64
    NOREDIR = 128
    TYPE_HINT = 256
  end

  @[Flags]
  enum WindowHints : UInt32
    ZERO_NONE = 0
    POS = 1
    MIN_SIZE = 2
    MAX_SIZE = 4
    BASE_SIZE = 8
    ASPECT = 16
    RESIZE_INC = 32
    WIN_GRAVITY = 64
    USER_POS = 128
    USER_SIZE = 256
  end

  @[Flags]
  enum WindowState : UInt32
    ZERO_NONE = 0
    WITHDRAWN = 1
    ICONIFIED = 2
    MAXIMIZED = 4
    STICKY = 8
    FULLSCREEN = 16
    ABOVE = 32
    BELOW = 64
    FOCUSED = 128
    TILED = 256
    TOP_TILED = 512
    TOP_RESIZABLE = 1024
    RIGHT_TILED = 2048
    RIGHT_RESIZABLE = 4096
    BOTTOM_TILED = 8192
    BOTTOM_RESIZABLE = 16384
    LEFT_TILED = 32768
    LEFT_RESIZABLE = 65536
  end


  ###########################################
  ##    Objects
  ###########################################

  struct AppLaunchContext # object
    _data : UInt8[0]
    # Property display : LibGdk::Display*
  end
  fun app_launch_context_new = gdk_app_launch_context_new() : LibGdk::AppLaunchContext*
  fun app_launch_context_set_desktop = gdk_app_launch_context_set_desktop(this : AppLaunchContext*, desktop : Int32) : Void
  fun app_launch_context_set_display = gdk_app_launch_context_set_display(this : AppLaunchContext*, display : LibGdk::Display*) : Void
  fun app_launch_context_set_icon = gdk_app_launch_context_set_icon(this : AppLaunchContext*, icon : LibGio::Icon*) : Void
  fun app_launch_context_set_icon_name = gdk_app_launch_context_set_icon_name(this : AppLaunchContext*, icon_name : UInt8*) : Void
  fun app_launch_context_set_screen = gdk_app_launch_context_set_screen(this : AppLaunchContext*, screen : LibGdk::Screen*) : Void
  fun app_launch_context_set_timestamp = gdk_app_launch_context_set_timestamp(this : AppLaunchContext*, timestamp : UInt32) : Void

  struct Cursor # object
    _data : UInt8[0]
    # Property cursor_type : LibGdk::CursorType
    # Property display : LibGdk::Display*
  end
  fun cursor_new = gdk_cursor_new(cursor_type : LibGdk::CursorType) : LibGdk::Cursor*
  fun cursor_new_for_display = gdk_cursor_new_for_display(display : LibGdk::Display*, cursor_type : LibGdk::CursorType) : LibGdk::Cursor*
  fun cursor_new_from_name = gdk_cursor_new_from_name(display : LibGdk::Display*, name : UInt8*) : LibGdk::Cursor*
  fun cursor_new_from_pixbuf = gdk_cursor_new_from_pixbuf(display : LibGdk::Display*, pixbuf : LibGdkPixbuf::Pixbuf*, x : Int32, y : Int32) : LibGdk::Cursor*
  fun cursor_new_from_surface = gdk_cursor_new_from_surface(display : LibGdk::Display*, surface : LibCairo::Surface*, x : Float64, y : Float64) : LibGdk::Cursor*
  fun cursor_get_cursor_type = gdk_cursor_get_cursor_type(this : Cursor*) : LibGdk::CursorType
  fun cursor_get_display = gdk_cursor_get_display(this : Cursor*) : LibGdk::Display*
  fun cursor_get_image = gdk_cursor_get_image(this : Cursor*) : LibGdkPixbuf::Pixbuf*
  fun cursor_get_surface = gdk_cursor_get_surface(this : Cursor*, x_hot : Float64*, y_hot : Float64*) : LibCairo::Surface*
  fun cursor_ref = gdk_cursor_ref(this : Cursor*) : LibGdk::Cursor*
  fun cursor_unref = gdk_cursor_unref(this : Cursor*) : Void

  struct Device # object
    _data : UInt8[0]
    # Signal changed
    # Signal tool-changed
    # Property associated_device : LibGdk::Device*
    # Property axes : LibGdk::AxisFlags
    # Property device_manager : LibGdk::DeviceManager*
    # Property display : LibGdk::Display*
    # Property has_cursor : Bool
    # Property input_mode : LibGdk::InputMode
    # Property input_source : LibGdk::InputSource
    # Property n_axes : UInt32
    # Property name : UInt8*
    # Property num_touches : UInt32
    # Property product_id : UInt8*
    # Property seat : LibGdk::Seat*
    # Property tool : LibGdk::DeviceTool*
    # Property type : LibGdk::DeviceType
    # Property vendor_id : UInt8*
  end
  fun device_grab_info_libgtk_only = gdk_device_grab_info_libgtk_only(display : LibGdk::Display*, device : LibGdk::Device*, grab_window : LibGdk::Window**, owner_events : Bool*) : Bool
  fun device_get_associated_device = gdk_device_get_associated_device(this : Device*) : LibGdk::Device*
  fun device_get_axes = gdk_device_get_axes(this : Device*) : LibGdk::AxisFlags
  fun device_get_axis_use = gdk_device_get_axis_use(this : Device*, index : UInt32) : LibGdk::AxisUse
  fun device_get_device_type = gdk_device_get_device_type(this : Device*) : LibGdk::DeviceType
  fun device_get_display = gdk_device_get_display(this : Device*) : LibGdk::Display*
  fun device_get_has_cursor = gdk_device_get_has_cursor(this : Device*) : Bool
  fun device_get_key = gdk_device_get_key(this : Device*, index : UInt32, keyval : UInt32*, modifiers : LibGdk::ModifierType*) : Bool
  fun device_get_last_event_window = gdk_device_get_last_event_window(this : Device*) : LibGdk::Window*
  fun device_get_mode = gdk_device_get_mode(this : Device*) : LibGdk::InputMode
  fun device_get_n_axes = gdk_device_get_n_axes(this : Device*) : Int32
  fun device_get_n_keys = gdk_device_get_n_keys(this : Device*) : Int32
  fun device_get_name = gdk_device_get_name(this : Device*) : UInt8*
  fun device_get_position = gdk_device_get_position(this : Device*, screen : LibGdk::Screen**, x : Int32*, y : Int32*) : Void
  fun device_get_position_double = gdk_device_get_position_double(this : Device*, screen : LibGdk::Screen**, x : Float64*, y : Float64*) : Void
  fun device_get_product_id = gdk_device_get_product_id(this : Device*) : UInt8*
  fun device_get_seat = gdk_device_get_seat(this : Device*) : LibGdk::Seat*
  fun device_get_source = gdk_device_get_source(this : Device*) : LibGdk::InputSource
  fun device_get_vendor_id = gdk_device_get_vendor_id(this : Device*) : UInt8*
  fun device_get_window_at_position = gdk_device_get_window_at_position(this : Device*, win_x : Int32*, win_y : Int32*) : LibGdk::Window*
  fun device_get_window_at_position_double = gdk_device_get_window_at_position_double(this : Device*, win_x : Float64*, win_y : Float64*) : LibGdk::Window*
  fun device_grab = gdk_device_grab(this : Device*, window : LibGdk::Window*, grab_ownership : LibGdk::GrabOwnership, owner_events : Bool, event_mask : LibGdk::EventMask, cursor : LibGdk::Cursor*, time : UInt32) : LibGdk::GrabStatus
  fun device_list_axes = gdk_device_list_axes(this : Device*) : Void**
  fun device_list_slave_devices = gdk_device_list_slave_devices(this : Device*) : Void**
  fun device_set_axis_use = gdk_device_set_axis_use(this : Device*, index : UInt32, use : LibGdk::AxisUse) : Void
  fun device_set_key = gdk_device_set_key(this : Device*, index : UInt32, keyval : UInt32, modifiers : LibGdk::ModifierType) : Void
  fun device_set_mode = gdk_device_set_mode(this : Device*, mode : LibGdk::InputMode) : Bool
  fun device_ungrab = gdk_device_ungrab(this : Device*, time : UInt32) : Void
  fun device_warp = gdk_device_warp(this : Device*, screen : LibGdk::Screen*, x : Int32, y : Int32) : Void

  struct DeviceManager # object
    _data : UInt8[0]
    # Signal device-added
    # Signal device-changed
    # Signal device-removed
    # Property display : LibGdk::Display*
  end
  fun device_manager_get_client_pointer = gdk_device_manager_get_client_pointer(this : DeviceManager*) : LibGdk::Device*
  fun device_manager_get_display = gdk_device_manager_get_display(this : DeviceManager*) : LibGdk::Display*
  fun device_manager_list_devices = gdk_device_manager_list_devices(this : DeviceManager*, type : LibGdk::DeviceType) : Void**

  struct DeviceTool # object
    _data : UInt8[0]
    # Property axes : LibGdk::AxisFlags
    # Property hardware_id : UInt64
    # Property serial : UInt64
    # Property tool_type : LibGdk::DeviceToolType
  end
  fun device_tool_get_hardware_id = gdk_device_tool_get_hardware_id(this : DeviceTool*) : UInt64
  fun device_tool_get_serial = gdk_device_tool_get_serial(this : DeviceTool*) : UInt64
  fun device_tool_get_tool_type = gdk_device_tool_get_tool_type(this : DeviceTool*) : LibGdk::DeviceToolType

  struct Display # object
    _data : UInt8[0]
    # Signal closed
    # Signal monitor-added
    # Signal monitor-removed
    # Signal opened
    # Signal seat-added
    # Signal seat-removed
  end
  fun display_get_default = gdk_display_get_default() : LibGdk::Display*
  fun display_open = gdk_display_open(display_name : UInt8*) : LibGdk::Display*
  fun display_open_default_libgtk_only = gdk_display_open_default_libgtk_only() : LibGdk::Display*
  fun display_beep = gdk_display_beep(this : Display*) : Void
  fun display_close = gdk_display_close(this : Display*) : Void
  fun display_device_is_grabbed = gdk_display_device_is_grabbed(this : Display*, device : LibGdk::Device*) : Bool
  fun display_flush = gdk_display_flush(this : Display*) : Void
  fun display_get_app_launch_context = gdk_display_get_app_launch_context(this : Display*) : LibGdk::AppLaunchContext*
  fun display_get_default_cursor_size = gdk_display_get_default_cursor_size(this : Display*) : UInt32
  fun display_get_default_group = gdk_display_get_default_group(this : Display*) : LibGdk::Window*
  fun display_get_default_screen = gdk_display_get_default_screen(this : Display*) : LibGdk::Screen*
  fun display_get_default_seat = gdk_display_get_default_seat(this : Display*) : LibGdk::Seat*
  fun display_get_device_manager = gdk_display_get_device_manager(this : Display*) : LibGdk::DeviceManager*
  fun display_get_event = gdk_display_get_event(this : Display*) : LibGdk::Event*
  fun display_get_maximal_cursor_size = gdk_display_get_maximal_cursor_size(this : Display*, width : UInt32*, height : UInt32*) : Void
  fun display_get_monitor = gdk_display_get_monitor(this : Display*, monitor_num : Int32) : LibGdk::Monitor*
  fun display_get_monitor_at_point = gdk_display_get_monitor_at_point(this : Display*, x : Int32, y : Int32) : LibGdk::Monitor*
  fun display_get_monitor_at_window = gdk_display_get_monitor_at_window(this : Display*, window : LibGdk::Window*) : LibGdk::Monitor*
  fun display_get_n_monitors = gdk_display_get_n_monitors(this : Display*) : Int32
  fun display_get_n_screens = gdk_display_get_n_screens(this : Display*) : Int32
  fun display_get_name = gdk_display_get_name(this : Display*) : UInt8*
  fun display_get_pointer = gdk_display_get_pointer(this : Display*, screen : LibGdk::Screen**, x : Int32*, y : Int32*, mask : LibGdk::ModifierType*) : Void
  fun display_get_primary_monitor = gdk_display_get_primary_monitor(this : Display*) : LibGdk::Monitor*
  fun display_get_screen = gdk_display_get_screen(this : Display*, screen_num : Int32) : LibGdk::Screen*
  fun display_get_window_at_pointer = gdk_display_get_window_at_pointer(this : Display*, win_x : Int32*, win_y : Int32*) : LibGdk::Window*
  fun display_has_pending = gdk_display_has_pending(this : Display*) : Bool
  fun display_is_closed = gdk_display_is_closed(this : Display*) : Bool
  fun display_keyboard_ungrab = gdk_display_keyboard_ungrab(this : Display*, time : UInt32) : Void
  fun display_list_devices = gdk_display_list_devices(this : Display*) : Void**
  fun display_list_seats = gdk_display_list_seats(this : Display*) : Void**
  fun display_notify_startup_complete = gdk_display_notify_startup_complete(this : Display*, startup_id : UInt8*) : Void
  fun display_peek_event = gdk_display_peek_event(this : Display*) : LibGdk::Event*
  fun display_pointer_is_grabbed = gdk_display_pointer_is_grabbed(this : Display*) : Bool
  fun display_pointer_ungrab = gdk_display_pointer_ungrab(this : Display*, time : UInt32) : Void
  fun display_put_event = gdk_display_put_event(this : Display*, event : LibGdk::Event*) : Void
  fun display_request_selection_notification = gdk_display_request_selection_notification(this : Display*, selection : LibGdk::Atom*) : Bool
  fun display_set_double_click_distance = gdk_display_set_double_click_distance(this : Display*, distance : UInt32) : Void
  fun display_set_double_click_time = gdk_display_set_double_click_time(this : Display*, msec : UInt32) : Void
  fun display_store_clipboard = gdk_display_store_clipboard(this : Display*, clipboard_window : LibGdk::Window*, time : UInt32, targets : LibGdk::Atom**, n_targets : Int32) : Void
  fun display_supports_clipboard_persistence = gdk_display_supports_clipboard_persistence(this : Display*) : Bool
  fun display_supports_composite = gdk_display_supports_composite(this : Display*) : Bool
  fun display_supports_cursor_alpha = gdk_display_supports_cursor_alpha(this : Display*) : Bool
  fun display_supports_cursor_color = gdk_display_supports_cursor_color(this : Display*) : Bool
  fun display_supports_input_shapes = gdk_display_supports_input_shapes(this : Display*) : Bool
  fun display_supports_selection_notification = gdk_display_supports_selection_notification(this : Display*) : Bool
  fun display_supports_shapes = gdk_display_supports_shapes(this : Display*) : Bool
  fun display_sync = gdk_display_sync(this : Display*) : Void
  fun display_warp_pointer = gdk_display_warp_pointer(this : Display*, screen : LibGdk::Screen*, x : Int32, y : Int32) : Void

  struct DisplayManager # object
    _data : UInt8[0]
    # Signal display-opened
    # Property default_display : LibGdk::Display*
  end
  fun display_manager_get = gdk_display_manager_get() : LibGdk::DisplayManager*
  fun display_manager_get_default_display = gdk_display_manager_get_default_display(this : DisplayManager*) : LibGdk::Display*
  fun display_manager_list_displays = gdk_display_manager_list_displays(this : DisplayManager*) : Void**
  fun display_manager_open_display = gdk_display_manager_open_display(this : DisplayManager*, name : UInt8*) : LibGdk::Display*
  fun display_manager_set_default_display = gdk_display_manager_set_default_display(this : DisplayManager*, display : LibGdk::Display*) : Void

  struct DragContext # object
    _data : UInt8[0]
    # Signal action-changed
    # Signal cancel
    # Signal dnd-finished
    # Signal drop-performed
  end
  fun drag_context_get_actions = gdk_drag_context_get_actions(this : DragContext*) : LibGdk::DragAction
  fun drag_context_get_dest_window = gdk_drag_context_get_dest_window(this : DragContext*) : LibGdk::Window*
  fun drag_context_get_device = gdk_drag_context_get_device(this : DragContext*) : LibGdk::Device*
  fun drag_context_get_drag_window = gdk_drag_context_get_drag_window(this : DragContext*) : LibGdk::Window*
  fun drag_context_get_protocol = gdk_drag_context_get_protocol(this : DragContext*) : LibGdk::DragProtocol
  fun drag_context_get_selected_action = gdk_drag_context_get_selected_action(this : DragContext*) : LibGdk::DragAction
  fun drag_context_get_source_window = gdk_drag_context_get_source_window(this : DragContext*) : LibGdk::Window*
  fun drag_context_get_suggested_action = gdk_drag_context_get_suggested_action(this : DragContext*) : LibGdk::DragAction
  fun drag_context_list_targets = gdk_drag_context_list_targets(this : DragContext*) : Void**
  fun drag_context_manage_dnd = gdk_drag_context_manage_dnd(this : DragContext*, ipc_window : LibGdk::Window*, actions : LibGdk::DragAction) : Bool
  fun drag_context_set_device = gdk_drag_context_set_device(this : DragContext*, device : LibGdk::Device*) : Void
  fun drag_context_set_hotspot = gdk_drag_context_set_hotspot(this : DragContext*, hot_x : Int32, hot_y : Int32) : Void

  struct DrawingContext # object
    _data : UInt8[0]
    # Property clip : LibCairo::Region
    # Property window : LibGdk::Window*
  end
  fun drawing_context_get_cairo_context = gdk_drawing_context_get_cairo_context(this : DrawingContext*) : LibCairo::Context*
  fun drawing_context_get_clip = gdk_drawing_context_get_clip(this : DrawingContext*) : LibCairo::Region*
  fun drawing_context_get_window = gdk_drawing_context_get_window(this : DrawingContext*) : LibGdk::Window*
  fun drawing_context_is_valid = gdk_drawing_context_is_valid(this : DrawingContext*) : Bool

  struct FrameClock # object
    _data : UInt8[0]
    # Signal after-paint
    # Signal before-paint
    # Signal flush-events
    # Signal layout
    # Signal paint
    # Signal resume-events
    # Signal update
  end
  fun frame_clock_begin_updating = gdk_frame_clock_begin_updating(this : FrameClock*) : Void
  fun frame_clock_end_updating = gdk_frame_clock_end_updating(this : FrameClock*) : Void
  fun frame_clock_get_current_timings = gdk_frame_clock_get_current_timings(this : FrameClock*) : LibGdk::FrameTimings*
  fun frame_clock_get_frame_counter = gdk_frame_clock_get_frame_counter(this : FrameClock*) : Int64
  fun frame_clock_get_frame_time = gdk_frame_clock_get_frame_time(this : FrameClock*) : Int64
  fun frame_clock_get_history_start = gdk_frame_clock_get_history_start(this : FrameClock*) : Int64
  fun frame_clock_get_refresh_info = gdk_frame_clock_get_refresh_info(this : FrameClock*, base_time : Int64, refresh_interval_return : Int64*, presentation_time_return : Int64*) : Void
  fun frame_clock_get_timings = gdk_frame_clock_get_timings(this : FrameClock*, frame_counter : Int64) : LibGdk::FrameTimings*
  fun frame_clock_request_phase = gdk_frame_clock_request_phase(this : FrameClock*, phase : LibGdk::FrameClockPhase) : Void

  struct GLContext # object
    _data : UInt8[0]
    # Property display : LibGdk::Display*
    # Property shared_context : LibGdk::GLContext*
    # Property window : LibGdk::Window*
  end
  fun g_l_context_clear_current = gdk_gl_context_clear_current() : Void
  fun g_l_context_get_current = gdk_gl_context_get_current() : LibGdk::GLContext*
  fun g_l_context_get_debug_enabled = gdk_gl_context_get_debug_enabled(this : GLContext*) : Bool
  fun g_l_context_get_display = gdk_gl_context_get_display(this : GLContext*) : LibGdk::Display*
  fun g_l_context_get_forward_compatible = gdk_gl_context_get_forward_compatible(this : GLContext*) : Bool
  fun g_l_context_get_required_version = gdk_gl_context_get_required_version(this : GLContext*, major : Int32*, minor : Int32*) : Void
  fun g_l_context_get_shared_context = gdk_gl_context_get_shared_context(this : GLContext*) : LibGdk::GLContext*
  fun g_l_context_get_use_es = gdk_gl_context_get_use_es(this : GLContext*) : Bool
  fun g_l_context_get_version = gdk_gl_context_get_version(this : GLContext*, major : Int32*, minor : Int32*) : Void
  fun g_l_context_get_window = gdk_gl_context_get_window(this : GLContext*) : LibGdk::Window*
  fun g_l_context_is_legacy = gdk_gl_context_is_legacy(this : GLContext*) : Bool
  fun g_l_context_make_current = gdk_gl_context_make_current(this : GLContext*) : Void
  fun g_l_context_realize = gdk_gl_context_realize(this : GLContext*, error : LibGLib::Error**) : Bool
  fun g_l_context_set_debug_enabled = gdk_gl_context_set_debug_enabled(this : GLContext*, enabled : Bool) : Void
  fun g_l_context_set_forward_compatible = gdk_gl_context_set_forward_compatible(this : GLContext*, compatible : Bool) : Void
  fun g_l_context_set_required_version = gdk_gl_context_set_required_version(this : GLContext*, major : Int32, minor : Int32) : Void
  fun g_l_context_set_use_es = gdk_gl_context_set_use_es(this : GLContext*, use_es : Int32) : Void

  struct Keymap # object
    _data : UInt8[0]
    # Signal direction-changed
    # Signal keys-changed
    # Signal state-changed
  end
  fun keymap_get_default = gdk_keymap_get_default() : LibGdk::Keymap*
  fun keymap_get_for_display = gdk_keymap_get_for_display(display : LibGdk::Display*) : LibGdk::Keymap*
  fun keymap_add_virtual_modifiers = gdk_keymap_add_virtual_modifiers(this : Keymap*, state : LibGdk::ModifierType*) : Void
  fun keymap_get_caps_lock_state = gdk_keymap_get_caps_lock_state(this : Keymap*) : Bool
  fun keymap_get_direction = gdk_keymap_get_direction(this : Keymap*) : LibPango::Direction
  fun keymap_get_entries_for_keycode = gdk_keymap_get_entries_for_keycode(this : Keymap*, hardware_keycode : UInt32, keys : LibGdk::KeymapKey**, keyvals : UInt32**, n_entries : Int32*) : Bool
  fun keymap_get_entries_for_keyval = gdk_keymap_get_entries_for_keyval(this : Keymap*, keyval : UInt32, keys : LibGdk::KeymapKey**, n_keys : Int32*) : Bool
  fun keymap_get_modifier_mask = gdk_keymap_get_modifier_mask(this : Keymap*, intent : LibGdk::ModifierIntent) : LibGdk::ModifierType
  fun keymap_get_modifier_state = gdk_keymap_get_modifier_state(this : Keymap*) : UInt32
  fun keymap_get_num_lock_state = gdk_keymap_get_num_lock_state(this : Keymap*) : Bool
  fun keymap_get_scroll_lock_state = gdk_keymap_get_scroll_lock_state(this : Keymap*) : Bool
  fun keymap_have_bidi_layouts = gdk_keymap_have_bidi_layouts(this : Keymap*) : Bool
  fun keymap_lookup_key = gdk_keymap_lookup_key(this : Keymap*, key : LibGdk::KeymapKey*) : UInt32
  fun keymap_map_virtual_modifiers = gdk_keymap_map_virtual_modifiers(this : Keymap*, state : LibGdk::ModifierType*) : Bool
  fun keymap_translate_keyboard_state = gdk_keymap_translate_keyboard_state(this : Keymap*, hardware_keycode : UInt32, state : LibGdk::ModifierType, group : Int32, keyval : UInt32*, effective_group : Int32*, level : Int32*, consumed_modifiers : LibGdk::ModifierType*) : Bool

  struct Monitor # object
    _data : UInt8[0]
    # Signal invalidate
    # Property display : LibGdk::Display*
    # Property geometry : LibGdk::Rectangle
    # Property height_mm : Int32
    # Property manufacturer : UInt8*
    # Property model : UInt8*
    # Property refresh_rate : Int32
    # Property scale_factor : Int32
    # Property subpixel_layout : LibGdk::SubpixelLayout
    # Property width_mm : Int32
    # Property workarea : LibGdk::Rectangle
  end
  fun monitor_get_display = gdk_monitor_get_display(this : Monitor*) : LibGdk::Display*
  fun monitor_get_geometry = gdk_monitor_get_geometry(this : Monitor*, geometry : LibGdk::Rectangle*) : Void
  fun monitor_get_height_mm = gdk_monitor_get_height_mm(this : Monitor*) : Int32
  fun monitor_get_manufacturer = gdk_monitor_get_manufacturer(this : Monitor*) : UInt8*
  fun monitor_get_model = gdk_monitor_get_model(this : Monitor*) : UInt8*
  fun monitor_get_refresh_rate = gdk_monitor_get_refresh_rate(this : Monitor*) : Int32
  fun monitor_get_scale_factor = gdk_monitor_get_scale_factor(this : Monitor*) : Int32
  fun monitor_get_subpixel_layout = gdk_monitor_get_subpixel_layout(this : Monitor*) : LibGdk::SubpixelLayout
  fun monitor_get_width_mm = gdk_monitor_get_width_mm(this : Monitor*) : Int32
  fun monitor_get_workarea = gdk_monitor_get_workarea(this : Monitor*, workarea : LibGdk::Rectangle*) : Void
  fun monitor_is_primary = gdk_monitor_is_primary(this : Monitor*) : Bool

  struct Screen # object
    _data : UInt8[0]
    # Signal composited-changed
    # Signal monitors-changed
    # Signal size-changed
    # Property font_options : Void*
    # Property resolution : Float64
  end
  fun screen_get_default = gdk_screen_get_default() : LibGdk::Screen*
  fun screen_height = gdk_screen_height() : Int32
  fun screen_height_mm = gdk_screen_height_mm() : Int32
  fun screen_width = gdk_screen_width() : Int32
  fun screen_width_mm = gdk_screen_width_mm() : Int32
  fun screen_get_active_window = gdk_screen_get_active_window(this : Screen*) : LibGdk::Window*
  fun screen_get_display = gdk_screen_get_display(this : Screen*) : LibGdk::Display*
  fun screen_get_font_options = gdk_screen_get_font_options(this : Screen*) : LibCairo::FontOptions*
  fun screen_get_height = gdk_screen_get_height(this : Screen*) : Int32
  fun screen_get_height_mm = gdk_screen_get_height_mm(this : Screen*) : Int32
  fun screen_get_monitor_at_point = gdk_screen_get_monitor_at_point(this : Screen*, x : Int32, y : Int32) : Int32
  fun screen_get_monitor_at_window = gdk_screen_get_monitor_at_window(this : Screen*, window : LibGdk::Window*) : Int32
  fun screen_get_monitor_geometry = gdk_screen_get_monitor_geometry(this : Screen*, monitor_num : Int32, dest : LibGdk::Rectangle*) : Void
  fun screen_get_monitor_height_mm = gdk_screen_get_monitor_height_mm(this : Screen*, monitor_num : Int32) : Int32
  fun screen_get_monitor_plug_name = gdk_screen_get_monitor_plug_name(this : Screen*, monitor_num : Int32) : UInt8*
  fun screen_get_monitor_scale_factor = gdk_screen_get_monitor_scale_factor(this : Screen*, monitor_num : Int32) : Int32
  fun screen_get_monitor_width_mm = gdk_screen_get_monitor_width_mm(this : Screen*, monitor_num : Int32) : Int32
  fun screen_get_monitor_workarea = gdk_screen_get_monitor_workarea(this : Screen*, monitor_num : Int32, dest : LibGdk::Rectangle*) : Void
  fun screen_get_n_monitors = gdk_screen_get_n_monitors(this : Screen*) : Int32
  fun screen_get_number = gdk_screen_get_number(this : Screen*) : Int32
  fun screen_get_primary_monitor = gdk_screen_get_primary_monitor(this : Screen*) : Int32
  fun screen_get_resolution = gdk_screen_get_resolution(this : Screen*) : Float64
  fun screen_get_rgba_visual = gdk_screen_get_rgba_visual(this : Screen*) : LibGdk::Visual*
  fun screen_get_root_window = gdk_screen_get_root_window(this : Screen*) : LibGdk::Window*
  fun screen_get_setting = gdk_screen_get_setting(this : Screen*, name : UInt8*, value : LibGObject::Value*) : Bool
  fun screen_get_system_visual = gdk_screen_get_system_visual(this : Screen*) : LibGdk::Visual*
  fun screen_get_toplevel_windows = gdk_screen_get_toplevel_windows(this : Screen*) : Void**
  fun screen_get_width = gdk_screen_get_width(this : Screen*) : Int32
  fun screen_get_width_mm = gdk_screen_get_width_mm(this : Screen*) : Int32
  fun screen_get_window_stack = gdk_screen_get_window_stack(this : Screen*) : Void**
  fun screen_is_composited = gdk_screen_is_composited(this : Screen*) : Bool
  fun screen_list_visuals = gdk_screen_list_visuals(this : Screen*) : Void**
  fun screen_make_display_name = gdk_screen_make_display_name(this : Screen*) : UInt8*
  fun screen_set_font_options = gdk_screen_set_font_options(this : Screen*, options : LibCairo::FontOptions*) : Void
  fun screen_set_resolution = gdk_screen_set_resolution(this : Screen*, dpi : Float64) : Void

  struct Seat # object
    parent_instance : LibGObject::Object*
    # Signal device-added
    # Signal device-removed
    # Signal tool-added
    # Signal tool-removed
    # Property display : LibGdk::Display*
  end
  fun seat_get_capabilities = gdk_seat_get_capabilities(this : Seat*) : LibGdk::SeatCapabilities
  fun seat_get_display = gdk_seat_get_display(this : Seat*) : LibGdk::Display*
  fun seat_get_keyboard = gdk_seat_get_keyboard(this : Seat*) : LibGdk::Device*
  fun seat_get_pointer = gdk_seat_get_pointer(this : Seat*) : LibGdk::Device*
  fun seat_get_slaves = gdk_seat_get_slaves(this : Seat*, capabilities : LibGdk::SeatCapabilities) : Void**
  fun seat_grab = gdk_seat_grab(this : Seat*, window : LibGdk::Window*, capabilities : LibGdk::SeatCapabilities, owner_events : Bool, cursor : LibGdk::Cursor*, event : LibGdk::Event*, prepare_func : LibGdk::SeatGrabPrepareFunc, prepare_func_data : Void*) : LibGdk::GrabStatus
  fun seat_ungrab = gdk_seat_ungrab(this : Seat*) : Void

  struct Visual # object
    _data : UInt8[0]
  end
  fun visual_get_best = gdk_visual_get_best() : LibGdk::Visual*
  fun visual_get_best_depth = gdk_visual_get_best_depth() : Int32
  fun visual_get_best_type = gdk_visual_get_best_type() : LibGdk::VisualType
  fun visual_get_best_with_both = gdk_visual_get_best_with_both(depth : Int32, visual_type : LibGdk::VisualType) : LibGdk::Visual*
  fun visual_get_best_with_depth = gdk_visual_get_best_with_depth(depth : Int32) : LibGdk::Visual*
  fun visual_get_best_with_type = gdk_visual_get_best_with_type(visual_type : LibGdk::VisualType) : LibGdk::Visual*
  fun visual_get_system = gdk_visual_get_system() : LibGdk::Visual*
  fun visual_get_bits_per_rgb = gdk_visual_get_bits_per_rgb(this : Visual*) : Int32
  fun visual_get_blue_pixel_details = gdk_visual_get_blue_pixel_details(this : Visual*, mask : UInt32*, shift : Int32*, precision : Int32*) : Void
  fun visual_get_byte_order = gdk_visual_get_byte_order(this : Visual*) : LibGdk::ByteOrder
  fun visual_get_colormap_size = gdk_visual_get_colormap_size(this : Visual*) : Int32
  fun visual_get_depth = gdk_visual_get_depth(this : Visual*) : Int32
  fun visual_get_green_pixel_details = gdk_visual_get_green_pixel_details(this : Visual*, mask : UInt32*, shift : Int32*, precision : Int32*) : Void
  fun visual_get_red_pixel_details = gdk_visual_get_red_pixel_details(this : Visual*, mask : UInt32*, shift : Int32*, precision : Int32*) : Void
  fun visual_get_screen = gdk_visual_get_screen(this : Visual*) : LibGdk::Screen*
  fun visual_get_visual_type = gdk_visual_get_visual_type(this : Visual*) : LibGdk::VisualType

  struct Window # object
    _data : UInt8[0]
    # Signal create-surface
    # Signal from-embedder
    # Signal moved-to-rect
    # Signal pick-embedded-child
    # Signal to-embedder
    # Virtual function create_surface
    # Virtual function from_embedder
    # Virtual function to_embedder
    # Property cursor : LibGdk::Cursor*
  end
  fun window_new = gdk_window_new(parent : LibGdk::Window*, attributes : LibGdk::WindowAttr*, attributes_mask : LibGdk::WindowAttributesType) : LibGdk::Window*
  fun window_at_pointer = gdk_window_at_pointer(win_x : Int32*, win_y : Int32*) : LibGdk::Window*
  fun window_constrain_size = gdk_window_constrain_size(geometry : LibGdk::Geometry*, flags : LibGdk::WindowHints, width : Int32, height : Int32, new_width : Int32*, new_height : Int32*) : Void
  fun window_process_all_updates = gdk_window_process_all_updates() : Void
  fun window_set_debug_updates = gdk_window_set_debug_updates(setting : Bool) : Void
  fun window_beep = gdk_window_beep(this : Window*) : Void
  fun window_begin_draw_frame = gdk_window_begin_draw_frame(this : Window*, region : LibCairo::Region*) : LibGdk::DrawingContext*
  fun window_begin_move_drag = gdk_window_begin_move_drag(this : Window*, button : Int32, root_x : Int32, root_y : Int32, timestamp : UInt32) : Void
  fun window_begin_move_drag_for_device = gdk_window_begin_move_drag_for_device(this : Window*, device : LibGdk::Device*, button : Int32, root_x : Int32, root_y : Int32, timestamp : UInt32) : Void
  fun window_begin_paint_rect = gdk_window_begin_paint_rect(this : Window*, rectangle : LibGdk::Rectangle*) : Void
  fun window_begin_paint_region = gdk_window_begin_paint_region(this : Window*, region : LibCairo::Region*) : Void
  fun window_begin_resize_drag = gdk_window_begin_resize_drag(this : Window*, edge : LibGdk::WindowEdge, button : Int32, root_x : Int32, root_y : Int32, timestamp : UInt32) : Void
  fun window_begin_resize_drag_for_device = gdk_window_begin_resize_drag_for_device(this : Window*, edge : LibGdk::WindowEdge, device : LibGdk::Device*, button : Int32, root_x : Int32, root_y : Int32, timestamp : UInt32) : Void
  fun window_configure_finished = gdk_window_configure_finished(this : Window*) : Void
  fun window_coords_from_parent = gdk_window_coords_from_parent(this : Window*, parent_x : Float64, parent_y : Float64, x : Float64*, y : Float64*) : Void
  fun window_coords_to_parent = gdk_window_coords_to_parent(this : Window*, x : Float64, y : Float64, parent_x : Float64*, parent_y : Float64*) : Void
  fun window_create_gl_context = gdk_window_create_gl_context(this : Window*, error : LibGLib::Error**) : LibGdk::GLContext*
  fun window_create_similar_image_surface = gdk_window_create_similar_image_surface(this : Window*, format : Int32, width : Int32, height : Int32, scale : Int32) : LibCairo::Surface*
  fun window_create_similar_surface = gdk_window_create_similar_surface(this : Window*, content : LibCairo::Content, width : Int32, height : Int32) : LibCairo::Surface*
  fun window_deiconify = gdk_window_deiconify(this : Window*) : Void
  fun window_destroy = gdk_window_destroy(this : Window*) : Void
  fun window_destroy_notify = gdk_window_destroy_notify(this : Window*) : Void
  fun window_enable_synchronized_configure = gdk_window_enable_synchronized_configure(this : Window*) : Void
  fun window_end_draw_frame = gdk_window_end_draw_frame(this : Window*, context : LibGdk::DrawingContext*) : Void
  fun window_end_paint = gdk_window_end_paint(this : Window*) : Void
  fun window_ensure_native = gdk_window_ensure_native(this : Window*) : Bool
  fun window_flush = gdk_window_flush(this : Window*) : Void
  fun window_focus = gdk_window_focus(this : Window*, timestamp : UInt32) : Void
  fun window_freeze_toplevel_updates_libgtk_only = gdk_window_freeze_toplevel_updates_libgtk_only(this : Window*) : Void
  fun window_freeze_updates = gdk_window_freeze_updates(this : Window*) : Void
  fun window_fullscreen = gdk_window_fullscreen(this : Window*) : Void
  fun window_fullscreen_on_monitor = gdk_window_fullscreen_on_monitor(this : Window*, monitor : Int32) : Void
  fun window_geometry_changed = gdk_window_geometry_changed(this : Window*) : Void
  fun window_get_accept_focus = gdk_window_get_accept_focus(this : Window*) : Bool
  fun window_get_background_pattern = gdk_window_get_background_pattern(this : Window*) : LibCairo::Pattern*
  fun window_get_children = gdk_window_get_children(this : Window*) : Void**
  fun window_get_children_with_user_data = gdk_window_get_children_with_user_data(this : Window*, user_data : Void*) : Void**
  fun window_get_clip_region = gdk_window_get_clip_region(this : Window*) : LibCairo::Region*
  fun window_get_composited = gdk_window_get_composited(this : Window*) : Bool
  fun window_get_cursor = gdk_window_get_cursor(this : Window*) : LibGdk::Cursor*
  fun window_get_decorations = gdk_window_get_decorations(this : Window*, decorations : LibGdk::WMDecoration*) : Bool
  fun window_get_device_cursor = gdk_window_get_device_cursor(this : Window*, device : LibGdk::Device*) : LibGdk::Cursor*
  fun window_get_device_events = gdk_window_get_device_events(this : Window*, device : LibGdk::Device*) : LibGdk::EventMask
  fun window_get_device_position = gdk_window_get_device_position(this : Window*, device : LibGdk::Device*, x : Int32*, y : Int32*, mask : LibGdk::ModifierType*) : LibGdk::Window*
  fun window_get_device_position_double = gdk_window_get_device_position_double(this : Window*, device : LibGdk::Device*, x : Float64*, y : Float64*, mask : LibGdk::ModifierType*) : LibGdk::Window*
  fun window_get_display = gdk_window_get_display(this : Window*) : LibGdk::Display*
  fun window_get_drag_protocol = gdk_window_get_drag_protocol(this : Window*, target : LibGdk::Window**) : LibGdk::DragProtocol
  fun window_get_effective_parent = gdk_window_get_effective_parent(this : Window*) : LibGdk::Window*
  fun window_get_effective_toplevel = gdk_window_get_effective_toplevel(this : Window*) : LibGdk::Window*
  fun window_get_event_compression = gdk_window_get_event_compression(this : Window*) : Bool
  fun window_get_events = gdk_window_get_events(this : Window*) : LibGdk::EventMask
  fun window_get_focus_on_map = gdk_window_get_focus_on_map(this : Window*) : Bool
  fun window_get_frame_clock = gdk_window_get_frame_clock(this : Window*) : LibGdk::FrameClock*
  fun window_get_frame_extents = gdk_window_get_frame_extents(this : Window*, rect : LibGdk::Rectangle*) : Void
  fun window_get_fullscreen_mode = gdk_window_get_fullscreen_mode(this : Window*) : LibGdk::FullscreenMode
  fun window_get_geometry = gdk_window_get_geometry(this : Window*, x : Int32*, y : Int32*, width : Int32*, height : Int32*) : Void
  fun window_get_group = gdk_window_get_group(this : Window*) : LibGdk::Window*
  fun window_get_height = gdk_window_get_height(this : Window*) : Int32
  fun window_get_modal_hint = gdk_window_get_modal_hint(this : Window*) : Bool
  fun window_get_origin = gdk_window_get_origin(this : Window*, x : Int32*, y : Int32*) : Int32
  fun window_get_parent = gdk_window_get_parent(this : Window*) : LibGdk::Window*
  fun window_get_pass_through = gdk_window_get_pass_through(this : Window*) : Bool
  fun window_get_pointer = gdk_window_get_pointer(this : Window*, x : Int32*, y : Int32*, mask : LibGdk::ModifierType*) : LibGdk::Window*
  fun window_get_position = gdk_window_get_position(this : Window*, x : Int32*, y : Int32*) : Void
  fun window_get_root_coords = gdk_window_get_root_coords(this : Window*, x : Int32, y : Int32, root_x : Int32*, root_y : Int32*) : Void
  fun window_get_root_origin = gdk_window_get_root_origin(this : Window*, x : Int32*, y : Int32*) : Void
  fun window_get_scale_factor = gdk_window_get_scale_factor(this : Window*) : Int32
  fun window_get_screen = gdk_window_get_screen(this : Window*) : LibGdk::Screen*
  fun window_get_source_events = gdk_window_get_source_events(this : Window*, source : LibGdk::InputSource) : LibGdk::EventMask
  fun window_get_state = gdk_window_get_state(this : Window*) : LibGdk::WindowState
  fun window_get_support_multidevice = gdk_window_get_support_multidevice(this : Window*) : Bool
  fun window_get_toplevel = gdk_window_get_toplevel(this : Window*) : LibGdk::Window*
  fun window_get_type_hint = gdk_window_get_type_hint(this : Window*) : LibGdk::WindowTypeHint
  fun window_get_update_area = gdk_window_get_update_area(this : Window*) : LibCairo::Region*
  fun window_get_user_data = gdk_window_get_user_data(this : Window*, data : Void**) : Void
  fun window_get_visible_region = gdk_window_get_visible_region(this : Window*) : LibCairo::Region*
  fun window_get_visual = gdk_window_get_visual(this : Window*) : LibGdk::Visual*
  fun window_get_width = gdk_window_get_width(this : Window*) : Int32
  fun window_get_window_type = gdk_window_get_window_type(this : Window*) : LibGdk::WindowType
  fun window_has_native = gdk_window_has_native(this : Window*) : Bool
  fun window_hide = gdk_window_hide(this : Window*) : Void
  fun window_iconify = gdk_window_iconify(this : Window*) : Void
  fun window_input_shape_combine_region = gdk_window_input_shape_combine_region(this : Window*, shape_region : LibCairo::Region*, offset_x : Int32, offset_y : Int32) : Void
  fun window_invalidate_maybe_recurse = gdk_window_invalidate_maybe_recurse(this : Window*, region : LibCairo::Region*, child_func : LibGdk::WindowChildFunc, user_data : Void*) : Void
  fun window_invalidate_rect = gdk_window_invalidate_rect(this : Window*, rect : LibGdk::Rectangle*, invalidate_children : Bool) : Void
  fun window_invalidate_region = gdk_window_invalidate_region(this : Window*, region : LibCairo::Region*, invalidate_children : Bool) : Void
  fun window_is_destroyed = gdk_window_is_destroyed(this : Window*) : Bool
  fun window_is_input_only = gdk_window_is_input_only(this : Window*) : Bool
  fun window_is_shaped = gdk_window_is_shaped(this : Window*) : Bool
  fun window_is_viewable = gdk_window_is_viewable(this : Window*) : Bool
  fun window_is_visible = gdk_window_is_visible(this : Window*) : Bool
  fun window_lower = gdk_window_lower(this : Window*) : Void
  fun window_mark_paint_from_clip = gdk_window_mark_paint_from_clip(this : Window*, cr : LibCairo::Context*) : Void
  fun window_maximize = gdk_window_maximize(this : Window*) : Void
  fun window_merge_child_input_shapes = gdk_window_merge_child_input_shapes(this : Window*) : Void
  fun window_merge_child_shapes = gdk_window_merge_child_shapes(this : Window*) : Void
  fun window_move = gdk_window_move(this : Window*, x : Int32, y : Int32) : Void
  fun window_move_region = gdk_window_move_region(this : Window*, region : LibCairo::Region*, dx : Int32, dy : Int32) : Void
  fun window_move_resize = gdk_window_move_resize(this : Window*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun window_move_to_rect = gdk_window_move_to_rect(this : Window*, rect : LibGdk::Rectangle*, rect_anchor : LibGdk::Gravity, window_anchor : LibGdk::Gravity, anchor_hints : LibGdk::AnchorHints, rect_anchor_dx : Int32, rect_anchor_dy : Int32) : Void
  fun window_peek_children = gdk_window_peek_children(this : Window*) : Void**
  fun window_process_updates = gdk_window_process_updates(this : Window*, update_children : Bool) : Void
  fun window_raise = gdk_window_raise(this : Window*) : Void
  fun window_register_dnd = gdk_window_register_dnd(this : Window*) : Void
  fun window_reparent = gdk_window_reparent(this : Window*, new_parent : LibGdk::Window*, x : Int32, y : Int32) : Void
  fun window_resize = gdk_window_resize(this : Window*, width : Int32, height : Int32) : Void
  fun window_restack = gdk_window_restack(this : Window*, sibling : LibGdk::Window*, above : Bool) : Void
  fun window_scroll = gdk_window_scroll(this : Window*, dx : Int32, dy : Int32) : Void
  fun window_set_accept_focus = gdk_window_set_accept_focus(this : Window*, accept_focus : Bool) : Void
  fun window_set_background = gdk_window_set_background(this : Window*, color : LibGdk::Color*) : Void
  fun window_set_background_pattern = gdk_window_set_background_pattern(this : Window*, pattern : LibCairo::Pattern*) : Void
  fun window_set_background_rgba = gdk_window_set_background_rgba(this : Window*, rgba : LibGdk::RGBA*) : Void
  fun window_set_child_input_shapes = gdk_window_set_child_input_shapes(this : Window*) : Void
  fun window_set_child_shapes = gdk_window_set_child_shapes(this : Window*) : Void
  fun window_set_composited = gdk_window_set_composited(this : Window*, composited : Bool) : Void
  fun window_set_cursor = gdk_window_set_cursor(this : Window*, cursor : LibGdk::Cursor*) : Void
  fun window_set_decorations = gdk_window_set_decorations(this : Window*, decorations : LibGdk::WMDecoration) : Void
  fun window_set_device_cursor = gdk_window_set_device_cursor(this : Window*, device : LibGdk::Device*, cursor : LibGdk::Cursor*) : Void
  fun window_set_device_events = gdk_window_set_device_events(this : Window*, device : LibGdk::Device*, event_mask : LibGdk::EventMask) : Void
  fun window_set_event_compression = gdk_window_set_event_compression(this : Window*, event_compression : Bool) : Void
  fun window_set_events = gdk_window_set_events(this : Window*, event_mask : LibGdk::EventMask) : Void
  fun window_set_focus_on_map = gdk_window_set_focus_on_map(this : Window*, focus_on_map : Bool) : Void
  fun window_set_fullscreen_mode = gdk_window_set_fullscreen_mode(this : Window*, mode : LibGdk::FullscreenMode) : Void
  fun window_set_functions = gdk_window_set_functions(this : Window*, functions : LibGdk::WMFunction) : Void
  fun window_set_geometry_hints = gdk_window_set_geometry_hints(this : Window*, geometry : LibGdk::Geometry*, geom_mask : LibGdk::WindowHints) : Void
  fun window_set_group = gdk_window_set_group(this : Window*, leader : LibGdk::Window*) : Void
  fun window_set_icon_list = gdk_window_set_icon_list(this : Window*, pixbufs : Void**) : Void
  fun window_set_icon_name = gdk_window_set_icon_name(this : Window*, name : UInt8*) : Void
  fun window_set_keep_above = gdk_window_set_keep_above(this : Window*, setting : Bool) : Void
  fun window_set_keep_below = gdk_window_set_keep_below(this : Window*, setting : Bool) : Void
  fun window_set_modal_hint = gdk_window_set_modal_hint(this : Window*, modal : Bool) : Void
  fun window_set_opacity = gdk_window_set_opacity(this : Window*, opacity : Float64) : Void
  fun window_set_opaque_region = gdk_window_set_opaque_region(this : Window*, region : LibCairo::Region*) : Void
  fun window_set_override_redirect = gdk_window_set_override_redirect(this : Window*, override_redirect : Bool) : Void
  fun window_set_pass_through = gdk_window_set_pass_through(this : Window*, pass_through : Bool) : Void
  fun window_set_role = gdk_window_set_role(this : Window*, role : UInt8*) : Void
  fun window_set_shadow_width = gdk_window_set_shadow_width(this : Window*, left : Int32, right : Int32, top : Int32, bottom : Int32) : Void
  fun window_set_skip_pager_hint = gdk_window_set_skip_pager_hint(this : Window*, skips_pager : Bool) : Void
  fun window_set_skip_taskbar_hint = gdk_window_set_skip_taskbar_hint(this : Window*, skips_taskbar : Bool) : Void
  fun window_set_source_events = gdk_window_set_source_events(this : Window*, source : LibGdk::InputSource, event_mask : LibGdk::EventMask) : Void
  fun window_set_startup_id = gdk_window_set_startup_id(this : Window*, startup_id : UInt8*) : Void
  fun window_set_static_gravities = gdk_window_set_static_gravities(this : Window*, use_static : Bool) : Bool
  fun window_set_support_multidevice = gdk_window_set_support_multidevice(this : Window*, support_multidevice : Bool) : Void
  fun window_set_title = gdk_window_set_title(this : Window*, title : UInt8*) : Void
  fun window_set_transient_for = gdk_window_set_transient_for(this : Window*, parent : LibGdk::Window*) : Void
  fun window_set_type_hint = gdk_window_set_type_hint(this : Window*, hint : LibGdk::WindowTypeHint) : Void
  fun window_set_urgency_hint = gdk_window_set_urgency_hint(this : Window*, urgent : Bool) : Void
  fun window_set_user_data = gdk_window_set_user_data(this : Window*, user_data : LibGObject::Object*) : Void
  fun window_shape_combine_region = gdk_window_shape_combine_region(this : Window*, shape_region : LibCairo::Region*, offset_x : Int32, offset_y : Int32) : Void
  fun window_show = gdk_window_show(this : Window*) : Void
  fun window_show_unraised = gdk_window_show_unraised(this : Window*) : Void
  fun window_show_window_menu = gdk_window_show_window_menu(this : Window*, event : LibGdk::Event*) : Bool
  fun window_stick = gdk_window_stick(this : Window*) : Void
  fun window_thaw_toplevel_updates_libgtk_only = gdk_window_thaw_toplevel_updates_libgtk_only(this : Window*) : Void
  fun window_thaw_updates = gdk_window_thaw_updates(this : Window*) : Void
  fun window_unfullscreen = gdk_window_unfullscreen(this : Window*) : Void
  fun window_unmaximize = gdk_window_unmaximize(this : Window*) : Void
  fun window_unstick = gdk_window_unstick(this : Window*) : Void
  fun window_withdraw = gdk_window_withdraw(this : Window*) : Void


  ###########################################
  ##    Structs
  ###########################################

  struct Atom # struct
    _data : UInt8[0]
  end
  fun atom_name = gdk_atom_name(this : Atom*) : UInt8*
  fun atom_intern = gdk_atom_intern(atom_name : UInt8*, only_if_exists : Bool) : LibGdk::Atom*
  fun atom_intern_static_string = gdk_atom_intern_static_string(atom_name : UInt8*) : LibGdk::Atom*

  struct Color # struct
    pixel : UInt32
    red : UInt16
    green : UInt16
    blue : UInt16
  end
  fun color_copy = gdk_color_copy(this : Color*) : LibGdk::Color*
  fun color_equal = gdk_color_equal(this : Color*, colorb : LibGdk::Color*) : Bool
  fun color_free = gdk_color_free(this : Color*) : Void
  fun color_hash = gdk_color_hash(this : Color*) : UInt32
  fun color_to_string = gdk_color_to_string(this : Color*) : UInt8*
  fun color_parse = gdk_color_parse(spec : UInt8*, color : LibGdk::Color*) : Bool

  struct EventAny # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
  end

  struct EventButton # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    x : Float64
    y : Float64
    axes : Float64*
    state : LibGdk::ModifierType
    button : UInt32
    device : LibGdk::Device*
    x_root : Float64
    y_root : Float64
  end

  struct EventConfigure # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end

  struct EventCrossing # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    subwindow : LibGdk::Window*
    time : UInt32
    x : Float64
    y : Float64
    x_root : Float64
    y_root : Float64
    mode : LibGdk::CrossingMode
    detail : LibGdk::NotifyType
    focus : Bool
    state : LibGdk::ModifierType
  end

  struct EventDND # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    context : LibGdk::DragContext*
    time : UInt32
    x_root : Int16
    y_root : Int16
  end

  struct EventExpose # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    area : LibGdk::Rectangle
    region : LibCairo::Region*
    count : Int32
  end

  struct EventFocus # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    in : Int16
  end

  struct EventGrabBroken # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    keyboard : Bool
    implicit : Bool
    grab_window : LibGdk::Window*
  end

  struct EventKey # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    state : LibGdk::ModifierType
    keyval : UInt32
    length : Int32
    string : UInt8*
    hardware_keycode : UInt16
    group : UInt8
    is_modifier : UInt32
  end

  struct EventMotion # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    x : Float64
    y : Float64
    axes : Float64*
    state : LibGdk::ModifierType
    is_hint : Int16
    device : LibGdk::Device*
    x_root : Float64
    y_root : Float64
  end

  struct EventOwnerChange # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    owner : LibGdk::Window*
    reason : LibGdk::OwnerChange
    selection : LibGdk::Atom*
    time : UInt32
    selection_time : UInt32
  end

  struct EventPadAxis # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    group : UInt32
    index : UInt32
    mode : UInt32
    value : Float64
  end

  struct EventPadButton # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    group : UInt32
    button : UInt32
    mode : UInt32
  end

  struct EventPadGroupMode # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    group : UInt32
    mode : UInt32
  end

  struct EventProperty # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    atom : LibGdk::Atom*
    time : UInt32
    state : LibGdk::PropertyState
  end

  struct EventProximity # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    device : LibGdk::Device*
  end

  struct EventScroll # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    x : Float64
    y : Float64
    state : LibGdk::ModifierType
    direction : LibGdk::ScrollDirection
    device : LibGdk::Device*
    x_root : Float64
    y_root : Float64
    delta_x : Float64
    delta_y : Float64
    is_stop : UInt32
  end

  struct EventSelection # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    selection : LibGdk::Atom*
    target : LibGdk::Atom*
    property : LibGdk::Atom*
    time : UInt32
    requestor : LibGdk::Window*
  end

  struct EventSequence # struct
    _data : UInt8[0]
  end

  struct EventSetting # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    action : LibGdk::SettingAction
    name : UInt8*
  end

  struct EventTouch # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    time : UInt32
    x : Float64
    y : Float64
    axes : Float64*
    state : LibGdk::ModifierType
    sequence : LibGdk::EventSequence*
    emulating_pointer : Bool
    device : LibGdk::Device*
    x_root : Float64
    y_root : Float64
  end

  struct EventTouchpadPinch # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    phase : Int8
    n_fingers : Int8
    time : UInt32
    x : Float64
    y : Float64
    dx : Float64
    dy : Float64
    angle_delta : Float64
    scale : Float64
    x_root : Float64
    y_root : Float64
    state : LibGdk::ModifierType
  end

  struct EventTouchpadSwipe # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    phase : Int8
    n_fingers : Int8
    time : UInt32
    x : Float64
    y : Float64
    dx : Float64
    dy : Float64
    x_root : Float64
    y_root : Float64
    state : LibGdk::ModifierType
  end

  struct EventVisibility # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    state : LibGdk::VisibilityState
  end

  struct EventWindowState # struct
    type : LibGdk::EventType
    window : LibGdk::Window*
    send_event : Int8
    changed_mask : LibGdk::WindowState
    new_window_state : LibGdk::WindowState
  end

  struct FrameClockPrivate # struct
    _data : UInt8[0]
  end

  struct FrameTimings # struct
    _data : UInt8[0]
  end
  fun frame_timings_get_complete = gdk_frame_timings_get_complete(this : FrameTimings*) : Bool
  fun frame_timings_get_frame_counter = gdk_frame_timings_get_frame_counter(this : FrameTimings*) : Int64
  fun frame_timings_get_frame_time = gdk_frame_timings_get_frame_time(this : FrameTimings*) : Int64
  fun frame_timings_get_predicted_presentation_time = gdk_frame_timings_get_predicted_presentation_time(this : FrameTimings*) : Int64
  fun frame_timings_get_presentation_time = gdk_frame_timings_get_presentation_time(this : FrameTimings*) : Int64
  fun frame_timings_get_refresh_interval = gdk_frame_timings_get_refresh_interval(this : FrameTimings*) : Int64
  fun frame_timings_ref = gdk_frame_timings_ref(this : FrameTimings*) : LibGdk::FrameTimings*
  fun frame_timings_unref = gdk_frame_timings_unref(this : FrameTimings*) : Void

  struct Geometry # struct
    min_width : Int32
    min_height : Int32
    max_width : Int32
    max_height : Int32
    base_width : Int32
    base_height : Int32
    width_inc : Int32
    height_inc : Int32
    min_aspect : Float64
    max_aspect : Float64
    win_gravity : LibGdk::Gravity
  end

  struct KeymapKey # struct
    keycode : UInt32
    group : Int32
    level : Int32
  end

  struct Point # struct
    x : Int32
    y : Int32
  end

  struct RGBA # struct
    red : Float64
    green : Float64
    blue : Float64
    alpha : Float64
  end
  fun r_g_b_a_copy = gdk_rgba_copy(this : RGBA*) : LibGdk::RGBA*
  fun r_g_b_a_equal = gdk_rgba_equal(this : RGBA*, p2 : LibGdk::RGBA*) : Bool
  fun r_g_b_a_free = gdk_rgba_free(this : RGBA*) : Void
  fun r_g_b_a_hash = gdk_rgba_hash(this : RGBA*) : UInt32
  fun r_g_b_a_parse = gdk_rgba_parse(this : RGBA*, spec : UInt8*) : Bool
  fun r_g_b_a_to_string = gdk_rgba_to_string(this : RGBA*) : UInt8*

  struct Rectangle # struct
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end
  fun rectangle_equal = gdk_rectangle_equal(this : Rectangle*, rect2 : LibGdk::Rectangle*) : Bool
  fun rectangle_intersect = gdk_rectangle_intersect(this : Rectangle*, src2 : LibGdk::Rectangle*, dest : LibGdk::Rectangle*) : Bool
  fun rectangle_union = gdk_rectangle_union(this : Rectangle*, src2 : LibGdk::Rectangle*, dest : LibGdk::Rectangle*) : Void

  struct TimeCoord # struct
    time : UInt32
    axes : Float64
  end

  struct WindowAttr # struct
    title : UInt8*
    event_mask : Int32
    x : Int32
    y : Int32
    width : Int32
    height : Int32
    wclass : LibGdk::WindowWindowClass
    visual : LibGdk::Visual*
    window_type : LibGdk::WindowType
    cursor : LibGdk::Cursor*
    wmclass_name : UInt8*
    wmclass_class : UInt8*
    override_redirect : Bool
    type_hint : LibGdk::WindowTypeHint
  end

  struct WindowRedirect # struct
    _data : UInt8[0]
  end


  ###########################################
  ##    Enums
  ###########################################

  enum AxisUse : UInt32
    ZERO_NONE = 0
    IGNORE = 0
    X = 1
    Y = 2
    PRESSURE = 3
    XTILT = 4
    YTILT = 5
    WHEEL = 6
    DISTANCE = 7
    ROTATION = 8
    SLIDER = 9
    LAST = 10
  end

  enum ByteOrder : UInt32
    ZERO_NONE = 0
    LSB_FIRST = 0
    MSB_FIRST = 1
  end

  enum CrossingMode : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    GRAB = 1
    UNGRAB = 2
    GTK_GRAB = 3
    GTK_UNGRAB = 4
    STATE_CHANGED = 5
    TOUCH_BEGIN = 6
    TOUCH_END = 7
    DEVICE_SWITCH = 8
  end

  enum CursorType : Int32
    ZERO_NONE = 0
    X_CURSOR = 0
    ARROW = 2
    BASED_ARROW_DOWN = 4
    BASED_ARROW_UP = 6
    BOAT = 8
    BOGOSITY = 10
    BOTTOM_LEFT_CORNER = 12
    BOTTOM_RIGHT_CORNER = 14
    BOTTOM_SIDE = 16
    BOTTOM_TEE = 18
    BOX_SPIRAL = 20
    CENTER_PTR = 22
    CIRCLE = 24
    CLOCK = 26
    COFFEE_MUG = 28
    CROSS = 30
    CROSS_REVERSE = 32
    CROSSHAIR = 34
    DIAMOND_CROSS = 36
    DOT = 38
    DOTBOX = 40
    DOUBLE_ARROW = 42
    DRAFT_LARGE = 44
    DRAFT_SMALL = 46
    DRAPED_BOX = 48
    EXCHANGE = 50
    FLEUR = 52
    GOBBLER = 54
    GUMBY = 56
    HAND1 = 58
    HAND2 = 60
    HEART = 62
    ICON = 64
    IRON_CROSS = 66
    LEFT_PTR = 68
    LEFT_SIDE = 70
    LEFT_TEE = 72
    LEFTBUTTON = 74
    LL_ANGLE = 76
    LR_ANGLE = 78
    MAN = 80
    MIDDLEBUTTON = 82
    MOUSE = 84
    PENCIL = 86
    PIRATE = 88
    PLUS = 90
    QUESTION_ARROW = 92
    RIGHT_PTR = 94
    RIGHT_SIDE = 96
    RIGHT_TEE = 98
    RIGHTBUTTON = 100
    RTL_LOGO = 102
    SAILBOAT = 104
    SB_DOWN_ARROW = 106
    SB_H_DOUBLE_ARROW = 108
    SB_LEFT_ARROW = 110
    SB_RIGHT_ARROW = 112
    SB_UP_ARROW = 114
    SB_V_DOUBLE_ARROW = 116
    SHUTTLE = 118
    SIZING = 120
    SPIDER = 122
    SPRAYCAN = 124
    STAR = 126
    TARGET = 128
    TCROSS = 130
    TOP_LEFT_ARROW = 132
    TOP_LEFT_CORNER = 134
    TOP_RIGHT_CORNER = 136
    TOP_SIDE = 138
    TOP_TEE = 140
    TREK = 142
    UL_ANGLE = 144
    UMBRELLA = 146
    UR_ANGLE = 148
    WATCH = 150
    XTERM = 152
    LAST_CURSOR = 153
    BLANK_CURSOR = -2
    CURSOR_IS_PIXMAP = -1
  end

  enum DevicePadFeature : UInt32
    ZERO_NONE = 0
    BUTTON = 0
    RING = 1
    STRIP = 2
  end

  enum DeviceToolType : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    PEN = 1
    ERASER = 2
    BRUSH = 3
    PENCIL = 4
    AIRBRUSH = 5
    MOUSE = 6
    LENS = 7
  end

  enum DeviceType : UInt32
    ZERO_NONE = 0
    MASTER = 0
    SLAVE = 1
    FLOATING = 2
  end

  enum DragCancelReason : UInt32
    ZERO_NONE = 0
    NO_TARGET = 0
    USER_CANCELLED = 1
    ERROR = 2
  end

  enum DragProtocol : UInt32
    ZERO_NONE = 0
    NONE = 0
    MOTIF = 1
    XDND = 2
    ROOTWIN = 3
    WIN32_DROPFILES = 4
    OLE2 = 5
    LOCAL = 6
    WAYLAND = 7
  end

  enum EventType : Int32
    ZERO_NONE = 0
    NOTHING = -1
    DELETE = 0
    DESTROY = 1
    EXPOSE = 2
    MOTION_NOTIFY = 3
    BUTTON_PRESS = 4
    # 2BUTTON_PRESS = 5
    DOUBLE_BUTTON_PRESS = 5
    # 3BUTTON_PRESS = 6
    TRIPLE_BUTTON_PRESS = 6
    BUTTON_RELEASE = 7
    KEY_PRESS = 8
    KEY_RELEASE = 9
    ENTER_NOTIFY = 10
    LEAVE_NOTIFY = 11
    FOCUS_CHANGE = 12
    CONFIGURE = 13
    MAP = 14
    UNMAP = 15
    PROPERTY_NOTIFY = 16
    SELECTION_CLEAR = 17
    SELECTION_REQUEST = 18
    SELECTION_NOTIFY = 19
    PROXIMITY_IN = 20
    PROXIMITY_OUT = 21
    DRAG_ENTER = 22
    DRAG_LEAVE = 23
    DRAG_MOTION = 24
    DRAG_STATUS = 25
    DROP_START = 26
    DROP_FINISHED = 27
    CLIENT_EVENT = 28
    VISIBILITY_NOTIFY = 29
    SCROLL = 31
    WINDOW_STATE = 32
    SETTING = 33
    OWNER_CHANGE = 34
    GRAB_BROKEN = 35
    DAMAGE = 36
    TOUCH_BEGIN = 37
    TOUCH_UPDATE = 38
    TOUCH_END = 39
    TOUCH_CANCEL = 40
    TOUCHPAD_SWIPE = 41
    TOUCHPAD_PINCH = 42
    PAD_BUTTON_PRESS = 43
    PAD_BUTTON_RELEASE = 44
    PAD_RING = 45
    PAD_STRIP = 46
    PAD_GROUP_MODE = 47
    EVENT_LAST = 48
  end

  enum FilterReturn : UInt32
    ZERO_NONE = 0
    CONTINUE = 0
    TRANSLATE = 1
    REMOVE = 2
  end

  enum FullscreenMode : UInt32
    ZERO_NONE = 0
    CURRENT_MONITOR = 0
    ALL_MONITORS = 1
  end

  enum GLError : UInt32
    ZERO_NONE = 0
    NOT_AVAILABLE = 0
    UNSUPPORTED_FORMAT = 1
    UNSUPPORTED_PROFILE = 2
  end
  fun g_l_error_quark = gdk_gl_error_quark() : UInt32

  enum GrabOwnership : UInt32
    ZERO_NONE = 0
    NONE = 0
    WINDOW = 1
    APPLICATION = 2
  end

  enum GrabStatus : UInt32
    ZERO_NONE = 0
    SUCCESS = 0
    ALREADY_GRABBED = 1
    INVALID_TIME = 2
    NOT_VIEWABLE = 3
    FROZEN = 4
    FAILED = 5
  end

  enum Gravity : UInt32
    ZERO_NONE = 0
    NORTH_WEST = 1
    NORTH = 2
    NORTH_EAST = 3
    WEST = 4
    CENTER = 5
    EAST = 6
    SOUTH_WEST = 7
    SOUTH = 8
    SOUTH_EAST = 9
    STATIC = 10
  end

  enum InputMode : UInt32
    ZERO_NONE = 0
    DISABLED = 0
    SCREEN = 1
    WINDOW = 2
  end

  enum InputSource : UInt32
    ZERO_NONE = 0
    MOUSE = 0
    PEN = 1
    ERASER = 2
    CURSOR = 3
    KEYBOARD = 4
    TOUCHSCREEN = 5
    TOUCHPAD = 6
    TRACKPOINT = 7
    TABLET_PAD = 8
  end

  enum ModifierIntent : UInt32
    ZERO_NONE = 0
    PRIMARY_ACCELERATOR = 0
    CONTEXT_MENU = 1
    EXTEND_SELECTION = 2
    MODIFY_SELECTION = 3
    NO_TEXT_INPUT = 4
    SHIFT_GROUP = 5
    DEFAULT_MOD_MASK = 6
  end

  enum NotifyType : UInt32
    ZERO_NONE = 0
    ANCESTOR = 0
    VIRTUAL = 1
    INFERIOR = 2
    NONLINEAR = 3
    NONLINEAR_VIRTUAL = 4
    UNKNOWN = 5
  end

  enum OwnerChange : UInt32
    ZERO_NONE = 0
    NEW_OWNER = 0
    DESTROY = 1
    CLOSE = 2
  end

  enum PropMode : UInt32
    ZERO_NONE = 0
    REPLACE = 0
    PREPEND = 1
    APPEND = 2
  end

  enum PropertyState : UInt32
    ZERO_NONE = 0
    NEW_VALUE = 0
    DELETE = 1
  end

  enum ScrollDirection : UInt32
    ZERO_NONE = 0
    UP = 0
    DOWN = 1
    LEFT = 2
    RIGHT = 3
    SMOOTH = 4
  end

  enum SettingAction : UInt32
    ZERO_NONE = 0
    NEW = 0
    CHANGED = 1
    DELETED = 2
  end

  enum Status : Int32
    ZERO_NONE = 0
    OK = 0
    ERROR = -1
    ERROR_PARAM = -2
    ERROR_FILE = -3
    ERROR_MEM = -4
  end

  enum SubpixelLayout : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    NONE = 1
    HORIZONTAL_RGB = 2
    HORIZONTAL_BGR = 3
    VERTICAL_RGB = 4
    VERTICAL_BGR = 5
  end

  enum TouchpadGesturePhase : UInt32
    ZERO_NONE = 0
    BEGIN = 0
    UPDATE = 1
    END = 2
    CANCEL = 3
  end

  enum VisibilityState : UInt32
    ZERO_NONE = 0
    UNOBSCURED = 0
    PARTIAL = 1
    FULLY_OBSCURED = 2
  end

  enum VisualType : UInt32
    ZERO_NONE = 0
    STATIC_GRAY = 0
    GRAYSCALE = 1
    STATIC_COLOR = 2
    PSEUDO_COLOR = 3
    TRUE_COLOR = 4
    DIRECT_COLOR = 5
  end

  enum WindowEdge : UInt32
    ZERO_NONE = 0
    NORTH_WEST = 0
    NORTH = 1
    NORTH_EAST = 2
    WEST = 3
    EAST = 4
    SOUTH_WEST = 5
    SOUTH = 6
    SOUTH_EAST = 7
  end

  enum WindowType : UInt32
    ZERO_NONE = 0
    ROOT = 0
    TOPLEVEL = 1
    CHILD = 2
    TEMP = 3
    FOREIGN = 4
    OFFSCREEN = 5
    SUBSURFACE = 6
  end

  enum WindowTypeHint : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    DIALOG = 1
    MENU = 2
    TOOLBAR = 3
    SPLASHSCREEN = 4
    UTILITY = 5
    DOCK = 6
    DESKTOP = 7
    DROPDOWN_MENU = 8
    POPUP_MENU = 9
    TOOLTIP = 10
    NOTIFICATION = 11
    COMBO = 12
    DND = 13
  end

  enum WindowWindowClass : UInt32
    ZERO_NONE = 0
    INPUT_OUTPUT = 0
    INPUT_ONLY = 1
  end


  ###########################################
  ##    Constants
  ###########################################

  BUTTON_MIDDLE = 2 # : Int32
  BUTTON_PRIMARY = 1 # : Int32
  BUTTON_SECONDARY = 3 # : Int32
  CURRENT_TIME = 0 # : Int32
  EVENT_PROPAGATE = false # : Bool
  EVENT_STOP = true # : Bool
  KEY_0 = 48 # : Int32
  KEY_1 = 49 # : Int32
  KEY_2 = 50 # : Int32
  KEY_3 = 51 # : Int32
  KEY_3270_AltCursor = 64784 # : Int32
  KEY_3270_Attn = 64782 # : Int32
  KEY_3270_BackTab = 64773 # : Int32
  KEY_3270_ChangeScreen = 64793 # : Int32
  KEY_3270_Copy = 64789 # : Int32
  KEY_3270_CursorBlink = 64783 # : Int32
  KEY_3270_CursorSelect = 64796 # : Int32
  KEY_3270_DeleteWord = 64794 # : Int32
  KEY_3270_Duplicate = 64769 # : Int32
  KEY_3270_Enter = 64798 # : Int32
  KEY_3270_EraseEOF = 64774 # : Int32
  KEY_3270_EraseInput = 64775 # : Int32
  KEY_3270_ExSelect = 64795 # : Int32
  KEY_3270_FieldMark = 64770 # : Int32
  KEY_3270_Ident = 64787 # : Int32
  KEY_3270_Jump = 64786 # : Int32
  KEY_3270_KeyClick = 64785 # : Int32
  KEY_3270_Left2 = 64772 # : Int32
  KEY_3270_PA1 = 64778 # : Int32
  KEY_3270_PA2 = 64779 # : Int32
  KEY_3270_PA3 = 64780 # : Int32
  KEY_3270_Play = 64790 # : Int32
  KEY_3270_PrintScreen = 64797 # : Int32
  KEY_3270_Quit = 64777 # : Int32
  KEY_3270_Record = 64792 # : Int32
  KEY_3270_Reset = 64776 # : Int32
  KEY_3270_Right2 = 64771 # : Int32
  KEY_3270_Rule = 64788 # : Int32
  KEY_3270_Setup = 64791 # : Int32
  KEY_3270_Test = 64781 # : Int32
  KEY_4 = 52 # : Int32
  KEY_5 = 53 # : Int32
  KEY_6 = 54 # : Int32
  KEY_7 = 55 # : Int32
  KEY_8 = 56 # : Int32
  KEY_9 = 57 # : Int32
  KEY_A = 65 # : Int32
  KEY_AE = 198 # : Int32
  KEY_Aacute = 193 # : Int32
  KEY_Abelowdot = 16785056 # : Int32
  KEY_Abreve = 451 # : Int32
  KEY_Abreveacute = 16785070 # : Int32
  KEY_Abrevebelowdot = 16785078 # : Int32
  KEY_Abrevegrave = 16785072 # : Int32
  KEY_Abrevehook = 16785074 # : Int32
  KEY_Abrevetilde = 16785076 # : Int32
  KEY_AccessX_Enable = 65136 # : Int32
  KEY_AccessX_Feedback_Enable = 65137 # : Int32
  KEY_Acircumflex = 194 # : Int32
  KEY_Acircumflexacute = 16785060 # : Int32
  KEY_Acircumflexbelowdot = 16785068 # : Int32
  KEY_Acircumflexgrave = 16785062 # : Int32
  KEY_Acircumflexhook = 16785064 # : Int32
  KEY_Acircumflextilde = 16785066 # : Int32
  KEY_AddFavorite = 269025081 # : Int32
  KEY_Adiaeresis = 196 # : Int32
  KEY_Agrave = 192 # : Int32
  KEY_Ahook = 16785058 # : Int32
  KEY_Alt_L = 65513 # : Int32
  KEY_Alt_R = 65514 # : Int32
  KEY_Amacron = 960 # : Int32
  KEY_Aogonek = 417 # : Int32
  KEY_ApplicationLeft = 269025104 # : Int32
  KEY_ApplicationRight = 269025105 # : Int32
  KEY_Arabic_0 = 16778848 # : Int32
  KEY_Arabic_1 = 16778849 # : Int32
  KEY_Arabic_2 = 16778850 # : Int32
  KEY_Arabic_3 = 16778851 # : Int32
  KEY_Arabic_4 = 16778852 # : Int32
  KEY_Arabic_5 = 16778853 # : Int32
  KEY_Arabic_6 = 16778854 # : Int32
  KEY_Arabic_7 = 16778855 # : Int32
  KEY_Arabic_8 = 16778856 # : Int32
  KEY_Arabic_9 = 16778857 # : Int32
  KEY_Arabic_ain = 1497 # : Int32
  KEY_Arabic_alef = 1479 # : Int32
  KEY_Arabic_alefmaksura = 1513 # : Int32
  KEY_Arabic_beh = 1480 # : Int32
  KEY_Arabic_comma = 1452 # : Int32
  KEY_Arabic_dad = 1494 # : Int32
  KEY_Arabic_dal = 1487 # : Int32
  KEY_Arabic_damma = 1519 # : Int32
  KEY_Arabic_dammatan = 1516 # : Int32
  KEY_Arabic_ddal = 16778888 # : Int32
  KEY_Arabic_farsi_yeh = 16778956 # : Int32
  KEY_Arabic_fatha = 1518 # : Int32
  KEY_Arabic_fathatan = 1515 # : Int32
  KEY_Arabic_feh = 1505 # : Int32
  KEY_Arabic_fullstop = 16778964 # : Int32
  KEY_Arabic_gaf = 16778927 # : Int32
  KEY_Arabic_ghain = 1498 # : Int32
  KEY_Arabic_ha = 1511 # : Int32
  KEY_Arabic_hah = 1485 # : Int32
  KEY_Arabic_hamza = 1473 # : Int32
  KEY_Arabic_hamza_above = 16778836 # : Int32
  KEY_Arabic_hamza_below = 16778837 # : Int32
  KEY_Arabic_hamzaonalef = 1475 # : Int32
  KEY_Arabic_hamzaonwaw = 1476 # : Int32
  KEY_Arabic_hamzaonyeh = 1478 # : Int32
  KEY_Arabic_hamzaunderalef = 1477 # : Int32
  KEY_Arabic_heh = 1511 # : Int32
  KEY_Arabic_heh_doachashmee = 16778942 # : Int32
  KEY_Arabic_heh_goal = 16778945 # : Int32
  KEY_Arabic_jeem = 1484 # : Int32
  KEY_Arabic_jeh = 16778904 # : Int32
  KEY_Arabic_kaf = 1507 # : Int32
  KEY_Arabic_kasra = 1520 # : Int32
  KEY_Arabic_kasratan = 1517 # : Int32
  KEY_Arabic_keheh = 16778921 # : Int32
  KEY_Arabic_khah = 1486 # : Int32
  KEY_Arabic_lam = 1508 # : Int32
  KEY_Arabic_madda_above = 16778835 # : Int32
  KEY_Arabic_maddaonalef = 1474 # : Int32
  KEY_Arabic_meem = 1509 # : Int32
  KEY_Arabic_noon = 1510 # : Int32
  KEY_Arabic_noon_ghunna = 16778938 # : Int32
  KEY_Arabic_peh = 16778878 # : Int32
  KEY_Arabic_percent = 16778858 # : Int32
  KEY_Arabic_qaf = 1506 # : Int32
  KEY_Arabic_question_mark = 1471 # : Int32
  KEY_Arabic_ra = 1489 # : Int32
  KEY_Arabic_rreh = 16778897 # : Int32
  KEY_Arabic_sad = 1493 # : Int32
  KEY_Arabic_seen = 1491 # : Int32
  KEY_Arabic_semicolon = 1467 # : Int32
  KEY_Arabic_shadda = 1521 # : Int32
  KEY_Arabic_sheen = 1492 # : Int32
  KEY_Arabic_sukun = 1522 # : Int32
  KEY_Arabic_superscript_alef = 16778864 # : Int32
  KEY_Arabic_switch = 65406 # : Int32
  KEY_Arabic_tah = 1495 # : Int32
  KEY_Arabic_tatweel = 1504 # : Int32
  KEY_Arabic_tcheh = 16778886 # : Int32
  KEY_Arabic_teh = 1482 # : Int32
  KEY_Arabic_tehmarbuta = 1481 # : Int32
  KEY_Arabic_thal = 1488 # : Int32
  KEY_Arabic_theh = 1483 # : Int32
  KEY_Arabic_tteh = 16778873 # : Int32
  KEY_Arabic_veh = 16778916 # : Int32
  KEY_Arabic_waw = 1512 # : Int32
  KEY_Arabic_yeh = 1514 # : Int32
  KEY_Arabic_yeh_baree = 16778962 # : Int32
  KEY_Arabic_zah = 1496 # : Int32
  KEY_Arabic_zain = 1490 # : Int32
  KEY_Aring = 197 # : Int32
  KEY_Armenian_AT = 16778552 # : Int32
  KEY_Armenian_AYB = 16778545 # : Int32
  KEY_Armenian_BEN = 16778546 # : Int32
  KEY_Armenian_CHA = 16778569 # : Int32
  KEY_Armenian_DA = 16778548 # : Int32
  KEY_Armenian_DZA = 16778561 # : Int32
  KEY_Armenian_E = 16778551 # : Int32
  KEY_Armenian_FE = 16778582 # : Int32
  KEY_Armenian_GHAT = 16778562 # : Int32
  KEY_Armenian_GIM = 16778547 # : Int32
  KEY_Armenian_HI = 16778565 # : Int32
  KEY_Armenian_HO = 16778560 # : Int32
  KEY_Armenian_INI = 16778555 # : Int32
  KEY_Armenian_JE = 16778571 # : Int32
  KEY_Armenian_KE = 16778580 # : Int32
  KEY_Armenian_KEN = 16778559 # : Int32
  KEY_Armenian_KHE = 16778557 # : Int32
  KEY_Armenian_LYUN = 16778556 # : Int32
  KEY_Armenian_MEN = 16778564 # : Int32
  KEY_Armenian_NU = 16778566 # : Int32
  KEY_Armenian_O = 16778581 # : Int32
  KEY_Armenian_PE = 16778570 # : Int32
  KEY_Armenian_PYUR = 16778579 # : Int32
  KEY_Armenian_RA = 16778572 # : Int32
  KEY_Armenian_RE = 16778576 # : Int32
  KEY_Armenian_SE = 16778573 # : Int32
  KEY_Armenian_SHA = 16778567 # : Int32
  KEY_Armenian_TCHE = 16778563 # : Int32
  KEY_Armenian_TO = 16778553 # : Int32
  KEY_Armenian_TSA = 16778558 # : Int32
  KEY_Armenian_TSO = 16778577 # : Int32
  KEY_Armenian_TYUN = 16778575 # : Int32
  KEY_Armenian_VEV = 16778574 # : Int32
  KEY_Armenian_VO = 16778568 # : Int32
  KEY_Armenian_VYUN = 16778578 # : Int32
  KEY_Armenian_YECH = 16778549 # : Int32
  KEY_Armenian_ZA = 16778550 # : Int32
  KEY_Armenian_ZHE = 16778554 # : Int32
  KEY_Armenian_accent = 16778587 # : Int32
  KEY_Armenian_amanak = 16778588 # : Int32
  KEY_Armenian_apostrophe = 16778586 # : Int32
  KEY_Armenian_at = 16778600 # : Int32
  KEY_Armenian_ayb = 16778593 # : Int32
  KEY_Armenian_ben = 16778594 # : Int32
  KEY_Armenian_but = 16778589 # : Int32
  KEY_Armenian_cha = 16778617 # : Int32
  KEY_Armenian_da = 16778596 # : Int32
  KEY_Armenian_dza = 16778609 # : Int32
  KEY_Armenian_e = 16778599 # : Int32
  KEY_Armenian_exclam = 16778588 # : Int32
  KEY_Armenian_fe = 16778630 # : Int32
  KEY_Armenian_full_stop = 16778633 # : Int32
  KEY_Armenian_ghat = 16778610 # : Int32
  KEY_Armenian_gim = 16778595 # : Int32
  KEY_Armenian_hi = 16778613 # : Int32
  KEY_Armenian_ho = 16778608 # : Int32
  KEY_Armenian_hyphen = 16778634 # : Int32
  KEY_Armenian_ini = 16778603 # : Int32
  KEY_Armenian_je = 16778619 # : Int32
  KEY_Armenian_ke = 16778628 # : Int32
  KEY_Armenian_ken = 16778607 # : Int32
  KEY_Armenian_khe = 16778605 # : Int32
  KEY_Armenian_ligature_ew = 16778631 # : Int32
  KEY_Armenian_lyun = 16778604 # : Int32
  KEY_Armenian_men = 16778612 # : Int32
  KEY_Armenian_nu = 16778614 # : Int32
  KEY_Armenian_o = 16778629 # : Int32
  KEY_Armenian_paruyk = 16778590 # : Int32
  KEY_Armenian_pe = 16778618 # : Int32
  KEY_Armenian_pyur = 16778627 # : Int32
  KEY_Armenian_question = 16778590 # : Int32
  KEY_Armenian_ra = 16778620 # : Int32
  KEY_Armenian_re = 16778624 # : Int32
  KEY_Armenian_se = 16778621 # : Int32
  KEY_Armenian_separation_mark = 16778589 # : Int32
  KEY_Armenian_sha = 16778615 # : Int32
  KEY_Armenian_shesht = 16778587 # : Int32
  KEY_Armenian_tche = 16778611 # : Int32
  KEY_Armenian_to = 16778601 # : Int32
  KEY_Armenian_tsa = 16778606 # : Int32
  KEY_Armenian_tso = 16778625 # : Int32
  KEY_Armenian_tyun = 16778623 # : Int32
  KEY_Armenian_verjaket = 16778633 # : Int32
  KEY_Armenian_vev = 16778622 # : Int32
  KEY_Armenian_vo = 16778616 # : Int32
  KEY_Armenian_vyun = 16778626 # : Int32
  KEY_Armenian_yech = 16778597 # : Int32
  KEY_Armenian_yentamna = 16778634 # : Int32
  KEY_Armenian_za = 16778598 # : Int32
  KEY_Armenian_zhe = 16778602 # : Int32
  KEY_Atilde = 195 # : Int32
  KEY_AudibleBell_Enable = 65146 # : Int32
  KEY_AudioCycleTrack = 269025179 # : Int32
  KEY_AudioForward = 269025175 # : Int32
  KEY_AudioLowerVolume = 269025041 # : Int32
  KEY_AudioMedia = 269025074 # : Int32
  KEY_AudioMicMute = 269025202 # : Int32
  KEY_AudioMute = 269025042 # : Int32
  KEY_AudioNext = 269025047 # : Int32
  KEY_AudioPause = 269025073 # : Int32
  KEY_AudioPlay = 269025044 # : Int32
  KEY_AudioPrev = 269025046 # : Int32
  KEY_AudioRaiseVolume = 269025043 # : Int32
  KEY_AudioRandomPlay = 269025177 # : Int32
  KEY_AudioRecord = 269025052 # : Int32
  KEY_AudioRepeat = 269025176 # : Int32
  KEY_AudioRewind = 269025086 # : Int32
  KEY_AudioStop = 269025045 # : Int32
  KEY_Away = 269025165 # : Int32
  KEY_B = 66 # : Int32
  KEY_Babovedot = 16784898 # : Int32
  KEY_Back = 269025062 # : Int32
  KEY_BackForward = 269025087 # : Int32
  KEY_BackSpace = 65288 # : Int32
  KEY_Battery = 269025171 # : Int32
  KEY_Begin = 65368 # : Int32
  KEY_Blue = 269025190 # : Int32
  KEY_Bluetooth = 269025172 # : Int32
  KEY_Book = 269025106 # : Int32
  KEY_BounceKeys_Enable = 65140 # : Int32
  KEY_Break = 65387 # : Int32
  KEY_BrightnessAdjust = 269025083 # : Int32
  KEY_Byelorussian_SHORTU = 1726 # : Int32
  KEY_Byelorussian_shortu = 1710 # : Int32
  KEY_C = 67 # : Int32
  KEY_CD = 269025107 # : Int32
  KEY_CH = 65186 # : Int32
  KEY_C_H = 65189 # : Int32
  KEY_C_h = 65188 # : Int32
  KEY_Cabovedot = 709 # : Int32
  KEY_Cacute = 454 # : Int32
  KEY_Calculator = 269025053 # : Int32
  KEY_Calendar = 269025056 # : Int32
  KEY_Cancel = 65385 # : Int32
  KEY_Caps_Lock = 65509 # : Int32
  KEY_Ccaron = 456 # : Int32
  KEY_Ccedilla = 199 # : Int32
  KEY_Ccircumflex = 710 # : Int32
  KEY_Ch = 65185 # : Int32
  KEY_Clear = 65291 # : Int32
  KEY_ClearGrab = 269024801 # : Int32
  KEY_Close = 269025110 # : Int32
  KEY_Codeinput = 65335 # : Int32
  KEY_ColonSign = 16785569 # : Int32
  KEY_Community = 269025085 # : Int32
  KEY_ContrastAdjust = 269025058 # : Int32
  KEY_Control_L = 65507 # : Int32
  KEY_Control_R = 65508 # : Int32
  KEY_Copy = 269025111 # : Int32
  KEY_CruzeiroSign = 16785570 # : Int32
  KEY_Cut = 269025112 # : Int32
  KEY_CycleAngle = 269025180 # : Int32
  KEY_Cyrillic_A = 1761 # : Int32
  KEY_Cyrillic_BE = 1762 # : Int32
  KEY_Cyrillic_CHE = 1790 # : Int32
  KEY_Cyrillic_CHE_descender = 16778422 # : Int32
  KEY_Cyrillic_CHE_vertstroke = 16778424 # : Int32
  KEY_Cyrillic_DE = 1764 # : Int32
  KEY_Cyrillic_DZHE = 1727 # : Int32
  KEY_Cyrillic_E = 1788 # : Int32
  KEY_Cyrillic_EF = 1766 # : Int32
  KEY_Cyrillic_EL = 1772 # : Int32
  KEY_Cyrillic_EM = 1773 # : Int32
  KEY_Cyrillic_EN = 1774 # : Int32
  KEY_Cyrillic_EN_descender = 16778402 # : Int32
  KEY_Cyrillic_ER = 1778 # : Int32
  KEY_Cyrillic_ES = 1779 # : Int32
  KEY_Cyrillic_GHE = 1767 # : Int32
  KEY_Cyrillic_GHE_bar = 16778386 # : Int32
  KEY_Cyrillic_HA = 1768 # : Int32
  KEY_Cyrillic_HARDSIGN = 1791 # : Int32
  KEY_Cyrillic_HA_descender = 16778418 # : Int32
  KEY_Cyrillic_I = 1769 # : Int32
  KEY_Cyrillic_IE = 1765 # : Int32
  KEY_Cyrillic_IO = 1715 # : Int32
  KEY_Cyrillic_I_macron = 16778466 # : Int32
  KEY_Cyrillic_JE = 1720 # : Int32
  KEY_Cyrillic_KA = 1771 # : Int32
  KEY_Cyrillic_KA_descender = 16778394 # : Int32
  KEY_Cyrillic_KA_vertstroke = 16778396 # : Int32
  KEY_Cyrillic_LJE = 1721 # : Int32
  KEY_Cyrillic_NJE = 1722 # : Int32
  KEY_Cyrillic_O = 1775 # : Int32
  KEY_Cyrillic_O_bar = 16778472 # : Int32
  KEY_Cyrillic_PE = 1776 # : Int32
  KEY_Cyrillic_SCHWA = 16778456 # : Int32
  KEY_Cyrillic_SHA = 1787 # : Int32
  KEY_Cyrillic_SHCHA = 1789 # : Int32
  KEY_Cyrillic_SHHA = 16778426 # : Int32
  KEY_Cyrillic_SHORTI = 1770 # : Int32
  KEY_Cyrillic_SOFTSIGN = 1784 # : Int32
  KEY_Cyrillic_TE = 1780 # : Int32
  KEY_Cyrillic_TSE = 1763 # : Int32
  KEY_Cyrillic_U = 1781 # : Int32
  KEY_Cyrillic_U_macron = 16778478 # : Int32
  KEY_Cyrillic_U_straight = 16778414 # : Int32
  KEY_Cyrillic_U_straight_bar = 16778416 # : Int32
  KEY_Cyrillic_VE = 1783 # : Int32
  KEY_Cyrillic_YA = 1777 # : Int32
  KEY_Cyrillic_YERU = 1785 # : Int32
  KEY_Cyrillic_YU = 1760 # : Int32
  KEY_Cyrillic_ZE = 1786 # : Int32
  KEY_Cyrillic_ZHE = 1782 # : Int32
  KEY_Cyrillic_ZHE_descender = 16778390 # : Int32
  KEY_Cyrillic_a = 1729 # : Int32
  KEY_Cyrillic_be = 1730 # : Int32
  KEY_Cyrillic_che = 1758 # : Int32
  KEY_Cyrillic_che_descender = 16778423 # : Int32
  KEY_Cyrillic_che_vertstroke = 16778425 # : Int32
  KEY_Cyrillic_de = 1732 # : Int32
  KEY_Cyrillic_dzhe = 1711 # : Int32
  KEY_Cyrillic_e = 1756 # : Int32
  KEY_Cyrillic_ef = 1734 # : Int32
  KEY_Cyrillic_el = 1740 # : Int32
  KEY_Cyrillic_em = 1741 # : Int32
  KEY_Cyrillic_en = 1742 # : Int32
  KEY_Cyrillic_en_descender = 16778403 # : Int32
  KEY_Cyrillic_er = 1746 # : Int32
  KEY_Cyrillic_es = 1747 # : Int32
  KEY_Cyrillic_ghe = 1735 # : Int32
  KEY_Cyrillic_ghe_bar = 16778387 # : Int32
  KEY_Cyrillic_ha = 1736 # : Int32
  KEY_Cyrillic_ha_descender = 16778419 # : Int32
  KEY_Cyrillic_hardsign = 1759 # : Int32
  KEY_Cyrillic_i = 1737 # : Int32
  KEY_Cyrillic_i_macron = 16778467 # : Int32
  KEY_Cyrillic_ie = 1733 # : Int32
  KEY_Cyrillic_io = 1699 # : Int32
  KEY_Cyrillic_je = 1704 # : Int32
  KEY_Cyrillic_ka = 1739 # : Int32
  KEY_Cyrillic_ka_descender = 16778395 # : Int32
  KEY_Cyrillic_ka_vertstroke = 16778397 # : Int32
  KEY_Cyrillic_lje = 1705 # : Int32
  KEY_Cyrillic_nje = 1706 # : Int32
  KEY_Cyrillic_o = 1743 # : Int32
  KEY_Cyrillic_o_bar = 16778473 # : Int32
  KEY_Cyrillic_pe = 1744 # : Int32
  KEY_Cyrillic_schwa = 16778457 # : Int32
  KEY_Cyrillic_sha = 1755 # : Int32
  KEY_Cyrillic_shcha = 1757 # : Int32
  KEY_Cyrillic_shha = 16778427 # : Int32
  KEY_Cyrillic_shorti = 1738 # : Int32
  KEY_Cyrillic_softsign = 1752 # : Int32
  KEY_Cyrillic_te = 1748 # : Int32
  KEY_Cyrillic_tse = 1731 # : Int32
  KEY_Cyrillic_u = 1749 # : Int32
  KEY_Cyrillic_u_macron = 16778479 # : Int32
  KEY_Cyrillic_u_straight = 16778415 # : Int32
  KEY_Cyrillic_u_straight_bar = 16778417 # : Int32
  KEY_Cyrillic_ve = 1751 # : Int32
  KEY_Cyrillic_ya = 1745 # : Int32
  KEY_Cyrillic_yeru = 1753 # : Int32
  KEY_Cyrillic_yu = 1728 # : Int32
  KEY_Cyrillic_ze = 1754 # : Int32
  KEY_Cyrillic_zhe = 1750 # : Int32
  KEY_Cyrillic_zhe_descender = 16778391 # : Int32
  KEY_D = 68 # : Int32
  KEY_DOS = 269025114 # : Int32
  KEY_Dabovedot = 16784906 # : Int32
  KEY_Dcaron = 463 # : Int32
  KEY_Delete = 65535 # : Int32
  KEY_Display = 269025113 # : Int32
  KEY_Documents = 269025115 # : Int32
  KEY_DongSign = 16785579 # : Int32
  KEY_Down = 65364 # : Int32
  KEY_Dstroke = 464 # : Int32
  KEY_E = 69 # : Int32
  KEY_ENG = 957 # : Int32
  KEY_ETH = 208 # : Int32
  KEY_EZH = 16777655 # : Int32
  KEY_Eabovedot = 972 # : Int32
  KEY_Eacute = 201 # : Int32
  KEY_Ebelowdot = 16785080 # : Int32
  KEY_Ecaron = 460 # : Int32
  KEY_Ecircumflex = 202 # : Int32
  KEY_Ecircumflexacute = 16785086 # : Int32
  KEY_Ecircumflexbelowdot = 16785094 # : Int32
  KEY_Ecircumflexgrave = 16785088 # : Int32
  KEY_Ecircumflexhook = 16785090 # : Int32
  KEY_Ecircumflextilde = 16785092 # : Int32
  KEY_EcuSign = 16785568 # : Int32
  KEY_Ediaeresis = 203 # : Int32
  KEY_Egrave = 200 # : Int32
  KEY_Ehook = 16785082 # : Int32
  KEY_Eisu_Shift = 65327 # : Int32
  KEY_Eisu_toggle = 65328 # : Int32
  KEY_Eject = 269025068 # : Int32
  KEY_Emacron = 938 # : Int32
  KEY_End = 65367 # : Int32
  KEY_Eogonek = 458 # : Int32
  KEY_Escape = 65307 # : Int32
  KEY_Eth = 208 # : Int32
  KEY_Etilde = 16785084 # : Int32
  KEY_EuroSign = 8364 # : Int32
  KEY_Excel = 269025116 # : Int32
  KEY_Execute = 65378 # : Int32
  KEY_Explorer = 269025117 # : Int32
  KEY_F = 70 # : Int32
  KEY_F1 = 65470 # : Int32
  KEY_F10 = 65479 # : Int32
  KEY_F11 = 65480 # : Int32
  KEY_F12 = 65481 # : Int32
  KEY_F13 = 65482 # : Int32
  KEY_F14 = 65483 # : Int32
  KEY_F15 = 65484 # : Int32
  KEY_F16 = 65485 # : Int32
  KEY_F17 = 65486 # : Int32
  KEY_F18 = 65487 # : Int32
  KEY_F19 = 65488 # : Int32
  KEY_F2 = 65471 # : Int32
  KEY_F20 = 65489 # : Int32
  KEY_F21 = 65490 # : Int32
  KEY_F22 = 65491 # : Int32
  KEY_F23 = 65492 # : Int32
  KEY_F24 = 65493 # : Int32
  KEY_F25 = 65494 # : Int32
  KEY_F26 = 65495 # : Int32
  KEY_F27 = 65496 # : Int32
  KEY_F28 = 65497 # : Int32
  KEY_F29 = 65498 # : Int32
  KEY_F3 = 65472 # : Int32
  KEY_F30 = 65499 # : Int32
  KEY_F31 = 65500 # : Int32
  KEY_F32 = 65501 # : Int32
  KEY_F33 = 65502 # : Int32
  KEY_F34 = 65503 # : Int32
  KEY_F35 = 65504 # : Int32
  KEY_F4 = 65473 # : Int32
  KEY_F5 = 65474 # : Int32
  KEY_F6 = 65475 # : Int32
  KEY_F7 = 65476 # : Int32
  KEY_F8 = 65477 # : Int32
  KEY_F9 = 65478 # : Int32
  KEY_FFrancSign = 16785571 # : Int32
  KEY_Fabovedot = 16784926 # : Int32
  KEY_Farsi_0 = 16778992 # : Int32
  KEY_Farsi_1 = 16778993 # : Int32
  KEY_Farsi_2 = 16778994 # : Int32
  KEY_Farsi_3 = 16778995 # : Int32
  KEY_Farsi_4 = 16778996 # : Int32
  KEY_Farsi_5 = 16778997 # : Int32
  KEY_Farsi_6 = 16778998 # : Int32
  KEY_Farsi_7 = 16778999 # : Int32
  KEY_Farsi_8 = 16779000 # : Int32
  KEY_Farsi_9 = 16779001 # : Int32
  KEY_Farsi_yeh = 16778956 # : Int32
  KEY_Favorites = 269025072 # : Int32
  KEY_Finance = 269025084 # : Int32
  KEY_Find = 65384 # : Int32
  KEY_First_Virtual_Screen = 65232 # : Int32
  KEY_Forward = 269025063 # : Int32
  KEY_FrameBack = 269025181 # : Int32
  KEY_FrameForward = 269025182 # : Int32
  KEY_G = 71 # : Int32
  KEY_Gabovedot = 725 # : Int32
  KEY_Game = 269025118 # : Int32
  KEY_Gbreve = 683 # : Int32
  KEY_Gcaron = 16777702 # : Int32
  KEY_Gcedilla = 939 # : Int32
  KEY_Gcircumflex = 728 # : Int32
  KEY_Georgian_an = 16781520 # : Int32
  KEY_Georgian_ban = 16781521 # : Int32
  KEY_Georgian_can = 16781546 # : Int32
  KEY_Georgian_char = 16781549 # : Int32
  KEY_Georgian_chin = 16781545 # : Int32
  KEY_Georgian_cil = 16781548 # : Int32
  KEY_Georgian_don = 16781523 # : Int32
  KEY_Georgian_en = 16781524 # : Int32
  KEY_Georgian_fi = 16781558 # : Int32
  KEY_Georgian_gan = 16781522 # : Int32
  KEY_Georgian_ghan = 16781542 # : Int32
  KEY_Georgian_hae = 16781552 # : Int32
  KEY_Georgian_har = 16781556 # : Int32
  KEY_Georgian_he = 16781553 # : Int32
  KEY_Georgian_hie = 16781554 # : Int32
  KEY_Georgian_hoe = 16781557 # : Int32
  KEY_Georgian_in = 16781528 # : Int32
  KEY_Georgian_jhan = 16781551 # : Int32
  KEY_Georgian_jil = 16781547 # : Int32
  KEY_Georgian_kan = 16781529 # : Int32
  KEY_Georgian_khar = 16781541 # : Int32
  KEY_Georgian_las = 16781530 # : Int32
  KEY_Georgian_man = 16781531 # : Int32
  KEY_Georgian_nar = 16781532 # : Int32
  KEY_Georgian_on = 16781533 # : Int32
  KEY_Georgian_par = 16781534 # : Int32
  KEY_Georgian_phar = 16781540 # : Int32
  KEY_Georgian_qar = 16781543 # : Int32
  KEY_Georgian_rae = 16781536 # : Int32
  KEY_Georgian_san = 16781537 # : Int32
  KEY_Georgian_shin = 16781544 # : Int32
  KEY_Georgian_tan = 16781527 # : Int32
  KEY_Georgian_tar = 16781538 # : Int32
  KEY_Georgian_un = 16781539 # : Int32
  KEY_Georgian_vin = 16781525 # : Int32
  KEY_Georgian_we = 16781555 # : Int32
  KEY_Georgian_xan = 16781550 # : Int32
  KEY_Georgian_zen = 16781526 # : Int32
  KEY_Georgian_zhar = 16781535 # : Int32
  KEY_Go = 269025119 # : Int32
  KEY_Greek_ALPHA = 1985 # : Int32
  KEY_Greek_ALPHAaccent = 1953 # : Int32
  KEY_Greek_BETA = 1986 # : Int32
  KEY_Greek_CHI = 2007 # : Int32
  KEY_Greek_DELTA = 1988 # : Int32
  KEY_Greek_EPSILON = 1989 # : Int32
  KEY_Greek_EPSILONaccent = 1954 # : Int32
  KEY_Greek_ETA = 1991 # : Int32
  KEY_Greek_ETAaccent = 1955 # : Int32
  KEY_Greek_GAMMA = 1987 # : Int32
  KEY_Greek_IOTA = 1993 # : Int32
  KEY_Greek_IOTAaccent = 1956 # : Int32
  KEY_Greek_IOTAdiaeresis = 1957 # : Int32
  KEY_Greek_IOTAdieresis = 1957 # : Int32
  KEY_Greek_KAPPA = 1994 # : Int32
  KEY_Greek_LAMBDA = 1995 # : Int32
  KEY_Greek_LAMDA = 1995 # : Int32
  KEY_Greek_MU = 1996 # : Int32
  KEY_Greek_NU = 1997 # : Int32
  KEY_Greek_OMEGA = 2009 # : Int32
  KEY_Greek_OMEGAaccent = 1963 # : Int32
  KEY_Greek_OMICRON = 1999 # : Int32
  KEY_Greek_OMICRONaccent = 1959 # : Int32
  KEY_Greek_PHI = 2006 # : Int32
  KEY_Greek_PI = 2000 # : Int32
  KEY_Greek_PSI = 2008 # : Int32
  KEY_Greek_RHO = 2001 # : Int32
  KEY_Greek_SIGMA = 2002 # : Int32
  KEY_Greek_TAU = 2004 # : Int32
  KEY_Greek_THETA = 1992 # : Int32
  KEY_Greek_UPSILON = 2005 # : Int32
  KEY_Greek_UPSILONaccent = 1960 # : Int32
  KEY_Greek_UPSILONdieresis = 1961 # : Int32
  KEY_Greek_XI = 1998 # : Int32
  KEY_Greek_ZETA = 1990 # : Int32
  KEY_Greek_accentdieresis = 1966 # : Int32
  KEY_Greek_alpha = 2017 # : Int32
  KEY_Greek_alphaaccent = 1969 # : Int32
  KEY_Greek_beta = 2018 # : Int32
  KEY_Greek_chi = 2039 # : Int32
  KEY_Greek_delta = 2020 # : Int32
  KEY_Greek_epsilon = 2021 # : Int32
  KEY_Greek_epsilonaccent = 1970 # : Int32
  KEY_Greek_eta = 2023 # : Int32
  KEY_Greek_etaaccent = 1971 # : Int32
  KEY_Greek_finalsmallsigma = 2035 # : Int32
  KEY_Greek_gamma = 2019 # : Int32
  KEY_Greek_horizbar = 1967 # : Int32
  KEY_Greek_iota = 2025 # : Int32
  KEY_Greek_iotaaccent = 1972 # : Int32
  KEY_Greek_iotaaccentdieresis = 1974 # : Int32
  KEY_Greek_iotadieresis = 1973 # : Int32
  KEY_Greek_kappa = 2026 # : Int32
  KEY_Greek_lambda = 2027 # : Int32
  KEY_Greek_lamda = 2027 # : Int32
  KEY_Greek_mu = 2028 # : Int32
  KEY_Greek_nu = 2029 # : Int32
  KEY_Greek_omega = 2041 # : Int32
  KEY_Greek_omegaaccent = 1979 # : Int32
  KEY_Greek_omicron = 2031 # : Int32
  KEY_Greek_omicronaccent = 1975 # : Int32
  KEY_Greek_phi = 2038 # : Int32
  KEY_Greek_pi = 2032 # : Int32
  KEY_Greek_psi = 2040 # : Int32
  KEY_Greek_rho = 2033 # : Int32
  KEY_Greek_sigma = 2034 # : Int32
  KEY_Greek_switch = 65406 # : Int32
  KEY_Greek_tau = 2036 # : Int32
  KEY_Greek_theta = 2024 # : Int32
  KEY_Greek_upsilon = 2037 # : Int32
  KEY_Greek_upsilonaccent = 1976 # : Int32
  KEY_Greek_upsilonaccentdieresis = 1978 # : Int32
  KEY_Greek_upsilondieresis = 1977 # : Int32
  KEY_Greek_xi = 2030 # : Int32
  KEY_Greek_zeta = 2022 # : Int32
  KEY_Green = 269025188 # : Int32
  KEY_H = 72 # : Int32
  KEY_Hangul = 65329 # : Int32
  KEY_Hangul_A = 3775 # : Int32
  KEY_Hangul_AE = 3776 # : Int32
  KEY_Hangul_AraeA = 3830 # : Int32
  KEY_Hangul_AraeAE = 3831 # : Int32
  KEY_Hangul_Banja = 65337 # : Int32
  KEY_Hangul_Cieuc = 3770 # : Int32
  KEY_Hangul_Codeinput = 65335 # : Int32
  KEY_Hangul_Dikeud = 3751 # : Int32
  KEY_Hangul_E = 3780 # : Int32
  KEY_Hangul_EO = 3779 # : Int32
  KEY_Hangul_EU = 3793 # : Int32
  KEY_Hangul_End = 65331 # : Int32
  KEY_Hangul_Hanja = 65332 # : Int32
  KEY_Hangul_Hieuh = 3774 # : Int32
  KEY_Hangul_I = 3795 # : Int32
  KEY_Hangul_Ieung = 3767 # : Int32
  KEY_Hangul_J_Cieuc = 3818 # : Int32
  KEY_Hangul_J_Dikeud = 3802 # : Int32
  KEY_Hangul_J_Hieuh = 3822 # : Int32
  KEY_Hangul_J_Ieung = 3816 # : Int32
  KEY_Hangul_J_Jieuj = 3817 # : Int32
  KEY_Hangul_J_Khieuq = 3819 # : Int32
  KEY_Hangul_J_Kiyeog = 3796 # : Int32
  KEY_Hangul_J_KiyeogSios = 3798 # : Int32
  KEY_Hangul_J_KkogjiDalrinIeung = 3833 # : Int32
  KEY_Hangul_J_Mieum = 3811 # : Int32
  KEY_Hangul_J_Nieun = 3799 # : Int32
  KEY_Hangul_J_NieunHieuh = 3801 # : Int32
  KEY_Hangul_J_NieunJieuj = 3800 # : Int32
  KEY_Hangul_J_PanSios = 3832 # : Int32
  KEY_Hangul_J_Phieuf = 3821 # : Int32
  KEY_Hangul_J_Pieub = 3812 # : Int32
  KEY_Hangul_J_PieubSios = 3813 # : Int32
  KEY_Hangul_J_Rieul = 3803 # : Int32
  KEY_Hangul_J_RieulHieuh = 3810 # : Int32
  KEY_Hangul_J_RieulKiyeog = 3804 # : Int32
  KEY_Hangul_J_RieulMieum = 3805 # : Int32
  KEY_Hangul_J_RieulPhieuf = 3809 # : Int32
  KEY_Hangul_J_RieulPieub = 3806 # : Int32
  KEY_Hangul_J_RieulSios = 3807 # : Int32
  KEY_Hangul_J_RieulTieut = 3808 # : Int32
  KEY_Hangul_J_Sios = 3814 # : Int32
  KEY_Hangul_J_SsangKiyeog = 3797 # : Int32
  KEY_Hangul_J_SsangSios = 3815 # : Int32
  KEY_Hangul_J_Tieut = 3820 # : Int32
  KEY_Hangul_J_YeorinHieuh = 3834 # : Int32
  KEY_Hangul_Jamo = 65333 # : Int32
  KEY_Hangul_Jeonja = 65336 # : Int32
  KEY_Hangul_Jieuj = 3768 # : Int32
  KEY_Hangul_Khieuq = 3771 # : Int32
  KEY_Hangul_Kiyeog = 3745 # : Int32
  KEY_Hangul_KiyeogSios = 3747 # : Int32
  KEY_Hangul_KkogjiDalrinIeung = 3827 # : Int32
  KEY_Hangul_Mieum = 3761 # : Int32
  KEY_Hangul_MultipleCandidate = 65341 # : Int32
  KEY_Hangul_Nieun = 3748 # : Int32
  KEY_Hangul_NieunHieuh = 3750 # : Int32
  KEY_Hangul_NieunJieuj = 3749 # : Int32
  KEY_Hangul_O = 3783 # : Int32
  KEY_Hangul_OE = 3786 # : Int32
  KEY_Hangul_PanSios = 3826 # : Int32
  KEY_Hangul_Phieuf = 3773 # : Int32
  KEY_Hangul_Pieub = 3762 # : Int32
  KEY_Hangul_PieubSios = 3764 # : Int32
  KEY_Hangul_PostHanja = 65339 # : Int32
  KEY_Hangul_PreHanja = 65338 # : Int32
  KEY_Hangul_PreviousCandidate = 65342 # : Int32
  KEY_Hangul_Rieul = 3753 # : Int32
  KEY_Hangul_RieulHieuh = 3760 # : Int32
  KEY_Hangul_RieulKiyeog = 3754 # : Int32
  KEY_Hangul_RieulMieum = 3755 # : Int32
  KEY_Hangul_RieulPhieuf = 3759 # : Int32
  KEY_Hangul_RieulPieub = 3756 # : Int32
  KEY_Hangul_RieulSios = 3757 # : Int32
  KEY_Hangul_RieulTieut = 3758 # : Int32
  KEY_Hangul_RieulYeorinHieuh = 3823 # : Int32
  KEY_Hangul_Romaja = 65334 # : Int32
  KEY_Hangul_SingleCandidate = 65340 # : Int32
  KEY_Hangul_Sios = 3765 # : Int32
  KEY_Hangul_Special = 65343 # : Int32
  KEY_Hangul_SsangDikeud = 3752 # : Int32
  KEY_Hangul_SsangJieuj = 3769 # : Int32
  KEY_Hangul_SsangKiyeog = 3746 # : Int32
  KEY_Hangul_SsangPieub = 3763 # : Int32
  KEY_Hangul_SsangSios = 3766 # : Int32
  KEY_Hangul_Start = 65330 # : Int32
  KEY_Hangul_SunkyeongeumMieum = 3824 # : Int32
  KEY_Hangul_SunkyeongeumPhieuf = 3828 # : Int32
  KEY_Hangul_SunkyeongeumPieub = 3825 # : Int32
  KEY_Hangul_Tieut = 3772 # : Int32
  KEY_Hangul_U = 3788 # : Int32
  KEY_Hangul_WA = 3784 # : Int32
  KEY_Hangul_WAE = 3785 # : Int32
  KEY_Hangul_WE = 3790 # : Int32
  KEY_Hangul_WEO = 3789 # : Int32
  KEY_Hangul_WI = 3791 # : Int32
  KEY_Hangul_YA = 3777 # : Int32
  KEY_Hangul_YAE = 3778 # : Int32
  KEY_Hangul_YE = 3782 # : Int32
  KEY_Hangul_YEO = 3781 # : Int32
  KEY_Hangul_YI = 3794 # : Int32
  KEY_Hangul_YO = 3787 # : Int32
  KEY_Hangul_YU = 3792 # : Int32
  KEY_Hangul_YeorinHieuh = 3829 # : Int32
  KEY_Hangul_switch = 65406 # : Int32
  KEY_Hankaku = 65321 # : Int32
  KEY_Hcircumflex = 678 # : Int32
  KEY_Hebrew_switch = 65406 # : Int32
  KEY_Help = 65386 # : Int32
  KEY_Henkan = 65315 # : Int32
  KEY_Henkan_Mode = 65315 # : Int32
  KEY_Hibernate = 269025192 # : Int32
  KEY_Hiragana = 65317 # : Int32
  KEY_Hiragana_Katakana = 65319 # : Int32
  KEY_History = 269025079 # : Int32
  KEY_Home = 65360 # : Int32
  KEY_HomePage = 269025048 # : Int32
  KEY_HotLinks = 269025082 # : Int32
  KEY_Hstroke = 673 # : Int32
  KEY_Hyper_L = 65517 # : Int32
  KEY_Hyper_R = 65518 # : Int32
  KEY_I = 73 # : Int32
  KEY_ISO_Center_Object = 65075 # : Int32
  KEY_ISO_Continuous_Underline = 65072 # : Int32
  KEY_ISO_Discontinuous_Underline = 65073 # : Int32
  KEY_ISO_Emphasize = 65074 # : Int32
  KEY_ISO_Enter = 65076 # : Int32
  KEY_ISO_Fast_Cursor_Down = 65071 # : Int32
  KEY_ISO_Fast_Cursor_Left = 65068 # : Int32
  KEY_ISO_Fast_Cursor_Right = 65069 # : Int32
  KEY_ISO_Fast_Cursor_Up = 65070 # : Int32
  KEY_ISO_First_Group = 65036 # : Int32
  KEY_ISO_First_Group_Lock = 65037 # : Int32
  KEY_ISO_Group_Latch = 65030 # : Int32
  KEY_ISO_Group_Lock = 65031 # : Int32
  KEY_ISO_Group_Shift = 65406 # : Int32
  KEY_ISO_Last_Group = 65038 # : Int32
  KEY_ISO_Last_Group_Lock = 65039 # : Int32
  KEY_ISO_Left_Tab = 65056 # : Int32
  KEY_ISO_Level2_Latch = 65026 # : Int32
  KEY_ISO_Level3_Latch = 65028 # : Int32
  KEY_ISO_Level3_Lock = 65029 # : Int32
  KEY_ISO_Level3_Shift = 65027 # : Int32
  KEY_ISO_Level5_Latch = 65042 # : Int32
  KEY_ISO_Level5_Lock = 65043 # : Int32
  KEY_ISO_Level5_Shift = 65041 # : Int32
  KEY_ISO_Lock = 65025 # : Int32
  KEY_ISO_Move_Line_Down = 65058 # : Int32
  KEY_ISO_Move_Line_Up = 65057 # : Int32
  KEY_ISO_Next_Group = 65032 # : Int32
  KEY_ISO_Next_Group_Lock = 65033 # : Int32
  KEY_ISO_Partial_Line_Down = 65060 # : Int32
  KEY_ISO_Partial_Line_Up = 65059 # : Int32
  KEY_ISO_Partial_Space_Left = 65061 # : Int32
  KEY_ISO_Partial_Space_Right = 65062 # : Int32
  KEY_ISO_Prev_Group = 65034 # : Int32
  KEY_ISO_Prev_Group_Lock = 65035 # : Int32
  KEY_ISO_Release_Both_Margins = 65067 # : Int32
  KEY_ISO_Release_Margin_Left = 65065 # : Int32
  KEY_ISO_Release_Margin_Right = 65066 # : Int32
  KEY_ISO_Set_Margin_Left = 65063 # : Int32
  KEY_ISO_Set_Margin_Right = 65064 # : Int32
  KEY_Iabovedot = 681 # : Int32
  KEY_Iacute = 205 # : Int32
  KEY_Ibelowdot = 16785098 # : Int32
  KEY_Ibreve = 16777516 # : Int32
  KEY_Icircumflex = 206 # : Int32
  KEY_Idiaeresis = 207 # : Int32
  KEY_Igrave = 204 # : Int32
  KEY_Ihook = 16785096 # : Int32
  KEY_Imacron = 975 # : Int32
  KEY_Insert = 65379 # : Int32
  KEY_Iogonek = 967 # : Int32
  KEY_Itilde = 933 # : Int32
  KEY_J = 74 # : Int32
  KEY_Jcircumflex = 684 # : Int32
  KEY_K = 75 # : Int32
  KEY_KP_0 = 65456 # : Int32
  KEY_KP_1 = 65457 # : Int32
  KEY_KP_2 = 65458 # : Int32
  KEY_KP_3 = 65459 # : Int32
  KEY_KP_4 = 65460 # : Int32
  KEY_KP_5 = 65461 # : Int32
  KEY_KP_6 = 65462 # : Int32
  KEY_KP_7 = 65463 # : Int32
  KEY_KP_8 = 65464 # : Int32
  KEY_KP_9 = 65465 # : Int32
  KEY_KP_Add = 65451 # : Int32
  KEY_KP_Begin = 65437 # : Int32
  KEY_KP_Decimal = 65454 # : Int32
  KEY_KP_Delete = 65439 # : Int32
  KEY_KP_Divide = 65455 # : Int32
  KEY_KP_Down = 65433 # : Int32
  KEY_KP_End = 65436 # : Int32
  KEY_KP_Enter = 65421 # : Int32
  KEY_KP_Equal = 65469 # : Int32
  KEY_KP_F1 = 65425 # : Int32
  KEY_KP_F2 = 65426 # : Int32
  KEY_KP_F3 = 65427 # : Int32
  KEY_KP_F4 = 65428 # : Int32
  KEY_KP_Home = 65429 # : Int32
  KEY_KP_Insert = 65438 # : Int32
  KEY_KP_Left = 65430 # : Int32
  KEY_KP_Multiply = 65450 # : Int32
  KEY_KP_Next = 65435 # : Int32
  KEY_KP_Page_Down = 65435 # : Int32
  KEY_KP_Page_Up = 65434 # : Int32
  KEY_KP_Prior = 65434 # : Int32
  KEY_KP_Right = 65432 # : Int32
  KEY_KP_Separator = 65452 # : Int32
  KEY_KP_Space = 65408 # : Int32
  KEY_KP_Subtract = 65453 # : Int32
  KEY_KP_Tab = 65417 # : Int32
  KEY_KP_Up = 65431 # : Int32
  KEY_Kana_Lock = 65325 # : Int32
  KEY_Kana_Shift = 65326 # : Int32
  KEY_Kanji = 65313 # : Int32
  KEY_Kanji_Bangou = 65335 # : Int32
  KEY_Katakana = 65318 # : Int32
  KEY_KbdBrightnessDown = 269025030 # : Int32
  KEY_KbdBrightnessUp = 269025029 # : Int32
  KEY_KbdLightOnOff = 269025028 # : Int32
  KEY_Kcedilla = 979 # : Int32
  KEY_Korean_Won = 3839 # : Int32
  KEY_L = 76 # : Int32
  KEY_L1 = 65480 # : Int32
  KEY_L10 = 65489 # : Int32
  KEY_L2 = 65481 # : Int32
  KEY_L3 = 65482 # : Int32
  KEY_L4 = 65483 # : Int32
  KEY_L5 = 65484 # : Int32
  KEY_L6 = 65485 # : Int32
  KEY_L7 = 65486 # : Int32
  KEY_L8 = 65487 # : Int32
  KEY_L9 = 65488 # : Int32
  KEY_Lacute = 453 # : Int32
  KEY_Last_Virtual_Screen = 65236 # : Int32
  KEY_Launch0 = 269025088 # : Int32
  KEY_Launch1 = 269025089 # : Int32
  KEY_Launch2 = 269025090 # : Int32
  KEY_Launch3 = 269025091 # : Int32
  KEY_Launch4 = 269025092 # : Int32
  KEY_Launch5 = 269025093 # : Int32
  KEY_Launch6 = 269025094 # : Int32
  KEY_Launch7 = 269025095 # : Int32
  KEY_Launch8 = 269025096 # : Int32
  KEY_Launch9 = 269025097 # : Int32
  KEY_LaunchA = 269025098 # : Int32
  KEY_LaunchB = 269025099 # : Int32
  KEY_LaunchC = 269025100 # : Int32
  KEY_LaunchD = 269025101 # : Int32
  KEY_LaunchE = 269025102 # : Int32
  KEY_LaunchF = 269025103 # : Int32
  KEY_Lbelowdot = 16784950 # : Int32
  KEY_Lcaron = 421 # : Int32
  KEY_Lcedilla = 934 # : Int32
  KEY_Left = 65361 # : Int32
  KEY_LightBulb = 269025077 # : Int32
  KEY_Linefeed = 65290 # : Int32
  KEY_LiraSign = 16785572 # : Int32
  KEY_LogGrabInfo = 269024805 # : Int32
  KEY_LogOff = 269025121 # : Int32
  KEY_LogWindowTree = 269024804 # : Int32
  KEY_Lstroke = 419 # : Int32
  KEY_M = 77 # : Int32
  KEY_Mabovedot = 16784960 # : Int32
  KEY_Macedonia_DSE = 1717 # : Int32
  KEY_Macedonia_GJE = 1714 # : Int32
  KEY_Macedonia_KJE = 1724 # : Int32
  KEY_Macedonia_dse = 1701 # : Int32
  KEY_Macedonia_gje = 1698 # : Int32
  KEY_Macedonia_kje = 1708 # : Int32
  KEY_Mae_Koho = 65342 # : Int32
  KEY_Mail = 269025049 # : Int32
  KEY_MailForward = 269025168 # : Int32
  KEY_Market = 269025122 # : Int32
  KEY_Massyo = 65324 # : Int32
  KEY_Meeting = 269025123 # : Int32
  KEY_Memo = 269025054 # : Int32
  KEY_Menu = 65383 # : Int32
  KEY_MenuKB = 269025125 # : Int32
  KEY_MenuPB = 269025126 # : Int32
  KEY_Messenger = 269025166 # : Int32
  KEY_Meta_L = 65511 # : Int32
  KEY_Meta_R = 65512 # : Int32
  KEY_MillSign = 16785573 # : Int32
  KEY_ModeLock = 269025025 # : Int32
  KEY_Mode_switch = 65406 # : Int32
  KEY_MonBrightnessDown = 269025027 # : Int32
  KEY_MonBrightnessUp = 269025026 # : Int32
  KEY_MouseKeys_Accel_Enable = 65143 # : Int32
  KEY_MouseKeys_Enable = 65142 # : Int32
  KEY_Muhenkan = 65314 # : Int32
  KEY_Multi_key = 65312 # : Int32
  KEY_MultipleCandidate = 65341 # : Int32
  KEY_Music = 269025170 # : Int32
  KEY_MyComputer = 269025075 # : Int32
  KEY_MySites = 269025127 # : Int32
  KEY_N = 78 # : Int32
  KEY_Nacute = 465 # : Int32
  KEY_NairaSign = 16785574 # : Int32
  KEY_Ncaron = 466 # : Int32
  KEY_Ncedilla = 977 # : Int32
  KEY_New = 269025128 # : Int32
  KEY_NewSheqelSign = 16785578 # : Int32
  KEY_News = 269025129 # : Int32
  KEY_Next = 65366 # : Int32
  KEY_Next_VMode = 269024802 # : Int32
  KEY_Next_Virtual_Screen = 65234 # : Int32
  KEY_Ntilde = 209 # : Int32
  KEY_Num_Lock = 65407 # : Int32
  KEY_O = 79 # : Int32
  KEY_OE = 5052 # : Int32
  KEY_Oacute = 211 # : Int32
  KEY_Obarred = 16777631 # : Int32
  KEY_Obelowdot = 16785100 # : Int32
  KEY_Ocaron = 16777681 # : Int32
  KEY_Ocircumflex = 212 # : Int32
  KEY_Ocircumflexacute = 16785104 # : Int32
  KEY_Ocircumflexbelowdot = 16785112 # : Int32
  KEY_Ocircumflexgrave = 16785106 # : Int32
  KEY_Ocircumflexhook = 16785108 # : Int32
  KEY_Ocircumflextilde = 16785110 # : Int32
  KEY_Odiaeresis = 214 # : Int32
  KEY_Odoubleacute = 469 # : Int32
  KEY_OfficeHome = 269025130 # : Int32
  KEY_Ograve = 210 # : Int32
  KEY_Ohook = 16785102 # : Int32
  KEY_Ohorn = 16777632 # : Int32
  KEY_Ohornacute = 16785114 # : Int32
  KEY_Ohornbelowdot = 16785122 # : Int32
  KEY_Ohorngrave = 16785116 # : Int32
  KEY_Ohornhook = 16785118 # : Int32
  KEY_Ohorntilde = 16785120 # : Int32
  KEY_Omacron = 978 # : Int32
  KEY_Ooblique = 216 # : Int32
  KEY_Open = 269025131 # : Int32
  KEY_OpenURL = 269025080 # : Int32
  KEY_Option = 269025132 # : Int32
  KEY_Oslash = 216 # : Int32
  KEY_Otilde = 213 # : Int32
  KEY_Overlay1_Enable = 65144 # : Int32
  KEY_Overlay2_Enable = 65145 # : Int32
  KEY_P = 80 # : Int32
  KEY_Pabovedot = 16784982 # : Int32
  KEY_Page_Down = 65366 # : Int32
  KEY_Page_Up = 65365 # : Int32
  KEY_Paste = 269025133 # : Int32
  KEY_Pause = 65299 # : Int32
  KEY_PesetaSign = 16785575 # : Int32
  KEY_Phone = 269025134 # : Int32
  KEY_Pictures = 269025169 # : Int32
  KEY_Pointer_Accelerate = 65274 # : Int32
  KEY_Pointer_Button1 = 65257 # : Int32
  KEY_Pointer_Button2 = 65258 # : Int32
  KEY_Pointer_Button3 = 65259 # : Int32
  KEY_Pointer_Button4 = 65260 # : Int32
  KEY_Pointer_Button5 = 65261 # : Int32
  KEY_Pointer_Button_Dflt = 65256 # : Int32
  KEY_Pointer_DblClick1 = 65263 # : Int32
  KEY_Pointer_DblClick2 = 65264 # : Int32
  KEY_Pointer_DblClick3 = 65265 # : Int32
  KEY_Pointer_DblClick4 = 65266 # : Int32
  KEY_Pointer_DblClick5 = 65267 # : Int32
  KEY_Pointer_DblClick_Dflt = 65262 # : Int32
  KEY_Pointer_DfltBtnNext = 65275 # : Int32
  KEY_Pointer_DfltBtnPrev = 65276 # : Int32
  KEY_Pointer_Down = 65251 # : Int32
  KEY_Pointer_DownLeft = 65254 # : Int32
  KEY_Pointer_DownRight = 65255 # : Int32
  KEY_Pointer_Drag1 = 65269 # : Int32
  KEY_Pointer_Drag2 = 65270 # : Int32
  KEY_Pointer_Drag3 = 65271 # : Int32
  KEY_Pointer_Drag4 = 65272 # : Int32
  KEY_Pointer_Drag5 = 65277 # : Int32
  KEY_Pointer_Drag_Dflt = 65268 # : Int32
  KEY_Pointer_EnableKeys = 65273 # : Int32
  KEY_Pointer_Left = 65248 # : Int32
  KEY_Pointer_Right = 65249 # : Int32
  KEY_Pointer_Up = 65250 # : Int32
  KEY_Pointer_UpLeft = 65252 # : Int32
  KEY_Pointer_UpRight = 65253 # : Int32
  KEY_PowerDown = 269025057 # : Int32
  KEY_PowerOff = 269025066 # : Int32
  KEY_Prev_VMode = 269024803 # : Int32
  KEY_Prev_Virtual_Screen = 65233 # : Int32
  KEY_PreviousCandidate = 65342 # : Int32
  KEY_Print = 65377 # : Int32
  KEY_Prior = 65365 # : Int32
  KEY_Q = 81 # : Int32
  KEY_R = 82 # : Int32
  KEY_R1 = 65490 # : Int32
  KEY_R10 = 65499 # : Int32
  KEY_R11 = 65500 # : Int32
  KEY_R12 = 65501 # : Int32
  KEY_R13 = 65502 # : Int32
  KEY_R14 = 65503 # : Int32
  KEY_R15 = 65504 # : Int32
  KEY_R2 = 65491 # : Int32
  KEY_R3 = 65492 # : Int32
  KEY_R4 = 65493 # : Int32
  KEY_R5 = 65494 # : Int32
  KEY_R6 = 65495 # : Int32
  KEY_R7 = 65496 # : Int32
  KEY_R8 = 65497 # : Int32
  KEY_R9 = 65498 # : Int32
  KEY_Racute = 448 # : Int32
  KEY_Rcaron = 472 # : Int32
  KEY_Rcedilla = 931 # : Int32
  KEY_Red = 269025187 # : Int32
  KEY_Redo = 65382 # : Int32
  KEY_Refresh = 269025065 # : Int32
  KEY_Reload = 269025139 # : Int32
  KEY_RepeatKeys_Enable = 65138 # : Int32
  KEY_Reply = 269025138 # : Int32
  KEY_Return = 65293 # : Int32
  KEY_Right = 65363 # : Int32
  KEY_RockerDown = 269025060 # : Int32
  KEY_RockerEnter = 269025061 # : Int32
  KEY_RockerUp = 269025059 # : Int32
  KEY_Romaji = 65316 # : Int32
  KEY_RotateWindows = 269025140 # : Int32
  KEY_RotationKB = 269025142 # : Int32
  KEY_RotationPB = 269025141 # : Int32
  KEY_RupeeSign = 16785576 # : Int32
  KEY_S = 83 # : Int32
  KEY_SCHWA = 16777615 # : Int32
  KEY_Sabovedot = 16784992 # : Int32
  KEY_Sacute = 422 # : Int32
  KEY_Save = 269025143 # : Int32
  KEY_Scaron = 425 # : Int32
  KEY_Scedilla = 426 # : Int32
  KEY_Scircumflex = 734 # : Int32
  KEY_ScreenSaver = 269025069 # : Int32
  KEY_ScrollClick = 269025146 # : Int32
  KEY_ScrollDown = 269025145 # : Int32
  KEY_ScrollUp = 269025144 # : Int32
  KEY_Scroll_Lock = 65300 # : Int32
  KEY_Search = 269025051 # : Int32
  KEY_Select = 65376 # : Int32
  KEY_SelectButton = 269025184 # : Int32
  KEY_Send = 269025147 # : Int32
  KEY_Serbian_DJE = 1713 # : Int32
  KEY_Serbian_DZE = 1727 # : Int32
  KEY_Serbian_JE = 1720 # : Int32
  KEY_Serbian_LJE = 1721 # : Int32
  KEY_Serbian_NJE = 1722 # : Int32
  KEY_Serbian_TSHE = 1723 # : Int32
  KEY_Serbian_dje = 1697 # : Int32
  KEY_Serbian_dze = 1711 # : Int32
  KEY_Serbian_je = 1704 # : Int32
  KEY_Serbian_lje = 1705 # : Int32
  KEY_Serbian_nje = 1706 # : Int32
  KEY_Serbian_tshe = 1707 # : Int32
  KEY_Shift_L = 65505 # : Int32
  KEY_Shift_Lock = 65510 # : Int32
  KEY_Shift_R = 65506 # : Int32
  KEY_Shop = 269025078 # : Int32
  KEY_SingleCandidate = 65340 # : Int32
  KEY_Sinh_a = 16780677 # : Int32
  KEY_Sinh_aa = 16780678 # : Int32
  KEY_Sinh_aa2 = 16780751 # : Int32
  KEY_Sinh_ae = 16780679 # : Int32
  KEY_Sinh_ae2 = 16780752 # : Int32
  KEY_Sinh_aee = 16780680 # : Int32
  KEY_Sinh_aee2 = 16780753 # : Int32
  KEY_Sinh_ai = 16780691 # : Int32
  KEY_Sinh_ai2 = 16780763 # : Int32
  KEY_Sinh_al = 16780746 # : Int32
  KEY_Sinh_au = 16780694 # : Int32
  KEY_Sinh_au2 = 16780766 # : Int32
  KEY_Sinh_ba = 16780726 # : Int32
  KEY_Sinh_bha = 16780727 # : Int32
  KEY_Sinh_ca = 16780704 # : Int32
  KEY_Sinh_cha = 16780705 # : Int32
  KEY_Sinh_dda = 16780713 # : Int32
  KEY_Sinh_ddha = 16780714 # : Int32
  KEY_Sinh_dha = 16780719 # : Int32
  KEY_Sinh_dhha = 16780720 # : Int32
  KEY_Sinh_e = 16780689 # : Int32
  KEY_Sinh_e2 = 16780761 # : Int32
  KEY_Sinh_ee = 16780690 # : Int32
  KEY_Sinh_ee2 = 16780762 # : Int32
  KEY_Sinh_fa = 16780742 # : Int32
  KEY_Sinh_ga = 16780700 # : Int32
  KEY_Sinh_gha = 16780701 # : Int32
  KEY_Sinh_h2 = 16780675 # : Int32
  KEY_Sinh_ha = 16780740 # : Int32
  KEY_Sinh_i = 16780681 # : Int32
  KEY_Sinh_i2 = 16780754 # : Int32
  KEY_Sinh_ii = 16780682 # : Int32
  KEY_Sinh_ii2 = 16780755 # : Int32
  KEY_Sinh_ja = 16780706 # : Int32
  KEY_Sinh_jha = 16780707 # : Int32
  KEY_Sinh_jnya = 16780709 # : Int32
  KEY_Sinh_ka = 16780698 # : Int32
  KEY_Sinh_kha = 16780699 # : Int32
  KEY_Sinh_kunddaliya = 16780788 # : Int32
  KEY_Sinh_la = 16780733 # : Int32
  KEY_Sinh_lla = 16780741 # : Int32
  KEY_Sinh_lu = 16780687 # : Int32
  KEY_Sinh_lu2 = 16780767 # : Int32
  KEY_Sinh_luu = 16780688 # : Int32
  KEY_Sinh_luu2 = 16780787 # : Int32
  KEY_Sinh_ma = 16780728 # : Int32
  KEY_Sinh_mba = 16780729 # : Int32
  KEY_Sinh_na = 16780721 # : Int32
  KEY_Sinh_ndda = 16780716 # : Int32
  KEY_Sinh_ndha = 16780723 # : Int32
  KEY_Sinh_ng = 16780674 # : Int32
  KEY_Sinh_ng2 = 16780702 # : Int32
  KEY_Sinh_nga = 16780703 # : Int32
  KEY_Sinh_nja = 16780710 # : Int32
  KEY_Sinh_nna = 16780715 # : Int32
  KEY_Sinh_nya = 16780708 # : Int32
  KEY_Sinh_o = 16780692 # : Int32
  KEY_Sinh_o2 = 16780764 # : Int32
  KEY_Sinh_oo = 16780693 # : Int32
  KEY_Sinh_oo2 = 16780765 # : Int32
  KEY_Sinh_pa = 16780724 # : Int32
  KEY_Sinh_pha = 16780725 # : Int32
  KEY_Sinh_ra = 16780731 # : Int32
  KEY_Sinh_ri = 16780685 # : Int32
  KEY_Sinh_rii = 16780686 # : Int32
  KEY_Sinh_ru2 = 16780760 # : Int32
  KEY_Sinh_ruu2 = 16780786 # : Int32
  KEY_Sinh_sa = 16780739 # : Int32
  KEY_Sinh_sha = 16780737 # : Int32
  KEY_Sinh_ssha = 16780738 # : Int32
  KEY_Sinh_tha = 16780717 # : Int32
  KEY_Sinh_thha = 16780718 # : Int32
  KEY_Sinh_tta = 16780711 # : Int32
  KEY_Sinh_ttha = 16780712 # : Int32
  KEY_Sinh_u = 16780683 # : Int32
  KEY_Sinh_u2 = 16780756 # : Int32
  KEY_Sinh_uu = 16780684 # : Int32
  KEY_Sinh_uu2 = 16780758 # : Int32
  KEY_Sinh_va = 16780736 # : Int32
  KEY_Sinh_ya = 16780730 # : Int32
  KEY_Sleep = 269025071 # : Int32
  KEY_SlowKeys_Enable = 65139 # : Int32
  KEY_Spell = 269025148 # : Int32
  KEY_SplitScreen = 269025149 # : Int32
  KEY_Standby = 269025040 # : Int32
  KEY_Start = 269025050 # : Int32
  KEY_StickyKeys_Enable = 65141 # : Int32
  KEY_Stop = 269025064 # : Int32
  KEY_Subtitle = 269025178 # : Int32
  KEY_Super_L = 65515 # : Int32
  KEY_Super_R = 65516 # : Int32
  KEY_Support = 269025150 # : Int32
  KEY_Suspend = 269025191 # : Int32
  KEY_Switch_VT_1 = 269024769 # : Int32
  KEY_Switch_VT_10 = 269024778 # : Int32
  KEY_Switch_VT_11 = 269024779 # : Int32
  KEY_Switch_VT_12 = 269024780 # : Int32
  KEY_Switch_VT_2 = 269024770 # : Int32
  KEY_Switch_VT_3 = 269024771 # : Int32
  KEY_Switch_VT_4 = 269024772 # : Int32
  KEY_Switch_VT_5 = 269024773 # : Int32
  KEY_Switch_VT_6 = 269024774 # : Int32
  KEY_Switch_VT_7 = 269024775 # : Int32
  KEY_Switch_VT_8 = 269024776 # : Int32
  KEY_Switch_VT_9 = 269024777 # : Int32
  KEY_Sys_Req = 65301 # : Int32
  KEY_T = 84 # : Int32
  KEY_THORN = 222 # : Int32
  KEY_Tab = 65289 # : Int32
  KEY_Tabovedot = 16785002 # : Int32
  KEY_TaskPane = 269025151 # : Int32
  KEY_Tcaron = 427 # : Int32
  KEY_Tcedilla = 478 # : Int32
  KEY_Terminal = 269025152 # : Int32
  KEY_Terminate_Server = 65237 # : Int32
  KEY_Thai_baht = 3551 # : Int32
  KEY_Thai_bobaimai = 3514 # : Int32
  KEY_Thai_chochan = 3496 # : Int32
  KEY_Thai_chochang = 3498 # : Int32
  KEY_Thai_choching = 3497 # : Int32
  KEY_Thai_chochoe = 3500 # : Int32
  KEY_Thai_dochada = 3502 # : Int32
  KEY_Thai_dodek = 3508 # : Int32
  KEY_Thai_fofa = 3517 # : Int32
  KEY_Thai_fofan = 3519 # : Int32
  KEY_Thai_hohip = 3531 # : Int32
  KEY_Thai_honokhuk = 3534 # : Int32
  KEY_Thai_khokhai = 3490 # : Int32
  KEY_Thai_khokhon = 3493 # : Int32
  KEY_Thai_khokhuat = 3491 # : Int32
  KEY_Thai_khokhwai = 3492 # : Int32
  KEY_Thai_khorakhang = 3494 # : Int32
  KEY_Thai_kokai = 3489 # : Int32
  KEY_Thai_lakkhangyao = 3557 # : Int32
  KEY_Thai_lekchet = 3575 # : Int32
  KEY_Thai_lekha = 3573 # : Int32
  KEY_Thai_lekhok = 3574 # : Int32
  KEY_Thai_lekkao = 3577 # : Int32
  KEY_Thai_leknung = 3569 # : Int32
  KEY_Thai_lekpaet = 3576 # : Int32
  KEY_Thai_leksam = 3571 # : Int32
  KEY_Thai_leksi = 3572 # : Int32
  KEY_Thai_leksong = 3570 # : Int32
  KEY_Thai_leksun = 3568 # : Int32
  KEY_Thai_lochula = 3532 # : Int32
  KEY_Thai_loling = 3525 # : Int32
  KEY_Thai_lu = 3526 # : Int32
  KEY_Thai_maichattawa = 3563 # : Int32
  KEY_Thai_maiek = 3560 # : Int32
  KEY_Thai_maihanakat = 3537 # : Int32
  KEY_Thai_maihanakat_maitho = 3550 # : Int32
  KEY_Thai_maitaikhu = 3559 # : Int32
  KEY_Thai_maitho = 3561 # : Int32
  KEY_Thai_maitri = 3562 # : Int32
  KEY_Thai_maiyamok = 3558 # : Int32
  KEY_Thai_moma = 3521 # : Int32
  KEY_Thai_ngongu = 3495 # : Int32
  KEY_Thai_nikhahit = 3565 # : Int32
  KEY_Thai_nonen = 3507 # : Int32
  KEY_Thai_nonu = 3513 # : Int32
  KEY_Thai_oang = 3533 # : Int32
  KEY_Thai_paiyannoi = 3535 # : Int32
  KEY_Thai_phinthu = 3546 # : Int32
  KEY_Thai_phophan = 3518 # : Int32
  KEY_Thai_phophung = 3516 # : Int32
  KEY_Thai_phosamphao = 3520 # : Int32
  KEY_Thai_popla = 3515 # : Int32
  KEY_Thai_rorua = 3523 # : Int32
  KEY_Thai_ru = 3524 # : Int32
  KEY_Thai_saraa = 3536 # : Int32
  KEY_Thai_saraaa = 3538 # : Int32
  KEY_Thai_saraae = 3553 # : Int32
  KEY_Thai_saraaimaimalai = 3556 # : Int32
  KEY_Thai_saraaimaimuan = 3555 # : Int32
  KEY_Thai_saraam = 3539 # : Int32
  KEY_Thai_sarae = 3552 # : Int32
  KEY_Thai_sarai = 3540 # : Int32
  KEY_Thai_saraii = 3541 # : Int32
  KEY_Thai_sarao = 3554 # : Int32
  KEY_Thai_sarau = 3544 # : Int32
  KEY_Thai_saraue = 3542 # : Int32
  KEY_Thai_sarauee = 3543 # : Int32
  KEY_Thai_sarauu = 3545 # : Int32
  KEY_Thai_sorusi = 3529 # : Int32
  KEY_Thai_sosala = 3528 # : Int32
  KEY_Thai_soso = 3499 # : Int32
  KEY_Thai_sosua = 3530 # : Int32
  KEY_Thai_thanthakhat = 3564 # : Int32
  KEY_Thai_thonangmontho = 3505 # : Int32
  KEY_Thai_thophuthao = 3506 # : Int32
  KEY_Thai_thothahan = 3511 # : Int32
  KEY_Thai_thothan = 3504 # : Int32
  KEY_Thai_thothong = 3512 # : Int32
  KEY_Thai_thothung = 3510 # : Int32
  KEY_Thai_topatak = 3503 # : Int32
  KEY_Thai_totao = 3509 # : Int32
  KEY_Thai_wowaen = 3527 # : Int32
  KEY_Thai_yoyak = 3522 # : Int32
  KEY_Thai_yoying = 3501 # : Int32
  KEY_Thorn = 222 # : Int32
  KEY_Time = 269025183 # : Int32
  KEY_ToDoList = 269025055 # : Int32
  KEY_Tools = 269025153 # : Int32
  KEY_TopMenu = 269025186 # : Int32
  KEY_TouchpadOff = 269025201 # : Int32
  KEY_TouchpadOn = 269025200 # : Int32
  KEY_TouchpadToggle = 269025193 # : Int32
  KEY_Touroku = 65323 # : Int32
  KEY_Travel = 269025154 # : Int32
  KEY_Tslash = 940 # : Int32
  KEY_U = 85 # : Int32
  KEY_UWB = 269025174 # : Int32
  KEY_Uacute = 218 # : Int32
  KEY_Ubelowdot = 16785124 # : Int32
  KEY_Ubreve = 733 # : Int32
  KEY_Ucircumflex = 219 # : Int32
  KEY_Udiaeresis = 220 # : Int32
  KEY_Udoubleacute = 475 # : Int32
  KEY_Ugrave = 217 # : Int32
  KEY_Uhook = 16785126 # : Int32
  KEY_Uhorn = 16777647 # : Int32
  KEY_Uhornacute = 16785128 # : Int32
  KEY_Uhornbelowdot = 16785136 # : Int32
  KEY_Uhorngrave = 16785130 # : Int32
  KEY_Uhornhook = 16785132 # : Int32
  KEY_Uhorntilde = 16785134 # : Int32
  KEY_Ukrainian_GHE_WITH_UPTURN = 1725 # : Int32
  KEY_Ukrainian_I = 1718 # : Int32
  KEY_Ukrainian_IE = 1716 # : Int32
  KEY_Ukrainian_YI = 1719 # : Int32
  KEY_Ukrainian_ghe_with_upturn = 1709 # : Int32
  KEY_Ukrainian_i = 1702 # : Int32
  KEY_Ukrainian_ie = 1700 # : Int32
  KEY_Ukrainian_yi = 1703 # : Int32
  KEY_Ukranian_I = 1718 # : Int32
  KEY_Ukranian_JE = 1716 # : Int32
  KEY_Ukranian_YI = 1719 # : Int32
  KEY_Ukranian_i = 1702 # : Int32
  KEY_Ukranian_je = 1700 # : Int32
  KEY_Ukranian_yi = 1703 # : Int32
  KEY_Umacron = 990 # : Int32
  KEY_Undo = 65381 # : Int32
  KEY_Ungrab = 269024800 # : Int32
  KEY_Uogonek = 985 # : Int32
  KEY_Up = 65362 # : Int32
  KEY_Uring = 473 # : Int32
  KEY_User1KB = 269025157 # : Int32
  KEY_User2KB = 269025158 # : Int32
  KEY_UserPB = 269025156 # : Int32
  KEY_Utilde = 989 # : Int32
  KEY_V = 86 # : Int32
  KEY_VendorHome = 269025076 # : Int32
  KEY_Video = 269025159 # : Int32
  KEY_View = 269025185 # : Int32
  KEY_VoidSymbol = 16777215 # : Int32
  KEY_W = 87 # : Int32
  KEY_WLAN = 269025173 # : Int32
  KEY_WWW = 269025070 # : Int32
  KEY_Wacute = 16785026 # : Int32
  KEY_WakeUp = 269025067 # : Int32
  KEY_Wcircumflex = 16777588 # : Int32
  KEY_Wdiaeresis = 16785028 # : Int32
  KEY_WebCam = 269025167 # : Int32
  KEY_Wgrave = 16785024 # : Int32
  KEY_WheelButton = 269025160 # : Int32
  KEY_WindowClear = 269025109 # : Int32
  KEY_WonSign = 16785577 # : Int32
  KEY_Word = 269025161 # : Int32
  KEY_X = 88 # : Int32
  KEY_Xabovedot = 16785034 # : Int32
  KEY_Xfer = 269025162 # : Int32
  KEY_Y = 89 # : Int32
  KEY_Yacute = 221 # : Int32
  KEY_Ybelowdot = 16785140 # : Int32
  KEY_Ycircumflex = 16777590 # : Int32
  KEY_Ydiaeresis = 5054 # : Int32
  KEY_Yellow = 269025189 # : Int32
  KEY_Ygrave = 16785138 # : Int32
  KEY_Yhook = 16785142 # : Int32
  KEY_Ytilde = 16785144 # : Int32
  KEY_Z = 90 # : Int32
  KEY_Zabovedot = 431 # : Int32
  KEY_Zacute = 428 # : Int32
  KEY_Zcaron = 430 # : Int32
  KEY_Zen_Koho = 65341 # : Int32
  KEY_Zenkaku = 65320 # : Int32
  KEY_Zenkaku_Hankaku = 65322 # : Int32
  KEY_ZoomIn = 269025163 # : Int32
  KEY_ZoomOut = 269025164 # : Int32
  KEY_Zstroke = 16777653 # : Int32
  KEY_a = 97 # : Int32
  KEY_aacute = 225 # : Int32
  KEY_abelowdot = 16785057 # : Int32
  KEY_abovedot = 511 # : Int32
  KEY_abreve = 483 # : Int32
  KEY_abreveacute = 16785071 # : Int32
  KEY_abrevebelowdot = 16785079 # : Int32
  KEY_abrevegrave = 16785073 # : Int32
  KEY_abrevehook = 16785075 # : Int32
  KEY_abrevetilde = 16785077 # : Int32
  KEY_acircumflex = 226 # : Int32
  KEY_acircumflexacute = 16785061 # : Int32
  KEY_acircumflexbelowdot = 16785069 # : Int32
  KEY_acircumflexgrave = 16785063 # : Int32
  KEY_acircumflexhook = 16785065 # : Int32
  KEY_acircumflextilde = 16785067 # : Int32
  KEY_acute = 180 # : Int32
  KEY_adiaeresis = 228 # : Int32
  KEY_ae = 230 # : Int32
  KEY_agrave = 224 # : Int32
  KEY_ahook = 16785059 # : Int32
  KEY_amacron = 992 # : Int32
  KEY_ampersand = 38 # : Int32
  KEY_aogonek = 433 # : Int32
  KEY_apostrophe = 39 # : Int32
  KEY_approxeq = 16785992 # : Int32
  KEY_approximate = 2248 # : Int32
  KEY_aring = 229 # : Int32
  KEY_asciicircum = 94 # : Int32
  KEY_asciitilde = 126 # : Int32
  KEY_asterisk = 42 # : Int32
  KEY_at = 64 # : Int32
  KEY_atilde = 227 # : Int32
  KEY_b = 98 # : Int32
  KEY_babovedot = 16784899 # : Int32
  KEY_backslash = 92 # : Int32
  KEY_ballotcross = 2804 # : Int32
  KEY_bar = 124 # : Int32
  KEY_because = 16785973 # : Int32
  KEY_blank = 2527 # : Int32
  KEY_botintegral = 2213 # : Int32
  KEY_botleftparens = 2220 # : Int32
  KEY_botleftsqbracket = 2216 # : Int32
  KEY_botleftsummation = 2226 # : Int32
  KEY_botrightparens = 2222 # : Int32
  KEY_botrightsqbracket = 2218 # : Int32
  KEY_botrightsummation = 2230 # : Int32
  KEY_bott = 2550 # : Int32
  KEY_botvertsummationconnector = 2228 # : Int32
  KEY_braceleft = 123 # : Int32
  KEY_braceright = 125 # : Int32
  KEY_bracketleft = 91 # : Int32
  KEY_bracketright = 93 # : Int32
  KEY_braille_blank = 16787456 # : Int32
  KEY_braille_dot_1 = 65521 # : Int32
  KEY_braille_dot_10 = 65530 # : Int32
  KEY_braille_dot_2 = 65522 # : Int32
  KEY_braille_dot_3 = 65523 # : Int32
  KEY_braille_dot_4 = 65524 # : Int32
  KEY_braille_dot_5 = 65525 # : Int32
  KEY_braille_dot_6 = 65526 # : Int32
  KEY_braille_dot_7 = 65527 # : Int32
  KEY_braille_dot_8 = 65528 # : Int32
  KEY_braille_dot_9 = 65529 # : Int32
  KEY_braille_dots_1 = 16787457 # : Int32
  KEY_braille_dots_12 = 16787459 # : Int32
  KEY_braille_dots_123 = 16787463 # : Int32
  KEY_braille_dots_1234 = 16787471 # : Int32
  KEY_braille_dots_12345 = 16787487 # : Int32
  KEY_braille_dots_123456 = 16787519 # : Int32
  KEY_braille_dots_1234567 = 16787583 # : Int32
  KEY_braille_dots_12345678 = 16787711 # : Int32
  KEY_braille_dots_1234568 = 16787647 # : Int32
  KEY_braille_dots_123457 = 16787551 # : Int32
  KEY_braille_dots_1234578 = 16787679 # : Int32
  KEY_braille_dots_123458 = 16787615 # : Int32
  KEY_braille_dots_12346 = 16787503 # : Int32
  KEY_braille_dots_123467 = 16787567 # : Int32
  KEY_braille_dots_1234678 = 16787695 # : Int32
  KEY_braille_dots_123468 = 16787631 # : Int32
  KEY_braille_dots_12347 = 16787535 # : Int32
  KEY_braille_dots_123478 = 16787663 # : Int32
  KEY_braille_dots_12348 = 16787599 # : Int32
  KEY_braille_dots_1235 = 16787479 # : Int32
  KEY_braille_dots_12356 = 16787511 # : Int32
  KEY_braille_dots_123567 = 16787575 # : Int32
  KEY_braille_dots_1235678 = 16787703 # : Int32
  KEY_braille_dots_123568 = 16787639 # : Int32
  KEY_braille_dots_12357 = 16787543 # : Int32
  KEY_braille_dots_123578 = 16787671 # : Int32
  KEY_braille_dots_12358 = 16787607 # : Int32
  KEY_braille_dots_1236 = 16787495 # : Int32
  KEY_braille_dots_12367 = 16787559 # : Int32
  KEY_braille_dots_123678 = 16787687 # : Int32
  KEY_braille_dots_12368 = 16787623 # : Int32
  KEY_braille_dots_1237 = 16787527 # : Int32
  KEY_braille_dots_12378 = 16787655 # : Int32
  KEY_braille_dots_1238 = 16787591 # : Int32
  KEY_braille_dots_124 = 16787467 # : Int32
  KEY_braille_dots_1245 = 16787483 # : Int32
  KEY_braille_dots_12456 = 16787515 # : Int32
  KEY_braille_dots_124567 = 16787579 # : Int32
  KEY_braille_dots_1245678 = 16787707 # : Int32
  KEY_braille_dots_124568 = 16787643 # : Int32
  KEY_braille_dots_12457 = 16787547 # : Int32
  KEY_braille_dots_124578 = 16787675 # : Int32
  KEY_braille_dots_12458 = 16787611 # : Int32
  KEY_braille_dots_1246 = 16787499 # : Int32
  KEY_braille_dots_12467 = 16787563 # : Int32
  KEY_braille_dots_124678 = 16787691 # : Int32
  KEY_braille_dots_12468 = 16787627 # : Int32
  KEY_braille_dots_1247 = 16787531 # : Int32
  KEY_braille_dots_12478 = 16787659 # : Int32
  KEY_braille_dots_1248 = 16787595 # : Int32
  KEY_braille_dots_125 = 16787475 # : Int32
  KEY_braille_dots_1256 = 16787507 # : Int32
  KEY_braille_dots_12567 = 16787571 # : Int32
  KEY_braille_dots_125678 = 16787699 # : Int32
  KEY_braille_dots_12568 = 16787635 # : Int32
  KEY_braille_dots_1257 = 16787539 # : Int32
  KEY_braille_dots_12578 = 16787667 # : Int32
  KEY_braille_dots_1258 = 16787603 # : Int32
  KEY_braille_dots_126 = 16787491 # : Int32
  KEY_braille_dots_1267 = 16787555 # : Int32
  KEY_braille_dots_12678 = 16787683 # : Int32
  KEY_braille_dots_1268 = 16787619 # : Int32
  KEY_braille_dots_127 = 16787523 # : Int32
  KEY_braille_dots_1278 = 16787651 # : Int32
  KEY_braille_dots_128 = 16787587 # : Int32
  KEY_braille_dots_13 = 16787461 # : Int32
  KEY_braille_dots_134 = 16787469 # : Int32
  KEY_braille_dots_1345 = 16787485 # : Int32
  KEY_braille_dots_13456 = 16787517 # : Int32
  KEY_braille_dots_134567 = 16787581 # : Int32
  KEY_braille_dots_1345678 = 16787709 # : Int32
  KEY_braille_dots_134568 = 16787645 # : Int32
  KEY_braille_dots_13457 = 16787549 # : Int32
  KEY_braille_dots_134578 = 16787677 # : Int32
  KEY_braille_dots_13458 = 16787613 # : Int32
  KEY_braille_dots_1346 = 16787501 # : Int32
  KEY_braille_dots_13467 = 16787565 # : Int32
  KEY_braille_dots_134678 = 16787693 # : Int32
  KEY_braille_dots_13468 = 16787629 # : Int32
  KEY_braille_dots_1347 = 16787533 # : Int32
  KEY_braille_dots_13478 = 16787661 # : Int32
  KEY_braille_dots_1348 = 16787597 # : Int32
  KEY_braille_dots_135 = 16787477 # : Int32
  KEY_braille_dots_1356 = 16787509 # : Int32
  KEY_braille_dots_13567 = 16787573 # : Int32
  KEY_braille_dots_135678 = 16787701 # : Int32
  KEY_braille_dots_13568 = 16787637 # : Int32
  KEY_braille_dots_1357 = 16787541 # : Int32
  KEY_braille_dots_13578 = 16787669 # : Int32
  KEY_braille_dots_1358 = 16787605 # : Int32
  KEY_braille_dots_136 = 16787493 # : Int32
  KEY_braille_dots_1367 = 16787557 # : Int32
  KEY_braille_dots_13678 = 16787685 # : Int32
  KEY_braille_dots_1368 = 16787621 # : Int32
  KEY_braille_dots_137 = 16787525 # : Int32
  KEY_braille_dots_1378 = 16787653 # : Int32
  KEY_braille_dots_138 = 16787589 # : Int32
  KEY_braille_dots_14 = 16787465 # : Int32
  KEY_braille_dots_145 = 16787481 # : Int32
  KEY_braille_dots_1456 = 16787513 # : Int32
  KEY_braille_dots_14567 = 16787577 # : Int32
  KEY_braille_dots_145678 = 16787705 # : Int32
  KEY_braille_dots_14568 = 16787641 # : Int32
  KEY_braille_dots_1457 = 16787545 # : Int32
  KEY_braille_dots_14578 = 16787673 # : Int32
  KEY_braille_dots_1458 = 16787609 # : Int32
  KEY_braille_dots_146 = 16787497 # : Int32
  KEY_braille_dots_1467 = 16787561 # : Int32
  KEY_braille_dots_14678 = 16787689 # : Int32
  KEY_braille_dots_1468 = 16787625 # : Int32
  KEY_braille_dots_147 = 16787529 # : Int32
  KEY_braille_dots_1478 = 16787657 # : Int32
  KEY_braille_dots_148 = 16787593 # : Int32
  KEY_braille_dots_15 = 16787473 # : Int32
  KEY_braille_dots_156 = 16787505 # : Int32
  KEY_braille_dots_1567 = 16787569 # : Int32
  KEY_braille_dots_15678 = 16787697 # : Int32
  KEY_braille_dots_1568 = 16787633 # : Int32
  KEY_braille_dots_157 = 16787537 # : Int32
  KEY_braille_dots_1578 = 16787665 # : Int32
  KEY_braille_dots_158 = 16787601 # : Int32
  KEY_braille_dots_16 = 16787489 # : Int32
  KEY_braille_dots_167 = 16787553 # : Int32
  KEY_braille_dots_1678 = 16787681 # : Int32
  KEY_braille_dots_168 = 16787617 # : Int32
  KEY_braille_dots_17 = 16787521 # : Int32
  KEY_braille_dots_178 = 16787649 # : Int32
  KEY_braille_dots_18 = 16787585 # : Int32
  KEY_braille_dots_2 = 16787458 # : Int32
  KEY_braille_dots_23 = 16787462 # : Int32
  KEY_braille_dots_234 = 16787470 # : Int32
  KEY_braille_dots_2345 = 16787486 # : Int32
  KEY_braille_dots_23456 = 16787518 # : Int32
  KEY_braille_dots_234567 = 16787582 # : Int32
  KEY_braille_dots_2345678 = 16787710 # : Int32
  KEY_braille_dots_234568 = 16787646 # : Int32
  KEY_braille_dots_23457 = 16787550 # : Int32
  KEY_braille_dots_234578 = 16787678 # : Int32
  KEY_braille_dots_23458 = 16787614 # : Int32
  KEY_braille_dots_2346 = 16787502 # : Int32
  KEY_braille_dots_23467 = 16787566 # : Int32
  KEY_braille_dots_234678 = 16787694 # : Int32
  KEY_braille_dots_23468 = 16787630 # : Int32
  KEY_braille_dots_2347 = 16787534 # : Int32
  KEY_braille_dots_23478 = 16787662 # : Int32
  KEY_braille_dots_2348 = 16787598 # : Int32
  KEY_braille_dots_235 = 16787478 # : Int32
  KEY_braille_dots_2356 = 16787510 # : Int32
  KEY_braille_dots_23567 = 16787574 # : Int32
  KEY_braille_dots_235678 = 16787702 # : Int32
  KEY_braille_dots_23568 = 16787638 # : Int32
  KEY_braille_dots_2357 = 16787542 # : Int32
  KEY_braille_dots_23578 = 16787670 # : Int32
  KEY_braille_dots_2358 = 16787606 # : Int32
  KEY_braille_dots_236 = 16787494 # : Int32
  KEY_braille_dots_2367 = 16787558 # : Int32
  KEY_braille_dots_23678 = 16787686 # : Int32
  KEY_braille_dots_2368 = 16787622 # : Int32
  KEY_braille_dots_237 = 16787526 # : Int32
  KEY_braille_dots_2378 = 16787654 # : Int32
  KEY_braille_dots_238 = 16787590 # : Int32
  KEY_braille_dots_24 = 16787466 # : Int32
  KEY_braille_dots_245 = 16787482 # : Int32
  KEY_braille_dots_2456 = 16787514 # : Int32
  KEY_braille_dots_24567 = 16787578 # : Int32
  KEY_braille_dots_245678 = 16787706 # : Int32
  KEY_braille_dots_24568 = 16787642 # : Int32
  KEY_braille_dots_2457 = 16787546 # : Int32
  KEY_braille_dots_24578 = 16787674 # : Int32
  KEY_braille_dots_2458 = 16787610 # : Int32
  KEY_braille_dots_246 = 16787498 # : Int32
  KEY_braille_dots_2467 = 16787562 # : Int32
  KEY_braille_dots_24678 = 16787690 # : Int32
  KEY_braille_dots_2468 = 16787626 # : Int32
  KEY_braille_dots_247 = 16787530 # : Int32
  KEY_braille_dots_2478 = 16787658 # : Int32
  KEY_braille_dots_248 = 16787594 # : Int32
  KEY_braille_dots_25 = 16787474 # : Int32
  KEY_braille_dots_256 = 16787506 # : Int32
  KEY_braille_dots_2567 = 16787570 # : Int32
  KEY_braille_dots_25678 = 16787698 # : Int32
  KEY_braille_dots_2568 = 16787634 # : Int32
  KEY_braille_dots_257 = 16787538 # : Int32
  KEY_braille_dots_2578 = 16787666 # : Int32
  KEY_braille_dots_258 = 16787602 # : Int32
  KEY_braille_dots_26 = 16787490 # : Int32
  KEY_braille_dots_267 = 16787554 # : Int32
  KEY_braille_dots_2678 = 16787682 # : Int32
  KEY_braille_dots_268 = 16787618 # : Int32
  KEY_braille_dots_27 = 16787522 # : Int32
  KEY_braille_dots_278 = 16787650 # : Int32
  KEY_braille_dots_28 = 16787586 # : Int32
  KEY_braille_dots_3 = 16787460 # : Int32
  KEY_braille_dots_34 = 16787468 # : Int32
  KEY_braille_dots_345 = 16787484 # : Int32
  KEY_braille_dots_3456 = 16787516 # : Int32
  KEY_braille_dots_34567 = 16787580 # : Int32
  KEY_braille_dots_345678 = 16787708 # : Int32
  KEY_braille_dots_34568 = 16787644 # : Int32
  KEY_braille_dots_3457 = 16787548 # : Int32
  KEY_braille_dots_34578 = 16787676 # : Int32
  KEY_braille_dots_3458 = 16787612 # : Int32
  KEY_braille_dots_346 = 16787500 # : Int32
  KEY_braille_dots_3467 = 16787564 # : Int32
  KEY_braille_dots_34678 = 16787692 # : Int32
  KEY_braille_dots_3468 = 16787628 # : Int32
  KEY_braille_dots_347 = 16787532 # : Int32
  KEY_braille_dots_3478 = 16787660 # : Int32
  KEY_braille_dots_348 = 16787596 # : Int32
  KEY_braille_dots_35 = 16787476 # : Int32
  KEY_braille_dots_356 = 16787508 # : Int32
  KEY_braille_dots_3567 = 16787572 # : Int32
  KEY_braille_dots_35678 = 16787700 # : Int32
  KEY_braille_dots_3568 = 16787636 # : Int32
  KEY_braille_dots_357 = 16787540 # : Int32
  KEY_braille_dots_3578 = 16787668 # : Int32
  KEY_braille_dots_358 = 16787604 # : Int32
  KEY_braille_dots_36 = 16787492 # : Int32
  KEY_braille_dots_367 = 16787556 # : Int32
  KEY_braille_dots_3678 = 16787684 # : Int32
  KEY_braille_dots_368 = 16787620 # : Int32
  KEY_braille_dots_37 = 16787524 # : Int32
  KEY_braille_dots_378 = 16787652 # : Int32
  KEY_braille_dots_38 = 16787588 # : Int32
  KEY_braille_dots_4 = 16787464 # : Int32
  KEY_braille_dots_45 = 16787480 # : Int32
  KEY_braille_dots_456 = 16787512 # : Int32
  KEY_braille_dots_4567 = 16787576 # : Int32
  KEY_braille_dots_45678 = 16787704 # : Int32
  KEY_braille_dots_4568 = 16787640 # : Int32
  KEY_braille_dots_457 = 16787544 # : Int32
  KEY_braille_dots_4578 = 16787672 # : Int32
  KEY_braille_dots_458 = 16787608 # : Int32
  KEY_braille_dots_46 = 16787496 # : Int32
  KEY_braille_dots_467 = 16787560 # : Int32
  KEY_braille_dots_4678 = 16787688 # : Int32
  KEY_braille_dots_468 = 16787624 # : Int32
  KEY_braille_dots_47 = 16787528 # : Int32
  KEY_braille_dots_478 = 16787656 # : Int32
  KEY_braille_dots_48 = 16787592 # : Int32
  KEY_braille_dots_5 = 16787472 # : Int32
  KEY_braille_dots_56 = 16787504 # : Int32
  KEY_braille_dots_567 = 16787568 # : Int32
  KEY_braille_dots_5678 = 16787696 # : Int32
  KEY_braille_dots_568 = 16787632 # : Int32
  KEY_braille_dots_57 = 16787536 # : Int32
  KEY_braille_dots_578 = 16787664 # : Int32
  KEY_braille_dots_58 = 16787600 # : Int32
  KEY_braille_dots_6 = 16787488 # : Int32
  KEY_braille_dots_67 = 16787552 # : Int32
  KEY_braille_dots_678 = 16787680 # : Int32
  KEY_braille_dots_68 = 16787616 # : Int32
  KEY_braille_dots_7 = 16787520 # : Int32
  KEY_braille_dots_78 = 16787648 # : Int32
  KEY_braille_dots_8 = 16787584 # : Int32
  KEY_breve = 418 # : Int32
  KEY_brokenbar = 166 # : Int32
  KEY_c = 99 # : Int32
  KEY_c_h = 65187 # : Int32
  KEY_cabovedot = 741 # : Int32
  KEY_cacute = 486 # : Int32
  KEY_careof = 2744 # : Int32
  KEY_caret = 2812 # : Int32
  KEY_caron = 439 # : Int32
  KEY_ccaron = 488 # : Int32
  KEY_ccedilla = 231 # : Int32
  KEY_ccircumflex = 742 # : Int32
  KEY_cedilla = 184 # : Int32
  KEY_cent = 162 # : Int32
  KEY_ch = 65184 # : Int32
  KEY_checkerboard = 2529 # : Int32
  KEY_checkmark = 2803 # : Int32
  KEY_circle = 3023 # : Int32
  KEY_club = 2796 # : Int32
  KEY_colon = 58 # : Int32
  KEY_comma = 44 # : Int32
  KEY_containsas = 16785931 # : Int32
  KEY_copyright = 169 # : Int32
  KEY_cr = 2532 # : Int32
  KEY_crossinglines = 2542 # : Int32
  KEY_cuberoot = 16785947 # : Int32
  KEY_currency = 164 # : Int32
  KEY_cursor = 2815 # : Int32
  KEY_d = 100 # : Int32
  KEY_dabovedot = 16784907 # : Int32
  KEY_dagger = 2801 # : Int32
  KEY_dcaron = 495 # : Int32
  KEY_dead_A = 65153 # : Int32
  KEY_dead_E = 65155 # : Int32
  KEY_dead_I = 65157 # : Int32
  KEY_dead_O = 65159 # : Int32
  KEY_dead_U = 65161 # : Int32
  KEY_dead_a = 65152 # : Int32
  KEY_dead_abovecomma = 65124 # : Int32
  KEY_dead_abovedot = 65110 # : Int32
  KEY_dead_abovereversedcomma = 65125 # : Int32
  KEY_dead_abovering = 65112 # : Int32
  KEY_dead_acute = 65105 # : Int32
  KEY_dead_belowbreve = 65131 # : Int32
  KEY_dead_belowcircumflex = 65129 # : Int32
  KEY_dead_belowcomma = 65134 # : Int32
  KEY_dead_belowdiaeresis = 65132 # : Int32
  KEY_dead_belowdot = 65120 # : Int32
  KEY_dead_belowmacron = 65128 # : Int32
  KEY_dead_belowring = 65127 # : Int32
  KEY_dead_belowtilde = 65130 # : Int32
  KEY_dead_breve = 65109 # : Int32
  KEY_dead_capital_schwa = 65163 # : Int32
  KEY_dead_caron = 65114 # : Int32
  KEY_dead_cedilla = 65115 # : Int32
  KEY_dead_circumflex = 65106 # : Int32
  KEY_dead_currency = 65135 # : Int32
  KEY_dead_dasia = 65125 # : Int32
  KEY_dead_diaeresis = 65111 # : Int32
  KEY_dead_doubleacute = 65113 # : Int32
  KEY_dead_doublegrave = 65126 # : Int32
  KEY_dead_e = 65154 # : Int32
  KEY_dead_grave = 65104 # : Int32
  KEY_dead_greek = 65164 # : Int32
  KEY_dead_hook = 65121 # : Int32
  KEY_dead_horn = 65122 # : Int32
  KEY_dead_i = 65156 # : Int32
  KEY_dead_invertedbreve = 65133 # : Int32
  KEY_dead_iota = 65117 # : Int32
  KEY_dead_macron = 65108 # : Int32
  KEY_dead_o = 65158 # : Int32
  KEY_dead_ogonek = 65116 # : Int32
  KEY_dead_perispomeni = 65107 # : Int32
  KEY_dead_psili = 65124 # : Int32
  KEY_dead_semivoiced_sound = 65119 # : Int32
  KEY_dead_small_schwa = 65162 # : Int32
  KEY_dead_stroke = 65123 # : Int32
  KEY_dead_tilde = 65107 # : Int32
  KEY_dead_u = 65160 # : Int32
  KEY_dead_voiced_sound = 65118 # : Int32
  KEY_decimalpoint = 2749 # : Int32
  KEY_degree = 176 # : Int32
  KEY_diaeresis = 168 # : Int32
  KEY_diamond = 2797 # : Int32
  KEY_digitspace = 2725 # : Int32
  KEY_dintegral = 16785964 # : Int32
  KEY_division = 247 # : Int32
  KEY_dollar = 36 # : Int32
  KEY_doubbaselinedot = 2735 # : Int32
  KEY_doubleacute = 445 # : Int32
  KEY_doubledagger = 2802 # : Int32
  KEY_doublelowquotemark = 2814 # : Int32
  KEY_downarrow = 2302 # : Int32
  KEY_downcaret = 2984 # : Int32
  KEY_downshoe = 3030 # : Int32
  KEY_downstile = 3012 # : Int32
  KEY_downtack = 3010 # : Int32
  KEY_dstroke = 496 # : Int32
  KEY_e = 101 # : Int32
  KEY_eabovedot = 1004 # : Int32
  KEY_eacute = 233 # : Int32
  KEY_ebelowdot = 16785081 # : Int32
  KEY_ecaron = 492 # : Int32
  KEY_ecircumflex = 234 # : Int32
  KEY_ecircumflexacute = 16785087 # : Int32
  KEY_ecircumflexbelowdot = 16785095 # : Int32
  KEY_ecircumflexgrave = 16785089 # : Int32
  KEY_ecircumflexhook = 16785091 # : Int32
  KEY_ecircumflextilde = 16785093 # : Int32
  KEY_ediaeresis = 235 # : Int32
  KEY_egrave = 232 # : Int32
  KEY_ehook = 16785083 # : Int32
  KEY_eightsubscript = 16785544 # : Int32
  KEY_eightsuperior = 16785528 # : Int32
  KEY_elementof = 16785928 # : Int32
  KEY_ellipsis = 2734 # : Int32
  KEY_em3space = 2723 # : Int32
  KEY_em4space = 2724 # : Int32
  KEY_emacron = 954 # : Int32
  KEY_emdash = 2729 # : Int32
  KEY_emfilledcircle = 2782 # : Int32
  KEY_emfilledrect = 2783 # : Int32
  KEY_emopencircle = 2766 # : Int32
  KEY_emopenrectangle = 2767 # : Int32
  KEY_emptyset = 16785925 # : Int32
  KEY_emspace = 2721 # : Int32
  KEY_endash = 2730 # : Int32
  KEY_enfilledcircbullet = 2790 # : Int32
  KEY_enfilledsqbullet = 2791 # : Int32
  KEY_eng = 959 # : Int32
  KEY_enopencircbullet = 2784 # : Int32
  KEY_enopensquarebullet = 2785 # : Int32
  KEY_enspace = 2722 # : Int32
  KEY_eogonek = 490 # : Int32
  KEY_equal = 61 # : Int32
  KEY_eth = 240 # : Int32
  KEY_etilde = 16785085 # : Int32
  KEY_exclam = 33 # : Int32
  KEY_exclamdown = 161 # : Int32
  KEY_ezh = 16777874 # : Int32
  KEY_f = 102 # : Int32
  KEY_fabovedot = 16784927 # : Int32
  KEY_femalesymbol = 2808 # : Int32
  KEY_ff = 2531 # : Int32
  KEY_figdash = 2747 # : Int32
  KEY_filledlefttribullet = 2780 # : Int32
  KEY_filledrectbullet = 2779 # : Int32
  KEY_filledrighttribullet = 2781 # : Int32
  KEY_filledtribulletdown = 2793 # : Int32
  KEY_filledtribulletup = 2792 # : Int32
  KEY_fiveeighths = 2757 # : Int32
  KEY_fivesixths = 2743 # : Int32
  KEY_fivesubscript = 16785541 # : Int32
  KEY_fivesuperior = 16785525 # : Int32
  KEY_fourfifths = 2741 # : Int32
  KEY_foursubscript = 16785540 # : Int32
  KEY_foursuperior = 16785524 # : Int32
  KEY_fourthroot = 16785948 # : Int32
  KEY_function = 2294 # : Int32
  KEY_g = 103 # : Int32
  KEY_gabovedot = 757 # : Int32
  KEY_gbreve = 699 # : Int32
  KEY_gcaron = 16777703 # : Int32
  KEY_gcedilla = 955 # : Int32
  KEY_gcircumflex = 760 # : Int32
  KEY_grave = 96 # : Int32
  KEY_greater = 62 # : Int32
  KEY_greaterthanequal = 2238 # : Int32
  KEY_guillemotleft = 171 # : Int32
  KEY_guillemotright = 187 # : Int32
  KEY_h = 104 # : Int32
  KEY_hairspace = 2728 # : Int32
  KEY_hcircumflex = 694 # : Int32
  KEY_heart = 2798 # : Int32
  KEY_hebrew_aleph = 3296 # : Int32
  KEY_hebrew_ayin = 3314 # : Int32
  KEY_hebrew_bet = 3297 # : Int32
  KEY_hebrew_beth = 3297 # : Int32
  KEY_hebrew_chet = 3303 # : Int32
  KEY_hebrew_dalet = 3299 # : Int32
  KEY_hebrew_daleth = 3299 # : Int32
  KEY_hebrew_doublelowline = 3295 # : Int32
  KEY_hebrew_finalkaph = 3306 # : Int32
  KEY_hebrew_finalmem = 3309 # : Int32
  KEY_hebrew_finalnun = 3311 # : Int32
  KEY_hebrew_finalpe = 3315 # : Int32
  KEY_hebrew_finalzade = 3317 # : Int32
  KEY_hebrew_finalzadi = 3317 # : Int32
  KEY_hebrew_gimel = 3298 # : Int32
  KEY_hebrew_gimmel = 3298 # : Int32
  KEY_hebrew_he = 3300 # : Int32
  KEY_hebrew_het = 3303 # : Int32
  KEY_hebrew_kaph = 3307 # : Int32
  KEY_hebrew_kuf = 3319 # : Int32
  KEY_hebrew_lamed = 3308 # : Int32
  KEY_hebrew_mem = 3310 # : Int32
  KEY_hebrew_nun = 3312 # : Int32
  KEY_hebrew_pe = 3316 # : Int32
  KEY_hebrew_qoph = 3319 # : Int32
  KEY_hebrew_resh = 3320 # : Int32
  KEY_hebrew_samech = 3313 # : Int32
  KEY_hebrew_samekh = 3313 # : Int32
  KEY_hebrew_shin = 3321 # : Int32
  KEY_hebrew_taf = 3322 # : Int32
  KEY_hebrew_taw = 3322 # : Int32
  KEY_hebrew_tet = 3304 # : Int32
  KEY_hebrew_teth = 3304 # : Int32
  KEY_hebrew_waw = 3301 # : Int32
  KEY_hebrew_yod = 3305 # : Int32
  KEY_hebrew_zade = 3318 # : Int32
  KEY_hebrew_zadi = 3318 # : Int32
  KEY_hebrew_zain = 3302 # : Int32
  KEY_hebrew_zayin = 3302 # : Int32
  KEY_hexagram = 2778 # : Int32
  KEY_horizconnector = 2211 # : Int32
  KEY_horizlinescan1 = 2543 # : Int32
  KEY_horizlinescan3 = 2544 # : Int32
  KEY_horizlinescan5 = 2545 # : Int32
  KEY_horizlinescan7 = 2546 # : Int32
  KEY_horizlinescan9 = 2547 # : Int32
  KEY_hstroke = 689 # : Int32
  KEY_ht = 2530 # : Int32
  KEY_hyphen = 173 # : Int32
  KEY_i = 105 # : Int32
  KEY_iTouch = 269025120 # : Int32
  KEY_iacute = 237 # : Int32
  KEY_ibelowdot = 16785099 # : Int32
  KEY_ibreve = 16777517 # : Int32
  KEY_icircumflex = 238 # : Int32
  KEY_identical = 2255 # : Int32
  KEY_idiaeresis = 239 # : Int32
  KEY_idotless = 697 # : Int32
  KEY_ifonlyif = 2253 # : Int32
  KEY_igrave = 236 # : Int32
  KEY_ihook = 16785097 # : Int32
  KEY_imacron = 1007 # : Int32
  KEY_implies = 2254 # : Int32
  KEY_includedin = 2266 # : Int32
  KEY_includes = 2267 # : Int32
  KEY_infinity = 2242 # : Int32
  KEY_integral = 2239 # : Int32
  KEY_intersection = 2268 # : Int32
  KEY_iogonek = 999 # : Int32
  KEY_itilde = 949 # : Int32
  KEY_j = 106 # : Int32
  KEY_jcircumflex = 700 # : Int32
  KEY_jot = 3018 # : Int32
  KEY_k = 107 # : Int32
  KEY_kana_A = 1201 # : Int32
  KEY_kana_CHI = 1217 # : Int32
  KEY_kana_E = 1204 # : Int32
  KEY_kana_FU = 1228 # : Int32
  KEY_kana_HA = 1226 # : Int32
  KEY_kana_HE = 1229 # : Int32
  KEY_kana_HI = 1227 # : Int32
  KEY_kana_HO = 1230 # : Int32
  KEY_kana_HU = 1228 # : Int32
  KEY_kana_I = 1202 # : Int32
  KEY_kana_KA = 1206 # : Int32
  KEY_kana_KE = 1209 # : Int32
  KEY_kana_KI = 1207 # : Int32
  KEY_kana_KO = 1210 # : Int32
  KEY_kana_KU = 1208 # : Int32
  KEY_kana_MA = 1231 # : Int32
  KEY_kana_ME = 1234 # : Int32
  KEY_kana_MI = 1232 # : Int32
  KEY_kana_MO = 1235 # : Int32
  KEY_kana_MU = 1233 # : Int32
  KEY_kana_N = 1245 # : Int32
  KEY_kana_NA = 1221 # : Int32
  KEY_kana_NE = 1224 # : Int32
  KEY_kana_NI = 1222 # : Int32
  KEY_kana_NO = 1225 # : Int32
  KEY_kana_NU = 1223 # : Int32
  KEY_kana_O = 1205 # : Int32
  KEY_kana_RA = 1239 # : Int32
  KEY_kana_RE = 1242 # : Int32
  KEY_kana_RI = 1240 # : Int32
  KEY_kana_RO = 1243 # : Int32
  KEY_kana_RU = 1241 # : Int32
  KEY_kana_SA = 1211 # : Int32
  KEY_kana_SE = 1214 # : Int32
  KEY_kana_SHI = 1212 # : Int32
  KEY_kana_SO = 1215 # : Int32
  KEY_kana_SU = 1213 # : Int32
  KEY_kana_TA = 1216 # : Int32
  KEY_kana_TE = 1219 # : Int32
  KEY_kana_TI = 1217 # : Int32
  KEY_kana_TO = 1220 # : Int32
  KEY_kana_TSU = 1218 # : Int32
  KEY_kana_TU = 1218 # : Int32
  KEY_kana_U = 1203 # : Int32
  KEY_kana_WA = 1244 # : Int32
  KEY_kana_WO = 1190 # : Int32
  KEY_kana_YA = 1236 # : Int32
  KEY_kana_YO = 1238 # : Int32
  KEY_kana_YU = 1237 # : Int32
  KEY_kana_a = 1191 # : Int32
  KEY_kana_closingbracket = 1187 # : Int32
  KEY_kana_comma = 1188 # : Int32
  KEY_kana_conjunctive = 1189 # : Int32
  KEY_kana_e = 1194 # : Int32
  KEY_kana_fullstop = 1185 # : Int32
  KEY_kana_i = 1192 # : Int32
  KEY_kana_middledot = 1189 # : Int32
  KEY_kana_o = 1195 # : Int32
  KEY_kana_openingbracket = 1186 # : Int32
  KEY_kana_switch = 65406 # : Int32
  KEY_kana_tsu = 1199 # : Int32
  KEY_kana_tu = 1199 # : Int32
  KEY_kana_u = 1193 # : Int32
  KEY_kana_ya = 1196 # : Int32
  KEY_kana_yo = 1198 # : Int32
  KEY_kana_yu = 1197 # : Int32
  KEY_kappa = 930 # : Int32
  KEY_kcedilla = 1011 # : Int32
  KEY_kra = 930 # : Int32
  KEY_l = 108 # : Int32
  KEY_lacute = 485 # : Int32
  KEY_latincross = 2777 # : Int32
  KEY_lbelowdot = 16784951 # : Int32
  KEY_lcaron = 437 # : Int32
  KEY_lcedilla = 950 # : Int32
  KEY_leftanglebracket = 2748 # : Int32
  KEY_leftarrow = 2299 # : Int32
  KEY_leftcaret = 2979 # : Int32
  KEY_leftdoublequotemark = 2770 # : Int32
  KEY_leftmiddlecurlybrace = 2223 # : Int32
  KEY_leftopentriangle = 2764 # : Int32
  KEY_leftpointer = 2794 # : Int32
  KEY_leftradical = 2209 # : Int32
  KEY_leftshoe = 3034 # : Int32
  KEY_leftsinglequotemark = 2768 # : Int32
  KEY_leftt = 2548 # : Int32
  KEY_lefttack = 3036 # : Int32
  KEY_less = 60 # : Int32
  KEY_lessthanequal = 2236 # : Int32
  KEY_lf = 2533 # : Int32
  KEY_logicaland = 2270 # : Int32
  KEY_logicalor = 2271 # : Int32
  KEY_lowleftcorner = 2541 # : Int32
  KEY_lowrightcorner = 2538 # : Int32
  KEY_lstroke = 435 # : Int32
  KEY_m = 109 # : Int32
  KEY_mabovedot = 16784961 # : Int32
  KEY_macron = 175 # : Int32
  KEY_malesymbol = 2807 # : Int32
  KEY_maltesecross = 2800 # : Int32
  KEY_marker = 2751 # : Int32
  KEY_masculine = 186 # : Int32
  KEY_minus = 45 # : Int32
  KEY_minutes = 2774 # : Int32
  KEY_mu = 181 # : Int32
  KEY_multiply = 215 # : Int32
  KEY_musicalflat = 2806 # : Int32
  KEY_musicalsharp = 2805 # : Int32
  KEY_n = 110 # : Int32
  KEY_nabla = 2245 # : Int32
  KEY_nacute = 497 # : Int32
  KEY_ncaron = 498 # : Int32
  KEY_ncedilla = 1009 # : Int32
  KEY_ninesubscript = 16785545 # : Int32
  KEY_ninesuperior = 16785529 # : Int32
  KEY_nl = 2536 # : Int32
  KEY_nobreakspace = 160 # : Int32
  KEY_notapproxeq = 16785991 # : Int32
  KEY_notelementof = 16785929 # : Int32
  KEY_notequal = 2237 # : Int32
  KEY_notidentical = 16786018 # : Int32
  KEY_notsign = 172 # : Int32
  KEY_ntilde = 241 # : Int32
  KEY_numbersign = 35 # : Int32
  KEY_numerosign = 1712 # : Int32
  KEY_o = 111 # : Int32
  KEY_oacute = 243 # : Int32
  KEY_obarred = 16777845 # : Int32
  KEY_obelowdot = 16785101 # : Int32
  KEY_ocaron = 16777682 # : Int32
  KEY_ocircumflex = 244 # : Int32
  KEY_ocircumflexacute = 16785105 # : Int32
  KEY_ocircumflexbelowdot = 16785113 # : Int32
  KEY_ocircumflexgrave = 16785107 # : Int32
  KEY_ocircumflexhook = 16785109 # : Int32
  KEY_ocircumflextilde = 16785111 # : Int32
  KEY_odiaeresis = 246 # : Int32
  KEY_odoubleacute = 501 # : Int32
  KEY_oe = 5053 # : Int32
  KEY_ogonek = 434 # : Int32
  KEY_ograve = 242 # : Int32
  KEY_ohook = 16785103 # : Int32
  KEY_ohorn = 16777633 # : Int32
  KEY_ohornacute = 16785115 # : Int32
  KEY_ohornbelowdot = 16785123 # : Int32
  KEY_ohorngrave = 16785117 # : Int32
  KEY_ohornhook = 16785119 # : Int32
  KEY_ohorntilde = 16785121 # : Int32
  KEY_omacron = 1010 # : Int32
  KEY_oneeighth = 2755 # : Int32
  KEY_onefifth = 2738 # : Int32
  KEY_onehalf = 189 # : Int32
  KEY_onequarter = 188 # : Int32
  KEY_onesixth = 2742 # : Int32
  KEY_onesubscript = 16785537 # : Int32
  KEY_onesuperior = 185 # : Int32
  KEY_onethird = 2736 # : Int32
  KEY_ooblique = 248 # : Int32
  KEY_openrectbullet = 2786 # : Int32
  KEY_openstar = 2789 # : Int32
  KEY_opentribulletdown = 2788 # : Int32
  KEY_opentribulletup = 2787 # : Int32
  KEY_ordfeminine = 170 # : Int32
  KEY_oslash = 248 # : Int32
  KEY_otilde = 245 # : Int32
  KEY_overbar = 3008 # : Int32
  KEY_overline = 1150 # : Int32
  KEY_p = 112 # : Int32
  KEY_pabovedot = 16784983 # : Int32
  KEY_paragraph = 182 # : Int32
  KEY_parenleft = 40 # : Int32
  KEY_parenright = 41 # : Int32
  KEY_partdifferential = 16785922 # : Int32
  KEY_partialderivative = 2287 # : Int32
  KEY_percent = 37 # : Int32
  KEY_period = 46 # : Int32
  KEY_periodcentered = 183 # : Int32
  KEY_permille = 2773 # : Int32
  KEY_phonographcopyright = 2811 # : Int32
  KEY_plus = 43 # : Int32
  KEY_plusminus = 177 # : Int32
  KEY_prescription = 2772 # : Int32
  KEY_prolongedsound = 1200 # : Int32
  KEY_punctspace = 2726 # : Int32
  KEY_q = 113 # : Int32
  KEY_quad = 3020 # : Int32
  KEY_question = 63 # : Int32
  KEY_questiondown = 191 # : Int32
  KEY_quotedbl = 34 # : Int32
  KEY_quoteleft = 96 # : Int32
  KEY_quoteright = 39 # : Int32
  KEY_r = 114 # : Int32
  KEY_racute = 480 # : Int32
  KEY_radical = 2262 # : Int32
  KEY_rcaron = 504 # : Int32
  KEY_rcedilla = 947 # : Int32
  KEY_registered = 174 # : Int32
  KEY_rightanglebracket = 2750 # : Int32
  KEY_rightarrow = 2301 # : Int32
  KEY_rightcaret = 2982 # : Int32
  KEY_rightdoublequotemark = 2771 # : Int32
  KEY_rightmiddlecurlybrace = 2224 # : Int32
  KEY_rightmiddlesummation = 2231 # : Int32
  KEY_rightopentriangle = 2765 # : Int32
  KEY_rightpointer = 2795 # : Int32
  KEY_rightshoe = 3032 # : Int32
  KEY_rightsinglequotemark = 2769 # : Int32
  KEY_rightt = 2549 # : Int32
  KEY_righttack = 3068 # : Int32
  KEY_s = 115 # : Int32
  KEY_sabovedot = 16784993 # : Int32
  KEY_sacute = 438 # : Int32
  KEY_scaron = 441 # : Int32
  KEY_scedilla = 442 # : Int32
  KEY_schwa = 16777817 # : Int32
  KEY_scircumflex = 766 # : Int32
  KEY_script_switch = 65406 # : Int32
  KEY_seconds = 2775 # : Int32
  KEY_section = 167 # : Int32
  KEY_semicolon = 59 # : Int32
  KEY_semivoicedsound = 1247 # : Int32
  KEY_seveneighths = 2758 # : Int32
  KEY_sevensubscript = 16785543 # : Int32
  KEY_sevensuperior = 16785527 # : Int32
  KEY_signaturemark = 2762 # : Int32
  KEY_signifblank = 2732 # : Int32
  KEY_similarequal = 2249 # : Int32
  KEY_singlelowquotemark = 2813 # : Int32
  KEY_sixsubscript = 16785542 # : Int32
  KEY_sixsuperior = 16785526 # : Int32
  KEY_slash = 47 # : Int32
  KEY_soliddiamond = 2528 # : Int32
  KEY_space = 32 # : Int32
  KEY_squareroot = 16785946 # : Int32
  KEY_ssharp = 223 # : Int32
  KEY_sterling = 163 # : Int32
  KEY_stricteq = 16786019 # : Int32
  KEY_t = 116 # : Int32
  KEY_tabovedot = 16785003 # : Int32
  KEY_tcaron = 443 # : Int32
  KEY_tcedilla = 510 # : Int32
  KEY_telephone = 2809 # : Int32
  KEY_telephonerecorder = 2810 # : Int32
  KEY_therefore = 2240 # : Int32
  KEY_thinspace = 2727 # : Int32
  KEY_thorn = 254 # : Int32
  KEY_threeeighths = 2756 # : Int32
  KEY_threefifths = 2740 # : Int32
  KEY_threequarters = 190 # : Int32
  KEY_threesubscript = 16785539 # : Int32
  KEY_threesuperior = 179 # : Int32
  KEY_tintegral = 16785965 # : Int32
  KEY_topintegral = 2212 # : Int32
  KEY_topleftparens = 2219 # : Int32
  KEY_topleftradical = 2210 # : Int32
  KEY_topleftsqbracket = 2215 # : Int32
  KEY_topleftsummation = 2225 # : Int32
  KEY_toprightparens = 2221 # : Int32
  KEY_toprightsqbracket = 2217 # : Int32
  KEY_toprightsummation = 2229 # : Int32
  KEY_topt = 2551 # : Int32
  KEY_topvertsummationconnector = 2227 # : Int32
  KEY_trademark = 2761 # : Int32
  KEY_trademarkincircle = 2763 # : Int32
  KEY_tslash = 956 # : Int32
  KEY_twofifths = 2739 # : Int32
  KEY_twosubscript = 16785538 # : Int32
  KEY_twosuperior = 178 # : Int32
  KEY_twothirds = 2737 # : Int32
  KEY_u = 117 # : Int32
  KEY_uacute = 250 # : Int32
  KEY_ubelowdot = 16785125 # : Int32
  KEY_ubreve = 765 # : Int32
  KEY_ucircumflex = 251 # : Int32
  KEY_udiaeresis = 252 # : Int32
  KEY_udoubleacute = 507 # : Int32
  KEY_ugrave = 249 # : Int32
  KEY_uhook = 16785127 # : Int32
  KEY_uhorn = 16777648 # : Int32
  KEY_uhornacute = 16785129 # : Int32
  KEY_uhornbelowdot = 16785137 # : Int32
  KEY_uhorngrave = 16785131 # : Int32
  KEY_uhornhook = 16785133 # : Int32
  KEY_uhorntilde = 16785135 # : Int32
  KEY_umacron = 1022 # : Int32
  KEY_underbar = 3014 # : Int32
  KEY_underscore = 95 # : Int32
  KEY_union = 2269 # : Int32
  KEY_uogonek = 1017 # : Int32
  KEY_uparrow = 2300 # : Int32
  KEY_upcaret = 2985 # : Int32
  KEY_upleftcorner = 2540 # : Int32
  KEY_uprightcorner = 2539 # : Int32
  KEY_upshoe = 3011 # : Int32
  KEY_upstile = 3027 # : Int32
  KEY_uptack = 3022 # : Int32
  KEY_uring = 505 # : Int32
  KEY_utilde = 1021 # : Int32
  KEY_v = 118 # : Int32
  KEY_variation = 2241 # : Int32
  KEY_vertbar = 2552 # : Int32
  KEY_vertconnector = 2214 # : Int32
  KEY_voicedsound = 1246 # : Int32
  KEY_vt = 2537 # : Int32
  KEY_w = 119 # : Int32
  KEY_wacute = 16785027 # : Int32
  KEY_wcircumflex = 16777589 # : Int32
  KEY_wdiaeresis = 16785029 # : Int32
  KEY_wgrave = 16785025 # : Int32
  KEY_x = 120 # : Int32
  KEY_xabovedot = 16785035 # : Int32
  KEY_y = 121 # : Int32
  KEY_yacute = 253 # : Int32
  KEY_ybelowdot = 16785141 # : Int32
  KEY_ycircumflex = 16777591 # : Int32
  KEY_ydiaeresis = 255 # : Int32
  KEY_yen = 165 # : Int32
  KEY_ygrave = 16785139 # : Int32
  KEY_yhook = 16785143 # : Int32
  KEY_ytilde = 16785145 # : Int32
  KEY_z = 122 # : Int32
  KEY_zabovedot = 447 # : Int32
  KEY_zacute = 444 # : Int32
  KEY_zcaron = 446 # : Int32
  KEY_zerosubscript = 16785536 # : Int32
  KEY_zerosuperior = 16785520 # : Int32
  KEY_zstroke = 16777654 # : Int32
  MAX_TIMECOORD_AXES = 128 # : Int32
  PARENT_RELATIVE = 1 # : Int32
  PRIORITY_REDRAW = 20 # : Int32

  ###########################################
  ##    Interfaces
  ###########################################

  struct DevicePad # interface
    _data : UInt8[0]
  # Requires Device
  end
  fun device_pad_get_feature_group = gdk_device_pad_get_feature_group(this : DevicePad*, feature : LibGdk::DevicePadFeature, feature_idx : Int32) : Int32
  fun device_pad_get_group_n_modes = gdk_device_pad_get_group_n_modes(this : DevicePad*, group_idx : Int32) : Int32
  fun device_pad_get_n_features = gdk_device_pad_get_n_features(this : DevicePad*, feature : LibGdk::DevicePadFeature) : Int32
  fun device_pad_get_n_groups = gdk_device_pad_get_n_groups(this : DevicePad*) : Int32


  ###########################################
  ##    Unions
  ###########################################

  union Event
    type : LibGdk::EventType
    any : LibGdk::EventAny
    expose : LibGdk::EventExpose
    visibility : LibGdk::EventVisibility
    motion : LibGdk::EventMotion
    button : LibGdk::EventButton
    touch : LibGdk::EventTouch
    scroll : LibGdk::EventScroll
    key : LibGdk::EventKey
    crossing : LibGdk::EventCrossing
    focus_change : LibGdk::EventFocus
    configure : LibGdk::EventConfigure
    property : LibGdk::EventProperty
    selection : LibGdk::EventSelection
    owner_change : LibGdk::EventOwnerChange
    proximity : LibGdk::EventProximity
    dnd : LibGdk::EventDND
    window_state : LibGdk::EventWindowState
    setting : LibGdk::EventSetting
    grab_broken : LibGdk::EventGrabBroken
    touchpad_swipe : LibGdk::EventTouchpadSwipe
    touchpad_pinch : LibGdk::EventTouchpadPinch
    pad_button : LibGdk::EventPadButton
    pad_axis : LibGdk::EventPadAxis
    pad_group_mode : LibGdk::EventPadGroupMode
  end
  fun event_new = gdk_event_new(type : LibGdk::EventType) : LibGdk::Event*
  fun event_get_angle = gdk_events_get_angle(this : Event*, event2 : LibGdk::Event*, angle : Float64*) : Bool
  fun event_get_center = gdk_events_get_center(this : Event*, event2 : LibGdk::Event*, x : Float64*, y : Float64*) : Bool
  fun event_get_distance = gdk_events_get_distance(this : Event*, event2 : LibGdk::Event*, distance : Float64*) : Bool
  fun event_copy = gdk_event_copy(this : Event*) : LibGdk::Event*
  fun event_free = gdk_event_free(this : Event*) : Void
  fun event_get_axis = gdk_event_get_axis(this : Event*, axis_use : LibGdk::AxisUse, value : Float64*) : Bool
  fun event_get_button = gdk_event_get_button(this : Event*, button : UInt32*) : Bool
  fun event_get_click_count = gdk_event_get_click_count(this : Event*, click_count : UInt32*) : Bool
  fun event_get_coords = gdk_event_get_coords(this : Event*, x_win : Float64*, y_win : Float64*) : Bool
  fun event_get_device = gdk_event_get_device(this : Event*) : LibGdk::Device*
  fun event_get_device_tool = gdk_event_get_device_tool(this : Event*) : LibGdk::DeviceTool*
  fun event_get_event_sequence = gdk_event_get_event_sequence(this : Event*) : LibGdk::EventSequence*
  fun event_get_event_type = gdk_event_get_event_type(this : Event*) : LibGdk::EventType
  fun event_get_keycode = gdk_event_get_keycode(this : Event*, keycode : UInt16*) : Bool
  fun event_get_keyval = gdk_event_get_keyval(this : Event*, keyval : UInt32*) : Bool
  fun event_get_pointer_emulated = gdk_event_get_pointer_emulated(this : Event*) : Bool
  fun event_get_root_coords = gdk_event_get_root_coords(this : Event*, x_root : Float64*, y_root : Float64*) : Bool
  fun event_get_scancode = gdk_event_get_scancode(this : Event*) : Int32
  fun event_get_screen = gdk_event_get_screen(this : Event*) : LibGdk::Screen*
  fun event_get_scroll_deltas = gdk_event_get_scroll_deltas(this : Event*, delta_x : Float64*, delta_y : Float64*) : Bool
  fun event_get_scroll_direction = gdk_event_get_scroll_direction(this : Event*, direction : LibGdk::ScrollDirection*) : Bool
  fun event_get_seat = gdk_event_get_seat(this : Event*) : LibGdk::Seat*
  fun event_get_source_device = gdk_event_get_source_device(this : Event*) : LibGdk::Device*
  fun event_get_state = gdk_event_get_state(this : Event*, state : LibGdk::ModifierType*) : Bool
  fun event_get_time = gdk_event_get_time(this : Event*) : UInt32
  fun event_get_window = gdk_event_get_window(this : Event*) : LibGdk::Window*
  fun event_is_scroll_stop_event = gdk_event_is_scroll_stop_event(this : Event*) : Bool
  fun event_put = gdk_event_put(this : Event*) : Void
  fun event_set_device = gdk_event_set_device(this : Event*, device : LibGdk::Device*) : Void
  fun event_set_device_tool = gdk_event_set_device_tool(this : Event*, tool : LibGdk::DeviceTool*) : Void
  fun event_set_screen = gdk_event_set_screen(this : Event*, screen : LibGdk::Screen*) : Void
  fun event_set_source_device = gdk_event_set_source_device(this : Event*, device : LibGdk::Device*) : Void
  fun event_triggers_context_menu = gdk_event_triggers_context_menu(this : Event*) : Bool
  fun event_get = gdk_event_get() : LibGdk::Event*
  fun event_handler_set = gdk_event_handler_set(func : LibGdk::EventFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun event_peek = gdk_event_peek() : LibGdk::Event*
  fun event_request_motions = gdk_event_request_motions(event : LibGdk::EventMotion*) : Void


  ###########################################
  ##    Functions
  ###########################################

  fun add_option_entries_libgtk_only = gdk_add_option_entries_libgtk_only(group : LibGLib::OptionGroup*) : Void
  fun atom_intern = gdk_atom_intern(atom_name : UInt8*, only_if_exists : Bool) : LibGdk::Atom*
  fun atom_intern_static_string = gdk_atom_intern_static_string(atom_name : UInt8*) : LibGdk::Atom*
  fun beep = gdk_beep() : Void
  fun cairo_create = gdk_cairo_create(window : LibGdk::Window*) : LibCairo::Context*
  fun cairo_draw_from_gl = gdk_cairo_draw_from_gl(cr : LibCairo::Context*, window : LibGdk::Window*, source : Int32, source_type : Int32, buffer_scale : Int32, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun cairo_get_clip_rectangle = gdk_cairo_get_clip_rectangle(cr : LibCairo::Context*, rect : LibGdk::Rectangle*) : Bool
  fun cairo_get_drawing_context = gdk_cairo_get_drawing_context(cr : LibCairo::Context*) : LibGdk::DrawingContext*
  fun cairo_rectangle = gdk_cairo_rectangle(cr : LibCairo::Context*, rectangle : LibGdk::Rectangle*) : Void
  fun cairo_region = gdk_cairo_region(cr : LibCairo::Context*, region : LibCairo::Region*) : Void
  fun cairo_region_create_from_surface = gdk_cairo_region_create_from_surface(surface : LibCairo::Surface*) : LibCairo::Region*
  fun cairo_set_source_color = gdk_cairo_set_source_color(cr : LibCairo::Context*, color : LibGdk::Color*) : Void
  fun cairo_set_source_pixbuf = gdk_cairo_set_source_pixbuf(cr : LibCairo::Context*, pixbuf : LibGdkPixbuf::Pixbuf*, pixbuf_x : Float64, pixbuf_y : Float64) : Void
  fun cairo_set_source_rgba = gdk_cairo_set_source_rgba(cr : LibCairo::Context*, rgba : LibGdk::RGBA*) : Void
  fun cairo_set_source_window = gdk_cairo_set_source_window(cr : LibCairo::Context*, window : LibGdk::Window*, x : Float64, y : Float64) : Void
  fun cairo_surface_create_from_pixbuf = gdk_cairo_surface_create_from_pixbuf(pixbuf : LibGdkPixbuf::Pixbuf*, scale : Int32, for_window : LibGdk::Window*) : LibCairo::Surface*
  fun color_parse = gdk_color_parse(spec : UInt8*, color : LibGdk::Color*) : Bool
  fun disable_multidevice = gdk_disable_multidevice() : Void
  fun drag_abort = gdk_drag_abort(context : LibGdk::DragContext*, time : UInt32) : Void
  fun drag_begin = gdk_drag_begin(window : LibGdk::Window*, targets : Void**) : LibGdk::DragContext*
  fun drag_begin_for_device = gdk_drag_begin_for_device(window : LibGdk::Window*, device : LibGdk::Device*, targets : Void**) : LibGdk::DragContext*
  fun drag_begin_from_point = gdk_drag_begin_from_point(window : LibGdk::Window*, device : LibGdk::Device*, targets : Void**, x_root : Int32, y_root : Int32) : LibGdk::DragContext*
  fun drag_drop = gdk_drag_drop(context : LibGdk::DragContext*, time : UInt32) : Void
  fun drag_drop_done = gdk_drag_drop_done(context : LibGdk::DragContext*, success : Bool) : Void
  fun drag_drop_succeeded = gdk_drag_drop_succeeded(context : LibGdk::DragContext*) : Bool
  fun drag_find_window_for_screen = gdk_drag_find_window_for_screen(context : LibGdk::DragContext*, drag_window : LibGdk::Window*, screen : LibGdk::Screen*, x_root : Int32, y_root : Int32, dest_window : LibGdk::Window**, protocol : LibGdk::DragProtocol*) : Void
  fun drag_get_selection = gdk_drag_get_selection(context : LibGdk::DragContext*) : LibGdk::Atom*
  fun drag_motion = gdk_drag_motion(context : LibGdk::DragContext*, dest_window : LibGdk::Window*, protocol : LibGdk::DragProtocol, x_root : Int32, y_root : Int32, suggested_action : LibGdk::DragAction, possible_actions : LibGdk::DragAction, time : UInt32) : Bool
  fun drag_status = gdk_drag_status(context : LibGdk::DragContext*, action : LibGdk::DragAction, time : UInt32) : Void
  fun drop_finish = gdk_drop_finish(context : LibGdk::DragContext*, success : Bool, time : UInt32) : Void
  fun drop_reply = gdk_drop_reply(context : LibGdk::DragContext*, accepted : Bool, time : UInt32) : Void
  fun error_trap_pop = gdk_error_trap_pop() : Int32
  fun error_trap_pop_ignored = gdk_error_trap_pop_ignored() : Void
  fun error_trap_push = gdk_error_trap_push() : Void
  fun event_get = gdk_event_get() : LibGdk::Event*
  fun event_handler_set = gdk_event_handler_set(func : LibGdk::EventFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun event_peek = gdk_event_peek() : LibGdk::Event*
  fun event_request_motions = gdk_event_request_motions(event : LibGdk::EventMotion*) : Void
  fun events_get_angle = gdk_events_get_angle(event1 : LibGdk::Event*, event2 : LibGdk::Event*, angle : Float64*) : Bool
  fun events_get_center = gdk_events_get_center(event1 : LibGdk::Event*, event2 : LibGdk::Event*, x : Float64*, y : Float64*) : Bool
  fun events_get_distance = gdk_events_get_distance(event1 : LibGdk::Event*, event2 : LibGdk::Event*, distance : Float64*) : Bool
  fun events_pending = gdk_events_pending() : Bool
  fun flush = gdk_flush() : Void
  fun get_default_root_window = gdk_get_default_root_window() : LibGdk::Window*
  fun get_display = gdk_get_display() : UInt8*
  fun get_display_arg_name = gdk_get_display_arg_name() : UInt8*
  fun get_program_class = gdk_get_program_class() : UInt8*
  fun get_show_events = gdk_get_show_events() : Bool
  fun gl_error_quark = gdk_gl_error_quark() : UInt32
  fun init = gdk_init(argc : Int32*, argv : UInt8***) : Void
  fun init_check = gdk_init_check(argc : Int32*, argv : UInt8***) : Bool
  fun keyboard_grab = gdk_keyboard_grab(window : LibGdk::Window*, owner_events : Bool, time : UInt32) : LibGdk::GrabStatus
  fun keyboard_ungrab = gdk_keyboard_ungrab(time : UInt32) : Void
  fun keyval_convert_case = gdk_keyval_convert_case(symbol : UInt32, lower : UInt32*, upper : UInt32*) : Void
  fun keyval_from_name = gdk_keyval_from_name(keyval_name : UInt8*) : UInt32
  fun keyval_is_lower = gdk_keyval_is_lower(keyval : UInt32) : Bool
  fun keyval_is_upper = gdk_keyval_is_upper(keyval : UInt32) : Bool
  fun keyval_name = gdk_keyval_name(keyval : UInt32) : UInt8*
  fun keyval_to_lower = gdk_keyval_to_lower(keyval : UInt32) : UInt32
  fun keyval_to_unicode = gdk_keyval_to_unicode(keyval : UInt32) : UInt32
  fun keyval_to_upper = gdk_keyval_to_upper(keyval : UInt32) : UInt32
  fun list_visuals = gdk_list_visuals() : Void**
  fun notify_startup_complete = gdk_notify_startup_complete() : Void
  fun notify_startup_complete_with_id = gdk_notify_startup_complete_with_id(startup_id : UInt8*) : Void
  fun offscreen_window_get_embedder = gdk_offscreen_window_get_embedder(window : LibGdk::Window*) : LibGdk::Window*
  fun offscreen_window_get_surface = gdk_offscreen_window_get_surface(window : LibGdk::Window*) : LibCairo::Surface*
  fun offscreen_window_set_embedder = gdk_offscreen_window_set_embedder(window : LibGdk::Window*, embedder : LibGdk::Window*) : Void
  fun pango_context_get = gdk_pango_context_get() : LibPango::Context*
  fun pango_context_get_for_display = gdk_pango_context_get_for_display(display : LibGdk::Display*) : LibPango::Context*
  fun pango_context_get_for_screen = gdk_pango_context_get_for_screen(screen : LibGdk::Screen*) : LibPango::Context*
  fun parse_args = gdk_parse_args(argc : Int32*, argv : UInt8***) : Void
  fun pixbuf_get_from_surface = gdk_pixbuf_get_from_surface(surface : LibCairo::Surface*, src_x : Int32, src_y : Int32, width : Int32, height : Int32) : LibGdkPixbuf::Pixbuf*
  fun pixbuf_get_from_window = gdk_pixbuf_get_from_window(window : LibGdk::Window*, src_x : Int32, src_y : Int32, width : Int32, height : Int32) : LibGdkPixbuf::Pixbuf*
  fun pointer_grab = gdk_pointer_grab(window : LibGdk::Window*, owner_events : Bool, event_mask : LibGdk::EventMask, confine_to : LibGdk::Window*, cursor : LibGdk::Cursor*, time : UInt32) : LibGdk::GrabStatus
  fun pointer_is_grabbed = gdk_pointer_is_grabbed() : Bool
  fun pointer_ungrab = gdk_pointer_ungrab(time : UInt32) : Void
  fun pre_parse_libgtk_only = gdk_pre_parse_libgtk_only() : Void
  fun property_delete = gdk_property_delete(window : LibGdk::Window*, property : LibGdk::Atom*) : Void
  fun property_get = gdk_property_get(window : LibGdk::Window*, property : LibGdk::Atom*, type : LibGdk::Atom*, offset : UInt64, length : UInt64, pdelete : Int32, actual_property_type : LibGdk::Atom**, actual_format : Int32*, actual_length : Int32*, data : UInt8**) : Bool
  fun query_depths = gdk_query_depths(depths : Int32**, count : Int32*) : Void
  fun query_visual_types = gdk_query_visual_types(visual_types : LibGdk::VisualType**, count : Int32*) : Void
  fun selection_convert = gdk_selection_convert(requestor : LibGdk::Window*, selection : LibGdk::Atom*, target : LibGdk::Atom*, time : UInt32) : Void
  fun selection_owner_get = gdk_selection_owner_get(selection : LibGdk::Atom*) : LibGdk::Window*
  fun selection_owner_get_for_display = gdk_selection_owner_get_for_display(display : LibGdk::Display*, selection : LibGdk::Atom*) : LibGdk::Window*
  fun selection_owner_set = gdk_selection_owner_set(owner : LibGdk::Window*, selection : LibGdk::Atom*, time : UInt32, send_event : Bool) : Bool
  fun selection_owner_set_for_display = gdk_selection_owner_set_for_display(display : LibGdk::Display*, owner : LibGdk::Window*, selection : LibGdk::Atom*, time : UInt32, send_event : Bool) : Bool
  fun selection_send_notify = gdk_selection_send_notify(requestor : LibGdk::Window*, selection : LibGdk::Atom*, target : LibGdk::Atom*, property : LibGdk::Atom*, time : UInt32) : Void
  fun selection_send_notify_for_display = gdk_selection_send_notify_for_display(display : LibGdk::Display*, requestor : LibGdk::Window*, selection : LibGdk::Atom*, target : LibGdk::Atom*, property : LibGdk::Atom*, time : UInt32) : Void
  fun set_allowed_backends = gdk_set_allowed_backends(backends : UInt8*) : Void
  fun set_double_click_time = gdk_set_double_click_time(msec : UInt32) : Void
  fun set_program_class = gdk_set_program_class(program_class : UInt8*) : Void
  fun set_show_events = gdk_set_show_events(show_events : Bool) : Void
  fun setting_get = gdk_setting_get(name : UInt8*, value : LibGObject::Value*) : Bool
  fun synthesize_window_state = gdk_synthesize_window_state(window : LibGdk::Window*, unset_flags : LibGdk::WindowState, set_flags : LibGdk::WindowState) : Void
  fun test_render_sync = gdk_test_render_sync(window : LibGdk::Window*) : Void
  fun test_simulate_button = gdk_test_simulate_button(window : LibGdk::Window*, x : Int32, y : Int32, button : UInt32, modifiers : LibGdk::ModifierType, button_pressrelease : LibGdk::EventType) : Bool
  fun test_simulate_key = gdk_test_simulate_key(window : LibGdk::Window*, x : Int32, y : Int32, keyval : UInt32, modifiers : LibGdk::ModifierType, key_pressrelease : LibGdk::EventType) : Bool
  fun text_property_to_utf8_list_for_display = gdk_text_property_to_utf8_list_for_display(display : LibGdk::Display*, encoding : LibGdk::Atom*, format : Int32, text : UInt8*, length : Int32, list : UInt8***) : Int32
  fun threads_add_idle = gdk_threads_add_idle_full(priority : Int32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun threads_add_timeout = gdk_threads_add_timeout_full(priority : Int32, interval : UInt32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun threads_add_timeout_seconds = gdk_threads_add_timeout_seconds_full(priority : Int32, interval : UInt32, function : LibGLib::SourceFunc, data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun threads_enter = gdk_threads_enter() : Void
  fun threads_init = gdk_threads_init() : Void
  fun threads_leave = gdk_threads_leave() : Void
  fun unicode_to_keyval = gdk_unicode_to_keyval(wc : UInt32) : UInt32
  fun utf8_to_string_target = gdk_utf8_to_string_target(str : UInt8*) : UInt8*

  ###########################################
  ##    Callbacks
  ###########################################

 alias EventFunc = LibGdk::Event*, Void* -> Void
 alias FilterFunc = Void*, LibGdk::Event*, Void* -> LibGdk::FilterReturn
 alias SeatGrabPrepareFunc = LibGdk::Seat*, LibGdk::Window*, Void* -> Void
 alias WindowChildFunc = LibGdk::Window*, Void* -> Bool
 alias WindowInvalidateHandlerFunc = LibGdk::Window*, LibCairo::Region* -> Void
end

