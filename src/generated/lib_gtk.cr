require "./lib_pango"
require "./lib_g_object"
require "./lib_xlib"
require "./lib_cairo"
require "./lib_gdk"
require "./lib_gio"
require "./lib_atk"
require "./lib_gdk_pixbuf"
require "./lib_g_module"
require "./lib_g_lib"

@[Link("gtk-3")]
@[Link("gdk-3")]
lib LibGtk

  ###########################################
  ##    Objects
  ###########################################

  struct AboutDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::AboutDialogPrivate*
    # Signal activate-link
    # Virtual function activate_link
    # Property artists : UInt8**
    # Property authors : UInt8**
    # Property comments : UInt8*
    # Property copyright : UInt8*
    # Property documenters : UInt8**
    # Property license : UInt8*
    # Property license_type : LibGtk::License
    # Property logo : LibGdkPixbuf::Pixbuf*
    # Property logo_icon_name : UInt8*
    # Property program_name : UInt8*
    # Property translator_credits : UInt8*
    # Property version : UInt8*
    # Property website : UInt8*
    # Property website_label : UInt8*
    # Property wrap_license : Bool
  end
  fun about_dialog_new = gtk_about_dialog_new() : LibGtk::Widget*
  fun about_dialog_add_credit_section = gtk_about_dialog_add_credit_section(this : AboutDialog*, section_name : UInt8*, people : UInt8**) : Void
  fun about_dialog_get_artists = gtk_about_dialog_get_artists(this : AboutDialog*) : UInt8**
  fun about_dialog_get_authors = gtk_about_dialog_get_authors(this : AboutDialog*) : UInt8**
  fun about_dialog_get_comments = gtk_about_dialog_get_comments(this : AboutDialog*) : UInt8*
  fun about_dialog_get_copyright = gtk_about_dialog_get_copyright(this : AboutDialog*) : UInt8*
  fun about_dialog_get_documenters = gtk_about_dialog_get_documenters(this : AboutDialog*) : UInt8**
  fun about_dialog_get_license = gtk_about_dialog_get_license(this : AboutDialog*) : UInt8*
  fun about_dialog_get_license_type = gtk_about_dialog_get_license_type(this : AboutDialog*) : LibGtk::License
  fun about_dialog_get_logo = gtk_about_dialog_get_logo(this : AboutDialog*) : LibGdkPixbuf::Pixbuf*
  fun about_dialog_get_logo_icon_name = gtk_about_dialog_get_logo_icon_name(this : AboutDialog*) : UInt8*
  fun about_dialog_get_program_name = gtk_about_dialog_get_program_name(this : AboutDialog*) : UInt8*
  fun about_dialog_get_translator_credits = gtk_about_dialog_get_translator_credits(this : AboutDialog*) : UInt8*
  fun about_dialog_get_version = gtk_about_dialog_get_version(this : AboutDialog*) : UInt8*
  fun about_dialog_get_website = gtk_about_dialog_get_website(this : AboutDialog*) : UInt8*
  fun about_dialog_get_website_label = gtk_about_dialog_get_website_label(this : AboutDialog*) : UInt8*
  fun about_dialog_get_wrap_license = gtk_about_dialog_get_wrap_license(this : AboutDialog*) : Bool
  fun about_dialog_set_artists = gtk_about_dialog_set_artists(this : AboutDialog*, artists : UInt8**) : Void
  fun about_dialog_set_authors = gtk_about_dialog_set_authors(this : AboutDialog*, authors : UInt8**) : Void
  fun about_dialog_set_comments = gtk_about_dialog_set_comments(this : AboutDialog*, comments : UInt8*) : Void
  fun about_dialog_set_copyright = gtk_about_dialog_set_copyright(this : AboutDialog*, copyright : UInt8*) : Void
  fun about_dialog_set_documenters = gtk_about_dialog_set_documenters(this : AboutDialog*, documenters : UInt8**) : Void
  fun about_dialog_set_license = gtk_about_dialog_set_license(this : AboutDialog*, license : UInt8*) : Void
  fun about_dialog_set_license_type = gtk_about_dialog_set_license_type(this : AboutDialog*, license_type : LibGtk::License) : Void
  fun about_dialog_set_logo = gtk_about_dialog_set_logo(this : AboutDialog*, logo : LibGdkPixbuf::Pixbuf*) : Void
  fun about_dialog_set_logo_icon_name = gtk_about_dialog_set_logo_icon_name(this : AboutDialog*, icon_name : UInt8*) : Void
  fun about_dialog_set_program_name = gtk_about_dialog_set_program_name(this : AboutDialog*, name : UInt8*) : Void
  fun about_dialog_set_translator_credits = gtk_about_dialog_set_translator_credits(this : AboutDialog*, translator_credits : UInt8*) : Void
  fun about_dialog_set_version = gtk_about_dialog_set_version(this : AboutDialog*, version : UInt8*) : Void
  fun about_dialog_set_website = gtk_about_dialog_set_website(this : AboutDialog*, website : UInt8*) : Void
  fun about_dialog_set_website_label = gtk_about_dialog_set_website_label(this : AboutDialog*, website_label : UInt8*) : Void
  fun about_dialog_set_wrap_license = gtk_about_dialog_set_wrap_license(this : AboutDialog*, wrap_license : Bool) : Void

  struct AccelGroup # object
    parent : LibGObject::Object*
    priv : LibGtk::AccelGroupPrivate*
    # Signal accel-activate
    # Signal accel-changed
    # Virtual function accel_changed
    # Property is_locked : Bool
    # Property modifier_mask : LibGdk::ModifierType
  end
  fun accel_group_new = gtk_accel_group_new() : LibGtk::AccelGroup*
  fun accel_group_from_accel_closure = gtk_accel_group_from_accel_closure(closure : LibGObject::Closure*) : LibGtk::AccelGroup*
  fun accel_group_activate = gtk_accel_group_activate(this : AccelGroup*, accel_quark : UInt32, acceleratable : LibGObject::Object*, accel_key : UInt32, accel_mods : LibGdk::ModifierType) : Bool
  fun accel_group_connect = gtk_accel_group_connect(this : AccelGroup*, accel_key : UInt32, accel_mods : LibGdk::ModifierType, accel_flags : LibGtk::AccelFlags, closure : LibGObject::Closure*) : Void
  fun accel_group_connect_by_path = gtk_accel_group_connect_by_path(this : AccelGroup*, accel_path : UInt8*, closure : LibGObject::Closure*) : Void
  fun accel_group_disconnect = gtk_accel_group_disconnect(this : AccelGroup*, closure : LibGObject::Closure*) : Bool
  fun accel_group_disconnect_key = gtk_accel_group_disconnect_key(this : AccelGroup*, accel_key : UInt32, accel_mods : LibGdk::ModifierType) : Bool
  fun accel_group_find = gtk_accel_group_find(this : AccelGroup*, find_func : LibGtk::AccelGroupFindFunc, data : Void*) : LibGtk::AccelKey*
  fun accel_group_get_is_locked = gtk_accel_group_get_is_locked(this : AccelGroup*) : Bool
  fun accel_group_get_modifier_mask = gtk_accel_group_get_modifier_mask(this : AccelGroup*) : LibGdk::ModifierType
  fun accel_group_lock = gtk_accel_group_lock(this : AccelGroup*) : Void
  fun accel_group_query = gtk_accel_group_query(this : AccelGroup*, accel_key : UInt32, accel_mods : LibGdk::ModifierType, n_entries : UInt32*) : LibGtk::AccelGroupEntry*
  fun accel_group_unlock = gtk_accel_group_unlock(this : AccelGroup*) : Void

  struct AccelLabel # object
    label : LibGtk::Label*
    priv : LibGtk::AccelLabelPrivate*
    # Property accel_closure : LibGObject::Closure
    # Property accel_widget : LibGtk::Widget*
  end
  fun accel_label_new = gtk_accel_label_new(string : UInt8*) : LibGtk::Widget*
  fun accel_label_get_accel = gtk_accel_label_get_accel(this : AccelLabel*, accelerator_key : UInt32*, accelerator_mods : LibGdk::ModifierType*) : Void
  fun accel_label_get_accel_widget = gtk_accel_label_get_accel_widget(this : AccelLabel*) : LibGtk::Widget*
  fun accel_label_get_accel_width = gtk_accel_label_get_accel_width(this : AccelLabel*) : UInt32
  fun accel_label_refetch = gtk_accel_label_refetch(this : AccelLabel*) : Bool
  fun accel_label_set_accel = gtk_accel_label_set_accel(this : AccelLabel*, accelerator_key : UInt32, accelerator_mods : LibGdk::ModifierType) : Void
  fun accel_label_set_accel_closure = gtk_accel_label_set_accel_closure(this : AccelLabel*, accel_closure : LibGObject::Closure*) : Void
  fun accel_label_set_accel_widget = gtk_accel_label_set_accel_widget(this : AccelLabel*, accel_widget : LibGtk::Widget*) : Void

  struct AccelMap # object
    _data : UInt8[0]
    # Signal changed
  end
  fun accel_map_add_entry = gtk_accel_map_add_entry(accel_path : UInt8*, accel_key : UInt32, accel_mods : LibGdk::ModifierType) : Void
  fun accel_map_add_filter = gtk_accel_map_add_filter(filter_pattern : UInt8*) : Void
  fun accel_map_change_entry = gtk_accel_map_change_entry(accel_path : UInt8*, accel_key : UInt32, accel_mods : LibGdk::ModifierType, replace : Bool) : Bool
  fun accel_map_foreach = gtk_accel_map_foreach(data : Void*, foreach_func : LibGtk::AccelMapForeach) : Void
  fun accel_map_foreach_unfiltered = gtk_accel_map_foreach_unfiltered(data : Void*, foreach_func : LibGtk::AccelMapForeach) : Void
  fun accel_map_get = gtk_accel_map_get() : LibGtk::AccelMap*
  fun accel_map_load = gtk_accel_map_load(file_name : UInt8*) : Void
  fun accel_map_load_fd = gtk_accel_map_load_fd(fd : Int32) : Void
  fun accel_map_load_scanner = gtk_accel_map_load_scanner(scanner : LibGLib::Scanner*) : Void
  fun accel_map_lock_path = gtk_accel_map_lock_path(accel_path : UInt8*) : Void
  fun accel_map_lookup_entry = gtk_accel_map_lookup_entry(accel_path : UInt8*, key : LibGtk::AccelKey*) : Bool
  fun accel_map_save = gtk_accel_map_save(file_name : UInt8*) : Void
  fun accel_map_save_fd = gtk_accel_map_save_fd(fd : Int32) : Void
  fun accel_map_unlock_path = gtk_accel_map_unlock_path(accel_path : UInt8*) : Void

  struct Accessible # object
    parent : LibAtk::Object*
    priv : LibGtk::AccessiblePrivate*
    # Virtual function connect_widget_destroyed
    # Virtual function widget_set
    # Virtual function widget_unset
    # Property widget : LibGtk::Widget*
  end
  fun accessible_connect_widget_destroyed = gtk_accessible_connect_widget_destroyed(this : Accessible*) : Void
  fun accessible_get_widget = gtk_accessible_get_widget(this : Accessible*) : LibGtk::Widget*
  fun accessible_set_widget = gtk_accessible_set_widget(this : Accessible*, widget : LibGtk::Widget*) : Void

  struct Action # object
    object : LibGObject::Object*
    private_data : LibGtk::ActionPrivate*
    # Signal activate
    # Virtual function activate
    # Virtual function connect_proxy
    # Virtual function create_menu
    # Virtual function create_menu_item
    # Virtual function create_tool_item
    # Virtual function disconnect_proxy
    # Property action_group : LibGtk::ActionGroup*
    # Property always_show_image : Bool
    # Property gicon : LibGio::Icon
    # Property hide_if_empty : Bool
    # Property icon_name : UInt8*
    # Property is_important : Bool
    # Property label : UInt8*
    # Property name : UInt8*
    # Property sensitive : Bool
    # Property short_label : UInt8*
    # Property stock_id : UInt8*
    # Property tooltip : UInt8*
    # Property visible : Bool
    # Property visible_horizontal : Bool
    # Property visible_overflown : Bool
    # Property visible_vertical : Bool
  end
  fun action_new = gtk_action_new(name : UInt8*, label : UInt8*, tooltip : UInt8*, stock_id : UInt8*) : LibGtk::Action*
  fun action_activate = gtk_action_activate(this : Action*) : Void
  fun action_block_activate = gtk_action_block_activate(this : Action*) : Void
  fun action_connect_accelerator = gtk_action_connect_accelerator(this : Action*) : Void
  fun action_create_icon = gtk_action_create_icon(this : Action*, icon_size : Int32) : LibGtk::Widget*
  fun action_create_menu = gtk_action_create_menu(this : Action*) : LibGtk::Widget*
  fun action_create_menu_item = gtk_action_create_menu_item(this : Action*) : LibGtk::Widget*
  fun action_create_tool_item = gtk_action_create_tool_item(this : Action*) : LibGtk::Widget*
  fun action_disconnect_accelerator = gtk_action_disconnect_accelerator(this : Action*) : Void
  fun action_get_accel_closure = gtk_action_get_accel_closure(this : Action*) : LibGObject::Closure*
  fun action_get_accel_path = gtk_action_get_accel_path(this : Action*) : UInt8*
  fun action_get_always_show_image = gtk_action_get_always_show_image(this : Action*) : Bool
  fun action_get_gicon = gtk_action_get_gicon(this : Action*) : LibGio::Icon*
  fun action_get_icon_name = gtk_action_get_icon_name(this : Action*) : UInt8*
  fun action_get_is_important = gtk_action_get_is_important(this : Action*) : Bool
  fun action_get_label = gtk_action_get_label(this : Action*) : UInt8*
  fun action_get_name = gtk_action_get_name(this : Action*) : UInt8*
  fun action_get_proxies = gtk_action_get_proxies(this : Action*) : Void**
  fun action_get_sensitive = gtk_action_get_sensitive(this : Action*) : Bool
  fun action_get_short_label = gtk_action_get_short_label(this : Action*) : UInt8*
  fun action_get_stock_id = gtk_action_get_stock_id(this : Action*) : UInt8*
  fun action_get_tooltip = gtk_action_get_tooltip(this : Action*) : UInt8*
  fun action_get_visible = gtk_action_get_visible(this : Action*) : Bool
  fun action_get_visible_horizontal = gtk_action_get_visible_horizontal(this : Action*) : Bool
  fun action_get_visible_vertical = gtk_action_get_visible_vertical(this : Action*) : Bool
  fun action_is_sensitive = gtk_action_is_sensitive(this : Action*) : Bool
  fun action_is_visible = gtk_action_is_visible(this : Action*) : Bool
  fun action_set_accel_group = gtk_action_set_accel_group(this : Action*, accel_group : LibGtk::AccelGroup*) : Void
  fun action_set_accel_path = gtk_action_set_accel_path(this : Action*, accel_path : UInt8*) : Void
  fun action_set_always_show_image = gtk_action_set_always_show_image(this : Action*, always_show : Bool) : Void
  fun action_set_gicon = gtk_action_set_gicon(this : Action*, icon : LibGio::Icon*) : Void
  fun action_set_icon_name = gtk_action_set_icon_name(this : Action*, icon_name : UInt8*) : Void
  fun action_set_is_important = gtk_action_set_is_important(this : Action*, is_important : Bool) : Void
  fun action_set_label = gtk_action_set_label(this : Action*, label : UInt8*) : Void
  fun action_set_sensitive = gtk_action_set_sensitive(this : Action*, sensitive : Bool) : Void
  fun action_set_short_label = gtk_action_set_short_label(this : Action*, short_label : UInt8*) : Void
  fun action_set_stock_id = gtk_action_set_stock_id(this : Action*, stock_id : UInt8*) : Void
  fun action_set_tooltip = gtk_action_set_tooltip(this : Action*, tooltip : UInt8*) : Void
  fun action_set_visible = gtk_action_set_visible(this : Action*, visible : Bool) : Void
  fun action_set_visible_horizontal = gtk_action_set_visible_horizontal(this : Action*, visible_horizontal : Bool) : Void
  fun action_set_visible_vertical = gtk_action_set_visible_vertical(this : Action*, visible_vertical : Bool) : Void
  fun action_unblock_activate = gtk_action_unblock_activate(this : Action*) : Void

  struct ActionBar # object
    bin : LibGtk::Bin*
  end
  fun action_bar_new = gtk_action_bar_new() : LibGtk::Widget*
  fun action_bar_get_center_widget = gtk_action_bar_get_center_widget(this : ActionBar*) : LibGtk::Widget*
  fun action_bar_pack_end = gtk_action_bar_pack_end(this : ActionBar*, child : LibGtk::Widget*) : Void
  fun action_bar_pack_start = gtk_action_bar_pack_start(this : ActionBar*, child : LibGtk::Widget*) : Void
  fun action_bar_set_center_widget = gtk_action_bar_set_center_widget(this : ActionBar*, center_widget : LibGtk::Widget*) : Void

  struct ActionGroup # object
    parent : LibGObject::Object*
    priv : LibGtk::ActionGroupPrivate*
    # Signal connect-proxy
    # Signal disconnect-proxy
    # Signal post-activate
    # Signal pre-activate
    # Virtual function get_action
    # Property accel_group : LibGtk::AccelGroup*
    # Property name : UInt8*
    # Property sensitive : Bool
    # Property visible : Bool
  end
  fun action_group_new = gtk_action_group_new(name : UInt8*) : LibGtk::ActionGroup*
  fun action_group_add_action = gtk_action_group_add_action(this : ActionGroup*, action : LibGtk::Action*) : Void
  fun action_group_add_action_with_accel = gtk_action_group_add_action_with_accel(this : ActionGroup*, action : LibGtk::Action*, accelerator : UInt8*) : Void
  fun action_group_get_accel_group = gtk_action_group_get_accel_group(this : ActionGroup*) : LibGtk::AccelGroup*
  fun action_group_get_action = gtk_action_group_get_action(this : ActionGroup*, action_name : UInt8*) : LibGtk::Action*
  fun action_group_get_name = gtk_action_group_get_name(this : ActionGroup*) : UInt8*
  fun action_group_get_sensitive = gtk_action_group_get_sensitive(this : ActionGroup*) : Bool
  fun action_group_get_visible = gtk_action_group_get_visible(this : ActionGroup*) : Bool
  fun action_group_list_actions = gtk_action_group_list_actions(this : ActionGroup*) : Void**
  fun action_group_remove_action = gtk_action_group_remove_action(this : ActionGroup*, action : LibGtk::Action*) : Void
  fun action_group_set_accel_group = gtk_action_group_set_accel_group(this : ActionGroup*, accel_group : LibGtk::AccelGroup*) : Void
  fun action_group_set_sensitive = gtk_action_group_set_sensitive(this : ActionGroup*, sensitive : Bool) : Void
  fun action_group_set_translate_func = gtk_action_group_set_translate_func(this : ActionGroup*, func : LibGtk::TranslateFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun action_group_set_translation_domain = gtk_action_group_set_translation_domain(this : ActionGroup*, domain : UInt8*) : Void
  fun action_group_set_visible = gtk_action_group_set_visible(this : ActionGroup*, visible : Bool) : Void
  fun action_group_translate_string = gtk_action_group_translate_string(this : ActionGroup*, string : UInt8*) : UInt8*

  struct Adjustment # object
    parent_instance : LibGObject::InitiallyUnowned*
    priv : LibGtk::AdjustmentPrivate*
    # Signal changed
    # Signal value-changed
    # Virtual function changed
    # Virtual function value_changed
    # Property lower : Float64
    # Property page_increment : Float64
    # Property page_size : Float64
    # Property step_increment : Float64
    # Property upper : Float64
    # Property value : Float64
  end
  fun adjustment_new = gtk_adjustment_new(value : Float64, lower : Float64, upper : Float64, step_increment : Float64, page_increment : Float64, page_size : Float64) : LibGtk::Adjustment*
  fun adjustment_changed = gtk_adjustment_changed(this : Adjustment*) : Void
  fun adjustment_clamp_page = gtk_adjustment_clamp_page(this : Adjustment*, lower : Float64, upper : Float64) : Void
  fun adjustment_configure = gtk_adjustment_configure(this : Adjustment*, value : Float64, lower : Float64, upper : Float64, step_increment : Float64, page_increment : Float64, page_size : Float64) : Void
  fun adjustment_get_lower = gtk_adjustment_get_lower(this : Adjustment*) : Float64
  fun adjustment_get_minimum_increment = gtk_adjustment_get_minimum_increment(this : Adjustment*) : Float64
  fun adjustment_get_page_increment = gtk_adjustment_get_page_increment(this : Adjustment*) : Float64
  fun adjustment_get_page_size = gtk_adjustment_get_page_size(this : Adjustment*) : Float64
  fun adjustment_get_step_increment = gtk_adjustment_get_step_increment(this : Adjustment*) : Float64
  fun adjustment_get_upper = gtk_adjustment_get_upper(this : Adjustment*) : Float64
  fun adjustment_get_value = gtk_adjustment_get_value(this : Adjustment*) : Float64
  fun adjustment_set_lower = gtk_adjustment_set_lower(this : Adjustment*, lower : Float64) : Void
  fun adjustment_set_page_increment = gtk_adjustment_set_page_increment(this : Adjustment*, page_increment : Float64) : Void
  fun adjustment_set_page_size = gtk_adjustment_set_page_size(this : Adjustment*, page_size : Float64) : Void
  fun adjustment_set_step_increment = gtk_adjustment_set_step_increment(this : Adjustment*, step_increment : Float64) : Void
  fun adjustment_set_upper = gtk_adjustment_set_upper(this : Adjustment*, upper : Float64) : Void
  fun adjustment_set_value = gtk_adjustment_set_value(this : Adjustment*, value : Float64) : Void
  fun adjustment_value_changed = gtk_adjustment_value_changed(this : Adjustment*) : Void

  struct Alignment # object
    bin : LibGtk::Bin*
    priv : LibGtk::AlignmentPrivate*
    # Property bottom_padding : UInt32
    # Property left_padding : UInt32
    # Property right_padding : UInt32
    # Property top_padding : UInt32
    # Property xalign : Float32
    # Property xscale : Float32
    # Property yalign : Float32
    # Property yscale : Float32
  end
  fun alignment_new = gtk_alignment_new(xalign : Float32, yalign : Float32, xscale : Float32, yscale : Float32) : LibGtk::Widget*
  fun alignment_get_padding = gtk_alignment_get_padding(this : Alignment*, padding_top : UInt32*, padding_bottom : UInt32*, padding_left : UInt32*, padding_right : UInt32*) : Void
  fun alignment_set = gtk_alignment_set(this : Alignment*, xalign : Float32, yalign : Float32, xscale : Float32, yscale : Float32) : Void
  fun alignment_set_padding = gtk_alignment_set_padding(this : Alignment*, padding_top : UInt32, padding_bottom : UInt32, padding_left : UInt32, padding_right : UInt32) : Void

  struct AppChooserButton # object
    parent : LibGtk::ComboBox*
    priv : LibGtk::AppChooserButtonPrivate*
    # Signal custom-item-activated
    # Virtual function custom_item_activated
    # Property heading : UInt8*
    # Property show_default_item : Bool
    # Property show_dialog_item : Bool
  end
  fun app_chooser_button_new = gtk_app_chooser_button_new(content_type : UInt8*) : LibGtk::Widget*
  fun app_chooser_button_append_custom_item = gtk_app_chooser_button_append_custom_item(this : AppChooserButton*, name : UInt8*, label : UInt8*, icon : LibGio::Icon*) : Void
  fun app_chooser_button_append_separator = gtk_app_chooser_button_append_separator(this : AppChooserButton*) : Void
  fun app_chooser_button_get_heading = gtk_app_chooser_button_get_heading(this : AppChooserButton*) : UInt8*
  fun app_chooser_button_get_show_default_item = gtk_app_chooser_button_get_show_default_item(this : AppChooserButton*) : Bool
  fun app_chooser_button_get_show_dialog_item = gtk_app_chooser_button_get_show_dialog_item(this : AppChooserButton*) : Bool
  fun app_chooser_button_set_active_custom_item = gtk_app_chooser_button_set_active_custom_item(this : AppChooserButton*, name : UInt8*) : Void
  fun app_chooser_button_set_heading = gtk_app_chooser_button_set_heading(this : AppChooserButton*, heading : UInt8*) : Void
  fun app_chooser_button_set_show_default_item = gtk_app_chooser_button_set_show_default_item(this : AppChooserButton*, setting : Bool) : Void
  fun app_chooser_button_set_show_dialog_item = gtk_app_chooser_button_set_show_dialog_item(this : AppChooserButton*, setting : Bool) : Void

  struct AppChooserDialog # object
    parent : LibGtk::Dialog*
    priv : LibGtk::AppChooserDialogPrivate*
    # Property gfile : LibGio::File
    # Property heading : UInt8*
  end
  fun app_chooser_dialog_new = gtk_app_chooser_dialog_new(parent : LibGtk::Window*, flags : LibGtk::DialogFlags, file : LibGio::File*) : LibGtk::Widget*
  fun app_chooser_dialog_new_for_content_type = gtk_app_chooser_dialog_new_for_content_type(parent : LibGtk::Window*, flags : LibGtk::DialogFlags, content_type : UInt8*) : LibGtk::Widget*
  fun app_chooser_dialog_get_heading = gtk_app_chooser_dialog_get_heading(this : AppChooserDialog*) : UInt8*
  fun app_chooser_dialog_get_widget = gtk_app_chooser_dialog_get_widget(this : AppChooserDialog*) : LibGtk::Widget*
  fun app_chooser_dialog_set_heading = gtk_app_chooser_dialog_set_heading(this : AppChooserDialog*, heading : UInt8*) : Void

  struct AppChooserWidget # object
    parent : LibGtk::Box*
    priv : LibGtk::AppChooserWidgetPrivate*
    # Signal application-activated
    # Signal application-selected
    # Signal populate-popup
    # Virtual function application_activated
    # Virtual function application_selected
    # Virtual function populate_popup
    # Property default_text : UInt8*
    # Property show_all : Bool
    # Property show_default : Bool
    # Property show_fallback : Bool
    # Property show_other : Bool
    # Property show_recommended : Bool
  end
  fun app_chooser_widget_new = gtk_app_chooser_widget_new(content_type : UInt8*) : LibGtk::Widget*
  fun app_chooser_widget_get_default_text = gtk_app_chooser_widget_get_default_text(this : AppChooserWidget*) : UInt8*
  fun app_chooser_widget_get_show_all = gtk_app_chooser_widget_get_show_all(this : AppChooserWidget*) : Bool
  fun app_chooser_widget_get_show_default = gtk_app_chooser_widget_get_show_default(this : AppChooserWidget*) : Bool
  fun app_chooser_widget_get_show_fallback = gtk_app_chooser_widget_get_show_fallback(this : AppChooserWidget*) : Bool
  fun app_chooser_widget_get_show_other = gtk_app_chooser_widget_get_show_other(this : AppChooserWidget*) : Bool
  fun app_chooser_widget_get_show_recommended = gtk_app_chooser_widget_get_show_recommended(this : AppChooserWidget*) : Bool
  fun app_chooser_widget_set_default_text = gtk_app_chooser_widget_set_default_text(this : AppChooserWidget*, text : UInt8*) : Void
  fun app_chooser_widget_set_show_all = gtk_app_chooser_widget_set_show_all(this : AppChooserWidget*, setting : Bool) : Void
  fun app_chooser_widget_set_show_default = gtk_app_chooser_widget_set_show_default(this : AppChooserWidget*, setting : Bool) : Void
  fun app_chooser_widget_set_show_fallback = gtk_app_chooser_widget_set_show_fallback(this : AppChooserWidget*, setting : Bool) : Void
  fun app_chooser_widget_set_show_other = gtk_app_chooser_widget_set_show_other(this : AppChooserWidget*, setting : Bool) : Void
  fun app_chooser_widget_set_show_recommended = gtk_app_chooser_widget_set_show_recommended(this : AppChooserWidget*, setting : Bool) : Void

  struct Application # object
    parent : LibGio::Application*
    priv : LibGtk::ApplicationPrivate*
    # Signal window-added
    # Signal window-removed
    # Virtual function window_added
    # Virtual function window_removed
    # Property active_window : LibGtk::Window*
    # Property app_menu : LibGio::MenuModel*
    # Property menubar : LibGio::MenuModel*
    # Property register_session : Bool
    # Property screensaver_active : Bool
  end
  fun application_new = gtk_application_new(application_id : UInt8*, flags : LibGio::ApplicationFlags) : LibGtk::Application*
  fun application_add_accelerator = gtk_application_add_accelerator(this : Application*, accelerator : UInt8*, action_name : UInt8*, parameter : LibGLib::Variant*) : Void
  fun application_add_window = gtk_application_add_window(this : Application*, window : LibGtk::Window*) : Void
  fun application_get_accels_for_action = gtk_application_get_accels_for_action(this : Application*, detailed_action_name : UInt8*) : UInt8**
  fun application_get_actions_for_accel = gtk_application_get_actions_for_accel(this : Application*, accel : UInt8*) : UInt8**
  fun application_get_active_window = gtk_application_get_active_window(this : Application*) : LibGtk::Window*
  fun application_get_app_menu = gtk_application_get_app_menu(this : Application*) : LibGio::MenuModel*
  fun application_get_menu_by_id = gtk_application_get_menu_by_id(this : Application*, id : UInt8*) : LibGio::Menu*
  fun application_get_menubar = gtk_application_get_menubar(this : Application*) : LibGio::MenuModel*
  fun application_get_window_by_id = gtk_application_get_window_by_id(this : Application*, id : UInt32) : LibGtk::Window*
  fun application_get_windows = gtk_application_get_windows(this : Application*) : Void**
  fun application_inhibit = gtk_application_inhibit(this : Application*, window : LibGtk::Window*, flags : LibGtk::ApplicationInhibitFlags, reason : UInt8*) : UInt32
  fun application_is_inhibited = gtk_application_is_inhibited(this : Application*, flags : LibGtk::ApplicationInhibitFlags) : Bool
  fun application_list_action_descriptions = gtk_application_list_action_descriptions(this : Application*) : UInt8**
  fun application_prefers_app_menu = gtk_application_prefers_app_menu(this : Application*) : Bool
  fun application_remove_accelerator = gtk_application_remove_accelerator(this : Application*, action_name : UInt8*, parameter : LibGLib::Variant*) : Void
  fun application_remove_window = gtk_application_remove_window(this : Application*, window : LibGtk::Window*) : Void
  fun application_set_accels_for_action = gtk_application_set_accels_for_action(this : Application*, detailed_action_name : UInt8*, accels : UInt8**) : Void
  fun application_set_app_menu = gtk_application_set_app_menu(this : Application*, app_menu : LibGio::MenuModel*) : Void
  fun application_set_menubar = gtk_application_set_menubar(this : Application*, menubar : LibGio::MenuModel*) : Void
  fun application_uninhibit = gtk_application_uninhibit(this : Application*, cookie : UInt32) : Void

  struct ApplicationWindow # object
    parent_instance : LibGtk::Window*
    priv : LibGtk::ApplicationWindowPrivate*
    # Property show_menubar : Bool
  end
  fun application_window_new = gtk_application_window_new(application : LibGtk::Application*) : LibGtk::Widget*
  fun application_window_get_help_overlay = gtk_application_window_get_help_overlay(this : ApplicationWindow*) : LibGtk::ShortcutsWindow*
  fun application_window_get_id = gtk_application_window_get_id(this : ApplicationWindow*) : UInt32
  fun application_window_get_show_menubar = gtk_application_window_get_show_menubar(this : ApplicationWindow*) : Bool
  fun application_window_set_help_overlay = gtk_application_window_set_help_overlay(this : ApplicationWindow*, help_overlay : LibGtk::ShortcutsWindow*) : Void
  fun application_window_set_show_menubar = gtk_application_window_set_show_menubar(this : ApplicationWindow*, show_menubar : Bool) : Void

  struct Arrow # object
    misc : LibGtk::Misc*
    priv : LibGtk::ArrowPrivate*
    # Property arrow_type : LibGtk::ArrowType
    # Property shadow_type : LibGtk::ShadowType
  end
  fun arrow_new = gtk_arrow_new(arrow_type : LibGtk::ArrowType, shadow_type : LibGtk::ShadowType) : LibGtk::Widget*
  fun arrow_set = gtk_arrow_set(this : Arrow*, arrow_type : LibGtk::ArrowType, shadow_type : LibGtk::ShadowType) : Void

  struct ArrowAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::ArrowAccessiblePrivate*
  end

  struct AspectFrame # object
    frame : LibGtk::Frame*
    priv : LibGtk::AspectFramePrivate*
    # Property obey_child : Bool
    # Property ratio : Float32
    # Property xalign : Float32
    # Property yalign : Float32
  end
  fun aspect_frame_new = gtk_aspect_frame_new(label : UInt8*, xalign : Float32, yalign : Float32, ratio : Float32, obey_child : Bool) : LibGtk::Widget*
  fun aspect_frame_set = gtk_aspect_frame_set(this : AspectFrame*, xalign : Float32, yalign : Float32, ratio : Float32, obey_child : Bool) : Void

  struct Assistant # object
    parent : LibGtk::Window*
    priv : LibGtk::AssistantPrivate*
    # Signal apply
    # Signal cancel
    # Signal close
    # Signal escape
    # Signal prepare
    # Virtual function apply
    # Virtual function cancel
    # Virtual function close
    # Virtual function prepare
    # Property use_header_bar : Int32
  end
  fun assistant_new = gtk_assistant_new() : LibGtk::Widget*
  fun assistant_add_action_widget = gtk_assistant_add_action_widget(this : Assistant*, child : LibGtk::Widget*) : Void
  fun assistant_append_page = gtk_assistant_append_page(this : Assistant*, page : LibGtk::Widget*) : Int32
  fun assistant_commit = gtk_assistant_commit(this : Assistant*) : Void
  fun assistant_get_current_page = gtk_assistant_get_current_page(this : Assistant*) : Int32
  fun assistant_get_n_pages = gtk_assistant_get_n_pages(this : Assistant*) : Int32
  fun assistant_get_nth_page = gtk_assistant_get_nth_page(this : Assistant*, page_num : Int32) : LibGtk::Widget*
  fun assistant_get_page_complete = gtk_assistant_get_page_complete(this : Assistant*, page : LibGtk::Widget*) : Bool
  fun assistant_get_page_has_padding = gtk_assistant_get_page_has_padding(this : Assistant*, page : LibGtk::Widget*) : Bool
  fun assistant_get_page_header_image = gtk_assistant_get_page_header_image(this : Assistant*, page : LibGtk::Widget*) : LibGdkPixbuf::Pixbuf*
  fun assistant_get_page_side_image = gtk_assistant_get_page_side_image(this : Assistant*, page : LibGtk::Widget*) : LibGdkPixbuf::Pixbuf*
  fun assistant_get_page_title = gtk_assistant_get_page_title(this : Assistant*, page : LibGtk::Widget*) : UInt8*
  fun assistant_get_page_type = gtk_assistant_get_page_type(this : Assistant*, page : LibGtk::Widget*) : LibGtk::AssistantPageType
  fun assistant_insert_page = gtk_assistant_insert_page(this : Assistant*, page : LibGtk::Widget*, position : Int32) : Int32
  fun assistant_next_page = gtk_assistant_next_page(this : Assistant*) : Void
  fun assistant_prepend_page = gtk_assistant_prepend_page(this : Assistant*, page : LibGtk::Widget*) : Int32
  fun assistant_previous_page = gtk_assistant_previous_page(this : Assistant*) : Void
  fun assistant_remove_action_widget = gtk_assistant_remove_action_widget(this : Assistant*, child : LibGtk::Widget*) : Void
  fun assistant_remove_page = gtk_assistant_remove_page(this : Assistant*, page_num : Int32) : Void
  fun assistant_set_current_page = gtk_assistant_set_current_page(this : Assistant*, page_num : Int32) : Void
  fun assistant_set_forward_page_func = gtk_assistant_set_forward_page_func(this : Assistant*, page_func : LibGtk::AssistantPageFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun assistant_set_page_complete = gtk_assistant_set_page_complete(this : Assistant*, page : LibGtk::Widget*, complete : Bool) : Void
  fun assistant_set_page_has_padding = gtk_assistant_set_page_has_padding(this : Assistant*, page : LibGtk::Widget*, has_padding : Bool) : Void
  fun assistant_set_page_header_image = gtk_assistant_set_page_header_image(this : Assistant*, page : LibGtk::Widget*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun assistant_set_page_side_image = gtk_assistant_set_page_side_image(this : Assistant*, page : LibGtk::Widget*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun assistant_set_page_title = gtk_assistant_set_page_title(this : Assistant*, page : LibGtk::Widget*, title : UInt8*) : Void
  fun assistant_set_page_type = gtk_assistant_set_page_type(this : Assistant*, page : LibGtk::Widget*, type : LibGtk::AssistantPageType) : Void
  fun assistant_update_buttons_state = gtk_assistant_update_buttons_state(this : Assistant*) : Void

  struct Bin # object
    container : LibGtk::Container*
    priv : LibGtk::BinPrivate*
  end
  fun bin_get_child = gtk_bin_get_child(this : Bin*) : LibGtk::Widget*

  struct BooleanCellAccessible # object
    parent : LibGtk::RendererCellAccessible*
    priv : LibGtk::BooleanCellAccessiblePrivate*
  end

  struct Box # object
    container : LibGtk::Container*
    priv : LibGtk::BoxPrivate*
    # Property baseline_position : LibGtk::BaselinePosition
    # Property homogeneous : Bool
    # Property spacing : Int32
  end
  fun box_new = gtk_box_new(orientation : LibGtk::Orientation, spacing : Int32) : LibGtk::Widget*
  fun box_get_baseline_position = gtk_box_get_baseline_position(this : Box*) : LibGtk::BaselinePosition
  fun box_get_center_widget = gtk_box_get_center_widget(this : Box*) : LibGtk::Widget*
  fun box_get_homogeneous = gtk_box_get_homogeneous(this : Box*) : Bool
  fun box_get_spacing = gtk_box_get_spacing(this : Box*) : Int32
  fun box_pack_end = gtk_box_pack_end(this : Box*, child : LibGtk::Widget*, expand : Bool, fill : Bool, padding : UInt32) : Void
  fun box_pack_start = gtk_box_pack_start(this : Box*, child : LibGtk::Widget*, expand : Bool, fill : Bool, padding : UInt32) : Void
  fun box_query_child_packing = gtk_box_query_child_packing(this : Box*, child : LibGtk::Widget*, expand : Bool*, fill : Bool*, padding : UInt32*, pack_type : LibGtk::PackType*) : Void
  fun box_reorder_child = gtk_box_reorder_child(this : Box*, child : LibGtk::Widget*, position : Int32) : Void
  fun box_set_baseline_position = gtk_box_set_baseline_position(this : Box*, position : LibGtk::BaselinePosition) : Void
  fun box_set_center_widget = gtk_box_set_center_widget(this : Box*, widget : LibGtk::Widget*) : Void
  fun box_set_child_packing = gtk_box_set_child_packing(this : Box*, child : LibGtk::Widget*, expand : Bool, fill : Bool, padding : UInt32, pack_type : LibGtk::PackType) : Void
  fun box_set_homogeneous = gtk_box_set_homogeneous(this : Box*, homogeneous : Bool) : Void
  fun box_set_spacing = gtk_box_set_spacing(this : Box*, spacing : Int32) : Void

  struct Builder # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::BuilderPrivate*
    # Virtual function get_type_from_name
    # Property translation_domain : UInt8*
  end
  fun builder_new = gtk_builder_new() : LibGtk::Builder*
  fun builder_new_from_file = gtk_builder_new_from_file(filename : UInt8*) : LibGtk::Builder*
  fun builder_new_from_resource = gtk_builder_new_from_resource(resource_path : UInt8*) : LibGtk::Builder*
  fun builder_new_from_string = gtk_builder_new_from_string(string : UInt8*, length : Int64) : LibGtk::Builder*
  fun builder_add_callback_symbol = gtk_builder_add_callback_symbol(this : Builder*, callback_name : UInt8*, callback_symbol : LibGObject::Callback) : Void
  fun builder_add_from_file = gtk_builder_add_from_file(this : Builder*, filename : UInt8*, error : LibGLib::Error**) : UInt32
  fun builder_add_from_resource = gtk_builder_add_from_resource(this : Builder*, resource_path : UInt8*, error : LibGLib::Error**) : UInt32
  fun builder_add_from_string = gtk_builder_add_from_string(this : Builder*, buffer : UInt8*, length : UInt64, error : LibGLib::Error**) : UInt32
  fun builder_add_objects_from_file = gtk_builder_add_objects_from_file(this : Builder*, filename : UInt8*, object_ids : UInt8**, error : LibGLib::Error**) : UInt32
  fun builder_add_objects_from_resource = gtk_builder_add_objects_from_resource(this : Builder*, resource_path : UInt8*, object_ids : UInt8**, error : LibGLib::Error**) : UInt32
  fun builder_add_objects_from_string = gtk_builder_add_objects_from_string(this : Builder*, buffer : UInt8*, length : UInt64, object_ids : UInt8**, error : LibGLib::Error**) : UInt32
  fun builder_connect_signals = gtk_builder_connect_signals(this : Builder*, user_data : Void*) : Void
  fun builder_connect_signals_full = gtk_builder_connect_signals_full(this : Builder*, func : LibGtk::BuilderConnectFunc, user_data : Void*) : Void
  fun builder_expose_object = gtk_builder_expose_object(this : Builder*, name : UInt8*, object : LibGObject::Object*) : Void
  fun builder_extend_with_template = gtk_builder_extend_with_template(this : Builder*, widget : LibGtk::Widget*, template_type : UInt64, buffer : UInt8*, length : UInt64, error : LibGLib::Error**) : UInt32
  fun builder_get_application = gtk_builder_get_application(this : Builder*) : LibGtk::Application*
  fun builder_get_object = gtk_builder_get_object(this : Builder*, name : UInt8*) : LibGObject::Object*
  fun builder_get_objects = gtk_builder_get_objects(this : Builder*) : Void**
  fun builder_get_translation_domain = gtk_builder_get_translation_domain(this : Builder*) : UInt8*
  fun builder_get_type_from_name = gtk_builder_get_type_from_name(this : Builder*, type_name : UInt8*) : UInt64
  fun builder_set_application = gtk_builder_set_application(this : Builder*, application : LibGtk::Application*) : Void
  fun builder_set_translation_domain = gtk_builder_set_translation_domain(this : Builder*, domain : UInt8*) : Void
  fun builder_value_from_string = gtk_builder_value_from_string(this : Builder*, pspec : LibGObject::ParamSpec*, string : UInt8*, value : LibGObject::Value*, error : LibGLib::Error**) : Bool
  fun builder_value_from_string_type = gtk_builder_value_from_string_type(this : Builder*, type : UInt64, string : UInt8*, value : LibGObject::Value*, error : LibGLib::Error**) : Bool

  struct Button # object
    bin : LibGtk::Bin*
    priv : LibGtk::ButtonPrivate*
    # Signal activate
    # Signal clicked
    # Signal enter
    # Signal leave
    # Signal pressed
    # Signal released
    # Virtual function activate
    # Virtual function clicked
    # Virtual function enter
    # Virtual function leave
    # Virtual function pressed
    # Virtual function released
    # Property always_show_image : Bool
    # Property image : LibGtk::Widget*
    # Property image_position : LibGtk::PositionType
    # Property label : UInt8*
    # Property relief : LibGtk::ReliefStyle
    # Property use_stock : Bool
    # Property use_underline : Bool
    # Property xalign : Float32
    # Property yalign : Float32
  end
  fun button_new = gtk_button_new() : LibGtk::Widget*
  fun button_new_from_icon_name = gtk_button_new_from_icon_name(icon_name : UInt8*, size : Int32) : LibGtk::Widget*
  fun button_new_from_stock = gtk_button_new_from_stock(stock_id : UInt8*) : LibGtk::Widget*
  fun button_new_with_label = gtk_button_new_with_label(label : UInt8*) : LibGtk::Widget*
  fun button_new_with_mnemonic = gtk_button_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*
  fun button_clicked = gtk_button_clicked(this : Button*) : Void
  fun button_enter = gtk_button_enter(this : Button*) : Void
  fun button_get_alignment = gtk_button_get_alignment(this : Button*, xalign : Float32*, yalign : Float32*) : Void
  fun button_get_always_show_image = gtk_button_get_always_show_image(this : Button*) : Bool
  fun button_get_event_window = gtk_button_get_event_window(this : Button*) : LibGdk::Window*
  fun button_get_focus_on_click = gtk_button_get_focus_on_click(this : Button*) : Bool
  fun button_get_image = gtk_button_get_image(this : Button*) : LibGtk::Widget*
  fun button_get_image_position = gtk_button_get_image_position(this : Button*) : LibGtk::PositionType
  fun button_get_label = gtk_button_get_label(this : Button*) : UInt8*
  fun button_get_relief = gtk_button_get_relief(this : Button*) : LibGtk::ReliefStyle
  fun button_get_use_stock = gtk_button_get_use_stock(this : Button*) : Bool
  fun button_get_use_underline = gtk_button_get_use_underline(this : Button*) : Bool
  fun button_leave = gtk_button_leave(this : Button*) : Void
  fun button_pressed = gtk_button_pressed(this : Button*) : Void
  fun button_released = gtk_button_released(this : Button*) : Void
  fun button_set_alignment = gtk_button_set_alignment(this : Button*, xalign : Float32, yalign : Float32) : Void
  fun button_set_always_show_image = gtk_button_set_always_show_image(this : Button*, always_show : Bool) : Void
  fun button_set_focus_on_click = gtk_button_set_focus_on_click(this : Button*, focus_on_click : Bool) : Void
  fun button_set_image = gtk_button_set_image(this : Button*, image : LibGtk::Widget*) : Void
  fun button_set_image_position = gtk_button_set_image_position(this : Button*, position : LibGtk::PositionType) : Void
  fun button_set_label = gtk_button_set_label(this : Button*, label : UInt8*) : Void
  fun button_set_relief = gtk_button_set_relief(this : Button*, relief : LibGtk::ReliefStyle) : Void
  fun button_set_use_stock = gtk_button_set_use_stock(this : Button*, use_stock : Bool) : Void
  fun button_set_use_underline = gtk_button_set_use_underline(this : Button*, use_underline : Bool) : Void

  struct ButtonAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::ButtonAccessiblePrivate*
  end

  struct ButtonBox # object
    box : LibGtk::Box*
    priv : LibGtk::ButtonBoxPrivate*
    # Property layout_style : LibGtk::ButtonBoxStyle
  end
  fun button_box_new = gtk_button_box_new(orientation : LibGtk::Orientation) : LibGtk::Widget*
  fun button_box_get_child_non_homogeneous = gtk_button_box_get_child_non_homogeneous(this : ButtonBox*, child : LibGtk::Widget*) : Bool
  fun button_box_get_child_secondary = gtk_button_box_get_child_secondary(this : ButtonBox*, child : LibGtk::Widget*) : Bool
  fun button_box_get_layout = gtk_button_box_get_layout(this : ButtonBox*) : LibGtk::ButtonBoxStyle
  fun button_box_set_child_non_homogeneous = gtk_button_box_set_child_non_homogeneous(this : ButtonBox*, child : LibGtk::Widget*, non_homogeneous : Bool) : Void
  fun button_box_set_child_secondary = gtk_button_box_set_child_secondary(this : ButtonBox*, child : LibGtk::Widget*, is_secondary : Bool) : Void
  fun button_box_set_layout = gtk_button_box_set_layout(this : ButtonBox*, layout_style : LibGtk::ButtonBoxStyle) : Void

  struct Calendar # object
    widget : LibGtk::Widget*
    priv : LibGtk::CalendarPrivate*
    # Signal day-selected
    # Signal day-selected-double-click
    # Signal month-changed
    # Signal next-month
    # Signal next-year
    # Signal prev-month
    # Signal prev-year
    # Virtual function day_selected
    # Virtual function day_selected_double_click
    # Virtual function month_changed
    # Virtual function next_month
    # Virtual function next_year
    # Virtual function prev_month
    # Virtual function prev_year
    # Property day : Int32
    # Property detail_height_rows : Int32
    # Property detail_width_chars : Int32
    # Property month : Int32
    # Property no_month_change : Bool
    # Property show_day_names : Bool
    # Property show_details : Bool
    # Property show_heading : Bool
    # Property show_week_numbers : Bool
    # Property year : Int32
  end
  fun calendar_new = gtk_calendar_new() : LibGtk::Widget*
  fun calendar_clear_marks = gtk_calendar_clear_marks(this : Calendar*) : Void
  fun calendar_get_date = gtk_calendar_get_date(this : Calendar*, year : UInt32*, month : UInt32*, day : UInt32*) : Void
  fun calendar_get_day_is_marked = gtk_calendar_get_day_is_marked(this : Calendar*, day : UInt32) : Bool
  fun calendar_get_detail_height_rows = gtk_calendar_get_detail_height_rows(this : Calendar*) : Int32
  fun calendar_get_detail_width_chars = gtk_calendar_get_detail_width_chars(this : Calendar*) : Int32
  fun calendar_get_display_options = gtk_calendar_get_display_options(this : Calendar*) : LibGtk::CalendarDisplayOptions
  fun calendar_mark_day = gtk_calendar_mark_day(this : Calendar*, day : UInt32) : Void
  fun calendar_select_day = gtk_calendar_select_day(this : Calendar*, day : UInt32) : Void
  fun calendar_select_month = gtk_calendar_select_month(this : Calendar*, month : UInt32, year : UInt32) : Void
  fun calendar_set_detail_func = gtk_calendar_set_detail_func(this : Calendar*, func : LibGtk::CalendarDetailFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun calendar_set_detail_height_rows = gtk_calendar_set_detail_height_rows(this : Calendar*, rows : Int32) : Void
  fun calendar_set_detail_width_chars = gtk_calendar_set_detail_width_chars(this : Calendar*, chars : Int32) : Void
  fun calendar_set_display_options = gtk_calendar_set_display_options(this : Calendar*, flags : LibGtk::CalendarDisplayOptions) : Void
  fun calendar_unmark_day = gtk_calendar_unmark_day(this : Calendar*, day : UInt32) : Void

  struct CellAccessible # object
    parent : LibGtk::Accessible*
    priv : LibGtk::CellAccessiblePrivate*
    # Virtual function update_cache
  end

  struct CellArea # object
    parent_instance : LibGObject::InitiallyUnowned*
    priv : LibGtk::CellAreaPrivate*
    # Signal add-editable
    # Signal apply-attributes
    # Signal focus-changed
    # Signal remove-editable
    # Virtual function activate
    # Virtual function add
    # Virtual function apply_attributes
    # Virtual function copy_context
    # Virtual function create_context
    # Virtual function event
    # Virtual function focus
    # Virtual function foreach
    # Virtual function foreach_alloc
    # Virtual function get_cell_property
    # Virtual function get_preferred_height
    # Virtual function get_preferred_height_for_width
    # Virtual function get_preferred_width
    # Virtual function get_preferred_width_for_height
    # Virtual function get_request_mode
    # Virtual function is_activatable
    # Virtual function remove
    # Virtual function render
    # Virtual function set_cell_property
    # Property edit_widget : LibGtk::CellEditable
    # Property edited_cell : LibGtk::CellRenderer*
    # Property focus_cell : LibGtk::CellRenderer*
  end
  fun cell_area_activate = gtk_cell_area_activate(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState, edit_only : Bool) : Bool
  fun cell_area_activate_cell = gtk_cell_area_activate_cell(this : CellArea*, widget : LibGtk::Widget*, renderer : LibGtk::CellRenderer*, event : LibGdk::Event*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState) : Bool
  fun cell_area_add = gtk_cell_area_add(this : CellArea*, renderer : LibGtk::CellRenderer*) : Void
  fun cell_area_add_focus_sibling = gtk_cell_area_add_focus_sibling(this : CellArea*, renderer : LibGtk::CellRenderer*, sibling : LibGtk::CellRenderer*) : Void
  fun cell_area_apply_attributes = gtk_cell_area_apply_attributes(this : CellArea*, tree_model : LibGtk::TreeModel*, iter : LibGtk::TreeIter*, is_expander : Bool, is_expanded : Bool) : Void
  fun cell_area_attribute_connect = gtk_cell_area_attribute_connect(this : CellArea*, renderer : LibGtk::CellRenderer*, attribute : UInt8*, column : Int32) : Void
  fun cell_area_attribute_disconnect = gtk_cell_area_attribute_disconnect(this : CellArea*, renderer : LibGtk::CellRenderer*, attribute : UInt8*) : Void
  fun cell_area_attribute_get_column = gtk_cell_area_attribute_get_column(this : CellArea*, renderer : LibGtk::CellRenderer*, attribute : UInt8*) : Int32
  fun cell_area_cell_get_property = gtk_cell_area_cell_get_property(this : CellArea*, renderer : LibGtk::CellRenderer*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun cell_area_cell_set_property = gtk_cell_area_cell_set_property(this : CellArea*, renderer : LibGtk::CellRenderer*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun cell_area_copy_context = gtk_cell_area_copy_context(this : CellArea*, context : LibGtk::CellAreaContext*) : LibGtk::CellAreaContext*
  fun cell_area_create_context = gtk_cell_area_create_context(this : CellArea*) : LibGtk::CellAreaContext*
  fun cell_area_event = gtk_cell_area_event(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, event : LibGdk::Event*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState) : Int32
  fun cell_area_focus = gtk_cell_area_focus(this : CellArea*, direction : LibGtk::DirectionType) : Bool
  fun cell_area_foreach = gtk_cell_area_foreach(this : CellArea*, callback : LibGtk::CellCallback, callback_data : Void*) : Void
  fun cell_area_foreach_alloc = gtk_cell_area_foreach_alloc(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, cell_area : LibGdk::Rectangle*, background_area : LibGdk::Rectangle*, callback : LibGtk::CellAllocCallback, callback_data : Void*) : Void
  fun cell_area_get_cell_allocation = gtk_cell_area_get_cell_allocation(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, renderer : LibGtk::CellRenderer*, cell_area : LibGdk::Rectangle*, allocation : LibGdk::Rectangle*) : Void
  fun cell_area_get_cell_at_position = gtk_cell_area_get_cell_at_position(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, cell_area : LibGdk::Rectangle*, x : Int32, y : Int32, alloc_area : LibGdk::Rectangle*) : LibGtk::CellRenderer*
  fun cell_area_get_current_path_string = gtk_cell_area_get_current_path_string(this : CellArea*) : UInt8*
  fun cell_area_get_edit_widget = gtk_cell_area_get_edit_widget(this : CellArea*) : LibGtk::CellEditable*
  fun cell_area_get_edited_cell = gtk_cell_area_get_edited_cell(this : CellArea*) : LibGtk::CellRenderer*
  fun cell_area_get_focus_cell = gtk_cell_area_get_focus_cell(this : CellArea*) : LibGtk::CellRenderer*
  fun cell_area_get_focus_from_sibling = gtk_cell_area_get_focus_from_sibling(this : CellArea*, renderer : LibGtk::CellRenderer*) : LibGtk::CellRenderer*
  fun cell_area_get_focus_siblings = gtk_cell_area_get_focus_siblings(this : CellArea*, renderer : LibGtk::CellRenderer*) : Void**
  fun cell_area_get_preferred_height = gtk_cell_area_get_preferred_height(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, minimum_height : Int32*, natural_height : Int32*) : Void
  fun cell_area_get_preferred_height_for_width = gtk_cell_area_get_preferred_height_for_width(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, width : Int32, minimum_height : Int32*, natural_height : Int32*) : Void
  fun cell_area_get_preferred_width = gtk_cell_area_get_preferred_width(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, minimum_width : Int32*, natural_width : Int32*) : Void
  fun cell_area_get_preferred_width_for_height = gtk_cell_area_get_preferred_width_for_height(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, height : Int32, minimum_width : Int32*, natural_width : Int32*) : Void
  fun cell_area_get_request_mode = gtk_cell_area_get_request_mode(this : CellArea*) : LibGtk::SizeRequestMode
  fun cell_area_has_renderer = gtk_cell_area_has_renderer(this : CellArea*, renderer : LibGtk::CellRenderer*) : Bool
  fun cell_area_inner_cell_area = gtk_cell_area_inner_cell_area(this : CellArea*, widget : LibGtk::Widget*, cell_area : LibGdk::Rectangle*, inner_area : LibGdk::Rectangle*) : Void
  fun cell_area_is_activatable = gtk_cell_area_is_activatable(this : CellArea*) : Bool
  fun cell_area_is_focus_sibling = gtk_cell_area_is_focus_sibling(this : CellArea*, renderer : LibGtk::CellRenderer*, sibling : LibGtk::CellRenderer*) : Bool
  fun cell_area_remove = gtk_cell_area_remove(this : CellArea*, renderer : LibGtk::CellRenderer*) : Void
  fun cell_area_remove_focus_sibling = gtk_cell_area_remove_focus_sibling(this : CellArea*, renderer : LibGtk::CellRenderer*, sibling : LibGtk::CellRenderer*) : Void
  fun cell_area_render = gtk_cell_area_render(this : CellArea*, context : LibGtk::CellAreaContext*, widget : LibGtk::Widget*, cr : LibCairo::Context*, background_area : LibGdk::Rectangle*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState, paint_focus : Bool) : Void
  fun cell_area_request_renderer = gtk_cell_area_request_renderer(this : CellArea*, renderer : LibGtk::CellRenderer*, orientation : LibGtk::Orientation, widget : LibGtk::Widget*, for_size : Int32, minimum_size : Int32*, natural_size : Int32*) : Void
  fun cell_area_set_focus_cell = gtk_cell_area_set_focus_cell(this : CellArea*, renderer : LibGtk::CellRenderer*) : Void
  fun cell_area_stop_editing = gtk_cell_area_stop_editing(this : CellArea*, canceled : Bool) : Void

  struct CellAreaBox # object
    parent_instance : LibGtk::CellArea*
    priv : LibGtk::CellAreaBoxPrivate*
    # Property spacing : Int32
  end
  fun cell_area_box_new = gtk_cell_area_box_new() : LibGtk::CellArea*
  fun cell_area_box_get_spacing = gtk_cell_area_box_get_spacing(this : CellAreaBox*) : Int32
  fun cell_area_box_pack_end = gtk_cell_area_box_pack_end(this : CellAreaBox*, renderer : LibGtk::CellRenderer*, expand : Bool, align : Bool, fixed : Bool) : Void
  fun cell_area_box_pack_start = gtk_cell_area_box_pack_start(this : CellAreaBox*, renderer : LibGtk::CellRenderer*, expand : Bool, align : Bool, fixed : Bool) : Void
  fun cell_area_box_set_spacing = gtk_cell_area_box_set_spacing(this : CellAreaBox*, spacing : Int32) : Void

  struct CellAreaContext # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::CellAreaContextPrivate*
    # Virtual function allocate
    # Virtual function get_preferred_height_for_width
    # Virtual function get_preferred_width_for_height
    # Virtual function reset
    # Property area : LibGtk::CellArea*
    # Property minimum_height : Int32
    # Property minimum_width : Int32
    # Property natural_height : Int32
    # Property natural_width : Int32
  end
  fun cell_area_context_allocate = gtk_cell_area_context_allocate(this : CellAreaContext*, width : Int32, height : Int32) : Void
  fun cell_area_context_get_allocation = gtk_cell_area_context_get_allocation(this : CellAreaContext*, width : Int32*, height : Int32*) : Void
  fun cell_area_context_get_area = gtk_cell_area_context_get_area(this : CellAreaContext*) : LibGtk::CellArea*
  fun cell_area_context_get_preferred_height = gtk_cell_area_context_get_preferred_height(this : CellAreaContext*, minimum_height : Int32*, natural_height : Int32*) : Void
  fun cell_area_context_get_preferred_height_for_width = gtk_cell_area_context_get_preferred_height_for_width(this : CellAreaContext*, width : Int32, minimum_height : Int32*, natural_height : Int32*) : Void
  fun cell_area_context_get_preferred_width = gtk_cell_area_context_get_preferred_width(this : CellAreaContext*, minimum_width : Int32*, natural_width : Int32*) : Void
  fun cell_area_context_get_preferred_width_for_height = gtk_cell_area_context_get_preferred_width_for_height(this : CellAreaContext*, height : Int32, minimum_width : Int32*, natural_width : Int32*) : Void
  fun cell_area_context_push_preferred_height = gtk_cell_area_context_push_preferred_height(this : CellAreaContext*, minimum_height : Int32, natural_height : Int32) : Void
  fun cell_area_context_push_preferred_width = gtk_cell_area_context_push_preferred_width(this : CellAreaContext*, minimum_width : Int32, natural_width : Int32) : Void
  fun cell_area_context_reset = gtk_cell_area_context_reset(this : CellAreaContext*) : Void

  struct CellRenderer # object
    parent_instance : LibGObject::InitiallyUnowned*
    priv : LibGtk::CellRendererPrivate*
    # Signal editing-canceled
    # Signal editing-started
    # Virtual function activate
    # Virtual function editing_canceled
    # Virtual function editing_started
    # Virtual function get_aligned_area
    # Virtual function get_preferred_height
    # Virtual function get_preferred_height_for_width
    # Virtual function get_preferred_width
    # Virtual function get_preferred_width_for_height
    # Virtual function get_request_mode
    # Virtual function get_size
    # Virtual function render
    # Virtual function start_editing
    # Property cell_background : UInt8*
    # Property cell_background_gdk : LibGdk::Color
    # Property cell_background_rgba : LibGdk::RGBA
    # Property cell_background_set : Bool
    # Property editing : Bool
    # Property height : Int32
    # Property is_expanded : Bool
    # Property is_expander : Bool
    # Property mode : LibGtk::CellRendererMode
    # Property sensitive : Bool
    # Property visible : Bool
    # Property width : Int32
    # Property xalign : Float32
    # Property xpad : UInt32
    # Property yalign : Float32
    # Property ypad : UInt32
  end
  fun cell_renderer_activate = gtk_cell_renderer_activate(this : CellRenderer*, event : LibGdk::Event*, widget : LibGtk::Widget*, path : UInt8*, background_area : LibGdk::Rectangle*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState) : Bool
  fun cell_renderer_get_aligned_area = gtk_cell_renderer_get_aligned_area(this : CellRenderer*, widget : LibGtk::Widget*, flags : LibGtk::CellRendererState, cell_area : LibGdk::Rectangle*, aligned_area : LibGdk::Rectangle*) : Void
  fun cell_renderer_get_alignment = gtk_cell_renderer_get_alignment(this : CellRenderer*, xalign : Float32*, yalign : Float32*) : Void
  fun cell_renderer_get_fixed_size = gtk_cell_renderer_get_fixed_size(this : CellRenderer*, width : Int32*, height : Int32*) : Void
  fun cell_renderer_get_padding = gtk_cell_renderer_get_padding(this : CellRenderer*, xpad : Int32*, ypad : Int32*) : Void
  fun cell_renderer_get_preferred_height = gtk_cell_renderer_get_preferred_height(this : CellRenderer*, widget : LibGtk::Widget*, minimum_size : Int32*, natural_size : Int32*) : Void
  fun cell_renderer_get_preferred_height_for_width = gtk_cell_renderer_get_preferred_height_for_width(this : CellRenderer*, widget : LibGtk::Widget*, width : Int32, minimum_height : Int32*, natural_height : Int32*) : Void
  fun cell_renderer_get_preferred_size = gtk_cell_renderer_get_preferred_size(this : CellRenderer*, widget : LibGtk::Widget*, minimum_size : LibGtk::Requisition*, natural_size : LibGtk::Requisition*) : Void
  fun cell_renderer_get_preferred_width = gtk_cell_renderer_get_preferred_width(this : CellRenderer*, widget : LibGtk::Widget*, minimum_size : Int32*, natural_size : Int32*) : Void
  fun cell_renderer_get_preferred_width_for_height = gtk_cell_renderer_get_preferred_width_for_height(this : CellRenderer*, widget : LibGtk::Widget*, height : Int32, minimum_width : Int32*, natural_width : Int32*) : Void
  fun cell_renderer_get_request_mode = gtk_cell_renderer_get_request_mode(this : CellRenderer*) : LibGtk::SizeRequestMode
  fun cell_renderer_get_sensitive = gtk_cell_renderer_get_sensitive(this : CellRenderer*) : Bool
  fun cell_renderer_get_size = gtk_cell_renderer_get_size(this : CellRenderer*, widget : LibGtk::Widget*, cell_area : LibGdk::Rectangle*, x_offset : Int32*, y_offset : Int32*, width : Int32*, height : Int32*) : Void
  fun cell_renderer_get_state = gtk_cell_renderer_get_state(this : CellRenderer*, widget : LibGtk::Widget*, cell_state : LibGtk::CellRendererState) : LibGtk::StateFlags
  fun cell_renderer_get_visible = gtk_cell_renderer_get_visible(this : CellRenderer*) : Bool
  fun cell_renderer_is_activatable = gtk_cell_renderer_is_activatable(this : CellRenderer*) : Bool
  fun cell_renderer_render = gtk_cell_renderer_render(this : CellRenderer*, cr : LibCairo::Context*, widget : LibGtk::Widget*, background_area : LibGdk::Rectangle*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState) : Void
  fun cell_renderer_set_alignment = gtk_cell_renderer_set_alignment(this : CellRenderer*, xalign : Float32, yalign : Float32) : Void
  fun cell_renderer_set_fixed_size = gtk_cell_renderer_set_fixed_size(this : CellRenderer*, width : Int32, height : Int32) : Void
  fun cell_renderer_set_padding = gtk_cell_renderer_set_padding(this : CellRenderer*, xpad : Int32, ypad : Int32) : Void
  fun cell_renderer_set_sensitive = gtk_cell_renderer_set_sensitive(this : CellRenderer*, sensitive : Bool) : Void
  fun cell_renderer_set_visible = gtk_cell_renderer_set_visible(this : CellRenderer*, visible : Bool) : Void
  fun cell_renderer_start_editing = gtk_cell_renderer_start_editing(this : CellRenderer*, event : LibGdk::Event*, widget : LibGtk::Widget*, path : UInt8*, background_area : LibGdk::Rectangle*, cell_area : LibGdk::Rectangle*, flags : LibGtk::CellRendererState) : LibGtk::CellEditable*
  fun cell_renderer_stop_editing = gtk_cell_renderer_stop_editing(this : CellRenderer*, canceled : Bool) : Void

  struct CellRendererAccel # object
    parent : LibGtk::CellRendererText*
    priv : LibGtk::CellRendererAccelPrivate*
    # Signal accel-cleared
    # Signal accel-edited
    # Virtual function accel_cleared
    # Virtual function accel_edited
    # Property accel_key : UInt32
    # Property accel_mode : LibGtk::CellRendererAccelMode
    # Property accel_mods : LibGdk::ModifierType
    # Property keycode : UInt32
  end
  fun cell_renderer_accel_new = gtk_cell_renderer_accel_new() : LibGtk::CellRenderer*

  struct CellRendererCombo # object
    parent : LibGtk::CellRendererText*
    priv : LibGtk::CellRendererComboPrivate*
    # Signal changed
    # Property has_entry : Bool
    # Property model : LibGtk::TreeModel
    # Property text_column : Int32
  end
  fun cell_renderer_combo_new = gtk_cell_renderer_combo_new() : LibGtk::CellRenderer*

  struct CellRendererPixbuf # object
    parent : LibGtk::CellRenderer*
    priv : LibGtk::CellRendererPixbufPrivate*
    # Property follow_state : Bool
    # Property gicon : LibGio::Icon
    # Property icon_name : UInt8*
    # Property pixbuf : LibGdkPixbuf::Pixbuf*
    # Property pixbuf_expander_closed : LibGdkPixbuf::Pixbuf*
    # Property pixbuf_expander_open : LibGdkPixbuf::Pixbuf*
    # Property stock_detail : UInt8*
    # Property stock_id : UInt8*
    # Property stock_size : UInt32
    # Property surface : LibCairo::Surface
  end
  fun cell_renderer_pixbuf_new = gtk_cell_renderer_pixbuf_new() : LibGtk::CellRenderer*

  struct CellRendererProgress # object
    parent_instance : LibGtk::CellRenderer*
    priv : LibGtk::CellRendererProgressPrivate*
    # Property inverted : Bool
    # Property pulse : Int32
    # Property text : UInt8*
    # Property text_xalign : Float32
    # Property text_yalign : Float32
    # Property value : Int32
  end
  fun cell_renderer_progress_new = gtk_cell_renderer_progress_new() : LibGtk::CellRenderer*

  struct CellRendererSpin # object
    parent : LibGtk::CellRendererText*
    priv : LibGtk::CellRendererSpinPrivate*
    # Property adjustment : LibGtk::Adjustment*
    # Property climb_rate : Float64
    # Property digits : UInt32
  end
  fun cell_renderer_spin_new = gtk_cell_renderer_spin_new() : LibGtk::CellRenderer*

  struct CellRendererSpinner # object
    parent : LibGtk::CellRenderer*
    priv : LibGtk::CellRendererSpinnerPrivate*
    # Property active : Bool
    # Property pulse : UInt32
    # Property size : LibGtk::IconSize
  end
  fun cell_renderer_spinner_new = gtk_cell_renderer_spinner_new() : LibGtk::CellRenderer*

  struct CellRendererText # object
    parent : LibGtk::CellRenderer*
    priv : LibGtk::CellRendererTextPrivate*
    # Signal edited
    # Virtual function edited
    # Property align_set : Bool
    # Property alignment : LibPango::Alignment
    # Property attributes : LibPango::AttrList
    # Property background : UInt8*
    # Property background_gdk : LibGdk::Color
    # Property background_rgba : LibGdk::RGBA
    # Property background_set : Bool
    # Property editable : Bool
    # Property editable_set : Bool
    # Property ellipsize : LibPango::EllipsizeMode
    # Property ellipsize_set : Bool
    # Property family : UInt8*
    # Property family_set : Bool
    # Property font : UInt8*
    # Property font_desc : LibPango::FontDescription
    # Property foreground : UInt8*
    # Property foreground_gdk : LibGdk::Color
    # Property foreground_rgba : LibGdk::RGBA
    # Property foreground_set : Bool
    # Property language : UInt8*
    # Property language_set : Bool
    # Property markup : UInt8*
    # Property max_width_chars : Int32
    # Property placeholder_text : UInt8*
    # Property rise : Int32
    # Property rise_set : Bool
    # Property scale : Float64
    # Property scale_set : Bool
    # Property single_paragraph_mode : Bool
    # Property size : Int32
    # Property size_points : Float64
    # Property size_set : Bool
    # Property stretch : LibPango::Stretch
    # Property stretch_set : Bool
    # Property strikethrough : Bool
    # Property strikethrough_set : Bool
    # Property style : LibPango::Style
    # Property style_set : Bool
    # Property text : UInt8*
    # Property underline : LibPango::Underline
    # Property underline_set : Bool
    # Property variant : LibPango::Variant
    # Property variant_set : Bool
    # Property weight : Int32
    # Property weight_set : Bool
    # Property width_chars : Int32
    # Property wrap_mode : LibPango::WrapMode
    # Property wrap_width : Int32
  end
  fun cell_renderer_text_new = gtk_cell_renderer_text_new() : LibGtk::CellRenderer*
  fun cell_renderer_text_set_fixed_height_from_font = gtk_cell_renderer_text_set_fixed_height_from_font(this : CellRendererText*, number_of_rows : Int32) : Void

  struct CellRendererToggle # object
    parent : LibGtk::CellRenderer*
    priv : LibGtk::CellRendererTogglePrivate*
    # Signal toggled
    # Virtual function toggled
    # Property activatable : Bool
    # Property active : Bool
    # Property inconsistent : Bool
    # Property indicator_size : Int32
    # Property radio : Bool
  end
  fun cell_renderer_toggle_new = gtk_cell_renderer_toggle_new() : LibGtk::CellRenderer*
  fun cell_renderer_toggle_get_activatable = gtk_cell_renderer_toggle_get_activatable(this : CellRendererToggle*) : Bool
  fun cell_renderer_toggle_get_active = gtk_cell_renderer_toggle_get_active(this : CellRendererToggle*) : Bool
  fun cell_renderer_toggle_get_radio = gtk_cell_renderer_toggle_get_radio(this : CellRendererToggle*) : Bool
  fun cell_renderer_toggle_set_activatable = gtk_cell_renderer_toggle_set_activatable(this : CellRendererToggle*, setting : Bool) : Void
  fun cell_renderer_toggle_set_active = gtk_cell_renderer_toggle_set_active(this : CellRendererToggle*, setting : Bool) : Void
  fun cell_renderer_toggle_set_radio = gtk_cell_renderer_toggle_set_radio(this : CellRendererToggle*, radio : Bool) : Void

  struct CellView # object
    parent_instance : LibGtk::Widget*
    priv : LibGtk::CellViewPrivate*
    # Property background : UInt8*
    # Property background_gdk : LibGdk::Color
    # Property background_rgba : LibGdk::RGBA
    # Property background_set : Bool
    # Property cell_area : LibGtk::CellArea*
    # Property cell_area_context : LibGtk::CellAreaContext*
    # Property draw_sensitive : Bool
    # Property fit_model : Bool
    # Property model : LibGtk::TreeModel
  end
  fun cell_view_new = gtk_cell_view_new() : LibGtk::Widget*
  fun cell_view_new_with_context = gtk_cell_view_new_with_context(area : LibGtk::CellArea*, context : LibGtk::CellAreaContext*) : LibGtk::Widget*
  fun cell_view_new_with_markup = gtk_cell_view_new_with_markup(markup : UInt8*) : LibGtk::Widget*
  fun cell_view_new_with_pixbuf = gtk_cell_view_new_with_pixbuf(pixbuf : LibGdkPixbuf::Pixbuf*) : LibGtk::Widget*
  fun cell_view_new_with_text = gtk_cell_view_new_with_text(text : UInt8*) : LibGtk::Widget*
  fun cell_view_get_displayed_row = gtk_cell_view_get_displayed_row(this : CellView*) : LibGtk::TreePath*
  fun cell_view_get_draw_sensitive = gtk_cell_view_get_draw_sensitive(this : CellView*) : Bool
  fun cell_view_get_fit_model = gtk_cell_view_get_fit_model(this : CellView*) : Bool
  fun cell_view_get_model = gtk_cell_view_get_model(this : CellView*) : LibGtk::TreeModel*
  fun cell_view_get_size_of_row = gtk_cell_view_get_size_of_row(this : CellView*, path : LibGtk::TreePath*, requisition : LibGtk::Requisition*) : Bool
  fun cell_view_set_background_color = gtk_cell_view_set_background_color(this : CellView*, color : LibGdk::Color*) : Void
  fun cell_view_set_background_rgba = gtk_cell_view_set_background_rgba(this : CellView*, rgba : LibGdk::RGBA*) : Void
  fun cell_view_set_displayed_row = gtk_cell_view_set_displayed_row(this : CellView*, path : LibGtk::TreePath*) : Void
  fun cell_view_set_draw_sensitive = gtk_cell_view_set_draw_sensitive(this : CellView*, draw_sensitive : Bool) : Void
  fun cell_view_set_fit_model = gtk_cell_view_set_fit_model(this : CellView*, fit_model : Bool) : Void
  fun cell_view_set_model = gtk_cell_view_set_model(this : CellView*, model : LibGtk::TreeModel*) : Void

  struct CheckButton # object
    toggle_button : LibGtk::ToggleButton*
    # Virtual function draw_indicator
  end
  fun check_button_new = gtk_check_button_new() : LibGtk::Widget*
  fun check_button_new_with_label = gtk_check_button_new_with_label(label : UInt8*) : LibGtk::Widget*
  fun check_button_new_with_mnemonic = gtk_check_button_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*

  struct CheckMenuItem # object
    menu_item : LibGtk::MenuItem*
    priv : LibGtk::CheckMenuItemPrivate*
    # Signal toggled
    # Virtual function draw_indicator
    # Virtual function toggled
    # Property active : Bool
    # Property draw_as_radio : Bool
    # Property inconsistent : Bool
  end
  fun check_menu_item_new = gtk_check_menu_item_new() : LibGtk::Widget*
  fun check_menu_item_new_with_label = gtk_check_menu_item_new_with_label(label : UInt8*) : LibGtk::Widget*
  fun check_menu_item_new_with_mnemonic = gtk_check_menu_item_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*
  fun check_menu_item_get_active = gtk_check_menu_item_get_active(this : CheckMenuItem*) : Bool
  fun check_menu_item_get_draw_as_radio = gtk_check_menu_item_get_draw_as_radio(this : CheckMenuItem*) : Bool
  fun check_menu_item_get_inconsistent = gtk_check_menu_item_get_inconsistent(this : CheckMenuItem*) : Bool
  fun check_menu_item_set_active = gtk_check_menu_item_set_active(this : CheckMenuItem*, is_active : Bool) : Void
  fun check_menu_item_set_draw_as_radio = gtk_check_menu_item_set_draw_as_radio(this : CheckMenuItem*, draw_as_radio : Bool) : Void
  fun check_menu_item_set_inconsistent = gtk_check_menu_item_set_inconsistent(this : CheckMenuItem*, setting : Bool) : Void
  fun check_menu_item_toggled = gtk_check_menu_item_toggled(this : CheckMenuItem*) : Void

  struct CheckMenuItemAccessible # object
    parent : LibGtk::MenuItemAccessible*
    priv : LibGtk::CheckMenuItemAccessiblePrivate*
  end

  struct Clipboard # object
    _data : UInt8[0]
    # Signal owner-change
  end
  fun clipboard_get = gtk_clipboard_get(selection : LibGdk::Atom*) : LibGtk::Clipboard*
  fun clipboard_get_default = gtk_clipboard_get_default(display : LibGdk::Display*) : LibGtk::Clipboard*
  fun clipboard_get_for_display = gtk_clipboard_get_for_display(display : LibGdk::Display*, selection : LibGdk::Atom*) : LibGtk::Clipboard*
  fun clipboard_clear = gtk_clipboard_clear(this : Clipboard*) : Void
  fun clipboard_get_display = gtk_clipboard_get_display(this : Clipboard*) : LibGdk::Display*
  fun clipboard_get_owner = gtk_clipboard_get_owner(this : Clipboard*) : LibGObject::Object*
  fun clipboard_request_contents = gtk_clipboard_request_contents(this : Clipboard*, target : LibGdk::Atom*, callback : LibGtk::ClipboardReceivedFunc, user_data : Void*) : Void
  fun clipboard_request_image = gtk_clipboard_request_image(this : Clipboard*, callback : LibGtk::ClipboardImageReceivedFunc, user_data : Void*) : Void
  fun clipboard_request_rich_text = gtk_clipboard_request_rich_text(this : Clipboard*, buffer : LibGtk::TextBuffer*, callback : LibGtk::ClipboardRichTextReceivedFunc, user_data : Void*) : Void
  fun clipboard_request_targets = gtk_clipboard_request_targets(this : Clipboard*, callback : LibGtk::ClipboardTargetsReceivedFunc, user_data : Void*) : Void
  fun clipboard_request_text = gtk_clipboard_request_text(this : Clipboard*, callback : LibGtk::ClipboardTextReceivedFunc, user_data : Void*) : Void
  fun clipboard_request_uris = gtk_clipboard_request_uris(this : Clipboard*, callback : LibGtk::ClipboardURIReceivedFunc, user_data : Void*) : Void
  fun clipboard_set_can_store = gtk_clipboard_set_can_store(this : Clipboard*, targets : LibGtk::TargetEntry*, n_targets : Int32) : Void
  fun clipboard_set_image = gtk_clipboard_set_image(this : Clipboard*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun clipboard_set_text = gtk_clipboard_set_text(this : Clipboard*, text : UInt8*, len : Int32) : Void
  fun clipboard_store = gtk_clipboard_store(this : Clipboard*) : Void
  fun clipboard_wait_for_contents = gtk_clipboard_wait_for_contents(this : Clipboard*, target : LibGdk::Atom*) : LibGtk::SelectionData*
  fun clipboard_wait_for_image = gtk_clipboard_wait_for_image(this : Clipboard*) : LibGdkPixbuf::Pixbuf*
  fun clipboard_wait_for_rich_text = gtk_clipboard_wait_for_rich_text(this : Clipboard*, buffer : LibGtk::TextBuffer*, format : LibGdk::Atom**, length : UInt64*) : UInt8*
  fun clipboard_wait_for_targets = gtk_clipboard_wait_for_targets(this : Clipboard*, targets : LibGdk::Atom***, n_targets : Int32*) : Bool
  fun clipboard_wait_for_text = gtk_clipboard_wait_for_text(this : Clipboard*) : UInt8*
  fun clipboard_wait_for_uris = gtk_clipboard_wait_for_uris(this : Clipboard*) : UInt8**
  fun clipboard_wait_is_image_available = gtk_clipboard_wait_is_image_available(this : Clipboard*) : Bool
  fun clipboard_wait_is_rich_text_available = gtk_clipboard_wait_is_rich_text_available(this : Clipboard*, buffer : LibGtk::TextBuffer*) : Bool
  fun clipboard_wait_is_target_available = gtk_clipboard_wait_is_target_available(this : Clipboard*, target : LibGdk::Atom*) : Bool
  fun clipboard_wait_is_text_available = gtk_clipboard_wait_is_text_available(this : Clipboard*) : Bool
  fun clipboard_wait_is_uris_available = gtk_clipboard_wait_is_uris_available(this : Clipboard*) : Bool

  struct ColorButton # object
    button : LibGtk::Button*
    priv : LibGtk::ColorButtonPrivate*
    # Signal color-set
    # Virtual function color_set
    # Property alpha : UInt32
    # Property color : LibGdk::Color
    # Property rgba : LibGdk::RGBA
    # Property show_editor : Bool
    # Property title : UInt8*
    # Property use_alpha : Bool
  end
  fun color_button_new = gtk_color_button_new() : LibGtk::Widget*
  fun color_button_new_with_color = gtk_color_button_new_with_color(color : LibGdk::Color*) : LibGtk::Widget*
  fun color_button_new_with_rgba = gtk_color_button_new_with_rgba(rgba : LibGdk::RGBA*) : LibGtk::Widget*
  fun color_button_get_alpha = gtk_color_button_get_alpha(this : ColorButton*) : UInt16
  fun color_button_get_color = gtk_color_button_get_color(this : ColorButton*, color : LibGdk::Color*) : Void
  fun color_button_get_title = gtk_color_button_get_title(this : ColorButton*) : UInt8*
  fun color_button_get_use_alpha = gtk_color_button_get_use_alpha(this : ColorButton*) : Bool
  fun color_button_set_alpha = gtk_color_button_set_alpha(this : ColorButton*, alpha : UInt16) : Void
  fun color_button_set_color = gtk_color_button_set_color(this : ColorButton*, color : LibGdk::Color*) : Void
  fun color_button_set_title = gtk_color_button_set_title(this : ColorButton*, title : UInt8*) : Void
  fun color_button_set_use_alpha = gtk_color_button_set_use_alpha(this : ColorButton*, use_alpha : Bool) : Void

  struct ColorChooserDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::ColorChooserDialogPrivate*
    # Property show_editor : Bool
  end
  fun color_chooser_dialog_new = gtk_color_chooser_dialog_new(title : UInt8*, parent : LibGtk::Window*) : LibGtk::Widget*

  struct ColorChooserWidget # object
    parent_instance : LibGtk::Box*
    priv : LibGtk::ColorChooserWidgetPrivate*
    # Property show_editor : Bool
  end
  fun color_chooser_widget_new = gtk_color_chooser_widget_new() : LibGtk::Widget*

  struct ColorSelection # object
    parent_instance : LibGtk::Box*
    private_data : LibGtk::ColorSelectionPrivate*
    # Signal color-changed
    # Virtual function color_changed
    # Property current_alpha : UInt32
    # Property current_color : LibGdk::Color
    # Property current_rgba : LibGdk::RGBA
    # Property has_opacity_control : Bool
    # Property has_palette : Bool
  end
  fun color_selection_new = gtk_color_selection_new() : LibGtk::Widget*
  fun color_selection_palette_from_string = gtk_color_selection_palette_from_string(str : UInt8*, colors : LibGdk::Color**, n_colors : Int32*) : Bool
  fun color_selection_palette_to_string = gtk_color_selection_palette_to_string(colors : LibGdk::Color*, n_colors : Int32) : UInt8*
  fun color_selection_get_current_alpha = gtk_color_selection_get_current_alpha(this : ColorSelection*) : UInt16
  fun color_selection_get_current_color = gtk_color_selection_get_current_color(this : ColorSelection*, color : LibGdk::Color*) : Void
  fun color_selection_get_current_rgba = gtk_color_selection_get_current_rgba(this : ColorSelection*, rgba : LibGdk::RGBA*) : Void
  fun color_selection_get_has_opacity_control = gtk_color_selection_get_has_opacity_control(this : ColorSelection*) : Bool
  fun color_selection_get_has_palette = gtk_color_selection_get_has_palette(this : ColorSelection*) : Bool
  fun color_selection_get_previous_alpha = gtk_color_selection_get_previous_alpha(this : ColorSelection*) : UInt16
  fun color_selection_get_previous_color = gtk_color_selection_get_previous_color(this : ColorSelection*, color : LibGdk::Color*) : Void
  fun color_selection_get_previous_rgba = gtk_color_selection_get_previous_rgba(this : ColorSelection*, rgba : LibGdk::RGBA*) : Void
  fun color_selection_is_adjusting = gtk_color_selection_is_adjusting(this : ColorSelection*) : Bool
  fun color_selection_set_current_alpha = gtk_color_selection_set_current_alpha(this : ColorSelection*, alpha : UInt16) : Void
  fun color_selection_set_current_color = gtk_color_selection_set_current_color(this : ColorSelection*, color : LibGdk::Color*) : Void
  fun color_selection_set_current_rgba = gtk_color_selection_set_current_rgba(this : ColorSelection*, rgba : LibGdk::RGBA*) : Void
  fun color_selection_set_has_opacity_control = gtk_color_selection_set_has_opacity_control(this : ColorSelection*, has_opacity : Bool) : Void
  fun color_selection_set_has_palette = gtk_color_selection_set_has_palette(this : ColorSelection*, has_palette : Bool) : Void
  fun color_selection_set_previous_alpha = gtk_color_selection_set_previous_alpha(this : ColorSelection*, alpha : UInt16) : Void
  fun color_selection_set_previous_color = gtk_color_selection_set_previous_color(this : ColorSelection*, color : LibGdk::Color*) : Void
  fun color_selection_set_previous_rgba = gtk_color_selection_set_previous_rgba(this : ColorSelection*, rgba : LibGdk::RGBA*) : Void

  struct ColorSelectionDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::ColorSelectionDialogPrivate*
    # Property cancel_button : LibGtk::Widget*
    # Property color_selection : LibGtk::Widget*
    # Property help_button : LibGtk::Widget*
    # Property ok_button : LibGtk::Widget*
  end
  fun color_selection_dialog_new = gtk_color_selection_dialog_new(title : UInt8*) : LibGtk::Widget*
  fun color_selection_dialog_get_color_selection = gtk_color_selection_dialog_get_color_selection(this : ColorSelectionDialog*) : LibGtk::Widget*

  struct ComboBox # object
    parent_instance : LibGtk::Bin*
    priv : LibGtk::ComboBoxPrivate*
    # Signal changed
    # Signal format-entry-text
    # Signal move-active
    # Signal popdown
    # Signal popup
    # Virtual function changed
    # Virtual function format_entry_text
    # Property active : Int32
    # Property active_id : UInt8*
    # Property add_tearoffs : Bool
    # Property button_sensitivity : LibGtk::SensitivityType
    # Property cell_area : LibGtk::CellArea*
    # Property column_span_column : Int32
    # Property entry_text_column : Int32
    # Property has_entry : Bool
    # Property has_frame : Bool
    # Property id_column : Int32
    # Property model : LibGtk::TreeModel
    # Property popup_fixed_width : Bool
    # Property popup_shown : Bool
    # Property row_span_column : Int32
    # Property tearoff_title : UInt8*
    # Property wrap_width : Int32
  end
  fun combo_box_new = gtk_combo_box_new() : LibGtk::Widget*
  fun combo_box_new_with_area = gtk_combo_box_new_with_area(area : LibGtk::CellArea*) : LibGtk::Widget*
  fun combo_box_new_with_area_and_entry = gtk_combo_box_new_with_area_and_entry(area : LibGtk::CellArea*) : LibGtk::Widget*
  fun combo_box_new_with_entry = gtk_combo_box_new_with_entry() : LibGtk::Widget*
  fun combo_box_new_with_model = gtk_combo_box_new_with_model(model : LibGtk::TreeModel*) : LibGtk::Widget*
  fun combo_box_new_with_model_and_entry = gtk_combo_box_new_with_model_and_entry(model : LibGtk::TreeModel*) : LibGtk::Widget*
  fun combo_box_get_active = gtk_combo_box_get_active(this : ComboBox*) : Int32
  fun combo_box_get_active_id = gtk_combo_box_get_active_id(this : ComboBox*) : UInt8*
  fun combo_box_get_active_iter = gtk_combo_box_get_active_iter(this : ComboBox*, iter : LibGtk::TreeIter*) : Bool
  fun combo_box_get_add_tearoffs = gtk_combo_box_get_add_tearoffs(this : ComboBox*) : Bool
  fun combo_box_get_button_sensitivity = gtk_combo_box_get_button_sensitivity(this : ComboBox*) : LibGtk::SensitivityType
  fun combo_box_get_column_span_column = gtk_combo_box_get_column_span_column(this : ComboBox*) : Int32
  fun combo_box_get_entry_text_column = gtk_combo_box_get_entry_text_column(this : ComboBox*) : Int32
  fun combo_box_get_focus_on_click = gtk_combo_box_get_focus_on_click(this : ComboBox*) : Bool
  fun combo_box_get_has_entry = gtk_combo_box_get_has_entry(this : ComboBox*) : Bool
  fun combo_box_get_id_column = gtk_combo_box_get_id_column(this : ComboBox*) : Int32
  fun combo_box_get_model = gtk_combo_box_get_model(this : ComboBox*) : LibGtk::TreeModel*
  fun combo_box_get_popup_accessible = gtk_combo_box_get_popup_accessible(this : ComboBox*) : LibAtk::Object*
  fun combo_box_get_popup_fixed_width = gtk_combo_box_get_popup_fixed_width(this : ComboBox*) : Bool
  fun combo_box_get_row_span_column = gtk_combo_box_get_row_span_column(this : ComboBox*) : Int32
  fun combo_box_get_title = gtk_combo_box_get_title(this : ComboBox*) : UInt8*
  fun combo_box_get_wrap_width = gtk_combo_box_get_wrap_width(this : ComboBox*) : Int32
  fun combo_box_popdown = gtk_combo_box_popdown(this : ComboBox*) : Void
  fun combo_box_popup = gtk_combo_box_popup(this : ComboBox*) : Void
  fun combo_box_popup_for_device = gtk_combo_box_popup_for_device(this : ComboBox*, device : LibGdk::Device*) : Void
  fun combo_box_set_active = gtk_combo_box_set_active(this : ComboBox*, index : Int32) : Void
  fun combo_box_set_active_id = gtk_combo_box_set_active_id(this : ComboBox*, active_id : UInt8*) : Bool
  fun combo_box_set_active_iter = gtk_combo_box_set_active_iter(this : ComboBox*, iter : LibGtk::TreeIter*) : Void
  fun combo_box_set_add_tearoffs = gtk_combo_box_set_add_tearoffs(this : ComboBox*, add_tearoffs : Bool) : Void
  fun combo_box_set_button_sensitivity = gtk_combo_box_set_button_sensitivity(this : ComboBox*, sensitivity : LibGtk::SensitivityType) : Void
  fun combo_box_set_column_span_column = gtk_combo_box_set_column_span_column(this : ComboBox*, column_span : Int32) : Void
  fun combo_box_set_entry_text_column = gtk_combo_box_set_entry_text_column(this : ComboBox*, text_column : Int32) : Void
  fun combo_box_set_focus_on_click = gtk_combo_box_set_focus_on_click(this : ComboBox*, focus_on_click : Bool) : Void
  fun combo_box_set_id_column = gtk_combo_box_set_id_column(this : ComboBox*, id_column : Int32) : Void
  fun combo_box_set_model = gtk_combo_box_set_model(this : ComboBox*, model : LibGtk::TreeModel*) : Void
  fun combo_box_set_popup_fixed_width = gtk_combo_box_set_popup_fixed_width(this : ComboBox*, fixed : Bool) : Void
  fun combo_box_set_row_separator_func = gtk_combo_box_set_row_separator_func(this : ComboBox*, func : LibGtk::TreeViewRowSeparatorFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun combo_box_set_row_span_column = gtk_combo_box_set_row_span_column(this : ComboBox*, row_span : Int32) : Void
  fun combo_box_set_title = gtk_combo_box_set_title(this : ComboBox*, title : UInt8*) : Void
  fun combo_box_set_wrap_width = gtk_combo_box_set_wrap_width(this : ComboBox*, width : Int32) : Void

  struct ComboBoxAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::ComboBoxAccessiblePrivate*
  end

  struct ComboBoxText # object
    parent_instance : LibGtk::ComboBox*
    priv : LibGtk::ComboBoxTextPrivate*
  end
  fun combo_box_text_new = gtk_combo_box_text_new() : LibGtk::Widget*
  fun combo_box_text_new_with_entry = gtk_combo_box_text_new_with_entry() : LibGtk::Widget*
  fun combo_box_text_append = gtk_combo_box_text_append(this : ComboBoxText*, id : UInt8*, text : UInt8*) : Void
  fun combo_box_text_append_text = gtk_combo_box_text_append_text(this : ComboBoxText*, text : UInt8*) : Void
  fun combo_box_text_get_active_text = gtk_combo_box_text_get_active_text(this : ComboBoxText*) : UInt8*
  fun combo_box_text_insert = gtk_combo_box_text_insert(this : ComboBoxText*, position : Int32, id : UInt8*, text : UInt8*) : Void
  fun combo_box_text_insert_text = gtk_combo_box_text_insert_text(this : ComboBoxText*, position : Int32, text : UInt8*) : Void
  fun combo_box_text_prepend = gtk_combo_box_text_prepend(this : ComboBoxText*, id : UInt8*, text : UInt8*) : Void
  fun combo_box_text_prepend_text = gtk_combo_box_text_prepend_text(this : ComboBoxText*, text : UInt8*) : Void
  fun combo_box_text_remove = gtk_combo_box_text_remove(this : ComboBoxText*, position : Int32) : Void
  fun combo_box_text_remove_all = gtk_combo_box_text_remove_all(this : ComboBoxText*) : Void

  struct Container # object
    widget : LibGtk::Widget*
    priv : LibGtk::ContainerPrivate*
    # Signal add
    # Signal check-resize
    # Signal remove
    # Signal set-focus-child
    # Virtual function add
    # Virtual function check_resize
    # Virtual function child_type
    # Virtual function composite_name
    # Virtual function forall
    # Virtual function get_child_property
    # Virtual function get_path_for_child
    # Virtual function remove
    # Virtual function set_child_property
    # Virtual function set_focus_child
    # Property border_width : UInt32
    # Property child : LibGtk::Widget*
    # Property resize_mode : LibGtk::ResizeMode
  end
  fun container_add = gtk_container_add(this : Container*, widget : LibGtk::Widget*) : Void
  fun container_check_resize = gtk_container_check_resize(this : Container*) : Void
  fun container_child_get_property = gtk_container_child_get_property(this : Container*, child : LibGtk::Widget*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun container_child_notify = gtk_container_child_notify(this : Container*, child : LibGtk::Widget*, child_property : UInt8*) : Void
  fun container_child_notify_by_pspec = gtk_container_child_notify_by_pspec(this : Container*, child : LibGtk::Widget*, pspec : LibGObject::ParamSpec*) : Void
  fun container_child_set_property = gtk_container_child_set_property(this : Container*, child : LibGtk::Widget*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun container_child_type = gtk_container_child_type(this : Container*) : UInt64
  fun container_forall = gtk_container_forall(this : Container*, callback : LibGtk::Callback, callback_data : Void*) : Void
  fun container_foreach = gtk_container_foreach(this : Container*, callback : LibGtk::Callback, callback_data : Void*) : Void
  fun container_get_border_width = gtk_container_get_border_width(this : Container*) : UInt32
  fun container_get_children = gtk_container_get_children(this : Container*) : Void**
  fun container_get_focus_chain = gtk_container_get_focus_chain(this : Container*, focusable_widgets : Void***) : Bool
  fun container_get_focus_child = gtk_container_get_focus_child(this : Container*) : LibGtk::Widget*
  fun container_get_focus_hadjustment = gtk_container_get_focus_hadjustment(this : Container*) : LibGtk::Adjustment*
  fun container_get_focus_vadjustment = gtk_container_get_focus_vadjustment(this : Container*) : LibGtk::Adjustment*
  fun container_get_path_for_child = gtk_container_get_path_for_child(this : Container*, child : LibGtk::Widget*) : LibGtk::WidgetPath*
  fun container_get_resize_mode = gtk_container_get_resize_mode(this : Container*) : LibGtk::ResizeMode
  fun container_propagate_draw = gtk_container_propagate_draw(this : Container*, child : LibGtk::Widget*, cr : LibCairo::Context*) : Void
  fun container_remove = gtk_container_remove(this : Container*, widget : LibGtk::Widget*) : Void
  fun container_resize_children = gtk_container_resize_children(this : Container*) : Void
  fun container_set_border_width = gtk_container_set_border_width(this : Container*, border_width : UInt32) : Void
  fun container_set_focus_chain = gtk_container_set_focus_chain(this : Container*, focusable_widgets : Void**) : Void
  fun container_set_focus_child = gtk_container_set_focus_child(this : Container*, child : LibGtk::Widget*) : Void
  fun container_set_focus_hadjustment = gtk_container_set_focus_hadjustment(this : Container*, adjustment : LibGtk::Adjustment*) : Void
  fun container_set_focus_vadjustment = gtk_container_set_focus_vadjustment(this : Container*, adjustment : LibGtk::Adjustment*) : Void
  fun container_set_reallocate_redraws = gtk_container_set_reallocate_redraws(this : Container*, needs_redraws : Bool) : Void
  fun container_set_resize_mode = gtk_container_set_resize_mode(this : Container*, resize_mode : LibGtk::ResizeMode) : Void
  fun container_unset_focus_chain = gtk_container_unset_focus_chain(this : Container*) : Void

  struct ContainerAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::ContainerAccessiblePrivate*
  end

  struct ContainerCellAccessible # object
    parent : LibGtk::CellAccessible*
    priv : LibGtk::ContainerCellAccessiblePrivate*
  end
  fun container_cell_accessible_new = gtk_container_cell_accessible_new() : LibGtk::ContainerCellAccessible*
  fun container_cell_accessible_add_child = gtk_container_cell_accessible_add_child(this : ContainerCellAccessible*, child : LibGtk::CellAccessible*) : Void
  fun container_cell_accessible_get_children = gtk_container_cell_accessible_get_children(this : ContainerCellAccessible*) : Void**
  fun container_cell_accessible_remove_child = gtk_container_cell_accessible_remove_child(this : ContainerCellAccessible*, child : LibGtk::CellAccessible*) : Void

  struct CssProvider # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::CssProviderPrivate*
    # Signal parsing-error
    # Virtual function parsing_error
  end
  fun css_provider_new = gtk_css_provider_new() : LibGtk::CssProvider*
  fun css_provider_get_default = gtk_css_provider_get_default() : LibGtk::CssProvider*
  fun css_provider_get_named = gtk_css_provider_get_named(name : UInt8*, variant : UInt8*) : LibGtk::CssProvider*
  fun css_provider_load_from_data = gtk_css_provider_load_from_data(this : CssProvider*, data : UInt8*, length : Int64, error : LibGLib::Error**) : Bool
  fun css_provider_load_from_file = gtk_css_provider_load_from_file(this : CssProvider*, file : LibGio::File*, error : LibGLib::Error**) : Bool
  fun css_provider_load_from_path = gtk_css_provider_load_from_path(this : CssProvider*, path : UInt8*, error : LibGLib::Error**) : Bool
  fun css_provider_load_from_resource = gtk_css_provider_load_from_resource(this : CssProvider*, resource_path : UInt8*) : Void
  fun css_provider_to_string = gtk_css_provider_to_string(this : CssProvider*) : UInt8*

  struct Dialog # object
    window : LibGtk::Window*
    priv : LibGtk::DialogPrivate*
    # Signal close
    # Signal response
    # Virtual function close
    # Virtual function response
    # Property use_header_bar : Int32
  end
  fun dialog_new = gtk_dialog_new() : LibGtk::Widget*
  fun dialog_add_action_widget = gtk_dialog_add_action_widget(this : Dialog*, child : LibGtk::Widget*, response_id : Int32) : Void
  fun dialog_add_button = gtk_dialog_add_button(this : Dialog*, button_text : UInt8*, response_id : Int32) : LibGtk::Widget*
  fun dialog_get_action_area = gtk_dialog_get_action_area(this : Dialog*) : LibGtk::Widget*
  fun dialog_get_content_area = gtk_dialog_get_content_area(this : Dialog*) : LibGtk::Box*
  fun dialog_get_header_bar = gtk_dialog_get_header_bar(this : Dialog*) : LibGtk::Widget*
  fun dialog_get_response_for_widget = gtk_dialog_get_response_for_widget(this : Dialog*, widget : LibGtk::Widget*) : Int32
  fun dialog_get_widget_for_response = gtk_dialog_get_widget_for_response(this : Dialog*, response_id : Int32) : LibGtk::Widget*
  fun dialog_response = gtk_dialog_response(this : Dialog*, response_id : Int32) : Void
  fun dialog_run = gtk_dialog_run(this : Dialog*) : Int32
  fun dialog_set_alternative_button_order_from_array = gtk_dialog_set_alternative_button_order_from_array(this : Dialog*, n_params : Int32, new_order : Int32*) : Void
  fun dialog_set_default_response = gtk_dialog_set_default_response(this : Dialog*, response_id : Int32) : Void
  fun dialog_set_response_sensitive = gtk_dialog_set_response_sensitive(this : Dialog*, response_id : Int32, setting : Bool) : Void

  struct DrawingArea # object
    widget : LibGtk::Widget*
    dummy : Void*
  end
  fun drawing_area_new = gtk_drawing_area_new() : LibGtk::Widget*

  struct Entry # object
    parent_instance : LibGtk::Widget*
    priv : LibGtk::EntryPrivate*
    # Signal activate
    # Signal backspace
    # Signal copy-clipboard
    # Signal cut-clipboard
    # Signal delete-from-cursor
    # Signal icon-press
    # Signal icon-release
    # Signal insert-at-cursor
    # Signal insert-emoji
    # Signal move-cursor
    # Signal paste-clipboard
    # Signal populate-popup
    # Signal preedit-changed
    # Signal toggle-overwrite
    # Virtual function activate
    # Virtual function backspace
    # Virtual function copy_clipboard
    # Virtual function cut_clipboard
    # Virtual function delete_from_cursor
    # Virtual function get_frame_size
    # Virtual function get_text_area_size
    # Virtual function insert_at_cursor
    # Virtual function insert_emoji
    # Virtual function move_cursor
    # Virtual function paste_clipboard
    # Virtual function populate_popup
    # Virtual function toggle_overwrite
    # Property activates_default : Bool
    # Property attributes : LibPango::AttrList
    # Property buffer : LibGtk::EntryBuffer*
    # Property caps_lock_warning : Bool
    # Property completion : LibGtk::EntryCompletion*
    # Property cursor_position : Int32
    # Property editable : Bool
    # Property enable_emoji_completion : Bool
    # Property has_frame : Bool
    # Property im_module : UInt8*
    # Property inner_border : LibGtk::Border
    # Property input_hints : LibGtk::InputHints
    # Property input_purpose : LibGtk::InputPurpose
    # Property invisible_char : UInt32
    # Property invisible_char_set : Bool
    # Property max_length : Int32
    # Property max_width_chars : Int32
    # Property overwrite_mode : Bool
    # Property placeholder_text : UInt8*
    # Property populate_all : Bool
    # Property primary_icon_activatable : Bool
    # Property primary_icon_gicon : LibGio::Icon
    # Property primary_icon_name : UInt8*
    # Property primary_icon_pixbuf : LibGdkPixbuf::Pixbuf*
    # Property primary_icon_sensitive : Bool
    # Property primary_icon_stock : UInt8*
    # Property primary_icon_storage_type : LibGtk::ImageType
    # Property primary_icon_tooltip_markup : UInt8*
    # Property primary_icon_tooltip_text : UInt8*
    # Property progress_fraction : Float64
    # Property progress_pulse_step : Float64
    # Property scroll_offset : Int32
    # Property secondary_icon_activatable : Bool
    # Property secondary_icon_gicon : LibGio::Icon
    # Property secondary_icon_name : UInt8*
    # Property secondary_icon_pixbuf : LibGdkPixbuf::Pixbuf*
    # Property secondary_icon_sensitive : Bool
    # Property secondary_icon_stock : UInt8*
    # Property secondary_icon_storage_type : LibGtk::ImageType
    # Property secondary_icon_tooltip_markup : UInt8*
    # Property secondary_icon_tooltip_text : UInt8*
    # Property selection_bound : Int32
    # Property shadow_type : LibGtk::ShadowType
    # Property show_emoji_icon : Bool
    # Property tabs : LibPango::TabArray
    # Property text : UInt8*
    # Property text_length : UInt32
    # Property truncate_multiline : Bool
    # Property visibility : Bool
    # Property width_chars : Int32
    # Property xalign : Float32
  end
  fun entry_new = gtk_entry_new() : LibGtk::Widget*
  fun entry_new_with_buffer = gtk_entry_new_with_buffer(buffer : LibGtk::EntryBuffer*) : LibGtk::Widget*
  fun entry_get_activates_default = gtk_entry_get_activates_default(this : Entry*) : Bool
  fun entry_get_alignment = gtk_entry_get_alignment(this : Entry*) : Float32
  fun entry_get_attributes = gtk_entry_get_attributes(this : Entry*) : LibPango::AttrList*
  fun entry_get_buffer = gtk_entry_get_buffer(this : Entry*) : LibGtk::EntryBuffer*
  fun entry_get_completion = gtk_entry_get_completion(this : Entry*) : LibGtk::EntryCompletion*
  fun entry_get_current_icon_drag_source = gtk_entry_get_current_icon_drag_source(this : Entry*) : Int32
  fun entry_get_cursor_hadjustment = gtk_entry_get_cursor_hadjustment(this : Entry*) : LibGtk::Adjustment*
  fun entry_get_has_frame = gtk_entry_get_has_frame(this : Entry*) : Bool
  fun entry_get_icon_activatable = gtk_entry_get_icon_activatable(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : Bool
  fun entry_get_icon_area = gtk_entry_get_icon_area(this : Entry*, icon_pos : LibGtk::EntryIconPosition, icon_area : LibGdk::Rectangle*) : Void
  fun entry_get_icon_at_pos = gtk_entry_get_icon_at_pos(this : Entry*, x : Int32, y : Int32) : Int32
  fun entry_get_icon_gicon = gtk_entry_get_icon_gicon(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : LibGio::Icon*
  fun entry_get_icon_name = gtk_entry_get_icon_name(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : UInt8*
  fun entry_get_icon_pixbuf = gtk_entry_get_icon_pixbuf(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : LibGdkPixbuf::Pixbuf*
  fun entry_get_icon_sensitive = gtk_entry_get_icon_sensitive(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : Bool
  fun entry_get_icon_stock = gtk_entry_get_icon_stock(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : UInt8*
  fun entry_get_icon_storage_type = gtk_entry_get_icon_storage_type(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : LibGtk::ImageType
  fun entry_get_icon_tooltip_markup = gtk_entry_get_icon_tooltip_markup(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : UInt8*
  fun entry_get_icon_tooltip_text = gtk_entry_get_icon_tooltip_text(this : Entry*, icon_pos : LibGtk::EntryIconPosition) : UInt8*
  fun entry_get_inner_border = gtk_entry_get_inner_border(this : Entry*) : LibGtk::Border*
  fun entry_get_input_hints = gtk_entry_get_input_hints(this : Entry*) : LibGtk::InputHints
  fun entry_get_input_purpose = gtk_entry_get_input_purpose(this : Entry*) : LibGtk::InputPurpose
  fun entry_get_invisible_char = gtk_entry_get_invisible_char(this : Entry*) : UInt8
  fun entry_get_layout = gtk_entry_get_layout(this : Entry*) : LibPango::Layout*
  fun entry_get_layout_offsets = gtk_entry_get_layout_offsets(this : Entry*, x : Int32*, y : Int32*) : Void
  fun entry_get_max_length = gtk_entry_get_max_length(this : Entry*) : Int32
  fun entry_get_max_width_chars = gtk_entry_get_max_width_chars(this : Entry*) : Int32
  fun entry_get_overwrite_mode = gtk_entry_get_overwrite_mode(this : Entry*) : Bool
  fun entry_get_placeholder_text = gtk_entry_get_placeholder_text(this : Entry*) : UInt8*
  fun entry_get_progress_fraction = gtk_entry_get_progress_fraction(this : Entry*) : Float64
  fun entry_get_progress_pulse_step = gtk_entry_get_progress_pulse_step(this : Entry*) : Float64
  fun entry_get_tabs = gtk_entry_get_tabs(this : Entry*) : LibPango::TabArray*
  fun entry_get_text = gtk_entry_get_text(this : Entry*) : UInt8*
  fun entry_get_text_area = gtk_entry_get_text_area(this : Entry*, text_area : LibGdk::Rectangle*) : Void
  fun entry_get_text_length = gtk_entry_get_text_length(this : Entry*) : UInt16
  fun entry_get_visibility = gtk_entry_get_visibility(this : Entry*) : Bool
  fun entry_get_width_chars = gtk_entry_get_width_chars(this : Entry*) : Int32
  fun entry_grab_focus_without_selecting = gtk_entry_grab_focus_without_selecting(this : Entry*) : Void
  fun entry_im_context_filter_keypress = gtk_entry_im_context_filter_keypress(this : Entry*, event : LibGdk::EventKey*) : Bool
  fun entry_layout_index_to_text_index = gtk_entry_layout_index_to_text_index(this : Entry*, layout_index : Int32) : Int32
  fun entry_progress_pulse = gtk_entry_progress_pulse(this : Entry*) : Void
  fun entry_reset_im_context = gtk_entry_reset_im_context(this : Entry*) : Void
  fun entry_set_activates_default = gtk_entry_set_activates_default(this : Entry*, setting : Bool) : Void
  fun entry_set_alignment = gtk_entry_set_alignment(this : Entry*, xalign : Float32) : Void
  fun entry_set_attributes = gtk_entry_set_attributes(this : Entry*, attrs : LibPango::AttrList*) : Void
  fun entry_set_buffer = gtk_entry_set_buffer(this : Entry*, buffer : LibGtk::EntryBuffer*) : Void
  fun entry_set_completion = gtk_entry_set_completion(this : Entry*, completion : LibGtk::EntryCompletion*) : Void
  fun entry_set_cursor_hadjustment = gtk_entry_set_cursor_hadjustment(this : Entry*, adjustment : LibGtk::Adjustment*) : Void
  fun entry_set_has_frame = gtk_entry_set_has_frame(this : Entry*, setting : Bool) : Void
  fun entry_set_icon_activatable = gtk_entry_set_icon_activatable(this : Entry*, icon_pos : LibGtk::EntryIconPosition, activatable : Bool) : Void
  fun entry_set_icon_drag_source = gtk_entry_set_icon_drag_source(this : Entry*, icon_pos : LibGtk::EntryIconPosition, target_list : LibGtk::TargetList*, actions : LibGdk::DragAction) : Void
  fun entry_set_icon_from_gicon = gtk_entry_set_icon_from_gicon(this : Entry*, icon_pos : LibGtk::EntryIconPosition, icon : LibGio::Icon*) : Void
  fun entry_set_icon_from_icon_name = gtk_entry_set_icon_from_icon_name(this : Entry*, icon_pos : LibGtk::EntryIconPosition, icon_name : UInt8*) : Void
  fun entry_set_icon_from_pixbuf = gtk_entry_set_icon_from_pixbuf(this : Entry*, icon_pos : LibGtk::EntryIconPosition, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun entry_set_icon_from_stock = gtk_entry_set_icon_from_stock(this : Entry*, icon_pos : LibGtk::EntryIconPosition, stock_id : UInt8*) : Void
  fun entry_set_icon_sensitive = gtk_entry_set_icon_sensitive(this : Entry*, icon_pos : LibGtk::EntryIconPosition, sensitive : Bool) : Void
  fun entry_set_icon_tooltip_markup = gtk_entry_set_icon_tooltip_markup(this : Entry*, icon_pos : LibGtk::EntryIconPosition, tooltip : UInt8*) : Void
  fun entry_set_icon_tooltip_text = gtk_entry_set_icon_tooltip_text(this : Entry*, icon_pos : LibGtk::EntryIconPosition, tooltip : UInt8*) : Void
  fun entry_set_inner_border = gtk_entry_set_inner_border(this : Entry*, border : LibGtk::Border*) : Void
  fun entry_set_input_hints = gtk_entry_set_input_hints(this : Entry*, hints : LibGtk::InputHints) : Void
  fun entry_set_input_purpose = gtk_entry_set_input_purpose(this : Entry*, purpose : LibGtk::InputPurpose) : Void
  fun entry_set_invisible_char = gtk_entry_set_invisible_char(this : Entry*, ch : UInt8) : Void
  fun entry_set_max_length = gtk_entry_set_max_length(this : Entry*, max : Int32) : Void
  fun entry_set_max_width_chars = gtk_entry_set_max_width_chars(this : Entry*, n_chars : Int32) : Void
  fun entry_set_overwrite_mode = gtk_entry_set_overwrite_mode(this : Entry*, overwrite : Bool) : Void
  fun entry_set_placeholder_text = gtk_entry_set_placeholder_text(this : Entry*, text : UInt8*) : Void
  fun entry_set_progress_fraction = gtk_entry_set_progress_fraction(this : Entry*, fraction : Float64) : Void
  fun entry_set_progress_pulse_step = gtk_entry_set_progress_pulse_step(this : Entry*, fraction : Float64) : Void
  fun entry_set_tabs = gtk_entry_set_tabs(this : Entry*, tabs : LibPango::TabArray*) : Void
  fun entry_set_text = gtk_entry_set_text(this : Entry*, text : UInt8*) : Void
  fun entry_set_visibility = gtk_entry_set_visibility(this : Entry*, visible : Bool) : Void
  fun entry_set_width_chars = gtk_entry_set_width_chars(this : Entry*, n_chars : Int32) : Void
  fun entry_text_index_to_layout_index = gtk_entry_text_index_to_layout_index(this : Entry*, text_index : Int32) : Int32
  fun entry_unset_invisible_char = gtk_entry_unset_invisible_char(this : Entry*) : Void

  struct EntryAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::EntryAccessiblePrivate*
  end

  struct EntryBuffer # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::EntryBufferPrivate*
    # Signal deleted-text
    # Signal inserted-text
    # Virtual function delete_text
    # Virtual function deleted_text
    # Virtual function get_length
    # Virtual function get_text
    # Virtual function insert_text
    # Virtual function inserted_text
    # Property length : UInt32
    # Property max_length : Int32
    # Property text : UInt8*
  end
  fun entry_buffer_new = gtk_entry_buffer_new(initial_chars : UInt8*, n_initial_chars : Int32) : LibGtk::EntryBuffer*
  fun entry_buffer_delete_text = gtk_entry_buffer_delete_text(this : EntryBuffer*, position : UInt32, n_chars : Int32) : UInt32
  fun entry_buffer_emit_deleted_text = gtk_entry_buffer_emit_deleted_text(this : EntryBuffer*, position : UInt32, n_chars : UInt32) : Void
  fun entry_buffer_emit_inserted_text = gtk_entry_buffer_emit_inserted_text(this : EntryBuffer*, position : UInt32, chars : UInt8*, n_chars : UInt32) : Void
  fun entry_buffer_get_bytes = gtk_entry_buffer_get_bytes(this : EntryBuffer*) : UInt64
  fun entry_buffer_get_length = gtk_entry_buffer_get_length(this : EntryBuffer*) : UInt32
  fun entry_buffer_get_max_length = gtk_entry_buffer_get_max_length(this : EntryBuffer*) : Int32
  fun entry_buffer_get_text = gtk_entry_buffer_get_text(this : EntryBuffer*) : UInt8*
  fun entry_buffer_insert_text = gtk_entry_buffer_insert_text(this : EntryBuffer*, position : UInt32, chars : UInt8*, n_chars : Int32) : UInt32
  fun entry_buffer_set_max_length = gtk_entry_buffer_set_max_length(this : EntryBuffer*, max_length : Int32) : Void
  fun entry_buffer_set_text = gtk_entry_buffer_set_text(this : EntryBuffer*, chars : UInt8*, n_chars : Int32) : Void

  struct EntryCompletion # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::EntryCompletionPrivate*
    # Signal action-activated
    # Signal cursor-on-match
    # Signal insert-prefix
    # Signal match-selected
    # Signal no-matches
    # Virtual function action_activated
    # Virtual function cursor_on_match
    # Virtual function insert_prefix
    # Virtual function match_selected
    # Virtual function no_matches
    # Property cell_area : LibGtk::CellArea*
    # Property inline_completion : Bool
    # Property inline_selection : Bool
    # Property minimum_key_length : Int32
    # Property model : LibGtk::TreeModel
    # Property popup_completion : Bool
    # Property popup_set_width : Bool
    # Property popup_single_match : Bool
    # Property text_column : Int32
  end
  fun entry_completion_new = gtk_entry_completion_new() : LibGtk::EntryCompletion*
  fun entry_completion_new_with_area = gtk_entry_completion_new_with_area(area : LibGtk::CellArea*) : LibGtk::EntryCompletion*
  fun entry_completion_complete = gtk_entry_completion_complete(this : EntryCompletion*) : Void
  fun entry_completion_compute_prefix = gtk_entry_completion_compute_prefix(this : EntryCompletion*, key : UInt8*) : UInt8*
  fun entry_completion_delete_action = gtk_entry_completion_delete_action(this : EntryCompletion*, index : Int32) : Void
  fun entry_completion_get_completion_prefix = gtk_entry_completion_get_completion_prefix(this : EntryCompletion*) : UInt8*
  fun entry_completion_get_entry = gtk_entry_completion_get_entry(this : EntryCompletion*) : LibGtk::Widget*
  fun entry_completion_get_inline_completion = gtk_entry_completion_get_inline_completion(this : EntryCompletion*) : Bool
  fun entry_completion_get_inline_selection = gtk_entry_completion_get_inline_selection(this : EntryCompletion*) : Bool
  fun entry_completion_get_minimum_key_length = gtk_entry_completion_get_minimum_key_length(this : EntryCompletion*) : Int32
  fun entry_completion_get_model = gtk_entry_completion_get_model(this : EntryCompletion*) : LibGtk::TreeModel*
  fun entry_completion_get_popup_completion = gtk_entry_completion_get_popup_completion(this : EntryCompletion*) : Bool
  fun entry_completion_get_popup_set_width = gtk_entry_completion_get_popup_set_width(this : EntryCompletion*) : Bool
  fun entry_completion_get_popup_single_match = gtk_entry_completion_get_popup_single_match(this : EntryCompletion*) : Bool
  fun entry_completion_get_text_column = gtk_entry_completion_get_text_column(this : EntryCompletion*) : Int32
  fun entry_completion_insert_action_markup = gtk_entry_completion_insert_action_markup(this : EntryCompletion*, index : Int32, markup : UInt8*) : Void
  fun entry_completion_insert_action_text = gtk_entry_completion_insert_action_text(this : EntryCompletion*, index : Int32, text : UInt8*) : Void
  fun entry_completion_insert_prefix = gtk_entry_completion_insert_prefix(this : EntryCompletion*) : Void
  fun entry_completion_set_inline_completion = gtk_entry_completion_set_inline_completion(this : EntryCompletion*, inline_completion : Bool) : Void
  fun entry_completion_set_inline_selection = gtk_entry_completion_set_inline_selection(this : EntryCompletion*, inline_selection : Bool) : Void
  fun entry_completion_set_match_func = gtk_entry_completion_set_match_func(this : EntryCompletion*, func : LibGtk::EntryCompletionMatchFunc, func_data : Void*, func_notify : LibGLib::DestroyNotify) : Void
  fun entry_completion_set_minimum_key_length = gtk_entry_completion_set_minimum_key_length(this : EntryCompletion*, length : Int32) : Void
  fun entry_completion_set_model = gtk_entry_completion_set_model(this : EntryCompletion*, model : LibGtk::TreeModel*) : Void
  fun entry_completion_set_popup_completion = gtk_entry_completion_set_popup_completion(this : EntryCompletion*, popup_completion : Bool) : Void
  fun entry_completion_set_popup_set_width = gtk_entry_completion_set_popup_set_width(this : EntryCompletion*, popup_set_width : Bool) : Void
  fun entry_completion_set_popup_single_match = gtk_entry_completion_set_popup_single_match(this : EntryCompletion*, popup_single_match : Bool) : Void
  fun entry_completion_set_text_column = gtk_entry_completion_set_text_column(this : EntryCompletion*, column : Int32) : Void

  struct EntryIconAccessible # object
    _data : UInt8[0]
  end

  struct EventBox # object
    bin : LibGtk::Bin*
    priv : LibGtk::EventBoxPrivate*
    # Property above_child : Bool
    # Property visible_window : Bool
  end
  fun event_box_new = gtk_event_box_new() : LibGtk::Widget*
  fun event_box_get_above_child = gtk_event_box_get_above_child(this : EventBox*) : Bool
  fun event_box_get_visible_window = gtk_event_box_get_visible_window(this : EventBox*) : Bool
  fun event_box_set_above_child = gtk_event_box_set_above_child(this : EventBox*, above_child : Bool) : Void
  fun event_box_set_visible_window = gtk_event_box_set_visible_window(this : EventBox*, visible_window : Bool) : Void

  struct EventController # object
    _data : UInt8[0]
    # Property propagation_phase : LibGtk::PropagationPhase
    # Property widget : LibGtk::Widget*
  end
  fun event_controller_get_propagation_phase = gtk_event_controller_get_propagation_phase(this : EventController*) : LibGtk::PropagationPhase
  fun event_controller_get_widget = gtk_event_controller_get_widget(this : EventController*) : LibGtk::Widget*
  fun event_controller_handle_event = gtk_event_controller_handle_event(this : EventController*, event : LibGdk::Event*) : Bool
  fun event_controller_reset = gtk_event_controller_reset(this : EventController*) : Void
  fun event_controller_set_propagation_phase = gtk_event_controller_set_propagation_phase(this : EventController*, phase : LibGtk::PropagationPhase) : Void

  struct EventControllerKey # object
    _data : UInt8[0]
    # Signal focus-in
    # Signal focus-out
    # Signal im-update
    # Signal key-pressed
    # Signal key-released
    # Signal modifiers
  end
  fun event_controller_key_new = gtk_event_controller_key_new(widget : LibGtk::Widget*) : LibGtk::EventController*
  fun event_controller_key_forward = gtk_event_controller_key_forward(this : EventControllerKey*, widget : LibGtk::Widget*) : Bool
  fun event_controller_key_get_group = gtk_event_controller_key_get_group(this : EventControllerKey*) : UInt32
  fun event_controller_key_get_im_context = gtk_event_controller_key_get_im_context(this : EventControllerKey*) : LibGtk::IMContext*
  fun event_controller_key_set_im_context = gtk_event_controller_key_set_im_context(this : EventControllerKey*, im_context : LibGtk::IMContext*) : Void

  struct EventControllerMotion # object
    _data : UInt8[0]
    # Signal enter
    # Signal leave
    # Signal motion
  end
  fun event_controller_motion_new = gtk_event_controller_motion_new(widget : LibGtk::Widget*) : LibGtk::EventController*

  struct EventControllerScroll # object
    _data : UInt8[0]
    # Signal decelerate
    # Signal scroll
    # Signal scroll-begin
    # Signal scroll-end
    # Property flags : LibGtk::EventControllerScrollFlags
  end
  fun event_controller_scroll_new = gtk_event_controller_scroll_new(widget : LibGtk::Widget*, flags : LibGtk::EventControllerScrollFlags) : LibGtk::EventController*
  fun event_controller_scroll_get_flags = gtk_event_controller_scroll_get_flags(this : EventControllerScroll*) : LibGtk::EventControllerScrollFlags
  fun event_controller_scroll_set_flags = gtk_event_controller_scroll_set_flags(this : EventControllerScroll*, flags : LibGtk::EventControllerScrollFlags) : Void

  struct Expander # object
    bin : LibGtk::Bin*
    priv : LibGtk::ExpanderPrivate*
    # Signal activate
    # Virtual function activate
    # Property expanded : Bool
    # Property label : UInt8*
    # Property label_fill : Bool
    # Property label_widget : LibGtk::Widget*
    # Property resize_toplevel : Bool
    # Property spacing : Int32
    # Property use_markup : Bool
    # Property use_underline : Bool
  end
  fun expander_new = gtk_expander_new(label : UInt8*) : LibGtk::Widget*
  fun expander_new_with_mnemonic = gtk_expander_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*
  fun expander_get_expanded = gtk_expander_get_expanded(this : Expander*) : Bool
  fun expander_get_label = gtk_expander_get_label(this : Expander*) : UInt8*
  fun expander_get_label_fill = gtk_expander_get_label_fill(this : Expander*) : Bool
  fun expander_get_label_widget = gtk_expander_get_label_widget(this : Expander*) : LibGtk::Widget*
  fun expander_get_resize_toplevel = gtk_expander_get_resize_toplevel(this : Expander*) : Bool
  fun expander_get_spacing = gtk_expander_get_spacing(this : Expander*) : Int32
  fun expander_get_use_markup = gtk_expander_get_use_markup(this : Expander*) : Bool
  fun expander_get_use_underline = gtk_expander_get_use_underline(this : Expander*) : Bool
  fun expander_set_expanded = gtk_expander_set_expanded(this : Expander*, expanded : Bool) : Void
  fun expander_set_label = gtk_expander_set_label(this : Expander*, label : UInt8*) : Void
  fun expander_set_label_fill = gtk_expander_set_label_fill(this : Expander*, label_fill : Bool) : Void
  fun expander_set_label_widget = gtk_expander_set_label_widget(this : Expander*, label_widget : LibGtk::Widget*) : Void
  fun expander_set_resize_toplevel = gtk_expander_set_resize_toplevel(this : Expander*, resize_toplevel : Bool) : Void
  fun expander_set_spacing = gtk_expander_set_spacing(this : Expander*, spacing : Int32) : Void
  fun expander_set_use_markup = gtk_expander_set_use_markup(this : Expander*, use_markup : Bool) : Void
  fun expander_set_use_underline = gtk_expander_set_use_underline(this : Expander*, use_underline : Bool) : Void

  struct ExpanderAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::ExpanderAccessiblePrivate*
  end

  struct FileChooserButton # object
    parent : LibGtk::Box*
    priv : LibGtk::FileChooserButtonPrivate*
    # Signal file-set
    # Virtual function file_set
    # Property dialog : LibGtk::FileChooser
    # Property title : UInt8*
    # Property width_chars : Int32
  end
  fun file_chooser_button_new = gtk_file_chooser_button_new(title : UInt8*, action : LibGtk::FileChooserAction) : LibGtk::Widget*
  fun file_chooser_button_new_with_dialog = gtk_file_chooser_button_new_with_dialog(dialog : LibGtk::Dialog*) : LibGtk::Widget*
  fun file_chooser_button_get_focus_on_click = gtk_file_chooser_button_get_focus_on_click(this : FileChooserButton*) : Bool
  fun file_chooser_button_get_title = gtk_file_chooser_button_get_title(this : FileChooserButton*) : UInt8*
  fun file_chooser_button_get_width_chars = gtk_file_chooser_button_get_width_chars(this : FileChooserButton*) : Int32
  fun file_chooser_button_set_focus_on_click = gtk_file_chooser_button_set_focus_on_click(this : FileChooserButton*, focus_on_click : Bool) : Void
  fun file_chooser_button_set_title = gtk_file_chooser_button_set_title(this : FileChooserButton*, title : UInt8*) : Void
  fun file_chooser_button_set_width_chars = gtk_file_chooser_button_set_width_chars(this : FileChooserButton*, n_chars : Int32) : Void

  struct FileChooserDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::FileChooserDialogPrivate*
  end

  struct FileChooserNative # object
    _data : UInt8[0]
    # Property accept_label : UInt8*
    # Property cancel_label : UInt8*
  end
  fun file_chooser_native_new = gtk_file_chooser_native_new(title : UInt8*, parent : LibGtk::Window*, action : LibGtk::FileChooserAction, accept_label : UInt8*, cancel_label : UInt8*) : LibGtk::FileChooserNative*
  fun file_chooser_native_get_accept_label = gtk_file_chooser_native_get_accept_label(this : FileChooserNative*) : UInt8*
  fun file_chooser_native_get_cancel_label = gtk_file_chooser_native_get_cancel_label(this : FileChooserNative*) : UInt8*
  fun file_chooser_native_set_accept_label = gtk_file_chooser_native_set_accept_label(this : FileChooserNative*, accept_label : UInt8*) : Void
  fun file_chooser_native_set_cancel_label = gtk_file_chooser_native_set_cancel_label(this : FileChooserNative*, cancel_label : UInt8*) : Void

  struct FileChooserWidget # object
    parent_instance : LibGtk::Box*
    priv : LibGtk::FileChooserWidgetPrivate*
    # Signal desktop-folder
    # Signal down-folder
    # Signal home-folder
    # Signal location-popup
    # Signal location-popup-on-paste
    # Signal location-toggle-popup
    # Signal places-shortcut
    # Signal quick-bookmark
    # Signal recent-shortcut
    # Signal search-shortcut
    # Signal show-hidden
    # Signal up-folder
    # Property search_mode : Bool
    # Property subtitle : UInt8*
  end
  fun file_chooser_widget_new = gtk_file_chooser_widget_new(action : LibGtk::FileChooserAction) : LibGtk::Widget*

  struct FileFilter # object
    _data : UInt8[0]
  end
  fun file_filter_new = gtk_file_filter_new() : LibGtk::FileFilter*
  fun file_filter_new_from_gvariant = gtk_file_filter_new_from_gvariant(variant : LibGLib::Variant*) : LibGtk::FileFilter*
  fun file_filter_add_custom = gtk_file_filter_add_custom(this : FileFilter*, needed : LibGtk::FileFilterFlags, func : LibGtk::FileFilterFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun file_filter_add_mime_type = gtk_file_filter_add_mime_type(this : FileFilter*, mime_type : UInt8*) : Void
  fun file_filter_add_pattern = gtk_file_filter_add_pattern(this : FileFilter*, pattern : UInt8*) : Void
  fun file_filter_add_pixbuf_formats = gtk_file_filter_add_pixbuf_formats(this : FileFilter*) : Void
  fun file_filter_filter = gtk_file_filter_filter(this : FileFilter*, filter_info : LibGtk::FileFilterInfo*) : Bool
  fun file_filter_get_name = gtk_file_filter_get_name(this : FileFilter*) : UInt8*
  fun file_filter_get_needed = gtk_file_filter_get_needed(this : FileFilter*) : LibGtk::FileFilterFlags
  fun file_filter_set_name = gtk_file_filter_set_name(this : FileFilter*, name : UInt8*) : Void
  fun file_filter_to_gvariant = gtk_file_filter_to_gvariant(this : FileFilter*) : LibGLib::Variant*

  struct Fixed # object
    container : LibGtk::Container*
    priv : LibGtk::FixedPrivate*
  end
  fun fixed_new = gtk_fixed_new() : LibGtk::Widget*
  fun fixed_move = gtk_fixed_move(this : Fixed*, widget : LibGtk::Widget*, x : Int32, y : Int32) : Void
  fun fixed_put = gtk_fixed_put(this : Fixed*, widget : LibGtk::Widget*, x : Int32, y : Int32) : Void

  struct FlowBox # object
    container : LibGtk::Container*
    # Signal activate-cursor-child
    # Signal child-activated
    # Signal move-cursor
    # Signal select-all
    # Signal selected-children-changed
    # Signal toggle-cursor-child
    # Signal unselect-all
    # Virtual function activate_cursor_child
    # Virtual function child_activated
    # Virtual function move_cursor
    # Virtual function select_all
    # Virtual function selected_children_changed
    # Virtual function toggle_cursor_child
    # Virtual function unselect_all
    # Property activate_on_single_click : Bool
    # Property column_spacing : UInt32
    # Property homogeneous : Bool
    # Property max_children_per_line : UInt32
    # Property min_children_per_line : UInt32
    # Property row_spacing : UInt32
    # Property selection_mode : LibGtk::SelectionMode
  end
  fun flow_box_new = gtk_flow_box_new() : LibGtk::Widget*
  fun flow_box_bind_model = gtk_flow_box_bind_model(this : FlowBox*, model : LibGio::ListModel*, create_widget_func : LibGtk::FlowBoxCreateWidgetFunc, user_data : Void*, user_data_free_func : LibGLib::DestroyNotify) : Void
  fun flow_box_get_activate_on_single_click = gtk_flow_box_get_activate_on_single_click(this : FlowBox*) : Bool
  fun flow_box_get_child_at_index = gtk_flow_box_get_child_at_index(this : FlowBox*, idx : Int32) : LibGtk::FlowBoxChild*
  fun flow_box_get_child_at_pos = gtk_flow_box_get_child_at_pos(this : FlowBox*, x : Int32, y : Int32) : LibGtk::FlowBoxChild*
  fun flow_box_get_column_spacing = gtk_flow_box_get_column_spacing(this : FlowBox*) : UInt32
  fun flow_box_get_homogeneous = gtk_flow_box_get_homogeneous(this : FlowBox*) : Bool
  fun flow_box_get_max_children_per_line = gtk_flow_box_get_max_children_per_line(this : FlowBox*) : UInt32
  fun flow_box_get_min_children_per_line = gtk_flow_box_get_min_children_per_line(this : FlowBox*) : UInt32
  fun flow_box_get_row_spacing = gtk_flow_box_get_row_spacing(this : FlowBox*) : UInt32
  fun flow_box_get_selected_children = gtk_flow_box_get_selected_children(this : FlowBox*) : Void**
  fun flow_box_get_selection_mode = gtk_flow_box_get_selection_mode(this : FlowBox*) : LibGtk::SelectionMode
  fun flow_box_insert = gtk_flow_box_insert(this : FlowBox*, widget : LibGtk::Widget*, position : Int32) : Void
  fun flow_box_invalidate_filter = gtk_flow_box_invalidate_filter(this : FlowBox*) : Void
  fun flow_box_invalidate_sort = gtk_flow_box_invalidate_sort(this : FlowBox*) : Void
  fun flow_box_select_all = gtk_flow_box_select_all(this : FlowBox*) : Void
  fun flow_box_select_child = gtk_flow_box_select_child(this : FlowBox*, child : LibGtk::FlowBoxChild*) : Void
  fun flow_box_selected_foreach = gtk_flow_box_selected_foreach(this : FlowBox*, func : LibGtk::FlowBoxForeachFunc, data : Void*) : Void
  fun flow_box_set_activate_on_single_click = gtk_flow_box_set_activate_on_single_click(this : FlowBox*, single : Bool) : Void
  fun flow_box_set_column_spacing = gtk_flow_box_set_column_spacing(this : FlowBox*, spacing : UInt32) : Void
  fun flow_box_set_filter_func = gtk_flow_box_set_filter_func(this : FlowBox*, filter_func : LibGtk::FlowBoxFilterFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun flow_box_set_hadjustment = gtk_flow_box_set_hadjustment(this : FlowBox*, adjustment : LibGtk::Adjustment*) : Void
  fun flow_box_set_homogeneous = gtk_flow_box_set_homogeneous(this : FlowBox*, homogeneous : Bool) : Void
  fun flow_box_set_max_children_per_line = gtk_flow_box_set_max_children_per_line(this : FlowBox*, n_children : UInt32) : Void
  fun flow_box_set_min_children_per_line = gtk_flow_box_set_min_children_per_line(this : FlowBox*, n_children : UInt32) : Void
  fun flow_box_set_row_spacing = gtk_flow_box_set_row_spacing(this : FlowBox*, spacing : UInt32) : Void
  fun flow_box_set_selection_mode = gtk_flow_box_set_selection_mode(this : FlowBox*, mode : LibGtk::SelectionMode) : Void
  fun flow_box_set_sort_func = gtk_flow_box_set_sort_func(this : FlowBox*, sort_func : LibGtk::FlowBoxSortFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun flow_box_set_vadjustment = gtk_flow_box_set_vadjustment(this : FlowBox*, adjustment : LibGtk::Adjustment*) : Void
  fun flow_box_unselect_all = gtk_flow_box_unselect_all(this : FlowBox*) : Void
  fun flow_box_unselect_child = gtk_flow_box_unselect_child(this : FlowBox*, child : LibGtk::FlowBoxChild*) : Void

  struct FlowBoxAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::FlowBoxAccessiblePrivate*
  end

  struct FlowBoxChild # object
    parent_instance : LibGtk::Bin*
    # Signal activate
    # Virtual function activate
  end
  fun flow_box_child_new = gtk_flow_box_child_new() : LibGtk::Widget*
  fun flow_box_child_changed = gtk_flow_box_child_changed(this : FlowBoxChild*) : Void
  fun flow_box_child_get_index = gtk_flow_box_child_get_index(this : FlowBoxChild*) : Int32
  fun flow_box_child_is_selected = gtk_flow_box_child_is_selected(this : FlowBoxChild*) : Bool

  struct FlowBoxChildAccessible # object
    parent : LibGtk::ContainerAccessible*
  end

  struct FontButton # object
    button : LibGtk::Button*
    priv : LibGtk::FontButtonPrivate*
    # Signal font-set
    # Virtual function font_set
    # Property font_name : UInt8*
    # Property show_size : Bool
    # Property show_style : Bool
    # Property title : UInt8*
    # Property use_font : Bool
    # Property use_size : Bool
  end
  fun font_button_new = gtk_font_button_new() : LibGtk::Widget*
  fun font_button_new_with_font = gtk_font_button_new_with_font(fontname : UInt8*) : LibGtk::Widget*
  fun font_button_get_font_name = gtk_font_button_get_font_name(this : FontButton*) : UInt8*
  fun font_button_get_show_size = gtk_font_button_get_show_size(this : FontButton*) : Bool
  fun font_button_get_show_style = gtk_font_button_get_show_style(this : FontButton*) : Bool
  fun font_button_get_title = gtk_font_button_get_title(this : FontButton*) : UInt8*
  fun font_button_get_use_font = gtk_font_button_get_use_font(this : FontButton*) : Bool
  fun font_button_get_use_size = gtk_font_button_get_use_size(this : FontButton*) : Bool
  fun font_button_set_font_name = gtk_font_button_set_font_name(this : FontButton*, fontname : UInt8*) : Bool
  fun font_button_set_show_size = gtk_font_button_set_show_size(this : FontButton*, show_size : Bool) : Void
  fun font_button_set_show_style = gtk_font_button_set_show_style(this : FontButton*, show_style : Bool) : Void
  fun font_button_set_title = gtk_font_button_set_title(this : FontButton*, title : UInt8*) : Void
  fun font_button_set_use_font = gtk_font_button_set_use_font(this : FontButton*, use_font : Bool) : Void
  fun font_button_set_use_size = gtk_font_button_set_use_size(this : FontButton*, use_size : Bool) : Void

  struct FontChooserDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::FontChooserDialogPrivate*
  end
  fun font_chooser_dialog_new = gtk_font_chooser_dialog_new(title : UInt8*, parent : LibGtk::Window*) : LibGtk::Widget*

  struct FontChooserWidget # object
    parent_instance : LibGtk::Box*
    priv : LibGtk::FontChooserWidgetPrivate*
    # Property tweak_action : LibGio::Action
  end
  fun font_chooser_widget_new = gtk_font_chooser_widget_new() : LibGtk::Widget*

  struct FontSelection # object
    parent_instance : LibGtk::Box*
    priv : LibGtk::FontSelectionPrivate*
    # Property font_name : UInt8*
    # Property preview_text : UInt8*
  end
  fun font_selection_new = gtk_font_selection_new() : LibGtk::Widget*
  fun font_selection_get_face = gtk_font_selection_get_face(this : FontSelection*) : LibPango::FontFace*
  fun font_selection_get_face_list = gtk_font_selection_get_face_list(this : FontSelection*) : LibGtk::Widget*
  fun font_selection_get_family = gtk_font_selection_get_family(this : FontSelection*) : LibPango::FontFamily*
  fun font_selection_get_family_list = gtk_font_selection_get_family_list(this : FontSelection*) : LibGtk::Widget*
  fun font_selection_get_font_name = gtk_font_selection_get_font_name(this : FontSelection*) : UInt8*
  fun font_selection_get_preview_entry = gtk_font_selection_get_preview_entry(this : FontSelection*) : LibGtk::Widget*
  fun font_selection_get_preview_text = gtk_font_selection_get_preview_text(this : FontSelection*) : UInt8*
  fun font_selection_get_size = gtk_font_selection_get_size(this : FontSelection*) : Int32
  fun font_selection_get_size_entry = gtk_font_selection_get_size_entry(this : FontSelection*) : LibGtk::Widget*
  fun font_selection_get_size_list = gtk_font_selection_get_size_list(this : FontSelection*) : LibGtk::Widget*
  fun font_selection_set_font_name = gtk_font_selection_set_font_name(this : FontSelection*, fontname : UInt8*) : Bool
  fun font_selection_set_preview_text = gtk_font_selection_set_preview_text(this : FontSelection*, text : UInt8*) : Void

  struct FontSelectionDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::FontSelectionDialogPrivate*
  end
  fun font_selection_dialog_new = gtk_font_selection_dialog_new(title : UInt8*) : LibGtk::Widget*
  fun font_selection_dialog_get_cancel_button = gtk_font_selection_dialog_get_cancel_button(this : FontSelectionDialog*) : LibGtk::Widget*
  fun font_selection_dialog_get_font_name = gtk_font_selection_dialog_get_font_name(this : FontSelectionDialog*) : UInt8*
  fun font_selection_dialog_get_font_selection = gtk_font_selection_dialog_get_font_selection(this : FontSelectionDialog*) : LibGtk::Widget*
  fun font_selection_dialog_get_ok_button = gtk_font_selection_dialog_get_ok_button(this : FontSelectionDialog*) : LibGtk::Widget*
  fun font_selection_dialog_get_preview_text = gtk_font_selection_dialog_get_preview_text(this : FontSelectionDialog*) : UInt8*
  fun font_selection_dialog_set_font_name = gtk_font_selection_dialog_set_font_name(this : FontSelectionDialog*, fontname : UInt8*) : Bool
  fun font_selection_dialog_set_preview_text = gtk_font_selection_dialog_set_preview_text(this : FontSelectionDialog*, text : UInt8*) : Void

  struct Frame # object
    bin : LibGtk::Bin*
    priv : LibGtk::FramePrivate*
    # Virtual function compute_child_allocation
    # Property label : UInt8*
    # Property label_widget : LibGtk::Widget*
    # Property label_xalign : Float32
    # Property label_yalign : Float32
    # Property shadow_type : LibGtk::ShadowType
  end
  fun frame_new = gtk_frame_new(label : UInt8*) : LibGtk::Widget*
  fun frame_get_label = gtk_frame_get_label(this : Frame*) : UInt8*
  fun frame_get_label_align = gtk_frame_get_label_align(this : Frame*, xalign : Float32*, yalign : Float32*) : Void
  fun frame_get_label_widget = gtk_frame_get_label_widget(this : Frame*) : LibGtk::Widget*
  fun frame_get_shadow_type = gtk_frame_get_shadow_type(this : Frame*) : LibGtk::ShadowType
  fun frame_set_label = gtk_frame_set_label(this : Frame*, label : UInt8*) : Void
  fun frame_set_label_align = gtk_frame_set_label_align(this : Frame*, xalign : Float32, yalign : Float32) : Void
  fun frame_set_label_widget = gtk_frame_set_label_widget(this : Frame*, label_widget : LibGtk::Widget*) : Void
  fun frame_set_shadow_type = gtk_frame_set_shadow_type(this : Frame*, type : LibGtk::ShadowType) : Void

  struct FrameAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::FrameAccessiblePrivate*
  end

  struct GLArea # object
    parent_instance : LibGtk::Widget*
    # Signal create-context
    # Signal render
    # Signal resize
    # Virtual function render
    # Virtual function resize
    # Property auto_render : Bool
    # Property context : LibGdk::GLContext*
    # Property has_alpha : Bool
    # Property has_depth_buffer : Bool
    # Property has_stencil_buffer : Bool
    # Property use_es : Bool
  end
  fun g_l_area_new = gtk_gl_area_new() : LibGtk::Widget*
  fun g_l_area_attach_buffers = gtk_gl_area_attach_buffers(this : GLArea*) : Void
  fun g_l_area_get_auto_render = gtk_gl_area_get_auto_render(this : GLArea*) : Bool
  fun g_l_area_get_context = gtk_gl_area_get_context(this : GLArea*) : LibGdk::GLContext*
  fun g_l_area_get_error = gtk_gl_area_get_error(this : GLArea*) : LibGLib::Error**
  fun g_l_area_get_has_alpha = gtk_gl_area_get_has_alpha(this : GLArea*) : Bool
  fun g_l_area_get_has_depth_buffer = gtk_gl_area_get_has_depth_buffer(this : GLArea*) : Bool
  fun g_l_area_get_has_stencil_buffer = gtk_gl_area_get_has_stencil_buffer(this : GLArea*) : Bool
  fun g_l_area_get_required_version = gtk_gl_area_get_required_version(this : GLArea*, major : Int32*, minor : Int32*) : Void
  fun g_l_area_get_use_es = gtk_gl_area_get_use_es(this : GLArea*) : Bool
  fun g_l_area_make_current = gtk_gl_area_make_current(this : GLArea*) : Void
  fun g_l_area_queue_render = gtk_gl_area_queue_render(this : GLArea*) : Void
  fun g_l_area_set_auto_render = gtk_gl_area_set_auto_render(this : GLArea*, auto_render : Bool) : Void
  fun g_l_area_set_error = gtk_gl_area_set_error(this : GLArea*, error : LibGLib::Error**) : Void
  fun g_l_area_set_has_alpha = gtk_gl_area_set_has_alpha(this : GLArea*, has_alpha : Bool) : Void
  fun g_l_area_set_has_depth_buffer = gtk_gl_area_set_has_depth_buffer(this : GLArea*, has_depth_buffer : Bool) : Void
  fun g_l_area_set_has_stencil_buffer = gtk_gl_area_set_has_stencil_buffer(this : GLArea*, has_stencil_buffer : Bool) : Void
  fun g_l_area_set_required_version = gtk_gl_area_set_required_version(this : GLArea*, major : Int32, minor : Int32) : Void
  fun g_l_area_set_use_es = gtk_gl_area_set_use_es(this : GLArea*, use_es : Bool) : Void

  struct Gesture # object
    _data : UInt8[0]
    # Signal begin
    # Signal cancel
    # Signal end
    # Signal sequence-state-changed
    # Signal update
    # Property n_points : UInt32
    # Property window : LibGdk::Window*
  end
  fun gesture_get_bounding_box = gtk_gesture_get_bounding_box(this : Gesture*, rect : LibGdk::Rectangle*) : Bool
  fun gesture_get_bounding_box_center = gtk_gesture_get_bounding_box_center(this : Gesture*, x : Float64*, y : Float64*) : Bool
  fun gesture_get_device = gtk_gesture_get_device(this : Gesture*) : LibGdk::Device*
  fun gesture_get_group = gtk_gesture_get_group(this : Gesture*) : Void**
  fun gesture_get_last_event = gtk_gesture_get_last_event(this : Gesture*, sequence : LibGdk::EventSequence*) : LibGdk::Event*
  fun gesture_get_last_updated_sequence = gtk_gesture_get_last_updated_sequence(this : Gesture*) : LibGdk::EventSequence*
  fun gesture_get_point = gtk_gesture_get_point(this : Gesture*, sequence : LibGdk::EventSequence*, x : Float64*, y : Float64*) : Bool
  fun gesture_get_sequence_state = gtk_gesture_get_sequence_state(this : Gesture*, sequence : LibGdk::EventSequence*) : LibGtk::EventSequenceState
  fun gesture_get_sequences = gtk_gesture_get_sequences(this : Gesture*) : Void**
  fun gesture_get_window = gtk_gesture_get_window(this : Gesture*) : LibGdk::Window*
  fun gesture_group = gtk_gesture_group(this : Gesture*, gesture : LibGtk::Gesture*) : Void
  fun gesture_handles_sequence = gtk_gesture_handles_sequence(this : Gesture*, sequence : LibGdk::EventSequence*) : Bool
  fun gesture_is_active = gtk_gesture_is_active(this : Gesture*) : Bool
  fun gesture_is_grouped_with = gtk_gesture_is_grouped_with(this : Gesture*, other : LibGtk::Gesture*) : Bool
  fun gesture_is_recognized = gtk_gesture_is_recognized(this : Gesture*) : Bool
  fun gesture_set_sequence_state = gtk_gesture_set_sequence_state(this : Gesture*, sequence : LibGdk::EventSequence*, state : LibGtk::EventSequenceState) : Bool
  fun gesture_set_state = gtk_gesture_set_state(this : Gesture*, state : LibGtk::EventSequenceState) : Bool
  fun gesture_set_window = gtk_gesture_set_window(this : Gesture*, window : LibGdk::Window*) : Void
  fun gesture_ungroup = gtk_gesture_ungroup(this : Gesture*) : Void

  struct GestureDrag # object
    _data : UInt8[0]
    # Signal drag-begin
    # Signal drag-end
    # Signal drag-update
  end
  fun gesture_drag_new = gtk_gesture_drag_new(widget : LibGtk::Widget*) : LibGtk::Gesture*
  fun gesture_drag_get_offset = gtk_gesture_drag_get_offset(this : GestureDrag*, x : Float64*, y : Float64*) : Bool
  fun gesture_drag_get_start_point = gtk_gesture_drag_get_start_point(this : GestureDrag*, x : Float64*, y : Float64*) : Bool

  struct GestureLongPress # object
    _data : UInt8[0]
    # Signal cancelled
    # Signal pressed
    # Property delay_factor : Float64
  end
  fun gesture_long_press_new = gtk_gesture_long_press_new(widget : LibGtk::Widget*) : LibGtk::Gesture*

  struct GestureMultiPress # object
    _data : UInt8[0]
    # Signal pressed
    # Signal released
    # Signal stopped
  end
  fun gesture_multi_press_new = gtk_gesture_multi_press_new(widget : LibGtk::Widget*) : LibGtk::Gesture*
  fun gesture_multi_press_get_area = gtk_gesture_multi_press_get_area(this : GestureMultiPress*, rect : LibGdk::Rectangle*) : Bool
  fun gesture_multi_press_set_area = gtk_gesture_multi_press_set_area(this : GestureMultiPress*, rect : LibGdk::Rectangle*) : Void

  struct GesturePan # object
    _data : UInt8[0]
    # Signal pan
    # Property orientation : LibGtk::Orientation
  end
  fun gesture_pan_new = gtk_gesture_pan_new(widget : LibGtk::Widget*, orientation : LibGtk::Orientation) : LibGtk::Gesture*
  fun gesture_pan_get_orientation = gtk_gesture_pan_get_orientation(this : GesturePan*) : LibGtk::Orientation
  fun gesture_pan_set_orientation = gtk_gesture_pan_set_orientation(this : GesturePan*, orientation : LibGtk::Orientation) : Void

  struct GestureRotate # object
    _data : UInt8[0]
    # Signal angle-changed
  end
  fun gesture_rotate_new = gtk_gesture_rotate_new(widget : LibGtk::Widget*) : LibGtk::Gesture*
  fun gesture_rotate_get_angle_delta = gtk_gesture_rotate_get_angle_delta(this : GestureRotate*) : Float64

  struct GestureSingle # object
    _data : UInt8[0]
    # Property button : UInt32
    # Property exclusive : Bool
    # Property touch_only : Bool
  end
  fun gesture_single_get_button = gtk_gesture_single_get_button(this : GestureSingle*) : UInt32
  fun gesture_single_get_current_button = gtk_gesture_single_get_current_button(this : GestureSingle*) : UInt32
  fun gesture_single_get_current_sequence = gtk_gesture_single_get_current_sequence(this : GestureSingle*) : LibGdk::EventSequence*
  fun gesture_single_get_exclusive = gtk_gesture_single_get_exclusive(this : GestureSingle*) : Bool
  fun gesture_single_get_touch_only = gtk_gesture_single_get_touch_only(this : GestureSingle*) : Bool
  fun gesture_single_set_button = gtk_gesture_single_set_button(this : GestureSingle*, button : UInt32) : Void
  fun gesture_single_set_exclusive = gtk_gesture_single_set_exclusive(this : GestureSingle*, exclusive : Bool) : Void
  fun gesture_single_set_touch_only = gtk_gesture_single_set_touch_only(this : GestureSingle*, touch_only : Bool) : Void

  struct GestureStylus # object
    _data : UInt8[0]
    # Signal down
    # Signal motion
    # Signal proximity
    # Signal up
  end
  fun gesture_stylus_new = gtk_gesture_stylus_new(widget : LibGtk::Widget*) : LibGtk::Gesture*
  fun gesture_stylus_get_axes = gtk_gesture_stylus_get_axes(this : GestureStylus*, axes : LibGdk::AxisUse*, values : Float64**) : Bool
  fun gesture_stylus_get_axis = gtk_gesture_stylus_get_axis(this : GestureStylus*, axis : LibGdk::AxisUse, value : Float64*) : Bool
  fun gesture_stylus_get_device_tool = gtk_gesture_stylus_get_device_tool(this : GestureStylus*) : LibGdk::DeviceTool*

  struct GestureSwipe # object
    _data : UInt8[0]
    # Signal swipe
  end
  fun gesture_swipe_new = gtk_gesture_swipe_new(widget : LibGtk::Widget*) : LibGtk::Gesture*
  fun gesture_swipe_get_velocity = gtk_gesture_swipe_get_velocity(this : GestureSwipe*, velocity_x : Float64*, velocity_y : Float64*) : Bool

  struct GestureZoom # object
    _data : UInt8[0]
    # Signal scale-changed
  end
  fun gesture_zoom_new = gtk_gesture_zoom_new(widget : LibGtk::Widget*) : LibGtk::Gesture*
  fun gesture_zoom_get_scale_delta = gtk_gesture_zoom_get_scale_delta(this : GestureZoom*) : Float64

  struct Grid # object
    container : LibGtk::Container*
    priv : LibGtk::GridPrivate*
    # Property baseline_row : Int32
    # Property column_homogeneous : Bool
    # Property column_spacing : Int32
    # Property row_homogeneous : Bool
    # Property row_spacing : Int32
  end
  fun grid_new = gtk_grid_new() : LibGtk::Widget*
  fun grid_attach = gtk_grid_attach(this : Grid*, child : LibGtk::Widget*, left : Int32, top : Int32, width : Int32, height : Int32) : Void
  fun grid_attach_next_to = gtk_grid_attach_next_to(this : Grid*, child : LibGtk::Widget*, sibling : LibGtk::Widget*, side : LibGtk::PositionType, width : Int32, height : Int32) : Void
  fun grid_get_baseline_row = gtk_grid_get_baseline_row(this : Grid*) : Int32
  fun grid_get_child_at = gtk_grid_get_child_at(this : Grid*, left : Int32, top : Int32) : LibGtk::Widget*
  fun grid_get_column_homogeneous = gtk_grid_get_column_homogeneous(this : Grid*) : Bool
  fun grid_get_column_spacing = gtk_grid_get_column_spacing(this : Grid*) : UInt32
  fun grid_get_row_baseline_position = gtk_grid_get_row_baseline_position(this : Grid*, row : Int32) : LibGtk::BaselinePosition
  fun grid_get_row_homogeneous = gtk_grid_get_row_homogeneous(this : Grid*) : Bool
  fun grid_get_row_spacing = gtk_grid_get_row_spacing(this : Grid*) : UInt32
  fun grid_insert_column = gtk_grid_insert_column(this : Grid*, position : Int32) : Void
  fun grid_insert_next_to = gtk_grid_insert_next_to(this : Grid*, sibling : LibGtk::Widget*, side : LibGtk::PositionType) : Void
  fun grid_insert_row = gtk_grid_insert_row(this : Grid*, position : Int32) : Void
  fun grid_remove_column = gtk_grid_remove_column(this : Grid*, position : Int32) : Void
  fun grid_remove_row = gtk_grid_remove_row(this : Grid*, position : Int32) : Void
  fun grid_set_baseline_row = gtk_grid_set_baseline_row(this : Grid*, row : Int32) : Void
  fun grid_set_column_homogeneous = gtk_grid_set_column_homogeneous(this : Grid*, homogeneous : Bool) : Void
  fun grid_set_column_spacing = gtk_grid_set_column_spacing(this : Grid*, spacing : UInt32) : Void
  fun grid_set_row_baseline_position = gtk_grid_set_row_baseline_position(this : Grid*, row : Int32, pos : LibGtk::BaselinePosition) : Void
  fun grid_set_row_homogeneous = gtk_grid_set_row_homogeneous(this : Grid*, homogeneous : Bool) : Void
  fun grid_set_row_spacing = gtk_grid_set_row_spacing(this : Grid*, spacing : UInt32) : Void

  struct HBox # object
    box : LibGtk::Box*
  end
  fun h_box_new = gtk_hbox_new(homogeneous : Bool, spacing : Int32) : LibGtk::Widget*

  struct HButtonBox # object
    button_box : LibGtk::ButtonBox*
  end
  fun h_button_box_new = gtk_hbutton_box_new() : LibGtk::Widget*

  struct HPaned # object
    paned : LibGtk::Paned*
  end
  fun h_paned_new = gtk_hpaned_new() : LibGtk::Widget*

  struct HSV # object
    parent_instance : LibGtk::Widget*
    priv : LibGtk::HSVPrivate*
    # Signal changed
    # Signal move
    # Virtual function changed
    # Virtual function move
  end
  fun h_s_v_new = gtk_hsv_new() : LibGtk::Widget*
  fun h_s_v_to_rgb = gtk_hsv_to_rgb(h : Float64, s : Float64, v : Float64, r : Float64*, g : Float64*, b : Float64*) : Void
  fun h_s_v_get_color = gtk_hsv_get_color(this : HSV*, h : Float64*, s : Float64*, v : Float64*) : Void
  fun h_s_v_get_metrics = gtk_hsv_get_metrics(this : HSV*, size : Int32*, ring_width : Int32*) : Void
  fun h_s_v_is_adjusting = gtk_hsv_is_adjusting(this : HSV*) : Bool
  fun h_s_v_set_color = gtk_hsv_set_color(this : HSV*, h : Float64, s : Float64, v : Float64) : Void
  fun h_s_v_set_metrics = gtk_hsv_set_metrics(this : HSV*, size : Int32, ring_width : Int32) : Void

  struct HScale # object
    scale : LibGtk::Scale*
  end
  fun h_scale_new = gtk_hscale_new(adjustment : LibGtk::Adjustment*) : LibGtk::Widget*
  fun h_scale_new_with_range = gtk_hscale_new_with_range(min : Float64, max : Float64, step : Float64) : LibGtk::Widget*

  struct HScrollbar # object
    scrollbar : LibGtk::Scrollbar*
  end
  fun h_scrollbar_new = gtk_hscrollbar_new(adjustment : LibGtk::Adjustment*) : LibGtk::Widget*

  struct HSeparator # object
    separator : LibGtk::Separator*
  end
  fun h_separator_new = gtk_hseparator_new() : LibGtk::Widget*

  struct HandleBox # object
    bin : LibGtk::Bin*
    priv : LibGtk::HandleBoxPrivate*
    # Signal child-attached
    # Signal child-detached
    # Virtual function child_attached
    # Virtual function child_detached
    # Property child_detached : Bool
    # Property handle_position : LibGtk::PositionType
    # Property shadow_type : LibGtk::ShadowType
    # Property snap_edge : LibGtk::PositionType
    # Property snap_edge_set : Bool
  end
  fun handle_box_new = gtk_handle_box_new() : LibGtk::Widget*
  fun handle_box_get_child_detached = gtk_handle_box_get_child_detached(this : HandleBox*) : Bool
  fun handle_box_get_handle_position = gtk_handle_box_get_handle_position(this : HandleBox*) : LibGtk::PositionType
  fun handle_box_get_shadow_type = gtk_handle_box_get_shadow_type(this : HandleBox*) : LibGtk::ShadowType
  fun handle_box_get_snap_edge = gtk_handle_box_get_snap_edge(this : HandleBox*) : LibGtk::PositionType
  fun handle_box_set_handle_position = gtk_handle_box_set_handle_position(this : HandleBox*, position : LibGtk::PositionType) : Void
  fun handle_box_set_shadow_type = gtk_handle_box_set_shadow_type(this : HandleBox*, type : LibGtk::ShadowType) : Void
  fun handle_box_set_snap_edge = gtk_handle_box_set_snap_edge(this : HandleBox*, edge : LibGtk::PositionType) : Void

  struct HeaderBar # object
    container : LibGtk::Container*
    # Property custom_title : LibGtk::Widget*
    # Property decoration_layout : UInt8*
    # Property decoration_layout_set : Bool
    # Property has_subtitle : Bool
    # Property show_close_button : Bool
    # Property spacing : Int32
    # Property subtitle : UInt8*
    # Property title : UInt8*
  end
  fun header_bar_new = gtk_header_bar_new() : LibGtk::Widget*
  fun header_bar_get_custom_title = gtk_header_bar_get_custom_title(this : HeaderBar*) : LibGtk::Widget*
  fun header_bar_get_decoration_layout = gtk_header_bar_get_decoration_layout(this : HeaderBar*) : UInt8*
  fun header_bar_get_has_subtitle = gtk_header_bar_get_has_subtitle(this : HeaderBar*) : Bool
  fun header_bar_get_show_close_button = gtk_header_bar_get_show_close_button(this : HeaderBar*) : Bool
  fun header_bar_get_subtitle = gtk_header_bar_get_subtitle(this : HeaderBar*) : UInt8*
  fun header_bar_get_title = gtk_header_bar_get_title(this : HeaderBar*) : UInt8*
  fun header_bar_pack_end = gtk_header_bar_pack_end(this : HeaderBar*, child : LibGtk::Widget*) : Void
  fun header_bar_pack_start = gtk_header_bar_pack_start(this : HeaderBar*, child : LibGtk::Widget*) : Void
  fun header_bar_set_custom_title = gtk_header_bar_set_custom_title(this : HeaderBar*, title_widget : LibGtk::Widget*) : Void
  fun header_bar_set_decoration_layout = gtk_header_bar_set_decoration_layout(this : HeaderBar*, layout : UInt8*) : Void
  fun header_bar_set_has_subtitle = gtk_header_bar_set_has_subtitle(this : HeaderBar*, setting : Bool) : Void
  fun header_bar_set_show_close_button = gtk_header_bar_set_show_close_button(this : HeaderBar*, setting : Bool) : Void
  fun header_bar_set_subtitle = gtk_header_bar_set_subtitle(this : HeaderBar*, subtitle : UInt8*) : Void
  fun header_bar_set_title = gtk_header_bar_set_title(this : HeaderBar*, title : UInt8*) : Void

  struct IMContext # object
    parent_instance : LibGObject::Object*
    # Signal commit
    # Signal delete-surrounding
    # Signal preedit-changed
    # Signal preedit-end
    # Signal preedit-start
    # Signal retrieve-surrounding
    # Virtual function commit
    # Virtual function delete_surrounding
    # Virtual function filter_keypress
    # Virtual function focus_in
    # Virtual function focus_out
    # Virtual function get_preedit_string
    # Virtual function get_surrounding
    # Virtual function preedit_changed
    # Virtual function preedit_end
    # Virtual function preedit_start
    # Virtual function reset
    # Virtual function retrieve_surrounding
    # Virtual function set_client_window
    # Virtual function set_cursor_location
    # Virtual function set_surrounding
    # Virtual function set_use_preedit
    # Property input_hints : LibGtk::InputHints
    # Property input_purpose : LibGtk::InputPurpose
  end
  fun i_m_context_delete_surrounding = gtk_im_context_delete_surrounding(this : IMContext*, offset : Int32, n_chars : Int32) : Bool
  fun i_m_context_filter_keypress = gtk_im_context_filter_keypress(this : IMContext*, event : LibGdk::EventKey*) : Bool
  fun i_m_context_focus_in = gtk_im_context_focus_in(this : IMContext*) : Void
  fun i_m_context_focus_out = gtk_im_context_focus_out(this : IMContext*) : Void
  fun i_m_context_get_preedit_string = gtk_im_context_get_preedit_string(this : IMContext*, str : UInt8**, attrs : LibPango::AttrList**, cursor_pos : Int32*) : Void
  fun i_m_context_get_surrounding = gtk_im_context_get_surrounding(this : IMContext*, text : UInt8**, cursor_index : Int32*) : Bool
  fun i_m_context_reset = gtk_im_context_reset(this : IMContext*) : Void
  fun i_m_context_set_client_window = gtk_im_context_set_client_window(this : IMContext*, window : LibGdk::Window*) : Void
  fun i_m_context_set_cursor_location = gtk_im_context_set_cursor_location(this : IMContext*, area : LibGdk::Rectangle*) : Void
  fun i_m_context_set_surrounding = gtk_im_context_set_surrounding(this : IMContext*, text : UInt8*, len : Int32, cursor_index : Int32) : Void
  fun i_m_context_set_use_preedit = gtk_im_context_set_use_preedit(this : IMContext*, use_preedit : Bool) : Void

  struct IMContextSimple # object
    object : LibGtk::IMContext*
    priv : LibGtk::IMContextSimplePrivate*
  end
  fun i_m_context_simple_new = gtk_im_context_simple_new() : LibGtk::IMContext*
  fun i_m_context_simple_add_compose_file = gtk_im_context_simple_add_compose_file(this : IMContextSimple*, compose_file : UInt8*) : Void

  struct IMMulticontext # object
    object : LibGtk::IMContext*
    priv : LibGtk::IMMulticontextPrivate*
  end
  fun i_m_multicontext_new = gtk_im_multicontext_new() : LibGtk::IMContext*
  fun i_m_multicontext_append_menuitems = gtk_im_multicontext_append_menuitems(this : IMMulticontext*, menushell : LibGtk::MenuShell*) : Void
  fun i_m_multicontext_get_context_id = gtk_im_multicontext_get_context_id(this : IMMulticontext*) : UInt8*
  fun i_m_multicontext_set_context_id = gtk_im_multicontext_set_context_id(this : IMMulticontext*, context_id : UInt8*) : Void

  struct IconFactory # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::IconFactoryPrivate*
  end
  fun icon_factory_new = gtk_icon_factory_new() : LibGtk::IconFactory*
  fun icon_factory_lookup_default = gtk_icon_factory_lookup_default(stock_id : UInt8*) : LibGtk::IconSet*
  fun icon_factory_add = gtk_icon_factory_add(this : IconFactory*, stock_id : UInt8*, icon_set : LibGtk::IconSet*) : Void
  fun icon_factory_add_default = gtk_icon_factory_add_default(this : IconFactory*) : Void
  fun icon_factory_lookup = gtk_icon_factory_lookup(this : IconFactory*, stock_id : UInt8*) : LibGtk::IconSet*
  fun icon_factory_remove_default = gtk_icon_factory_remove_default(this : IconFactory*) : Void

  struct IconInfo # object
    _data : UInt8[0]
  end
  fun icon_info_new_for_pixbuf = gtk_icon_info_new_for_pixbuf(icon_theme : LibGtk::IconTheme*, pixbuf : LibGdkPixbuf::Pixbuf*) : LibGtk::IconInfo*
  fun icon_info_get_attach_points = gtk_icon_info_get_attach_points(this : IconInfo*, points : LibGdk::Point**, n_points : Int32*) : Bool
  fun icon_info_get_base_scale = gtk_icon_info_get_base_scale(this : IconInfo*) : Int32
  fun icon_info_get_base_size = gtk_icon_info_get_base_size(this : IconInfo*) : Int32
  fun icon_info_get_builtin_pixbuf = gtk_icon_info_get_builtin_pixbuf(this : IconInfo*) : LibGdkPixbuf::Pixbuf*
  fun icon_info_get_display_name = gtk_icon_info_get_display_name(this : IconInfo*) : UInt8*
  fun icon_info_get_embedded_rect = gtk_icon_info_get_embedded_rect(this : IconInfo*, rectangle : LibGdk::Rectangle*) : Bool
  fun icon_info_get_filename = gtk_icon_info_get_filename(this : IconInfo*) : UInt8*
  fun icon_info_is_symbolic = gtk_icon_info_is_symbolic(this : IconInfo*) : Bool
  fun icon_info_load_icon = gtk_icon_info_load_icon(this : IconInfo*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_load_icon_async = gtk_icon_info_load_icon_async(this : IconInfo*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun icon_info_load_icon_finish = gtk_icon_info_load_icon_finish(this : IconInfo*, res : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_load_surface = gtk_icon_info_load_surface(this : IconInfo*, for_window : LibGdk::Window*, error : LibGLib::Error**) : LibCairo::Surface*
  fun icon_info_load_symbolic = gtk_icon_info_load_symbolic(this : IconInfo*, fg : LibGdk::RGBA*, success_color : LibGdk::RGBA*, warning_color : LibGdk::RGBA*, error_color : LibGdk::RGBA*, was_symbolic : Bool*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_load_symbolic_async = gtk_icon_info_load_symbolic_async(this : IconInfo*, fg : LibGdk::RGBA*, success_color : LibGdk::RGBA*, warning_color : LibGdk::RGBA*, error_color : LibGdk::RGBA*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun icon_info_load_symbolic_finish = gtk_icon_info_load_symbolic_finish(this : IconInfo*, res : LibGio::AsyncResult*, was_symbolic : Bool*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_load_symbolic_for_context = gtk_icon_info_load_symbolic_for_context(this : IconInfo*, context : LibGtk::StyleContext*, was_symbolic : Bool*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_load_symbolic_for_context_async = gtk_icon_info_load_symbolic_for_context_async(this : IconInfo*, context : LibGtk::StyleContext*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : Void*) : Void
  fun icon_info_load_symbolic_for_context_finish = gtk_icon_info_load_symbolic_for_context_finish(this : IconInfo*, res : LibGio::AsyncResult*, was_symbolic : Bool*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_load_symbolic_for_style = gtk_icon_info_load_symbolic_for_style(this : IconInfo*, style : LibGtk::Style*, state : LibGtk::StateType, was_symbolic : Bool*, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_info_set_raw_coordinates = gtk_icon_info_set_raw_coordinates(this : IconInfo*, raw_coordinates : Bool) : Void

  struct IconTheme # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::IconThemePrivate*
    # Signal changed
    # Virtual function changed
  end
  fun icon_theme_new = gtk_icon_theme_new() : LibGtk::IconTheme*
  fun icon_theme_add_builtin_icon = gtk_icon_theme_add_builtin_icon(icon_name : UInt8*, size : Int32, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun icon_theme_get_default = gtk_icon_theme_get_default() : LibGtk::IconTheme*
  fun icon_theme_get_for_screen = gtk_icon_theme_get_for_screen(screen : LibGdk::Screen*) : LibGtk::IconTheme*
  fun icon_theme_add_resource_path = gtk_icon_theme_add_resource_path(this : IconTheme*, path : UInt8*) : Void
  fun icon_theme_append_search_path = gtk_icon_theme_append_search_path(this : IconTheme*, path : UInt8*) : Void
  fun icon_theme_choose_icon = gtk_icon_theme_choose_icon(this : IconTheme*, icon_names : UInt8**, size : Int32, flags : LibGtk::IconLookupFlags) : LibGtk::IconInfo*
  fun icon_theme_choose_icon_for_scale = gtk_icon_theme_choose_icon_for_scale(this : IconTheme*, icon_names : UInt8**, size : Int32, scale : Int32, flags : LibGtk::IconLookupFlags) : LibGtk::IconInfo*
  fun icon_theme_get_example_icon_name = gtk_icon_theme_get_example_icon_name(this : IconTheme*) : UInt8*
  fun icon_theme_get_icon_sizes = gtk_icon_theme_get_icon_sizes(this : IconTheme*, icon_name : UInt8*) : Int32*
  fun icon_theme_get_search_path = gtk_icon_theme_get_search_path(this : IconTheme*, path : UInt8***, n_elements : Int32*) : Void
  fun icon_theme_has_icon = gtk_icon_theme_has_icon(this : IconTheme*, icon_name : UInt8*) : Bool
  fun icon_theme_list_contexts = gtk_icon_theme_list_contexts(this : IconTheme*) : Void**
  fun icon_theme_list_icons = gtk_icon_theme_list_icons(this : IconTheme*, context : UInt8*) : Void**
  fun icon_theme_load_icon = gtk_icon_theme_load_icon(this : IconTheme*, icon_name : UInt8*, size : Int32, flags : LibGtk::IconLookupFlags, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_theme_load_icon_for_scale = gtk_icon_theme_load_icon_for_scale(this : IconTheme*, icon_name : UInt8*, size : Int32, scale : Int32, flags : LibGtk::IconLookupFlags, error : LibGLib::Error**) : LibGdkPixbuf::Pixbuf*
  fun icon_theme_load_surface = gtk_icon_theme_load_surface(this : IconTheme*, icon_name : UInt8*, size : Int32, scale : Int32, for_window : LibGdk::Window*, flags : LibGtk::IconLookupFlags, error : LibGLib::Error**) : LibCairo::Surface*
  fun icon_theme_lookup_by_gicon = gtk_icon_theme_lookup_by_gicon(this : IconTheme*, icon : LibGio::Icon*, size : Int32, flags : LibGtk::IconLookupFlags) : LibGtk::IconInfo*
  fun icon_theme_lookup_by_gicon_for_scale = gtk_icon_theme_lookup_by_gicon_for_scale(this : IconTheme*, icon : LibGio::Icon*, size : Int32, scale : Int32, flags : LibGtk::IconLookupFlags) : LibGtk::IconInfo*
  fun icon_theme_lookup_icon = gtk_icon_theme_lookup_icon(this : IconTheme*, icon_name : UInt8*, size : Int32, flags : LibGtk::IconLookupFlags) : LibGtk::IconInfo*
  fun icon_theme_lookup_icon_for_scale = gtk_icon_theme_lookup_icon_for_scale(this : IconTheme*, icon_name : UInt8*, size : Int32, scale : Int32, flags : LibGtk::IconLookupFlags) : LibGtk::IconInfo*
  fun icon_theme_prepend_search_path = gtk_icon_theme_prepend_search_path(this : IconTheme*, path : UInt8*) : Void
  fun icon_theme_rescan_if_needed = gtk_icon_theme_rescan_if_needed(this : IconTheme*) : Bool
  fun icon_theme_set_custom_theme = gtk_icon_theme_set_custom_theme(this : IconTheme*, theme_name : UInt8*) : Void
  fun icon_theme_set_screen = gtk_icon_theme_set_screen(this : IconTheme*, screen : LibGdk::Screen*) : Void
  fun icon_theme_set_search_path = gtk_icon_theme_set_search_path(this : IconTheme*, path : UInt8**, n_elements : Int32) : Void

  struct IconView # object
    parent : LibGtk::Container*
    priv : LibGtk::IconViewPrivate*
    # Signal activate-cursor-item
    # Signal item-activated
    # Signal move-cursor
    # Signal select-all
    # Signal select-cursor-item
    # Signal selection-changed
    # Signal toggle-cursor-item
    # Signal unselect-all
    # Virtual function activate_cursor_item
    # Virtual function item_activated
    # Virtual function move_cursor
    # Virtual function select_all
    # Virtual function select_cursor_item
    # Virtual function selection_changed
    # Virtual function toggle_cursor_item
    # Virtual function unselect_all
    # Property activate_on_single_click : Bool
    # Property cell_area : LibGtk::CellArea*
    # Property column_spacing : Int32
    # Property columns : Int32
    # Property item_orientation : LibGtk::Orientation
    # Property item_padding : Int32
    # Property item_width : Int32
    # Property margin : Int32
    # Property markup_column : Int32
    # Property model : LibGtk::TreeModel
    # Property pixbuf_column : Int32
    # Property reorderable : Bool
    # Property row_spacing : Int32
    # Property selection_mode : LibGtk::SelectionMode
    # Property spacing : Int32
    # Property text_column : Int32
    # Property tooltip_column : Int32
  end
  fun icon_view_new = gtk_icon_view_new() : LibGtk::Widget*
  fun icon_view_new_with_area = gtk_icon_view_new_with_area(area : LibGtk::CellArea*) : LibGtk::Widget*
  fun icon_view_new_with_model = gtk_icon_view_new_with_model(model : LibGtk::TreeModel*) : LibGtk::Widget*
  fun icon_view_convert_widget_to_bin_window_coords = gtk_icon_view_convert_widget_to_bin_window_coords(this : IconView*, wx : Int32, wy : Int32, bx : Int32*, by : Int32*) : Void
  fun icon_view_create_drag_icon = gtk_icon_view_create_drag_icon(this : IconView*, path : LibGtk::TreePath*) : LibCairo::Surface*
  fun icon_view_enable_model_drag_dest = gtk_icon_view_enable_model_drag_dest(this : IconView*, targets : LibGtk::TargetEntry*, n_targets : Int32, actions : LibGdk::DragAction) : Void
  fun icon_view_enable_model_drag_source = gtk_icon_view_enable_model_drag_source(this : IconView*, start_button_mask : LibGdk::ModifierType, targets : LibGtk::TargetEntry*, n_targets : Int32, actions : LibGdk::DragAction) : Void
  fun icon_view_get_activate_on_single_click = gtk_icon_view_get_activate_on_single_click(this : IconView*) : Bool
  fun icon_view_get_cell_rect = gtk_icon_view_get_cell_rect(this : IconView*, path : LibGtk::TreePath*, cell : LibGtk::CellRenderer*, rect : LibGdk::Rectangle*) : Bool
  fun icon_view_get_column_spacing = gtk_icon_view_get_column_spacing(this : IconView*) : Int32
  fun icon_view_get_columns = gtk_icon_view_get_columns(this : IconView*) : Int32
  fun icon_view_get_cursor = gtk_icon_view_get_cursor(this : IconView*, path : LibGtk::TreePath**, cell : LibGtk::CellRenderer**) : Bool
  fun icon_view_get_dest_item_at_pos = gtk_icon_view_get_dest_item_at_pos(this : IconView*, drag_x : Int32, drag_y : Int32, path : LibGtk::TreePath**, pos : LibGtk::IconViewDropPosition*) : Bool
  fun icon_view_get_drag_dest_item = gtk_icon_view_get_drag_dest_item(this : IconView*, path : LibGtk::TreePath**, pos : LibGtk::IconViewDropPosition*) : Void
  fun icon_view_get_item_at_pos = gtk_icon_view_get_item_at_pos(this : IconView*, x : Int32, y : Int32, path : LibGtk::TreePath**, cell : LibGtk::CellRenderer**) : Bool
  fun icon_view_get_item_column = gtk_icon_view_get_item_column(this : IconView*, path : LibGtk::TreePath*) : Int32
  fun icon_view_get_item_orientation = gtk_icon_view_get_item_orientation(this : IconView*) : LibGtk::Orientation
  fun icon_view_get_item_padding = gtk_icon_view_get_item_padding(this : IconView*) : Int32
  fun icon_view_get_item_row = gtk_icon_view_get_item_row(this : IconView*, path : LibGtk::TreePath*) : Int32
  fun icon_view_get_item_width = gtk_icon_view_get_item_width(this : IconView*) : Int32
  fun icon_view_get_margin = gtk_icon_view_get_margin(this : IconView*) : Int32
  fun icon_view_get_markup_column = gtk_icon_view_get_markup_column(this : IconView*) : Int32
  fun icon_view_get_model = gtk_icon_view_get_model(this : IconView*) : LibGtk::TreeModel*
  fun icon_view_get_path_at_pos = gtk_icon_view_get_path_at_pos(this : IconView*, x : Int32, y : Int32) : LibGtk::TreePath*
  fun icon_view_get_pixbuf_column = gtk_icon_view_get_pixbuf_column(this : IconView*) : Int32
  fun icon_view_get_reorderable = gtk_icon_view_get_reorderable(this : IconView*) : Bool
  fun icon_view_get_row_spacing = gtk_icon_view_get_row_spacing(this : IconView*) : Int32
  fun icon_view_get_selected_items = gtk_icon_view_get_selected_items(this : IconView*) : Void**
  fun icon_view_get_selection_mode = gtk_icon_view_get_selection_mode(this : IconView*) : LibGtk::SelectionMode
  fun icon_view_get_spacing = gtk_icon_view_get_spacing(this : IconView*) : Int32
  fun icon_view_get_text_column = gtk_icon_view_get_text_column(this : IconView*) : Int32
  fun icon_view_get_tooltip_column = gtk_icon_view_get_tooltip_column(this : IconView*) : Int32
  fun icon_view_get_tooltip_context = gtk_icon_view_get_tooltip_context(this : IconView*, x : Int32*, y : Int32*, keyboard_tip : Bool, model : LibGtk::TreeModel**, path : LibGtk::TreePath**, iter : LibGtk::TreeIter*) : Bool
  fun icon_view_get_visible_range = gtk_icon_view_get_visible_range(this : IconView*, start_path : LibGtk::TreePath**, end_path : LibGtk::TreePath**) : Bool
  fun icon_view_item_activated = gtk_icon_view_item_activated(this : IconView*, path : LibGtk::TreePath*) : Void
  fun icon_view_path_is_selected = gtk_icon_view_path_is_selected(this : IconView*, path : LibGtk::TreePath*) : Bool
  fun icon_view_scroll_to_path = gtk_icon_view_scroll_to_path(this : IconView*, path : LibGtk::TreePath*, use_align : Bool, row_align : Float32, col_align : Float32) : Void
  fun icon_view_select_all = gtk_icon_view_select_all(this : IconView*) : Void
  fun icon_view_select_path = gtk_icon_view_select_path(this : IconView*, path : LibGtk::TreePath*) : Void
  fun icon_view_selected_foreach = gtk_icon_view_selected_foreach(this : IconView*, func : LibGtk::IconViewForeachFunc, data : Void*) : Void
  fun icon_view_set_activate_on_single_click = gtk_icon_view_set_activate_on_single_click(this : IconView*, single : Bool) : Void
  fun icon_view_set_column_spacing = gtk_icon_view_set_column_spacing(this : IconView*, column_spacing : Int32) : Void
  fun icon_view_set_columns = gtk_icon_view_set_columns(this : IconView*, columns : Int32) : Void
  fun icon_view_set_cursor = gtk_icon_view_set_cursor(this : IconView*, path : LibGtk::TreePath*, cell : LibGtk::CellRenderer*, start_editing : Bool) : Void
  fun icon_view_set_drag_dest_item = gtk_icon_view_set_drag_dest_item(this : IconView*, path : LibGtk::TreePath*, pos : LibGtk::IconViewDropPosition) : Void
  fun icon_view_set_item_orientation = gtk_icon_view_set_item_orientation(this : IconView*, orientation : LibGtk::Orientation) : Void
  fun icon_view_set_item_padding = gtk_icon_view_set_item_padding(this : IconView*, item_padding : Int32) : Void
  fun icon_view_set_item_width = gtk_icon_view_set_item_width(this : IconView*, item_width : Int32) : Void
  fun icon_view_set_margin = gtk_icon_view_set_margin(this : IconView*, margin : Int32) : Void
  fun icon_view_set_markup_column = gtk_icon_view_set_markup_column(this : IconView*, column : Int32) : Void
  fun icon_view_set_model = gtk_icon_view_set_model(this : IconView*, model : LibGtk::TreeModel*) : Void
  fun icon_view_set_pixbuf_column = gtk_icon_view_set_pixbuf_column(this : IconView*, column : Int32) : Void
  fun icon_view_set_reorderable = gtk_icon_view_set_reorderable(this : IconView*, reorderable : Bool) : Void
  fun icon_view_set_row_spacing = gtk_icon_view_set_row_spacing(this : IconView*, row_spacing : Int32) : Void
  fun icon_view_set_selection_mode = gtk_icon_view_set_selection_mode(this : IconView*, mode : LibGtk::SelectionMode) : Void
  fun icon_view_set_spacing = gtk_icon_view_set_spacing(this : IconView*, spacing : Int32) : Void
  fun icon_view_set_text_column = gtk_icon_view_set_text_column(this : IconView*, column : Int32) : Void
  fun icon_view_set_tooltip_cell = gtk_icon_view_set_tooltip_cell(this : IconView*, tooltip : LibGtk::Tooltip*, path : LibGtk::TreePath*, cell : LibGtk::CellRenderer*) : Void
  fun icon_view_set_tooltip_column = gtk_icon_view_set_tooltip_column(this : IconView*, column : Int32) : Void
  fun icon_view_set_tooltip_item = gtk_icon_view_set_tooltip_item(this : IconView*, tooltip : LibGtk::Tooltip*, path : LibGtk::TreePath*) : Void
  fun icon_view_unselect_all = gtk_icon_view_unselect_all(this : IconView*) : Void
  fun icon_view_unselect_path = gtk_icon_view_unselect_path(this : IconView*, path : LibGtk::TreePath*) : Void
  fun icon_view_unset_model_drag_dest = gtk_icon_view_unset_model_drag_dest(this : IconView*) : Void
  fun icon_view_unset_model_drag_source = gtk_icon_view_unset_model_drag_source(this : IconView*) : Void

  struct IconViewAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::IconViewAccessiblePrivate*
  end

  struct Image # object
    misc : LibGtk::Misc*
    priv : LibGtk::ImagePrivate*
    # Property file : UInt8*
    # Property gicon : LibGio::Icon
    # Property icon_name : UInt8*
    # Property icon_set : LibGtk::IconSet
    # Property icon_size : Int32
    # Property pixbuf : LibGdkPixbuf::Pixbuf*
    # Property pixbuf_animation : LibGdkPixbuf::PixbufAnimation*
    # Property pixel_size : Int32
    # Property resource : UInt8*
    # Property stock : UInt8*
    # Property storage_type : LibGtk::ImageType
    # Property surface : LibCairo::Surface
    # Property use_fallback : Bool
  end
  fun image_new = gtk_image_new() : LibGtk::Widget*
  fun image_new_from_animation = gtk_image_new_from_animation(animation : LibGdkPixbuf::PixbufAnimation*) : LibGtk::Widget*
  fun image_new_from_file = gtk_image_new_from_file(filename : UInt8*) : LibGtk::Widget*
  fun image_new_from_gicon = gtk_image_new_from_gicon(icon : LibGio::Icon*, size : Int32) : LibGtk::Widget*
  fun image_new_from_icon_name = gtk_image_new_from_icon_name(icon_name : UInt8*, size : Int32) : LibGtk::Widget*
  fun image_new_from_icon_set = gtk_image_new_from_icon_set(icon_set : LibGtk::IconSet*, size : Int32) : LibGtk::Widget*
  fun image_new_from_pixbuf = gtk_image_new_from_pixbuf(pixbuf : LibGdkPixbuf::Pixbuf*) : LibGtk::Widget*
  fun image_new_from_resource = gtk_image_new_from_resource(resource_path : UInt8*) : LibGtk::Widget*
  fun image_new_from_stock = gtk_image_new_from_stock(stock_id : UInt8*, size : Int32) : LibGtk::Widget*
  fun image_new_from_surface = gtk_image_new_from_surface(surface : LibCairo::Surface*) : LibGtk::Widget*
  fun image_clear = gtk_image_clear(this : Image*) : Void
  fun image_get_animation = gtk_image_get_animation(this : Image*) : LibGdkPixbuf::PixbufAnimation*
  fun image_get_gicon = gtk_image_get_gicon(this : Image*, gicon : LibGio::Icon**, size : Int32*) : Void
  fun image_get_icon_name = gtk_image_get_icon_name(this : Image*, icon_name : UInt8**, size : Int32*) : Void
  fun image_get_icon_set = gtk_image_get_icon_set(this : Image*, icon_set : LibGtk::IconSet**, size : Int32*) : Void
  fun image_get_pixbuf = gtk_image_get_pixbuf(this : Image*) : LibGdkPixbuf::Pixbuf*
  fun image_get_pixel_size = gtk_image_get_pixel_size(this : Image*) : Int32
  fun image_get_stock = gtk_image_get_stock(this : Image*, stock_id : UInt8**, size : Int32*) : Void
  fun image_get_storage_type = gtk_image_get_storage_type(this : Image*) : LibGtk::ImageType
  fun image_set_from_animation = gtk_image_set_from_animation(this : Image*, animation : LibGdkPixbuf::PixbufAnimation*) : Void
  fun image_set_from_file = gtk_image_set_from_file(this : Image*, filename : UInt8*) : Void
  fun image_set_from_gicon = gtk_image_set_from_gicon(this : Image*, icon : LibGio::Icon*, size : Int32) : Void
  fun image_set_from_icon_name = gtk_image_set_from_icon_name(this : Image*, icon_name : UInt8*, size : Int32) : Void
  fun image_set_from_icon_set = gtk_image_set_from_icon_set(this : Image*, icon_set : LibGtk::IconSet*, size : Int32) : Void
  fun image_set_from_pixbuf = gtk_image_set_from_pixbuf(this : Image*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun image_set_from_resource = gtk_image_set_from_resource(this : Image*, resource_path : UInt8*) : Void
  fun image_set_from_stock = gtk_image_set_from_stock(this : Image*, stock_id : UInt8*, size : Int32) : Void
  fun image_set_from_surface = gtk_image_set_from_surface(this : Image*, surface : LibCairo::Surface*) : Void
  fun image_set_pixel_size = gtk_image_set_pixel_size(this : Image*, pixel_size : Int32) : Void

  struct ImageAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::ImageAccessiblePrivate*
  end

  struct ImageCellAccessible # object
    parent : LibGtk::RendererCellAccessible*
    priv : LibGtk::ImageCellAccessiblePrivate*
  end

  struct ImageMenuItem # object
    menu_item : LibGtk::MenuItem*
    priv : LibGtk::ImageMenuItemPrivate*
    # Property accel_group : LibGtk::AccelGroup*
    # Property always_show_image : Bool
    # Property image : LibGtk::Widget*
    # Property use_stock : Bool
  end
  fun image_menu_item_new = gtk_image_menu_item_new() : LibGtk::Widget*
  fun image_menu_item_new_from_stock = gtk_image_menu_item_new_from_stock(stock_id : UInt8*, accel_group : LibGtk::AccelGroup*) : LibGtk::Widget*
  fun image_menu_item_new_with_label = gtk_image_menu_item_new_with_label(label : UInt8*) : LibGtk::Widget*
  fun image_menu_item_new_with_mnemonic = gtk_image_menu_item_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*
  fun image_menu_item_get_always_show_image = gtk_image_menu_item_get_always_show_image(this : ImageMenuItem*) : Bool
  fun image_menu_item_get_image = gtk_image_menu_item_get_image(this : ImageMenuItem*) : LibGtk::Widget*
  fun image_menu_item_get_use_stock = gtk_image_menu_item_get_use_stock(this : ImageMenuItem*) : Bool
  fun image_menu_item_set_accel_group = gtk_image_menu_item_set_accel_group(this : ImageMenuItem*, accel_group : LibGtk::AccelGroup*) : Void
  fun image_menu_item_set_always_show_image = gtk_image_menu_item_set_always_show_image(this : ImageMenuItem*, always_show : Bool) : Void
  fun image_menu_item_set_image = gtk_image_menu_item_set_image(this : ImageMenuItem*, image : LibGtk::Widget*) : Void
  fun image_menu_item_set_use_stock = gtk_image_menu_item_set_use_stock(this : ImageMenuItem*, use_stock : Bool) : Void

  struct InfoBar # object
    parent : LibGtk::Box*
    priv : LibGtk::InfoBarPrivate*
    # Signal close
    # Signal response
    # Virtual function close
    # Virtual function response
    # Property message_type : LibGtk::MessageType
    # Property revealed : Bool
    # Property show_close_button : Bool
  end
  fun info_bar_new = gtk_info_bar_new() : LibGtk::Widget*
  fun info_bar_add_action_widget = gtk_info_bar_add_action_widget(this : InfoBar*, child : LibGtk::Widget*, response_id : Int32) : Void
  fun info_bar_add_button = gtk_info_bar_add_button(this : InfoBar*, button_text : UInt8*, response_id : Int32) : LibGtk::Button*
  fun info_bar_get_action_area = gtk_info_bar_get_action_area(this : InfoBar*) : LibGtk::Widget*
  fun info_bar_get_content_area = gtk_info_bar_get_content_area(this : InfoBar*) : LibGtk::Widget*
  fun info_bar_get_message_type = gtk_info_bar_get_message_type(this : InfoBar*) : LibGtk::MessageType
  fun info_bar_get_revealed = gtk_info_bar_get_revealed(this : InfoBar*) : Bool
  fun info_bar_get_show_close_button = gtk_info_bar_get_show_close_button(this : InfoBar*) : Bool
  fun info_bar_response = gtk_info_bar_response(this : InfoBar*, response_id : Int32) : Void
  fun info_bar_set_default_response = gtk_info_bar_set_default_response(this : InfoBar*, response_id : Int32) : Void
  fun info_bar_set_message_type = gtk_info_bar_set_message_type(this : InfoBar*, message_type : LibGtk::MessageType) : Void
  fun info_bar_set_response_sensitive = gtk_info_bar_set_response_sensitive(this : InfoBar*, response_id : Int32, setting : Bool) : Void
  fun info_bar_set_revealed = gtk_info_bar_set_revealed(this : InfoBar*, revealed : Bool) : Void
  fun info_bar_set_show_close_button = gtk_info_bar_set_show_close_button(this : InfoBar*, setting : Bool) : Void

  struct Invisible # object
    widget : LibGtk::Widget*
    priv : LibGtk::InvisiblePrivate*
    # Property screen : LibGdk::Screen*
  end
  fun invisible_new = gtk_invisible_new() : LibGtk::Widget*
  fun invisible_new_for_screen = gtk_invisible_new_for_screen(screen : LibGdk::Screen*) : LibGtk::Widget*
  fun invisible_get_screen = gtk_invisible_get_screen(this : Invisible*) : LibGdk::Screen*
  fun invisible_set_screen = gtk_invisible_set_screen(this : Invisible*, screen : LibGdk::Screen*) : Void

  struct Label # object
    misc : LibGtk::Misc*
    priv : LibGtk::LabelPrivate*
    # Signal activate-current-link
    # Signal activate-link
    # Signal copy-clipboard
    # Signal move-cursor
    # Signal populate-popup
    # Virtual function activate_link
    # Virtual function copy_clipboard
    # Virtual function move_cursor
    # Virtual function populate_popup
    # Property angle : Float64
    # Property attributes : LibPango::AttrList
    # Property cursor_position : Int32
    # Property ellipsize : LibPango::EllipsizeMode
    # Property justify : LibGtk::Justification
    # Property label : UInt8*
    # Property lines : Int32
    # Property max_width_chars : Int32
    # Property mnemonic_keyval : UInt32
    # Property mnemonic_widget : LibGtk::Widget*
    # Property pattern : UInt8*
    # Property selectable : Bool
    # Property selection_bound : Int32
    # Property single_line_mode : Bool
    # Property track_visited_links : Bool
    # Property use_markup : Bool
    # Property use_underline : Bool
    # Property width_chars : Int32
    # Property wrap : Bool
    # Property wrap_mode : LibPango::WrapMode
    # Property xalign : Float32
    # Property yalign : Float32
  end
  fun label_new = gtk_label_new(str : UInt8*) : LibGtk::Widget*
  fun label_new_with_mnemonic = gtk_label_new_with_mnemonic(str : UInt8*) : LibGtk::Widget*
  fun label_get_angle = gtk_label_get_angle(this : Label*) : Float64
  fun label_get_attributes = gtk_label_get_attributes(this : Label*) : LibPango::AttrList*
  fun label_get_current_uri = gtk_label_get_current_uri(this : Label*) : UInt8*
  fun label_get_ellipsize = gtk_label_get_ellipsize(this : Label*) : LibPango::EllipsizeMode
  fun label_get_justify = gtk_label_get_justify(this : Label*) : LibGtk::Justification
  fun label_get_label = gtk_label_get_label(this : Label*) : UInt8*
  fun label_get_layout = gtk_label_get_layout(this : Label*) : LibPango::Layout*
  fun label_get_layout_offsets = gtk_label_get_layout_offsets(this : Label*, x : Int32*, y : Int32*) : Void
  fun label_get_line_wrap = gtk_label_get_line_wrap(this : Label*) : Bool
  fun label_get_line_wrap_mode = gtk_label_get_line_wrap_mode(this : Label*) : LibPango::WrapMode
  fun label_get_lines = gtk_label_get_lines(this : Label*) : Int32
  fun label_get_max_width_chars = gtk_label_get_max_width_chars(this : Label*) : Int32
  fun label_get_mnemonic_keyval = gtk_label_get_mnemonic_keyval(this : Label*) : UInt32
  fun label_get_mnemonic_widget = gtk_label_get_mnemonic_widget(this : Label*) : LibGtk::Widget*
  fun label_get_selectable = gtk_label_get_selectable(this : Label*) : Bool
  fun label_get_selection_bounds = gtk_label_get_selection_bounds(this : Label*, start : Int32*, _end : Int32*) : Bool
  fun label_get_single_line_mode = gtk_label_get_single_line_mode(this : Label*) : Bool
  fun label_get_text = gtk_label_get_text(this : Label*) : UInt8*
  fun label_get_track_visited_links = gtk_label_get_track_visited_links(this : Label*) : Bool
  fun label_get_use_markup = gtk_label_get_use_markup(this : Label*) : Bool
  fun label_get_use_underline = gtk_label_get_use_underline(this : Label*) : Bool
  fun label_get_width_chars = gtk_label_get_width_chars(this : Label*) : Int32
  fun label_get_xalign = gtk_label_get_xalign(this : Label*) : Float32
  fun label_get_yalign = gtk_label_get_yalign(this : Label*) : Float32
  fun label_select_region = gtk_label_select_region(this : Label*, start_offset : Int32, end_offset : Int32) : Void
  fun label_set_angle = gtk_label_set_angle(this : Label*, angle : Float64) : Void
  fun label_set_attributes = gtk_label_set_attributes(this : Label*, attrs : LibPango::AttrList*) : Void
  fun label_set_ellipsize = gtk_label_set_ellipsize(this : Label*, mode : LibPango::EllipsizeMode) : Void
  fun label_set_justify = gtk_label_set_justify(this : Label*, jtype : LibGtk::Justification) : Void
  fun label_set_label = gtk_label_set_label(this : Label*, str : UInt8*) : Void
  fun label_set_line_wrap = gtk_label_set_line_wrap(this : Label*, wrap : Bool) : Void
  fun label_set_line_wrap_mode = gtk_label_set_line_wrap_mode(this : Label*, wrap_mode : LibPango::WrapMode) : Void
  fun label_set_lines = gtk_label_set_lines(this : Label*, lines : Int32) : Void
  fun label_set_markup = gtk_label_set_markup(this : Label*, str : UInt8*) : Void
  fun label_set_markup_with_mnemonic = gtk_label_set_markup_with_mnemonic(this : Label*, str : UInt8*) : Void
  fun label_set_max_width_chars = gtk_label_set_max_width_chars(this : Label*, n_chars : Int32) : Void
  fun label_set_mnemonic_widget = gtk_label_set_mnemonic_widget(this : Label*, widget : LibGtk::Widget*) : Void
  fun label_set_pattern = gtk_label_set_pattern(this : Label*, pattern : UInt8*) : Void
  fun label_set_selectable = gtk_label_set_selectable(this : Label*, setting : Bool) : Void
  fun label_set_single_line_mode = gtk_label_set_single_line_mode(this : Label*, single_line_mode : Bool) : Void
  fun label_set_text = gtk_label_set_text(this : Label*, str : UInt8*) : Void
  fun label_set_text_with_mnemonic = gtk_label_set_text_with_mnemonic(this : Label*, str : UInt8*) : Void
  fun label_set_track_visited_links = gtk_label_set_track_visited_links(this : Label*, track_links : Bool) : Void
  fun label_set_use_markup = gtk_label_set_use_markup(this : Label*, setting : Bool) : Void
  fun label_set_use_underline = gtk_label_set_use_underline(this : Label*, setting : Bool) : Void
  fun label_set_width_chars = gtk_label_set_width_chars(this : Label*, n_chars : Int32) : Void
  fun label_set_xalign = gtk_label_set_xalign(this : Label*, xalign : Float32) : Void
  fun label_set_yalign = gtk_label_set_yalign(this : Label*, yalign : Float32) : Void

  struct LabelAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::LabelAccessiblePrivate*
  end

  struct Layout # object
    container : LibGtk::Container*
    priv : LibGtk::LayoutPrivate*
    # Property height : UInt32
    # Property width : UInt32
  end
  fun layout_new = gtk_layout_new(hadjustment : LibGtk::Adjustment*, vadjustment : LibGtk::Adjustment*) : LibGtk::Widget*
  fun layout_get_bin_window = gtk_layout_get_bin_window(this : Layout*) : LibGdk::Window*
  fun layout_get_hadjustment = gtk_layout_get_hadjustment(this : Layout*) : LibGtk::Adjustment*
  fun layout_get_size = gtk_layout_get_size(this : Layout*, width : UInt32*, height : UInt32*) : Void
  fun layout_get_vadjustment = gtk_layout_get_vadjustment(this : Layout*) : LibGtk::Adjustment*
  fun layout_move = gtk_layout_move(this : Layout*, child_widget : LibGtk::Widget*, x : Int32, y : Int32) : Void
  fun layout_put = gtk_layout_put(this : Layout*, child_widget : LibGtk::Widget*, x : Int32, y : Int32) : Void
  fun layout_set_hadjustment = gtk_layout_set_hadjustment(this : Layout*, adjustment : LibGtk::Adjustment*) : Void
  fun layout_set_size = gtk_layout_set_size(this : Layout*, width : UInt32, height : UInt32) : Void
  fun layout_set_vadjustment = gtk_layout_set_vadjustment(this : Layout*, adjustment : LibGtk::Adjustment*) : Void

  struct LevelBar # object
    parent : LibGtk::Widget*
    priv : LibGtk::LevelBarPrivate*
    # Signal offset-changed
    # Virtual function offset_changed
    # Property inverted : Bool
    # Property max_value : Float64
    # Property min_value : Float64
    # Property mode : LibGtk::LevelBarMode
    # Property value : Float64
  end
  fun level_bar_new = gtk_level_bar_new() : LibGtk::Widget*
  fun level_bar_new_for_interval = gtk_level_bar_new_for_interval(min_value : Float64, max_value : Float64) : LibGtk::Widget*
  fun level_bar_add_offset_value = gtk_level_bar_add_offset_value(this : LevelBar*, name : UInt8*, value : Float64) : Void
  fun level_bar_get_inverted = gtk_level_bar_get_inverted(this : LevelBar*) : Bool
  fun level_bar_get_max_value = gtk_level_bar_get_max_value(this : LevelBar*) : Float64
  fun level_bar_get_min_value = gtk_level_bar_get_min_value(this : LevelBar*) : Float64
  fun level_bar_get_mode = gtk_level_bar_get_mode(this : LevelBar*) : LibGtk::LevelBarMode
  fun level_bar_get_offset_value = gtk_level_bar_get_offset_value(this : LevelBar*, name : UInt8*, value : Float64*) : Bool
  fun level_bar_get_value = gtk_level_bar_get_value(this : LevelBar*) : Float64
  fun level_bar_remove_offset_value = gtk_level_bar_remove_offset_value(this : LevelBar*, name : UInt8*) : Void
  fun level_bar_set_inverted = gtk_level_bar_set_inverted(this : LevelBar*, inverted : Bool) : Void
  fun level_bar_set_max_value = gtk_level_bar_set_max_value(this : LevelBar*, value : Float64) : Void
  fun level_bar_set_min_value = gtk_level_bar_set_min_value(this : LevelBar*, value : Float64) : Void
  fun level_bar_set_mode = gtk_level_bar_set_mode(this : LevelBar*, mode : LibGtk::LevelBarMode) : Void
  fun level_bar_set_value = gtk_level_bar_set_value(this : LevelBar*, value : Float64) : Void

  struct LevelBarAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::LevelBarAccessiblePrivate*
  end

  struct LinkButton # object
    parent_instance : LibGtk::Button*
    priv : LibGtk::LinkButtonPrivate*
    # Signal activate-link
    # Virtual function activate_link
    # Property uri : UInt8*
    # Property visited : Bool
  end
  fun link_button_new = gtk_link_button_new(uri : UInt8*) : LibGtk::Widget*
  fun link_button_new_with_label = gtk_link_button_new_with_label(uri : UInt8*, label : UInt8*) : LibGtk::Widget*
  fun link_button_get_uri = gtk_link_button_get_uri(this : LinkButton*) : UInt8*
  fun link_button_get_visited = gtk_link_button_get_visited(this : LinkButton*) : Bool
  fun link_button_set_uri = gtk_link_button_set_uri(this : LinkButton*, uri : UInt8*) : Void
  fun link_button_set_visited = gtk_link_button_set_visited(this : LinkButton*, visited : Bool) : Void

  struct LinkButtonAccessible # object
    parent : LibGtk::ButtonAccessible*
    priv : LibGtk::LinkButtonAccessiblePrivate*
  end

  struct ListBox # object
    parent_instance : LibGtk::Container*
    # Signal activate-cursor-row
    # Signal move-cursor
    # Signal row-activated
    # Signal row-selected
    # Signal select-all
    # Signal selected-rows-changed
    # Signal toggle-cursor-row
    # Signal unselect-all
    # Virtual function activate_cursor_row
    # Virtual function move_cursor
    # Virtual function row_activated
    # Virtual function row_selected
    # Virtual function select_all
    # Virtual function selected_rows_changed
    # Virtual function toggle_cursor_row
    # Virtual function unselect_all
    # Property activate_on_single_click : Bool
    # Property selection_mode : LibGtk::SelectionMode
  end
  fun list_box_new = gtk_list_box_new() : LibGtk::Widget*
  fun list_box_bind_model = gtk_list_box_bind_model(this : ListBox*, model : LibGio::ListModel*, create_widget_func : LibGtk::ListBoxCreateWidgetFunc, user_data : Void*, user_data_free_func : LibGLib::DestroyNotify) : Void
  fun list_box_drag_highlight_row = gtk_list_box_drag_highlight_row(this : ListBox*, row : LibGtk::ListBoxRow*) : Void
  fun list_box_drag_unhighlight_row = gtk_list_box_drag_unhighlight_row(this : ListBox*) : Void
  fun list_box_get_activate_on_single_click = gtk_list_box_get_activate_on_single_click(this : ListBox*) : Bool
  fun list_box_get_adjustment = gtk_list_box_get_adjustment(this : ListBox*) : LibGtk::Adjustment*
  fun list_box_get_row_at_index = gtk_list_box_get_row_at_index(this : ListBox*, index : Int32) : LibGtk::ListBoxRow*
  fun list_box_get_row_at_y = gtk_list_box_get_row_at_y(this : ListBox*, y : Int32) : LibGtk::ListBoxRow*
  fun list_box_get_selected_row = gtk_list_box_get_selected_row(this : ListBox*) : LibGtk::ListBoxRow*
  fun list_box_get_selected_rows = gtk_list_box_get_selected_rows(this : ListBox*) : Void**
  fun list_box_get_selection_mode = gtk_list_box_get_selection_mode(this : ListBox*) : LibGtk::SelectionMode
  fun list_box_insert = gtk_list_box_insert(this : ListBox*, child : LibGtk::Widget*, position : Int32) : Void
  fun list_box_invalidate_filter = gtk_list_box_invalidate_filter(this : ListBox*) : Void
  fun list_box_invalidate_headers = gtk_list_box_invalidate_headers(this : ListBox*) : Void
  fun list_box_invalidate_sort = gtk_list_box_invalidate_sort(this : ListBox*) : Void
  fun list_box_prepend = gtk_list_box_prepend(this : ListBox*, child : LibGtk::Widget*) : Void
  fun list_box_select_all = gtk_list_box_select_all(this : ListBox*) : Void
  fun list_box_select_row = gtk_list_box_select_row(this : ListBox*, row : LibGtk::ListBoxRow*) : Void
  fun list_box_selected_foreach = gtk_list_box_selected_foreach(this : ListBox*, func : LibGtk::ListBoxForeachFunc, data : Void*) : Void
  fun list_box_set_activate_on_single_click = gtk_list_box_set_activate_on_single_click(this : ListBox*, single : Bool) : Void
  fun list_box_set_adjustment = gtk_list_box_set_adjustment(this : ListBox*, adjustment : LibGtk::Adjustment*) : Void
  fun list_box_set_filter_func = gtk_list_box_set_filter_func(this : ListBox*, filter_func : LibGtk::ListBoxFilterFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun list_box_set_header_func = gtk_list_box_set_header_func(this : ListBox*, update_header : LibGtk::ListBoxUpdateHeaderFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun list_box_set_placeholder = gtk_list_box_set_placeholder(this : ListBox*, placeholder : LibGtk::Widget*) : Void
  fun list_box_set_selection_mode = gtk_list_box_set_selection_mode(this : ListBox*, mode : LibGtk::SelectionMode) : Void
  fun list_box_set_sort_func = gtk_list_box_set_sort_func(this : ListBox*, sort_func : LibGtk::ListBoxSortFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun list_box_unselect_all = gtk_list_box_unselect_all(this : ListBox*) : Void
  fun list_box_unselect_row = gtk_list_box_unselect_row(this : ListBox*, row : LibGtk::ListBoxRow*) : Void

  struct ListBoxAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::ListBoxAccessiblePrivate*
  end

  struct ListBoxRow # object
    parent_instance : LibGtk::Bin*
    # Signal activate
    # Virtual function activate
    # Property activatable : Bool
    # Property selectable : Bool
  end
  fun list_box_row_new = gtk_list_box_row_new() : LibGtk::Widget*
  fun list_box_row_changed = gtk_list_box_row_changed(this : ListBoxRow*) : Void
  fun list_box_row_get_activatable = gtk_list_box_row_get_activatable(this : ListBoxRow*) : Bool
  fun list_box_row_get_header = gtk_list_box_row_get_header(this : ListBoxRow*) : LibGtk::Widget*
  fun list_box_row_get_index = gtk_list_box_row_get_index(this : ListBoxRow*) : Int32
  fun list_box_row_get_selectable = gtk_list_box_row_get_selectable(this : ListBoxRow*) : Bool
  fun list_box_row_is_selected = gtk_list_box_row_is_selected(this : ListBoxRow*) : Bool
  fun list_box_row_set_activatable = gtk_list_box_row_set_activatable(this : ListBoxRow*, activatable : Bool) : Void
  fun list_box_row_set_header = gtk_list_box_row_set_header(this : ListBoxRow*, header : LibGtk::Widget*) : Void
  fun list_box_row_set_selectable = gtk_list_box_row_set_selectable(this : ListBoxRow*, selectable : Bool) : Void

  struct ListBoxRowAccessible # object
    parent : LibGtk::ContainerAccessible*
  end

  struct ListStore # object
    parent : LibGObject::Object*
    priv : LibGtk::ListStorePrivate*
  end
  fun list_store_new = gtk_list_store_newv(n_columns : Int32, types : UInt64*) : LibGtk::ListStore*
  fun list_store_append = gtk_list_store_append(this : ListStore*, iter : LibGtk::TreeIter*) : Void
  fun list_store_clear = gtk_list_store_clear(this : ListStore*) : Void
  fun list_store_insert = gtk_list_store_insert(this : ListStore*, iter : LibGtk::TreeIter*, position : Int32) : Void
  fun list_store_insert_after = gtk_list_store_insert_after(this : ListStore*, iter : LibGtk::TreeIter*, sibling : LibGtk::TreeIter*) : Void
  fun list_store_insert_before = gtk_list_store_insert_before(this : ListStore*, iter : LibGtk::TreeIter*, sibling : LibGtk::TreeIter*) : Void
  fun list_store_insert_with_valuesv = gtk_list_store_insert_with_valuesv(this : ListStore*, iter : LibGtk::TreeIter*, position : Int32, columns : Int32*, values : LibGObject::Value*, n_values : Int32) : Void
  fun list_store_iter_is_valid = gtk_list_store_iter_is_valid(this : ListStore*, iter : LibGtk::TreeIter*) : Bool
  fun list_store_move_after = gtk_list_store_move_after(this : ListStore*, iter : LibGtk::TreeIter*, position : LibGtk::TreeIter*) : Void
  fun list_store_move_before = gtk_list_store_move_before(this : ListStore*, iter : LibGtk::TreeIter*, position : LibGtk::TreeIter*) : Void
  fun list_store_prepend = gtk_list_store_prepend(this : ListStore*, iter : LibGtk::TreeIter*) : Void
  fun list_store_remove = gtk_list_store_remove(this : ListStore*, iter : LibGtk::TreeIter*) : Bool
  fun list_store_reorder = gtk_list_store_reorder(this : ListStore*, new_order : Int32*) : Void
  fun list_store_set_column_types = gtk_list_store_set_column_types(this : ListStore*, n_columns : Int32, types : UInt64*) : Void
  fun list_store_set_value = gtk_list_store_set_value(this : ListStore*, iter : LibGtk::TreeIter*, column : Int32, value : LibGObject::Value*) : Void
  fun list_store_set = gtk_list_store_set_valuesv(this : ListStore*, iter : LibGtk::TreeIter*, columns : Int32*, values : LibGObject::Value*, n_values : Int32) : Void
  fun list_store_swap = gtk_list_store_swap(this : ListStore*, a : LibGtk::TreeIter*, b : LibGtk::TreeIter*) : Void

  struct LockButton # object
    parent : LibGtk::Button*
    priv : LibGtk::LockButtonPrivate*
    # Property permission : LibGio::Permission*
    # Property text_lock : UInt8*
    # Property text_unlock : UInt8*
    # Property tooltip_lock : UInt8*
    # Property tooltip_not_authorized : UInt8*
    # Property tooltip_unlock : UInt8*
  end
  fun lock_button_new = gtk_lock_button_new(permission : LibGio::Permission*) : LibGtk::Widget*
  fun lock_button_get_permission = gtk_lock_button_get_permission(this : LockButton*) : LibGio::Permission*
  fun lock_button_set_permission = gtk_lock_button_set_permission(this : LockButton*, permission : LibGio::Permission*) : Void

  struct LockButtonAccessible # object
    parent : LibGtk::ButtonAccessible*
    priv : LibGtk::LockButtonAccessiblePrivate*
  end

  struct Menu # object
    menu_shell : LibGtk::MenuShell*
    priv : LibGtk::MenuPrivate*
    # Signal move-scroll
    # Signal popped-up
    # Property accel_group : LibGtk::AccelGroup*
    # Property accel_path : UInt8*
    # Property active : Int32
    # Property anchor_hints : LibGdk::AnchorHints
    # Property attach_widget : LibGtk::Widget*
    # Property menu_type_hint : LibGdk::WindowTypeHint
    # Property monitor : Int32
    # Property rect_anchor_dx : Int32
    # Property rect_anchor_dy : Int32
    # Property reserve_toggle_size : Bool
    # Property tearoff_state : Bool
    # Property tearoff_title : UInt8*
  end
  fun menu_new = gtk_menu_new() : LibGtk::Widget*
  fun menu_new_from_model = gtk_menu_new_from_model(model : LibGio::MenuModel*) : LibGtk::Widget*
  fun menu_get_for_attach_widget = gtk_menu_get_for_attach_widget(widget : LibGtk::Widget*) : Void**
  fun menu_attach = gtk_menu_attach(this : Menu*, child : LibGtk::Widget*, left_attach : UInt32, right_attach : UInt32, top_attach : UInt32, bottom_attach : UInt32) : Void
  fun menu_attach_to_widget = gtk_menu_attach_to_widget(this : Menu*, attach_widget : LibGtk::Widget*, detacher : LibGtk::MenuDetachFunc) : Void
  fun menu_detach = gtk_menu_detach(this : Menu*) : Void
  fun menu_get_accel_group = gtk_menu_get_accel_group(this : Menu*) : LibGtk::AccelGroup*
  fun menu_get_accel_path = gtk_menu_get_accel_path(this : Menu*) : UInt8*
  fun menu_get_active = gtk_menu_get_active(this : Menu*) : LibGtk::Widget*
  fun menu_get_attach_widget = gtk_menu_get_attach_widget(this : Menu*) : LibGtk::Widget*
  fun menu_get_monitor = gtk_menu_get_monitor(this : Menu*) : Int32
  fun menu_get_reserve_toggle_size = gtk_menu_get_reserve_toggle_size(this : Menu*) : Bool
  fun menu_get_tearoff_state = gtk_menu_get_tearoff_state(this : Menu*) : Bool
  fun menu_get_title = gtk_menu_get_title(this : Menu*) : UInt8*
  fun menu_place_on_monitor = gtk_menu_place_on_monitor(this : Menu*, monitor : LibGdk::Monitor*) : Void
  fun menu_popdown = gtk_menu_popdown(this : Menu*) : Void
  fun menu_popup = gtk_menu_popup(this : Menu*, parent_menu_shell : LibGtk::Widget*, parent_menu_item : LibGtk::Widget*, func : LibGtk::MenuPositionFunc, data : Void*, button : UInt32, activate_time : UInt32) : Void
  fun menu_popup_at_pointer = gtk_menu_popup_at_pointer(this : Menu*, trigger_event : LibGdk::Event*) : Void
  fun menu_popup_at_rect = gtk_menu_popup_at_rect(this : Menu*, rect_window : LibGdk::Window*, rect : LibGdk::Rectangle*, rect_anchor : LibGdk::Gravity, menu_anchor : LibGdk::Gravity, trigger_event : LibGdk::Event*) : Void
  fun menu_popup_at_widget = gtk_menu_popup_at_widget(this : Menu*, widget : LibGtk::Widget*, widget_anchor : LibGdk::Gravity, menu_anchor : LibGdk::Gravity, trigger_event : LibGdk::Event*) : Void
  fun menu_popup_for_device = gtk_menu_popup_for_device(this : Menu*, device : LibGdk::Device*, parent_menu_shell : LibGtk::Widget*, parent_menu_item : LibGtk::Widget*, func : LibGtk::MenuPositionFunc, data : Void*, destroy : LibGLib::DestroyNotify, button : UInt32, activate_time : UInt32) : Void
  fun menu_reorder_child = gtk_menu_reorder_child(this : Menu*, child : LibGtk::Widget*, position : Int32) : Void
  fun menu_reposition = gtk_menu_reposition(this : Menu*) : Void
  fun menu_set_accel_group = gtk_menu_set_accel_group(this : Menu*, accel_group : LibGtk::AccelGroup*) : Void
  fun menu_set_accel_path = gtk_menu_set_accel_path(this : Menu*, accel_path : UInt8*) : Void
  fun menu_set_active = gtk_menu_set_active(this : Menu*, index : UInt32) : Void
  fun menu_set_monitor = gtk_menu_set_monitor(this : Menu*, monitor_num : Int32) : Void
  fun menu_set_reserve_toggle_size = gtk_menu_set_reserve_toggle_size(this : Menu*, reserve_toggle_size : Bool) : Void
  fun menu_set_screen = gtk_menu_set_screen(this : Menu*, screen : LibGdk::Screen*) : Void
  fun menu_set_tearoff_state = gtk_menu_set_tearoff_state(this : Menu*, torn_off : Bool) : Void
  fun menu_set_title = gtk_menu_set_title(this : Menu*, title : UInt8*) : Void

  struct MenuAccessible # object
    parent : LibGtk::MenuShellAccessible*
    priv : LibGtk::MenuAccessiblePrivate*
  end

  struct MenuBar # object
    menu_shell : LibGtk::MenuShell*
    priv : LibGtk::MenuBarPrivate*
    # Property child_pack_direction : LibGtk::PackDirection
    # Property pack_direction : LibGtk::PackDirection
  end
  fun menu_bar_new = gtk_menu_bar_new() : LibGtk::Widget*
  fun menu_bar_new_from_model = gtk_menu_bar_new_from_model(model : LibGio::MenuModel*) : LibGtk::Widget*
  fun menu_bar_get_child_pack_direction = gtk_menu_bar_get_child_pack_direction(this : MenuBar*) : LibGtk::PackDirection
  fun menu_bar_get_pack_direction = gtk_menu_bar_get_pack_direction(this : MenuBar*) : LibGtk::PackDirection
  fun menu_bar_set_child_pack_direction = gtk_menu_bar_set_child_pack_direction(this : MenuBar*, child_pack_dir : LibGtk::PackDirection) : Void
  fun menu_bar_set_pack_direction = gtk_menu_bar_set_pack_direction(this : MenuBar*, pack_dir : LibGtk::PackDirection) : Void

  struct MenuButton # object
    parent : LibGtk::ToggleButton*
    priv : LibGtk::MenuButtonPrivate*
    # Property align_widget : LibGtk::Container*
    # Property direction : LibGtk::ArrowType
    # Property menu_model : LibGio::MenuModel*
    # Property popover : LibGtk::Popover*
    # Property popup : LibGtk::Menu*
    # Property use_popover : Bool
  end
  fun menu_button_new = gtk_menu_button_new() : LibGtk::Widget*
  fun menu_button_get_align_widget = gtk_menu_button_get_align_widget(this : MenuButton*) : LibGtk::Widget*
  fun menu_button_get_direction = gtk_menu_button_get_direction(this : MenuButton*) : LibGtk::ArrowType
  fun menu_button_get_menu_model = gtk_menu_button_get_menu_model(this : MenuButton*) : LibGio::MenuModel*
  fun menu_button_get_popover = gtk_menu_button_get_popover(this : MenuButton*) : LibGtk::Popover*
  fun menu_button_get_popup = gtk_menu_button_get_popup(this : MenuButton*) : LibGtk::Menu*
  fun menu_button_get_use_popover = gtk_menu_button_get_use_popover(this : MenuButton*) : Bool
  fun menu_button_set_align_widget = gtk_menu_button_set_align_widget(this : MenuButton*, align_widget : LibGtk::Widget*) : Void
  fun menu_button_set_direction = gtk_menu_button_set_direction(this : MenuButton*, direction : LibGtk::ArrowType) : Void
  fun menu_button_set_menu_model = gtk_menu_button_set_menu_model(this : MenuButton*, menu_model : LibGio::MenuModel*) : Void
  fun menu_button_set_popover = gtk_menu_button_set_popover(this : MenuButton*, popover : LibGtk::Widget*) : Void
  fun menu_button_set_popup = gtk_menu_button_set_popup(this : MenuButton*, menu : LibGtk::Widget*) : Void
  fun menu_button_set_use_popover = gtk_menu_button_set_use_popover(this : MenuButton*, use_popover : Bool) : Void

  struct MenuButtonAccessible # object
    parent : LibGtk::ToggleButtonAccessible*
    priv : LibGtk::MenuButtonAccessiblePrivate*
  end

  struct MenuItem # object
    bin : LibGtk::Bin*
    priv : LibGtk::MenuItemPrivate*
    # Signal activate
    # Signal activate-item
    # Signal deselect
    # Signal select
    # Signal toggle-size-allocate
    # Signal toggle-size-request
    # Virtual function activate
    # Virtual function activate_item
    # Virtual function deselect
    # Virtual function get_label
    # Virtual function select
    # Virtual function set_label
    # Virtual function toggle_size_allocate
    # Virtual function toggle_size_request
    # Property accel_path : UInt8*
    # Property label : UInt8*
    # Property right_justified : Bool
    # Property submenu : LibGtk::Menu*
    # Property use_underline : Bool
  end
  fun menu_item_new = gtk_menu_item_new() : LibGtk::Widget*
  fun menu_item_new_with_label = gtk_menu_item_new_with_label(label : UInt8*) : LibGtk::Widget*
  fun menu_item_new_with_mnemonic = gtk_menu_item_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*
  fun menu_item_activate = gtk_menu_item_activate(this : MenuItem*) : Void
  fun menu_item_deselect = gtk_menu_item_deselect(this : MenuItem*) : Void
  fun menu_item_get_accel_path = gtk_menu_item_get_accel_path(this : MenuItem*) : UInt8*
  fun menu_item_get_label = gtk_menu_item_get_label(this : MenuItem*) : UInt8*
  fun menu_item_get_reserve_indicator = gtk_menu_item_get_reserve_indicator(this : MenuItem*) : Bool
  fun menu_item_get_right_justified = gtk_menu_item_get_right_justified(this : MenuItem*) : Bool
  fun menu_item_get_submenu = gtk_menu_item_get_submenu(this : MenuItem*) : LibGtk::Widget*
  fun menu_item_get_use_underline = gtk_menu_item_get_use_underline(this : MenuItem*) : Bool
  fun menu_item_select = gtk_menu_item_select(this : MenuItem*) : Void
  fun menu_item_set_accel_path = gtk_menu_item_set_accel_path(this : MenuItem*, accel_path : UInt8*) : Void
  fun menu_item_set_label = gtk_menu_item_set_label(this : MenuItem*, label : UInt8*) : Void
  fun menu_item_set_reserve_indicator = gtk_menu_item_set_reserve_indicator(this : MenuItem*, reserve : Bool) : Void
  fun menu_item_set_right_justified = gtk_menu_item_set_right_justified(this : MenuItem*, right_justified : Bool) : Void
  fun menu_item_set_submenu = gtk_menu_item_set_submenu(this : MenuItem*, submenu : LibGtk::Menu*) : Void
  fun menu_item_set_use_underline = gtk_menu_item_set_use_underline(this : MenuItem*, setting : Bool) : Void
  fun menu_item_toggle_size_allocate = gtk_menu_item_toggle_size_allocate(this : MenuItem*, allocation : Int32) : Void
  fun menu_item_toggle_size_request = gtk_menu_item_toggle_size_request(this : MenuItem*, requisition : Int32*) : Void

  struct MenuItemAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::MenuItemAccessiblePrivate*
  end

  struct MenuShell # object
    container : LibGtk::Container*
    priv : LibGtk::MenuShellPrivate*
    # Signal activate-current
    # Signal cancel
    # Signal cycle-focus
    # Signal deactivate
    # Signal insert
    # Signal move-current
    # Signal move-selected
    # Signal selection-done
    # Virtual function activate_current
    # Virtual function cancel
    # Virtual function deactivate
    # Virtual function get_popup_delay
    # Virtual function insert
    # Virtual function move_current
    # Virtual function move_selected
    # Virtual function select_item
    # Virtual function selection_done
    # Property take_focus : Bool
  end
  fun menu_shell_activate_item = gtk_menu_shell_activate_item(this : MenuShell*, menu_item : LibGtk::Widget*, force_deactivate : Bool) : Void
  fun menu_shell_append = gtk_menu_shell_append(this : MenuShell*, child : LibGtk::MenuItem*) : Void
  fun menu_shell_bind_model = gtk_menu_shell_bind_model(this : MenuShell*, model : LibGio::MenuModel*, action_namespace : UInt8*, with_separators : Bool) : Void
  fun menu_shell_cancel = gtk_menu_shell_cancel(this : MenuShell*) : Void
  fun menu_shell_deactivate = gtk_menu_shell_deactivate(this : MenuShell*) : Void
  fun menu_shell_deselect = gtk_menu_shell_deselect(this : MenuShell*) : Void
  fun menu_shell_get_parent_shell = gtk_menu_shell_get_parent_shell(this : MenuShell*) : LibGtk::Widget*
  fun menu_shell_get_selected_item = gtk_menu_shell_get_selected_item(this : MenuShell*) : LibGtk::Widget*
  fun menu_shell_get_take_focus = gtk_menu_shell_get_take_focus(this : MenuShell*) : Bool
  fun menu_shell_insert = gtk_menu_shell_insert(this : MenuShell*, child : LibGtk::Widget*, position : Int32) : Void
  fun menu_shell_prepend = gtk_menu_shell_prepend(this : MenuShell*, child : LibGtk::Widget*) : Void
  fun menu_shell_select_first = gtk_menu_shell_select_first(this : MenuShell*, search_sensitive : Bool) : Void
  fun menu_shell_select_item = gtk_menu_shell_select_item(this : MenuShell*, menu_item : LibGtk::Widget*) : Void
  fun menu_shell_set_take_focus = gtk_menu_shell_set_take_focus(this : MenuShell*, take_focus : Bool) : Void

  struct MenuShellAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::MenuShellAccessiblePrivate*
  end

  struct MenuToolButton # object
    parent : LibGtk::ToolButton*
    priv : LibGtk::MenuToolButtonPrivate*
    # Signal show-menu
    # Virtual function show_menu
    # Property menu : LibGtk::Menu*
  end
  fun menu_tool_button_new = gtk_menu_tool_button_new(icon_widget : LibGtk::Widget*, label : UInt8*) : LibGtk::ToolItem*
  fun menu_tool_button_new_from_stock = gtk_menu_tool_button_new_from_stock(stock_id : UInt8*) : LibGtk::ToolItem*
  fun menu_tool_button_get_menu = gtk_menu_tool_button_get_menu(this : MenuToolButton*) : LibGtk::Widget*
  fun menu_tool_button_set_arrow_tooltip_markup = gtk_menu_tool_button_set_arrow_tooltip_markup(this : MenuToolButton*, markup : UInt8*) : Void
  fun menu_tool_button_set_arrow_tooltip_text = gtk_menu_tool_button_set_arrow_tooltip_text(this : MenuToolButton*, text : UInt8*) : Void
  fun menu_tool_button_set_menu = gtk_menu_tool_button_set_menu(this : MenuToolButton*, menu : LibGtk::Widget*) : Void

  struct MessageDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::MessageDialogPrivate*
    # Property buttons : LibGtk::ButtonsType
    # Property image : LibGtk::Widget*
    # Property message_area : LibGtk::Widget*
    # Property message_type : LibGtk::MessageType
    # Property secondary_text : UInt8*
    # Property secondary_use_markup : Bool
    # Property text : UInt8*
    # Property use_markup : Bool
  end
  fun message_dialog_get_image = gtk_message_dialog_get_image(this : MessageDialog*) : LibGtk::Widget*
  fun message_dialog_get_message_area = gtk_message_dialog_get_message_area(this : MessageDialog*) : LibGtk::Widget*
  fun message_dialog_set_image = gtk_message_dialog_set_image(this : MessageDialog*, image : LibGtk::Widget*) : Void
  fun message_dialog_set_markup = gtk_message_dialog_set_markup(this : MessageDialog*, str : UInt8*) : Void

  struct Misc # object
    widget : LibGtk::Widget*
    priv : LibGtk::MiscPrivate*
    # Property xalign : Float32
    # Property xpad : Int32
    # Property yalign : Float32
    # Property ypad : Int32
  end
  fun misc_get_alignment = gtk_misc_get_alignment(this : Misc*, xalign : Float32*, yalign : Float32*) : Void
  fun misc_get_padding = gtk_misc_get_padding(this : Misc*, xpad : Int32*, ypad : Int32*) : Void
  fun misc_set_alignment = gtk_misc_set_alignment(this : Misc*, xalign : Float32, yalign : Float32) : Void
  fun misc_set_padding = gtk_misc_set_padding(this : Misc*, xpad : Int32, ypad : Int32) : Void

  struct ModelButton # object
    _data : UInt8[0]
    # Property active : Bool
    # Property centered : Bool
    # Property icon : LibGio::Icon
    # Property iconic : Bool
    # Property inverted : Bool
    # Property menu_name : UInt8*
    # Property role : LibGtk::ButtonRole
    # Property text : UInt8*
    # Property use_markup : Bool
  end
  fun model_button_new = gtk_model_button_new() : LibGtk::Widget*

  struct MountOperation # object
    parent_instance : LibGio::MountOperation*
    priv : LibGtk::MountOperationPrivate*
    # Property is_showing : Bool
    # Property parent : LibGtk::Window*
    # Property screen : LibGdk::Screen*
  end
  fun mount_operation_new = gtk_mount_operation_new(parent : LibGtk::Window*) : LibGio::MountOperation*
  fun mount_operation_get_parent = gtk_mount_operation_get_parent(this : MountOperation*) : LibGtk::Window*
  fun mount_operation_get_screen = gtk_mount_operation_get_screen(this : MountOperation*) : LibGdk::Screen*
  fun mount_operation_is_showing = gtk_mount_operation_is_showing(this : MountOperation*) : Bool
  fun mount_operation_set_parent = gtk_mount_operation_set_parent(this : MountOperation*, parent : LibGtk::Window*) : Void
  fun mount_operation_set_screen = gtk_mount_operation_set_screen(this : MountOperation*, screen : LibGdk::Screen*) : Void

  struct NativeDialog # object
    parent_instance : LibGObject::Object*
    # Signal response
    # Virtual function hide
    # Virtual function response
    # Virtual function show
    # Property modal : Bool
    # Property title : UInt8*
    # Property transient_for : LibGtk::Window*
    # Property visible : Bool
  end
  fun native_dialog_destroy = gtk_native_dialog_destroy(this : NativeDialog*) : Void
  fun native_dialog_get_modal = gtk_native_dialog_get_modal(this : NativeDialog*) : Bool
  fun native_dialog_get_title = gtk_native_dialog_get_title(this : NativeDialog*) : UInt8*
  fun native_dialog_get_transient_for = gtk_native_dialog_get_transient_for(this : NativeDialog*) : LibGtk::Window*
  fun native_dialog_get_visible = gtk_native_dialog_get_visible(this : NativeDialog*) : Bool
  fun native_dialog_hide = gtk_native_dialog_hide(this : NativeDialog*) : Void
  fun native_dialog_run = gtk_native_dialog_run(this : NativeDialog*) : Int32
  fun native_dialog_set_modal = gtk_native_dialog_set_modal(this : NativeDialog*, modal : Bool) : Void
  fun native_dialog_set_title = gtk_native_dialog_set_title(this : NativeDialog*, title : UInt8*) : Void
  fun native_dialog_set_transient_for = gtk_native_dialog_set_transient_for(this : NativeDialog*, parent : LibGtk::Window*) : Void
  fun native_dialog_show = gtk_native_dialog_show(this : NativeDialog*) : Void

  struct Notebook # object
    container : LibGtk::Container*
    priv : LibGtk::NotebookPrivate*
    # Signal change-current-page
    # Signal create-window
    # Signal focus-tab
    # Signal move-focus-out
    # Signal page-added
    # Signal page-removed
    # Signal page-reordered
    # Signal reorder-tab
    # Signal select-page
    # Signal switch-page
    # Virtual function change_current_page
    # Virtual function focus_tab
    # Virtual function insert_page
    # Virtual function move_focus_out
    # Virtual function page_added
    # Virtual function page_removed
    # Virtual function page_reordered
    # Virtual function reorder_tab
    # Virtual function select_page
    # Virtual function switch_page
    # Property enable_popup : Bool
    # Property group_name : UInt8*
    # Property page : Int32
    # Property scrollable : Bool
    # Property show_border : Bool
    # Property show_tabs : Bool
    # Property tab_pos : LibGtk::PositionType
  end
  fun notebook_new = gtk_notebook_new() : LibGtk::Widget*
  fun notebook_append_page = gtk_notebook_append_page(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*) : Int32
  fun notebook_append_page_menu = gtk_notebook_append_page_menu(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*, menu_label : LibGtk::Widget*) : Int32
  fun notebook_detach_tab = gtk_notebook_detach_tab(this : Notebook*, child : LibGtk::Widget*) : Void
  fun notebook_get_action_widget = gtk_notebook_get_action_widget(this : Notebook*, pack_type : LibGtk::PackType) : LibGtk::Widget*
  fun notebook_get_current_page = gtk_notebook_get_current_page(this : Notebook*) : Int32
  fun notebook_get_group_name = gtk_notebook_get_group_name(this : Notebook*) : UInt8*
  fun notebook_get_menu_label = gtk_notebook_get_menu_label(this : Notebook*, child : LibGtk::Widget*) : LibGtk::Widget*
  fun notebook_get_menu_label_text = gtk_notebook_get_menu_label_text(this : Notebook*, child : LibGtk::Widget*) : UInt8*
  fun notebook_get_n_pages = gtk_notebook_get_n_pages(this : Notebook*) : Int32
  fun notebook_get_nth_page = gtk_notebook_get_nth_page(this : Notebook*, page_num : Int32) : LibGtk::Widget*
  fun notebook_get_scrollable = gtk_notebook_get_scrollable(this : Notebook*) : Bool
  fun notebook_get_show_border = gtk_notebook_get_show_border(this : Notebook*) : Bool
  fun notebook_get_show_tabs = gtk_notebook_get_show_tabs(this : Notebook*) : Bool
  fun notebook_get_tab_detachable = gtk_notebook_get_tab_detachable(this : Notebook*, child : LibGtk::Widget*) : Bool
  fun notebook_get_tab_hborder = gtk_notebook_get_tab_hborder(this : Notebook*) : UInt16
  fun notebook_get_tab_label = gtk_notebook_get_tab_label(this : Notebook*, child : LibGtk::Widget*) : LibGtk::Widget*
  fun notebook_get_tab_label_text = gtk_notebook_get_tab_label_text(this : Notebook*, child : LibGtk::Widget*) : UInt8*
  fun notebook_get_tab_pos = gtk_notebook_get_tab_pos(this : Notebook*) : LibGtk::PositionType
  fun notebook_get_tab_reorderable = gtk_notebook_get_tab_reorderable(this : Notebook*, child : LibGtk::Widget*) : Bool
  fun notebook_get_tab_vborder = gtk_notebook_get_tab_vborder(this : Notebook*) : UInt16
  fun notebook_insert_page = gtk_notebook_insert_page(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*, position : Int32) : Int32
  fun notebook_insert_page_menu = gtk_notebook_insert_page_menu(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*, menu_label : LibGtk::Widget*, position : Int32) : Int32
  fun notebook_next_page = gtk_notebook_next_page(this : Notebook*) : Void
  fun notebook_page_num = gtk_notebook_page_num(this : Notebook*, child : LibGtk::Widget*) : Int32
  fun notebook_popup_disable = gtk_notebook_popup_disable(this : Notebook*) : Void
  fun notebook_popup_enable = gtk_notebook_popup_enable(this : Notebook*) : Void
  fun notebook_prepend_page = gtk_notebook_prepend_page(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*) : Int32
  fun notebook_prepend_page_menu = gtk_notebook_prepend_page_menu(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*, menu_label : LibGtk::Widget*) : Int32
  fun notebook_prev_page = gtk_notebook_prev_page(this : Notebook*) : Void
  fun notebook_remove_page = gtk_notebook_remove_page(this : Notebook*, page_num : Int32) : Void
  fun notebook_reorder_child = gtk_notebook_reorder_child(this : Notebook*, child : LibGtk::Widget*, position : Int32) : Void
  fun notebook_set_action_widget = gtk_notebook_set_action_widget(this : Notebook*, widget : LibGtk::Widget*, pack_type : LibGtk::PackType) : Void
  fun notebook_set_current_page = gtk_notebook_set_current_page(this : Notebook*, page_num : Int32) : Void
  fun notebook_set_group_name = gtk_notebook_set_group_name(this : Notebook*, group_name : UInt8*) : Void
  fun notebook_set_menu_label = gtk_notebook_set_menu_label(this : Notebook*, child : LibGtk::Widget*, menu_label : LibGtk::Widget*) : Void
  fun notebook_set_menu_label_text = gtk_notebook_set_menu_label_text(this : Notebook*, child : LibGtk::Widget*, menu_text : UInt8*) : Void
  fun notebook_set_scrollable = gtk_notebook_set_scrollable(this : Notebook*, scrollable : Bool) : Void
  fun notebook_set_show_border = gtk_notebook_set_show_border(this : Notebook*, show_border : Bool) : Void
  fun notebook_set_show_tabs = gtk_notebook_set_show_tabs(this : Notebook*, show_tabs : Bool) : Void
  fun notebook_set_tab_detachable = gtk_notebook_set_tab_detachable(this : Notebook*, child : LibGtk::Widget*, detachable : Bool) : Void
  fun notebook_set_tab_label = gtk_notebook_set_tab_label(this : Notebook*, child : LibGtk::Widget*, tab_label : LibGtk::Widget*) : Void
  fun notebook_set_tab_label_text = gtk_notebook_set_tab_label_text(this : Notebook*, child : LibGtk::Widget*, tab_text : UInt8*) : Void
  fun notebook_set_tab_pos = gtk_notebook_set_tab_pos(this : Notebook*, pos : LibGtk::PositionType) : Void
  fun notebook_set_tab_reorderable = gtk_notebook_set_tab_reorderable(this : Notebook*, child : LibGtk::Widget*, reorderable : Bool) : Void

  struct NotebookAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::NotebookAccessiblePrivate*
  end

  struct NotebookPageAccessible # object
    parent : LibAtk::Object*
    priv : LibGtk::NotebookPageAccessiblePrivate*
  end
  fun notebook_page_accessible_new = gtk_notebook_page_accessible_new(notebook : LibGtk::NotebookAccessible*, child : LibGtk::Widget*) : LibAtk::Object*
  fun notebook_page_accessible_invalidate = gtk_notebook_page_accessible_invalidate(this : NotebookPageAccessible*) : Void

  struct NumerableIcon # object
    parent : LibGio::EmblemedIcon*
    priv : LibGtk::NumerableIconPrivate*
    # Property background_icon : LibGio::Icon
    # Property background_icon_name : UInt8*
    # Property count : Int32
    # Property label : UInt8*
    # Property style_context : LibGtk::StyleContext*
  end
  fun numerable_icon_new = gtk_numerable_icon_new(base_icon : LibGio::Icon*) : LibGio::Icon*
  fun numerable_icon_new_with_style_context = gtk_numerable_icon_new_with_style_context(base_icon : LibGio::Icon*, context : LibGtk::StyleContext*) : LibGio::Icon*
  fun numerable_icon_get_background_gicon = gtk_numerable_icon_get_background_gicon(this : NumerableIcon*) : LibGio::Icon*
  fun numerable_icon_get_background_icon_name = gtk_numerable_icon_get_background_icon_name(this : NumerableIcon*) : UInt8*
  fun numerable_icon_get_count = gtk_numerable_icon_get_count(this : NumerableIcon*) : Int32
  fun numerable_icon_get_label = gtk_numerable_icon_get_label(this : NumerableIcon*) : UInt8*
  fun numerable_icon_get_style_context = gtk_numerable_icon_get_style_context(this : NumerableIcon*) : LibGtk::StyleContext*
  fun numerable_icon_set_background_gicon = gtk_numerable_icon_set_background_gicon(this : NumerableIcon*, icon : LibGio::Icon*) : Void
  fun numerable_icon_set_background_icon_name = gtk_numerable_icon_set_background_icon_name(this : NumerableIcon*, icon_name : UInt8*) : Void
  fun numerable_icon_set_count = gtk_numerable_icon_set_count(this : NumerableIcon*, count : Int32) : Void
  fun numerable_icon_set_label = gtk_numerable_icon_set_label(this : NumerableIcon*, label : UInt8*) : Void
  fun numerable_icon_set_style_context = gtk_numerable_icon_set_style_context(this : NumerableIcon*, style : LibGtk::StyleContext*) : Void

  struct OffscreenWindow # object
    parent_object : LibGtk::Window*
  end
  fun offscreen_window_new = gtk_offscreen_window_new() : LibGtk::Widget*
  fun offscreen_window_get_pixbuf = gtk_offscreen_window_get_pixbuf(this : OffscreenWindow*) : LibGdkPixbuf::Pixbuf*
  fun offscreen_window_get_surface = gtk_offscreen_window_get_surface(this : OffscreenWindow*) : LibCairo::Surface*

  struct Overlay # object
    parent : LibGtk::Bin*
    priv : LibGtk::OverlayPrivate*
    # Signal get-child-position
    # Virtual function get_child_position
  end
  fun overlay_new = gtk_overlay_new() : LibGtk::Widget*
  fun overlay_add_overlay = gtk_overlay_add_overlay(this : Overlay*, widget : LibGtk::Widget*) : Void
  fun overlay_get_overlay_pass_through = gtk_overlay_get_overlay_pass_through(this : Overlay*, widget : LibGtk::Widget*) : Bool
  fun overlay_reorder_overlay = gtk_overlay_reorder_overlay(this : Overlay*, child : LibGtk::Widget*, position : Int32) : Void
  fun overlay_set_overlay_pass_through = gtk_overlay_set_overlay_pass_through(this : Overlay*, widget : LibGtk::Widget*, pass_through : Bool) : Void

  struct PadController # object
    _data : UInt8[0]
    # Property action_group : LibGio::ActionGroup
    # Property pad : LibGdk::Device*
  end
  fun pad_controller_new = gtk_pad_controller_new(window : LibGtk::Window*, group : LibGio::ActionGroup*, pad : LibGdk::Device*) : LibGtk::PadController*
  fun pad_controller_set_action = gtk_pad_controller_set_action(this : PadController*, type : LibGtk::PadActionType, index : Int32, mode : Int32, label : UInt8*, action_name : UInt8*) : Void
  fun pad_controller_set_action_entries = gtk_pad_controller_set_action_entries(this : PadController*, entries : LibGtk::PadActionEntry*, n_entries : Int32) : Void

  struct PageSetup # object
    _data : UInt8[0]
  end
  fun page_setup_new = gtk_page_setup_new() : LibGtk::PageSetup*
  fun page_setup_new_from_file = gtk_page_setup_new_from_file(file_name : UInt8*, error : LibGLib::Error**) : LibGtk::PageSetup*
  fun page_setup_new_from_gvariant = gtk_page_setup_new_from_gvariant(variant : LibGLib::Variant*) : LibGtk::PageSetup*
  fun page_setup_new_from_key_file = gtk_page_setup_new_from_key_file(key_file : LibGLib::KeyFile*, group_name : UInt8*, error : LibGLib::Error**) : LibGtk::PageSetup*
  fun page_setup_copy = gtk_page_setup_copy(this : PageSetup*) : LibGtk::PageSetup*
  fun page_setup_get_bottom_margin = gtk_page_setup_get_bottom_margin(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_left_margin = gtk_page_setup_get_left_margin(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_orientation = gtk_page_setup_get_orientation(this : PageSetup*) : LibGtk::PageOrientation
  fun page_setup_get_page_height = gtk_page_setup_get_page_height(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_page_width = gtk_page_setup_get_page_width(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_paper_height = gtk_page_setup_get_paper_height(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_paper_size = gtk_page_setup_get_paper_size(this : PageSetup*) : LibGtk::PaperSize*
  fun page_setup_get_paper_width = gtk_page_setup_get_paper_width(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_right_margin = gtk_page_setup_get_right_margin(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_get_top_margin = gtk_page_setup_get_top_margin(this : PageSetup*, unit : LibGtk::Unit) : Float64
  fun page_setup_load_file = gtk_page_setup_load_file(this : PageSetup*, file_name : UInt8*, error : LibGLib::Error**) : Bool
  fun page_setup_load_key_file = gtk_page_setup_load_key_file(this : PageSetup*, key_file : LibGLib::KeyFile*, group_name : UInt8*, error : LibGLib::Error**) : Bool
  fun page_setup_set_bottom_margin = gtk_page_setup_set_bottom_margin(this : PageSetup*, margin : Float64, unit : LibGtk::Unit) : Void
  fun page_setup_set_left_margin = gtk_page_setup_set_left_margin(this : PageSetup*, margin : Float64, unit : LibGtk::Unit) : Void
  fun page_setup_set_orientation = gtk_page_setup_set_orientation(this : PageSetup*, orientation : LibGtk::PageOrientation) : Void
  fun page_setup_set_paper_size = gtk_page_setup_set_paper_size(this : PageSetup*, size : LibGtk::PaperSize*) : Void
  fun page_setup_set_paper_size_and_default_margins = gtk_page_setup_set_paper_size_and_default_margins(this : PageSetup*, size : LibGtk::PaperSize*) : Void
  fun page_setup_set_right_margin = gtk_page_setup_set_right_margin(this : PageSetup*, margin : Float64, unit : LibGtk::Unit) : Void
  fun page_setup_set_top_margin = gtk_page_setup_set_top_margin(this : PageSetup*, margin : Float64, unit : LibGtk::Unit) : Void
  fun page_setup_to_file = gtk_page_setup_to_file(this : PageSetup*, file_name : UInt8*, error : LibGLib::Error**) : Bool
  fun page_setup_to_gvariant = gtk_page_setup_to_gvariant(this : PageSetup*) : LibGLib::Variant*
  fun page_setup_to_key_file = gtk_page_setup_to_key_file(this : PageSetup*, key_file : LibGLib::KeyFile*, group_name : UInt8*) : Void

  struct Paned # object
    container : LibGtk::Container*
    priv : LibGtk::PanedPrivate*
    # Signal accept-position
    # Signal cancel-position
    # Signal cycle-child-focus
    # Signal cycle-handle-focus
    # Signal move-handle
    # Signal toggle-handle-focus
    # Virtual function accept_position
    # Virtual function cancel_position
    # Virtual function cycle_child_focus
    # Virtual function cycle_handle_focus
    # Virtual function move_handle
    # Virtual function toggle_handle_focus
    # Property max_position : Int32
    # Property min_position : Int32
    # Property position : Int32
    # Property position_set : Bool
    # Property wide_handle : Bool
  end
  fun paned_new = gtk_paned_new(orientation : LibGtk::Orientation) : LibGtk::Widget*
  fun paned_add1 = gtk_paned_add1(this : Paned*, child : LibGtk::Widget*) : Void
  fun paned_add2 = gtk_paned_add2(this : Paned*, child : LibGtk::Widget*) : Void
  fun paned_get_child1 = gtk_paned_get_child1(this : Paned*) : LibGtk::Widget*
  fun paned_get_child2 = gtk_paned_get_child2(this : Paned*) : LibGtk::Widget*
  fun paned_get_handle_window = gtk_paned_get_handle_window(this : Paned*) : LibGdk::Window*
  fun paned_get_position = gtk_paned_get_position(this : Paned*) : Int32
  fun paned_get_wide_handle = gtk_paned_get_wide_handle(this : Paned*) : Bool
  fun paned_pack1 = gtk_paned_pack1(this : Paned*, child : LibGtk::Widget*, resize : Bool, shrink : Bool) : Void
  fun paned_pack2 = gtk_paned_pack2(this : Paned*, child : LibGtk::Widget*, resize : Bool, shrink : Bool) : Void
  fun paned_set_position = gtk_paned_set_position(this : Paned*, position : Int32) : Void
  fun paned_set_wide_handle = gtk_paned_set_wide_handle(this : Paned*, wide : Bool) : Void

  struct PanedAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::PanedAccessiblePrivate*
  end

  struct PlacesSidebar # object
    _data : UInt8[0]
    # Signal drag-action-ask
    # Signal drag-action-requested
    # Signal drag-perform-drop
    # Signal mount
    # Signal open-location
    # Signal populate-popup
    # Signal show-connect-to-server
    # Signal show-enter-location
    # Signal show-error-message
    # Signal show-other-locations
    # Signal show-other-locations-with-flags
    # Signal show-starred-location
    # Signal unmount
    # Property local_only : Bool
    # Property location : LibGio::File
    # Property open_flags : LibGtk::PlacesOpenFlags
    # Property populate_all : Bool
    # Property show_connect_to_server : Bool
    # Property show_desktop : Bool
    # Property show_enter_location : Bool
    # Property show_other_locations : Bool
    # Property show_recent : Bool
    # Property show_starred_location : Bool
    # Property show_trash : Bool
  end
  fun places_sidebar_new = gtk_places_sidebar_new() : LibGtk::Widget*
  fun places_sidebar_add_shortcut = gtk_places_sidebar_add_shortcut(this : PlacesSidebar*, location : LibGio::File*) : Void
  fun places_sidebar_get_local_only = gtk_places_sidebar_get_local_only(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_location = gtk_places_sidebar_get_location(this : PlacesSidebar*) : LibGio::File*
  fun places_sidebar_get_nth_bookmark = gtk_places_sidebar_get_nth_bookmark(this : PlacesSidebar*, n : Int32) : LibGio::File*
  fun places_sidebar_get_open_flags = gtk_places_sidebar_get_open_flags(this : PlacesSidebar*) : LibGtk::PlacesOpenFlags
  fun places_sidebar_get_show_connect_to_server = gtk_places_sidebar_get_show_connect_to_server(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_show_desktop = gtk_places_sidebar_get_show_desktop(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_show_enter_location = gtk_places_sidebar_get_show_enter_location(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_show_other_locations = gtk_places_sidebar_get_show_other_locations(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_show_recent = gtk_places_sidebar_get_show_recent(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_show_starred_location = gtk_places_sidebar_get_show_starred_location(this : PlacesSidebar*) : Bool
  fun places_sidebar_get_show_trash = gtk_places_sidebar_get_show_trash(this : PlacesSidebar*) : Bool
  fun places_sidebar_list_shortcuts = gtk_places_sidebar_list_shortcuts(this : PlacesSidebar*) : Void**
  fun places_sidebar_remove_shortcut = gtk_places_sidebar_remove_shortcut(this : PlacesSidebar*, location : LibGio::File*) : Void
  fun places_sidebar_set_drop_targets_visible = gtk_places_sidebar_set_drop_targets_visible(this : PlacesSidebar*, visible : Bool, context : LibGdk::DragContext*) : Void
  fun places_sidebar_set_local_only = gtk_places_sidebar_set_local_only(this : PlacesSidebar*, local_only : Bool) : Void
  fun places_sidebar_set_location = gtk_places_sidebar_set_location(this : PlacesSidebar*, location : LibGio::File*) : Void
  fun places_sidebar_set_open_flags = gtk_places_sidebar_set_open_flags(this : PlacesSidebar*, flags : LibGtk::PlacesOpenFlags) : Void
  fun places_sidebar_set_show_connect_to_server = gtk_places_sidebar_set_show_connect_to_server(this : PlacesSidebar*, show_connect_to_server : Bool) : Void
  fun places_sidebar_set_show_desktop = gtk_places_sidebar_set_show_desktop(this : PlacesSidebar*, show_desktop : Bool) : Void
  fun places_sidebar_set_show_enter_location = gtk_places_sidebar_set_show_enter_location(this : PlacesSidebar*, show_enter_location : Bool) : Void
  fun places_sidebar_set_show_other_locations = gtk_places_sidebar_set_show_other_locations(this : PlacesSidebar*, show_other_locations : Bool) : Void
  fun places_sidebar_set_show_recent = gtk_places_sidebar_set_show_recent(this : PlacesSidebar*, show_recent : Bool) : Void
  fun places_sidebar_set_show_starred_location = gtk_places_sidebar_set_show_starred_location(this : PlacesSidebar*, show_starred_location : Bool) : Void
  fun places_sidebar_set_show_trash = gtk_places_sidebar_set_show_trash(this : PlacesSidebar*, show_trash : Bool) : Void

  struct Plug # object
    window : LibGtk::Window*
    priv : LibGtk::PlugPrivate*
    # Signal embedded
    # Virtual function embedded
    # Property embedded : Bool
    # Property socket_window : LibGdk::Window*
  end
  fun plug_new = gtk_plug_new(socket_id : UInt64) : LibGtk::Widget*
  fun plug_new_for_display = gtk_plug_new_for_display(display : LibGdk::Display*, socket_id : UInt64) : LibGtk::Widget*
  fun plug_construct = gtk_plug_construct(this : Plug*, socket_id : UInt64) : Void
  fun plug_construct_for_display = gtk_plug_construct_for_display(this : Plug*, display : LibGdk::Display*, socket_id : UInt64) : Void
  fun plug_get_embedded = gtk_plug_get_embedded(this : Plug*) : Bool
  fun plug_get_id = gtk_plug_get_id(this : Plug*) : UInt64
  fun plug_get_socket_window = gtk_plug_get_socket_window(this : Plug*) : LibGdk::Window*

  struct Popover # object
    parent_instance : LibGtk::Bin*
    priv : LibGtk::PopoverPrivate*
    # Signal closed
    # Virtual function closed
    # Property constrain_to : LibGtk::PopoverConstraint
    # Property modal : Bool
    # Property pointing_to : LibGdk::Rectangle
    # Property position : LibGtk::PositionType
    # Property relative_to : LibGtk::Widget*
    # Property transitions_enabled : Bool
  end
  fun popover_new = gtk_popover_new(relative_to : LibGtk::Widget*) : LibGtk::Widget*
  fun popover_new_from_model = gtk_popover_new_from_model(relative_to : LibGtk::Widget*, model : LibGio::MenuModel*) : LibGtk::Widget*
  fun popover_bind_model = gtk_popover_bind_model(this : Popover*, model : LibGio::MenuModel*, action_namespace : UInt8*) : Void
  fun popover_get_constrain_to = gtk_popover_get_constrain_to(this : Popover*) : LibGtk::PopoverConstraint
  fun popover_get_default_widget = gtk_popover_get_default_widget(this : Popover*) : LibGtk::Widget*
  fun popover_get_modal = gtk_popover_get_modal(this : Popover*) : Bool
  fun popover_get_pointing_to = gtk_popover_get_pointing_to(this : Popover*, rect : LibGdk::Rectangle*) : Bool
  fun popover_get_position = gtk_popover_get_position(this : Popover*) : LibGtk::PositionType
  fun popover_get_relative_to = gtk_popover_get_relative_to(this : Popover*) : LibGtk::Widget*
  fun popover_get_transitions_enabled = gtk_popover_get_transitions_enabled(this : Popover*) : Bool
  fun popover_popdown = gtk_popover_popdown(this : Popover*) : Void
  fun popover_popup = gtk_popover_popup(this : Popover*) : Void
  fun popover_set_constrain_to = gtk_popover_set_constrain_to(this : Popover*, constraint : LibGtk::PopoverConstraint) : Void
  fun popover_set_default_widget = gtk_popover_set_default_widget(this : Popover*, widget : LibGtk::Widget*) : Void
  fun popover_set_modal = gtk_popover_set_modal(this : Popover*, modal : Bool) : Void
  fun popover_set_pointing_to = gtk_popover_set_pointing_to(this : Popover*, rect : LibGdk::Rectangle*) : Void
  fun popover_set_position = gtk_popover_set_position(this : Popover*, position : LibGtk::PositionType) : Void
  fun popover_set_relative_to = gtk_popover_set_relative_to(this : Popover*, relative_to : LibGtk::Widget*) : Void
  fun popover_set_transitions_enabled = gtk_popover_set_transitions_enabled(this : Popover*, transitions_enabled : Bool) : Void

  struct PopoverAccessible # object
    parent : LibGtk::ContainerAccessible*
  end

  struct PopoverMenu # object
    _data : UInt8[0]
    # Property visible_submenu : UInt8*
  end
  fun popover_menu_new = gtk_popover_menu_new() : LibGtk::Widget*
  fun popover_menu_open_submenu = gtk_popover_menu_open_submenu(this : PopoverMenu*, name : UInt8*) : Void

  struct PrintContext # object
    _data : UInt8[0]
  end
  fun print_context_create_pango_context = gtk_print_context_create_pango_context(this : PrintContext*) : LibPango::Context*
  fun print_context_create_pango_layout = gtk_print_context_create_pango_layout(this : PrintContext*) : LibPango::Layout*
  fun print_context_get_cairo_context = gtk_print_context_get_cairo_context(this : PrintContext*) : LibCairo::Context*
  fun print_context_get_dpi_x = gtk_print_context_get_dpi_x(this : PrintContext*) : Float64
  fun print_context_get_dpi_y = gtk_print_context_get_dpi_y(this : PrintContext*) : Float64
  fun print_context_get_hard_margins = gtk_print_context_get_hard_margins(this : PrintContext*, top : Float64*, bottom : Float64*, left : Float64*, right : Float64*) : Bool
  fun print_context_get_height = gtk_print_context_get_height(this : PrintContext*) : Float64
  fun print_context_get_page_setup = gtk_print_context_get_page_setup(this : PrintContext*) : LibGtk::PageSetup*
  fun print_context_get_pango_fontmap = gtk_print_context_get_pango_fontmap(this : PrintContext*) : LibPango::FontMap*
  fun print_context_get_width = gtk_print_context_get_width(this : PrintContext*) : Float64
  fun print_context_set_cairo_context = gtk_print_context_set_cairo_context(this : PrintContext*, cr : LibCairo::Context*, dpi_x : Float64, dpi_y : Float64) : Void

  struct PrintOperation # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::PrintOperationPrivate*
    # Signal begin-print
    # Signal create-custom-widget
    # Signal custom-widget-apply
    # Signal done
    # Signal draw-page
    # Signal end-print
    # Signal paginate
    # Signal preview
    # Signal request-page-setup
    # Signal status-changed
    # Signal update-custom-widget
    # Virtual function begin_print
    # Virtual function custom_widget_apply
    # Virtual function done
    # Virtual function draw_page
    # Virtual function end_print
    # Virtual function paginate
    # Virtual function preview
    # Virtual function request_page_setup
    # Virtual function status_changed
    # Virtual function update_custom_widget
    # Property allow_async : Bool
    # Property current_page : Int32
    # Property custom_tab_label : UInt8*
    # Property default_page_setup : LibGtk::PageSetup*
    # Property embed_page_setup : Bool
    # Property export_filename : UInt8*
    # Property has_selection : Bool
    # Property job_name : UInt8*
    # Property n_pages : Int32
    # Property n_pages_to_print : Int32
    # Property print_settings : LibGtk::PrintSettings*
    # Property show_progress : Bool
    # Property status : LibGtk::PrintStatus
    # Property status_string : UInt8*
    # Property support_selection : Bool
    # Property track_print_status : Bool
    # Property unit : LibGtk::Unit
    # Property use_full_page : Bool
  end
  fun print_operation_new = gtk_print_operation_new() : LibGtk::PrintOperation*
  fun print_operation_cancel = gtk_print_operation_cancel(this : PrintOperation*) : Void
  fun print_operation_draw_page_finish = gtk_print_operation_draw_page_finish(this : PrintOperation*) : Void
  fun print_operation_get_default_page_setup = gtk_print_operation_get_default_page_setup(this : PrintOperation*) : LibGtk::PageSetup*
  fun print_operation_get_embed_page_setup = gtk_print_operation_get_embed_page_setup(this : PrintOperation*) : Bool
  fun print_operation_get_error = gtk_print_operation_get_error(this : PrintOperation*, error : LibGLib::Error**) : Void
  fun print_operation_get_has_selection = gtk_print_operation_get_has_selection(this : PrintOperation*) : Bool
  fun print_operation_get_n_pages_to_print = gtk_print_operation_get_n_pages_to_print(this : PrintOperation*) : Int32
  fun print_operation_get_print_settings = gtk_print_operation_get_print_settings(this : PrintOperation*) : LibGtk::PrintSettings*
  fun print_operation_get_status = gtk_print_operation_get_status(this : PrintOperation*) : LibGtk::PrintStatus
  fun print_operation_get_status_string = gtk_print_operation_get_status_string(this : PrintOperation*) : UInt8*
  fun print_operation_get_support_selection = gtk_print_operation_get_support_selection(this : PrintOperation*) : Bool
  fun print_operation_is_finished = gtk_print_operation_is_finished(this : PrintOperation*) : Bool
  fun print_operation_run = gtk_print_operation_run(this : PrintOperation*, action : LibGtk::PrintOperationAction, parent : LibGtk::Window*, error : LibGLib::Error**) : LibGtk::PrintOperationResult
  fun print_operation_set_allow_async = gtk_print_operation_set_allow_async(this : PrintOperation*, allow_async : Bool) : Void
  fun print_operation_set_current_page = gtk_print_operation_set_current_page(this : PrintOperation*, current_page : Int32) : Void
  fun print_operation_set_custom_tab_label = gtk_print_operation_set_custom_tab_label(this : PrintOperation*, label : UInt8*) : Void
  fun print_operation_set_default_page_setup = gtk_print_operation_set_default_page_setup(this : PrintOperation*, default_page_setup : LibGtk::PageSetup*) : Void
  fun print_operation_set_defer_drawing = gtk_print_operation_set_defer_drawing(this : PrintOperation*) : Void
  fun print_operation_set_embed_page_setup = gtk_print_operation_set_embed_page_setup(this : PrintOperation*, embed : Bool) : Void
  fun print_operation_set_export_filename = gtk_print_operation_set_export_filename(this : PrintOperation*, filename : UInt8*) : Void
  fun print_operation_set_has_selection = gtk_print_operation_set_has_selection(this : PrintOperation*, has_selection : Bool) : Void
  fun print_operation_set_job_name = gtk_print_operation_set_job_name(this : PrintOperation*, job_name : UInt8*) : Void
  fun print_operation_set_n_pages = gtk_print_operation_set_n_pages(this : PrintOperation*, n_pages : Int32) : Void
  fun print_operation_set_print_settings = gtk_print_operation_set_print_settings(this : PrintOperation*, print_settings : LibGtk::PrintSettings*) : Void
  fun print_operation_set_show_progress = gtk_print_operation_set_show_progress(this : PrintOperation*, show_progress : Bool) : Void
  fun print_operation_set_support_selection = gtk_print_operation_set_support_selection(this : PrintOperation*, support_selection : Bool) : Void
  fun print_operation_set_track_print_status = gtk_print_operation_set_track_print_status(this : PrintOperation*, track_status : Bool) : Void
  fun print_operation_set_unit = gtk_print_operation_set_unit(this : PrintOperation*, unit : LibGtk::Unit) : Void
  fun print_operation_set_use_full_page = gtk_print_operation_set_use_full_page(this : PrintOperation*, full_page : Bool) : Void

  struct PrintSettings # object
    _data : UInt8[0]
  end
  fun print_settings_new = gtk_print_settings_new() : LibGtk::PrintSettings*
  fun print_settings_new_from_file = gtk_print_settings_new_from_file(file_name : UInt8*, error : LibGLib::Error**) : LibGtk::PrintSettings*
  fun print_settings_new_from_gvariant = gtk_print_settings_new_from_gvariant(variant : LibGLib::Variant*) : LibGtk::PrintSettings*
  fun print_settings_new_from_key_file = gtk_print_settings_new_from_key_file(key_file : LibGLib::KeyFile*, group_name : UInt8*, error : LibGLib::Error**) : LibGtk::PrintSettings*
  fun print_settings_copy = gtk_print_settings_copy(this : PrintSettings*) : LibGtk::PrintSettings*
  fun print_settings_foreach = gtk_print_settings_foreach(this : PrintSettings*, func : LibGtk::PrintSettingsFunc, user_data : Void*) : Void
  fun print_settings_get = gtk_print_settings_get(this : PrintSettings*, key : UInt8*) : UInt8*
  fun print_settings_get_bool = gtk_print_settings_get_bool(this : PrintSettings*, key : UInt8*) : Bool
  fun print_settings_get_collate = gtk_print_settings_get_collate(this : PrintSettings*) : Bool
  fun print_settings_get_default_source = gtk_print_settings_get_default_source(this : PrintSettings*) : UInt8*
  fun print_settings_get_dither = gtk_print_settings_get_dither(this : PrintSettings*) : UInt8*
  fun print_settings_get_double = gtk_print_settings_get_double(this : PrintSettings*, key : UInt8*) : Float64
  fun print_settings_get_double_with_default = gtk_print_settings_get_double_with_default(this : PrintSettings*, key : UInt8*, _def : Float64) : Float64
  fun print_settings_get_duplex = gtk_print_settings_get_duplex(this : PrintSettings*) : LibGtk::PrintDuplex
  fun print_settings_get_finishings = gtk_print_settings_get_finishings(this : PrintSettings*) : UInt8*
  fun print_settings_get_int = gtk_print_settings_get_int(this : PrintSettings*, key : UInt8*) : Int32
  fun print_settings_get_int_with_default = gtk_print_settings_get_int_with_default(this : PrintSettings*, key : UInt8*, _def : Int32) : Int32
  fun print_settings_get_length = gtk_print_settings_get_length(this : PrintSettings*, key : UInt8*, unit : LibGtk::Unit) : Float64
  fun print_settings_get_media_type = gtk_print_settings_get_media_type(this : PrintSettings*) : UInt8*
  fun print_settings_get_n_copies = gtk_print_settings_get_n_copies(this : PrintSettings*) : Int32
  fun print_settings_get_number_up = gtk_print_settings_get_number_up(this : PrintSettings*) : Int32
  fun print_settings_get_number_up_layout = gtk_print_settings_get_number_up_layout(this : PrintSettings*) : LibGtk::NumberUpLayout
  fun print_settings_get_orientation = gtk_print_settings_get_orientation(this : PrintSettings*) : LibGtk::PageOrientation
  fun print_settings_get_output_bin = gtk_print_settings_get_output_bin(this : PrintSettings*) : UInt8*
  fun print_settings_get_page_ranges = gtk_print_settings_get_page_ranges(this : PrintSettings*, num_ranges : Int32*) : LibGtk::PageRange*
  fun print_settings_get_page_set = gtk_print_settings_get_page_set(this : PrintSettings*) : LibGtk::PageSet
  fun print_settings_get_paper_height = gtk_print_settings_get_paper_height(this : PrintSettings*, unit : LibGtk::Unit) : Float64
  fun print_settings_get_paper_size = gtk_print_settings_get_paper_size(this : PrintSettings*) : LibGtk::PaperSize*
  fun print_settings_get_paper_width = gtk_print_settings_get_paper_width(this : PrintSettings*, unit : LibGtk::Unit) : Float64
  fun print_settings_get_print_pages = gtk_print_settings_get_print_pages(this : PrintSettings*) : LibGtk::PrintPages
  fun print_settings_get_printer = gtk_print_settings_get_printer(this : PrintSettings*) : UInt8*
  fun print_settings_get_printer_lpi = gtk_print_settings_get_printer_lpi(this : PrintSettings*) : Float64
  fun print_settings_get_quality = gtk_print_settings_get_quality(this : PrintSettings*) : LibGtk::PrintQuality
  fun print_settings_get_resolution = gtk_print_settings_get_resolution(this : PrintSettings*) : Int32
  fun print_settings_get_resolution_x = gtk_print_settings_get_resolution_x(this : PrintSettings*) : Int32
  fun print_settings_get_resolution_y = gtk_print_settings_get_resolution_y(this : PrintSettings*) : Int32
  fun print_settings_get_reverse = gtk_print_settings_get_reverse(this : PrintSettings*) : Bool
  fun print_settings_get_scale = gtk_print_settings_get_scale(this : PrintSettings*) : Float64
  fun print_settings_get_use_color = gtk_print_settings_get_use_color(this : PrintSettings*) : Bool
  fun print_settings_has_key = gtk_print_settings_has_key(this : PrintSettings*, key : UInt8*) : Bool
  fun print_settings_load_file = gtk_print_settings_load_file(this : PrintSettings*, file_name : UInt8*, error : LibGLib::Error**) : Bool
  fun print_settings_load_key_file = gtk_print_settings_load_key_file(this : PrintSettings*, key_file : LibGLib::KeyFile*, group_name : UInt8*, error : LibGLib::Error**) : Bool
  fun print_settings_set = gtk_print_settings_set(this : PrintSettings*, key : UInt8*, value : UInt8*) : Void
  fun print_settings_set_bool = gtk_print_settings_set_bool(this : PrintSettings*, key : UInt8*, value : Bool) : Void
  fun print_settings_set_collate = gtk_print_settings_set_collate(this : PrintSettings*, collate : Bool) : Void
  fun print_settings_set_default_source = gtk_print_settings_set_default_source(this : PrintSettings*, default_source : UInt8*) : Void
  fun print_settings_set_dither = gtk_print_settings_set_dither(this : PrintSettings*, dither : UInt8*) : Void
  fun print_settings_set_double = gtk_print_settings_set_double(this : PrintSettings*, key : UInt8*, value : Float64) : Void
  fun print_settings_set_duplex = gtk_print_settings_set_duplex(this : PrintSettings*, duplex : LibGtk::PrintDuplex) : Void
  fun print_settings_set_finishings = gtk_print_settings_set_finishings(this : PrintSettings*, finishings : UInt8*) : Void
  fun print_settings_set_int = gtk_print_settings_set_int(this : PrintSettings*, key : UInt8*, value : Int32) : Void
  fun print_settings_set_length = gtk_print_settings_set_length(this : PrintSettings*, key : UInt8*, value : Float64, unit : LibGtk::Unit) : Void
  fun print_settings_set_media_type = gtk_print_settings_set_media_type(this : PrintSettings*, media_type : UInt8*) : Void
  fun print_settings_set_n_copies = gtk_print_settings_set_n_copies(this : PrintSettings*, num_copies : Int32) : Void
  fun print_settings_set_number_up = gtk_print_settings_set_number_up(this : PrintSettings*, number_up : Int32) : Void
  fun print_settings_set_number_up_layout = gtk_print_settings_set_number_up_layout(this : PrintSettings*, number_up_layout : LibGtk::NumberUpLayout) : Void
  fun print_settings_set_orientation = gtk_print_settings_set_orientation(this : PrintSettings*, orientation : LibGtk::PageOrientation) : Void
  fun print_settings_set_output_bin = gtk_print_settings_set_output_bin(this : PrintSettings*, output_bin : UInt8*) : Void
  fun print_settings_set_page_ranges = gtk_print_settings_set_page_ranges(this : PrintSettings*, page_ranges : LibGtk::PageRange*, num_ranges : Int32) : Void
  fun print_settings_set_page_set = gtk_print_settings_set_page_set(this : PrintSettings*, page_set : LibGtk::PageSet) : Void
  fun print_settings_set_paper_height = gtk_print_settings_set_paper_height(this : PrintSettings*, height : Float64, unit : LibGtk::Unit) : Void
  fun print_settings_set_paper_size = gtk_print_settings_set_paper_size(this : PrintSettings*, paper_size : LibGtk::PaperSize*) : Void
  fun print_settings_set_paper_width = gtk_print_settings_set_paper_width(this : PrintSettings*, width : Float64, unit : LibGtk::Unit) : Void
  fun print_settings_set_print_pages = gtk_print_settings_set_print_pages(this : PrintSettings*, pages : LibGtk::PrintPages) : Void
  fun print_settings_set_printer = gtk_print_settings_set_printer(this : PrintSettings*, printer : UInt8*) : Void
  fun print_settings_set_printer_lpi = gtk_print_settings_set_printer_lpi(this : PrintSettings*, lpi : Float64) : Void
  fun print_settings_set_quality = gtk_print_settings_set_quality(this : PrintSettings*, quality : LibGtk::PrintQuality) : Void
  fun print_settings_set_resolution = gtk_print_settings_set_resolution(this : PrintSettings*, resolution : Int32) : Void
  fun print_settings_set_resolution_xy = gtk_print_settings_set_resolution_xy(this : PrintSettings*, resolution_x : Int32, resolution_y : Int32) : Void
  fun print_settings_set_reverse = gtk_print_settings_set_reverse(this : PrintSettings*, reverse : Bool) : Void
  fun print_settings_set_scale = gtk_print_settings_set_scale(this : PrintSettings*, scale : Float64) : Void
  fun print_settings_set_use_color = gtk_print_settings_set_use_color(this : PrintSettings*, use_color : Bool) : Void
  fun print_settings_to_file = gtk_print_settings_to_file(this : PrintSettings*, file_name : UInt8*, error : LibGLib::Error**) : Bool
  fun print_settings_to_gvariant = gtk_print_settings_to_gvariant(this : PrintSettings*) : LibGLib::Variant*
  fun print_settings_to_key_file = gtk_print_settings_to_key_file(this : PrintSettings*, key_file : LibGLib::KeyFile*, group_name : UInt8*) : Void
  fun print_settings_unset = gtk_print_settings_unset(this : PrintSettings*, key : UInt8*) : Void

  struct ProgressBar # object
    parent : LibGtk::Widget*
    priv : LibGtk::ProgressBarPrivate*
    # Property ellipsize : LibPango::EllipsizeMode
    # Property fraction : Float64
    # Property inverted : Bool
    # Property pulse_step : Float64
    # Property show_text : Bool
    # Property text : UInt8*
  end
  fun progress_bar_new = gtk_progress_bar_new() : LibGtk::Widget*
  fun progress_bar_get_ellipsize = gtk_progress_bar_get_ellipsize(this : ProgressBar*) : LibPango::EllipsizeMode
  fun progress_bar_get_fraction = gtk_progress_bar_get_fraction(this : ProgressBar*) : Float64
  fun progress_bar_get_inverted = gtk_progress_bar_get_inverted(this : ProgressBar*) : Bool
  fun progress_bar_get_pulse_step = gtk_progress_bar_get_pulse_step(this : ProgressBar*) : Float64
  fun progress_bar_get_show_text = gtk_progress_bar_get_show_text(this : ProgressBar*) : Bool
  fun progress_bar_get_text = gtk_progress_bar_get_text(this : ProgressBar*) : UInt8*
  fun progress_bar_pulse = gtk_progress_bar_pulse(this : ProgressBar*) : Void
  fun progress_bar_set_ellipsize = gtk_progress_bar_set_ellipsize(this : ProgressBar*, mode : LibPango::EllipsizeMode) : Void
  fun progress_bar_set_fraction = gtk_progress_bar_set_fraction(this : ProgressBar*, fraction : Float64) : Void
  fun progress_bar_set_inverted = gtk_progress_bar_set_inverted(this : ProgressBar*, inverted : Bool) : Void
  fun progress_bar_set_pulse_step = gtk_progress_bar_set_pulse_step(this : ProgressBar*, fraction : Float64) : Void
  fun progress_bar_set_show_text = gtk_progress_bar_set_show_text(this : ProgressBar*, show_text : Bool) : Void
  fun progress_bar_set_text = gtk_progress_bar_set_text(this : ProgressBar*, text : UInt8*) : Void

  struct ProgressBarAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::ProgressBarAccessiblePrivate*
  end

  struct RadioAction # object
    parent : LibGtk::ToggleAction*
    private_data : LibGtk::RadioActionPrivate*
    # Signal changed
    # Virtual function changed
    # Property current_value : Int32
    # Property group : LibGtk::RadioAction*
    # Property value : Int32
  end
  fun radio_action_new = gtk_radio_action_new(name : UInt8*, label : UInt8*, tooltip : UInt8*, stock_id : UInt8*, value : Int32) : LibGtk::RadioAction*
  fun radio_action_get_current_value = gtk_radio_action_get_current_value(this : RadioAction*) : Int32
  fun radio_action_get_group = gtk_radio_action_get_group(this : RadioAction*) : Void**
  fun radio_action_join_group = gtk_radio_action_join_group(this : RadioAction*, group_source : LibGtk::RadioAction*) : Void
  fun radio_action_set_current_value = gtk_radio_action_set_current_value(this : RadioAction*, current_value : Int32) : Void
  fun radio_action_set_group = gtk_radio_action_set_group(this : RadioAction*, group : Void**) : Void

  struct RadioButton # object
    check_button : LibGtk::CheckButton*
    priv : LibGtk::RadioButtonPrivate*
    # Signal group-changed
    # Virtual function group_changed
    # Property group : LibGtk::RadioButton*
  end
  fun radio_button_new = gtk_radio_button_new(group : Void**) : LibGtk::Widget*
  fun radio_button_new_from_widget = gtk_radio_button_new_from_widget(radio_group_member : LibGtk::RadioButton*) : LibGtk::Widget*
  fun radio_button_new_with_label = gtk_radio_button_new_with_label(group : Void**, label : UInt8*) : LibGtk::Widget*
  fun radio_button_new_with_label_from_widget = gtk_radio_button_new_with_label_from_widget(radio_group_member : LibGtk::RadioButton*, label : UInt8*) : LibGtk::Widget*
  fun radio_button_new_with_mnemonic = gtk_radio_button_new_with_mnemonic(group : Void**, label : UInt8*) : LibGtk::Widget*
  fun radio_button_new_with_mnemonic_from_widget = gtk_radio_button_new_with_mnemonic_from_widget(radio_group_member : LibGtk::RadioButton*, label : UInt8*) : LibGtk::Widget*
  fun radio_button_get_group = gtk_radio_button_get_group(this : RadioButton*) : Void**
  fun radio_button_join_group = gtk_radio_button_join_group(this : RadioButton*, group_source : LibGtk::RadioButton*) : Void
  fun radio_button_set_group = gtk_radio_button_set_group(this : RadioButton*, group : Void**) : Void

  struct RadioButtonAccessible # object
    parent : LibGtk::ToggleButtonAccessible*
    priv : LibGtk::RadioButtonAccessiblePrivate*
  end

  struct RadioMenuItem # object
    check_menu_item : LibGtk::CheckMenuItem*
    priv : LibGtk::RadioMenuItemPrivate*
    # Signal group-changed
    # Virtual function group_changed
    # Property group : LibGtk::RadioMenuItem*
  end
  fun radio_menu_item_new = gtk_radio_menu_item_new(group : Void**) : LibGtk::Widget*
  fun radio_menu_item_new_from_widget = gtk_radio_menu_item_new_from_widget(group : LibGtk::RadioMenuItem*) : LibGtk::Widget*
  fun radio_menu_item_new_with_label = gtk_radio_menu_item_new_with_label(group : Void**, label : UInt8*) : LibGtk::Widget*
  fun radio_menu_item_new_with_label_from_widget = gtk_radio_menu_item_new_with_label_from_widget(group : LibGtk::RadioMenuItem*, label : UInt8*) : LibGtk::Widget*
  fun radio_menu_item_new_with_mnemonic = gtk_radio_menu_item_new_with_mnemonic(group : Void**, label : UInt8*) : LibGtk::Widget*
  fun radio_menu_item_new_with_mnemonic_from_widget = gtk_radio_menu_item_new_with_mnemonic_from_widget(group : LibGtk::RadioMenuItem*, label : UInt8*) : LibGtk::Widget*
  fun radio_menu_item_get_group = gtk_radio_menu_item_get_group(this : RadioMenuItem*) : Void**
  fun radio_menu_item_join_group = gtk_radio_menu_item_join_group(this : RadioMenuItem*, group_source : LibGtk::RadioMenuItem*) : Void
  fun radio_menu_item_set_group = gtk_radio_menu_item_set_group(this : RadioMenuItem*, group : Void**) : Void

  struct RadioMenuItemAccessible # object
    parent : LibGtk::CheckMenuItemAccessible*
    priv : LibGtk::RadioMenuItemAccessiblePrivate*
  end

  struct RadioToolButton # object
    parent : LibGtk::ToggleToolButton*
    # Property group : LibGtk::RadioToolButton*
  end
  fun radio_tool_button_new = gtk_radio_tool_button_new(group : Void**) : LibGtk::ToolItem*
  fun radio_tool_button_new_from_stock = gtk_radio_tool_button_new_from_stock(group : Void**, stock_id : UInt8*) : LibGtk::ToolItem*
  fun radio_tool_button_new_from_widget = gtk_radio_tool_button_new_from_widget(group : LibGtk::RadioToolButton*) : LibGtk::ToolItem*
  fun radio_tool_button_new_with_stock_from_widget = gtk_radio_tool_button_new_with_stock_from_widget(group : LibGtk::RadioToolButton*, stock_id : UInt8*) : LibGtk::ToolItem*
  fun radio_tool_button_get_group = gtk_radio_tool_button_get_group(this : RadioToolButton*) : Void**
  fun radio_tool_button_set_group = gtk_radio_tool_button_set_group(this : RadioToolButton*, group : Void**) : Void

  struct Range # object
    widget : LibGtk::Widget*
    priv : LibGtk::RangePrivate*
    # Signal adjust-bounds
    # Signal change-value
    # Signal move-slider
    # Signal value-changed
    # Virtual function adjust_bounds
    # Virtual function change_value
    # Virtual function get_range_border
    # Virtual function get_range_size_request
    # Virtual function move_slider
    # Virtual function value_changed
    # Property adjustment : LibGtk::Adjustment*
    # Property fill_level : Float64
    # Property inverted : Bool
    # Property lower_stepper_sensitivity : LibGtk::SensitivityType
    # Property restrict_to_fill_level : Bool
    # Property round_digits : Int32
    # Property show_fill_level : Bool
    # Property upper_stepper_sensitivity : LibGtk::SensitivityType
  end
  fun range_get_adjustment = gtk_range_get_adjustment(this : Range*) : LibGtk::Adjustment*
  fun range_get_fill_level = gtk_range_get_fill_level(this : Range*) : Float64
  fun range_get_flippable = gtk_range_get_flippable(this : Range*) : Bool
  fun range_get_inverted = gtk_range_get_inverted(this : Range*) : Bool
  fun range_get_lower_stepper_sensitivity = gtk_range_get_lower_stepper_sensitivity(this : Range*) : LibGtk::SensitivityType
  fun range_get_min_slider_size = gtk_range_get_min_slider_size(this : Range*) : Int32
  fun range_get_range_rect = gtk_range_get_range_rect(this : Range*, range_rect : LibGdk::Rectangle*) : Void
  fun range_get_restrict_to_fill_level = gtk_range_get_restrict_to_fill_level(this : Range*) : Bool
  fun range_get_round_digits = gtk_range_get_round_digits(this : Range*) : Int32
  fun range_get_show_fill_level = gtk_range_get_show_fill_level(this : Range*) : Bool
  fun range_get_slider_range = gtk_range_get_slider_range(this : Range*, slider_start : Int32*, slider_end : Int32*) : Void
  fun range_get_slider_size_fixed = gtk_range_get_slider_size_fixed(this : Range*) : Bool
  fun range_get_upper_stepper_sensitivity = gtk_range_get_upper_stepper_sensitivity(this : Range*) : LibGtk::SensitivityType
  fun range_get_value = gtk_range_get_value(this : Range*) : Float64
  fun range_set_adjustment = gtk_range_set_adjustment(this : Range*, adjustment : LibGtk::Adjustment*) : Void
  fun range_set_fill_level = gtk_range_set_fill_level(this : Range*, fill_level : Float64) : Void
  fun range_set_flippable = gtk_range_set_flippable(this : Range*, flippable : Bool) : Void
  fun range_set_increments = gtk_range_set_increments(this : Range*, step : Float64, page : Float64) : Void
  fun range_set_inverted = gtk_range_set_inverted(this : Range*, setting : Bool) : Void
  fun range_set_lower_stepper_sensitivity = gtk_range_set_lower_stepper_sensitivity(this : Range*, sensitivity : LibGtk::SensitivityType) : Void
  fun range_set_min_slider_size = gtk_range_set_min_slider_size(this : Range*, min_size : Int32) : Void
  fun range_set_range = gtk_range_set_range(this : Range*, min : Float64, max : Float64) : Void
  fun range_set_restrict_to_fill_level = gtk_range_set_restrict_to_fill_level(this : Range*, restrict_to_fill_level : Bool) : Void
  fun range_set_round_digits = gtk_range_set_round_digits(this : Range*, round_digits : Int32) : Void
  fun range_set_show_fill_level = gtk_range_set_show_fill_level(this : Range*, show_fill_level : Bool) : Void
  fun range_set_slider_size_fixed = gtk_range_set_slider_size_fixed(this : Range*, size_fixed : Bool) : Void
  fun range_set_upper_stepper_sensitivity = gtk_range_set_upper_stepper_sensitivity(this : Range*, sensitivity : LibGtk::SensitivityType) : Void
  fun range_set_value = gtk_range_set_value(this : Range*, value : Float64) : Void

  struct RangeAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::RangeAccessiblePrivate*
  end

  struct RcStyle # object
    parent_instance : LibGObject::Object*
    name : UInt8*
    bg_pixmap_name : UInt8*
    font_desc : LibPango::FontDescription*
    color_flags : LibGtk::RcFlags
    fg : LibGdk::Color
    bg : LibGdk::Color
    text : LibGdk::Color
    base : LibGdk::Color
    xthickness : Int32
    ythickness : Int32
    rc_properties : Void*
    rc_style_lists : Void**
    icon_factories : Void**
    engine_specified : UInt32
    # Virtual function merge
    # Virtual function parse
  end
  fun rc_style_new = gtk_rc_style_new() : LibGtk::RcStyle*
  fun rc_style_copy = gtk_rc_style_copy(this : RcStyle*) : LibGtk::RcStyle*

  struct RecentAction # object
    parent_instance : LibGtk::Action*
    priv : LibGtk::RecentActionPrivate*
    # Property show_numbers : Bool
  end
  fun recent_action_new = gtk_recent_action_new(name : UInt8*, label : UInt8*, tooltip : UInt8*, stock_id : UInt8*) : LibGtk::Action*
  fun recent_action_new_for_manager = gtk_recent_action_new_for_manager(name : UInt8*, label : UInt8*, tooltip : UInt8*, stock_id : UInt8*, manager : LibGtk::RecentManager*) : LibGtk::Action*
  fun recent_action_get_show_numbers = gtk_recent_action_get_show_numbers(this : RecentAction*) : Bool
  fun recent_action_set_show_numbers = gtk_recent_action_set_show_numbers(this : RecentAction*, show_numbers : Bool) : Void

  struct RecentChooserDialog # object
    parent_instance : LibGtk::Dialog*
    priv : LibGtk::RecentChooserDialogPrivate*
  end

  struct RecentChooserMenu # object
    parent_instance : LibGtk::Menu*
    priv : LibGtk::RecentChooserMenuPrivate*
    # Property show_numbers : Bool
  end
  fun recent_chooser_menu_new = gtk_recent_chooser_menu_new() : LibGtk::Widget*
  fun recent_chooser_menu_new_for_manager = gtk_recent_chooser_menu_new_for_manager(manager : LibGtk::RecentManager*) : LibGtk::Widget*
  fun recent_chooser_menu_get_show_numbers = gtk_recent_chooser_menu_get_show_numbers(this : RecentChooserMenu*) : Bool
  fun recent_chooser_menu_set_show_numbers = gtk_recent_chooser_menu_set_show_numbers(this : RecentChooserMenu*, show_numbers : Bool) : Void

  struct RecentChooserWidget # object
    parent_instance : LibGtk::Box*
    priv : LibGtk::RecentChooserWidgetPrivate*
  end
  fun recent_chooser_widget_new = gtk_recent_chooser_widget_new() : LibGtk::Widget*
  fun recent_chooser_widget_new_for_manager = gtk_recent_chooser_widget_new_for_manager(manager : LibGtk::RecentManager*) : LibGtk::Widget*

  struct RecentFilter # object
    _data : UInt8[0]
  end
  fun recent_filter_new = gtk_recent_filter_new() : LibGtk::RecentFilter*
  fun recent_filter_add_age = gtk_recent_filter_add_age(this : RecentFilter*, days : Int32) : Void
  fun recent_filter_add_application = gtk_recent_filter_add_application(this : RecentFilter*, application : UInt8*) : Void
  fun recent_filter_add_custom = gtk_recent_filter_add_custom(this : RecentFilter*, needed : LibGtk::RecentFilterFlags, func : LibGtk::RecentFilterFunc, data : Void*, data_destroy : LibGLib::DestroyNotify) : Void
  fun recent_filter_add_group = gtk_recent_filter_add_group(this : RecentFilter*, group : UInt8*) : Void
  fun recent_filter_add_mime_type = gtk_recent_filter_add_mime_type(this : RecentFilter*, mime_type : UInt8*) : Void
  fun recent_filter_add_pattern = gtk_recent_filter_add_pattern(this : RecentFilter*, pattern : UInt8*) : Void
  fun recent_filter_add_pixbuf_formats = gtk_recent_filter_add_pixbuf_formats(this : RecentFilter*) : Void
  fun recent_filter_filter = gtk_recent_filter_filter(this : RecentFilter*, filter_info : LibGtk::RecentFilterInfo*) : Bool
  fun recent_filter_get_name = gtk_recent_filter_get_name(this : RecentFilter*) : UInt8*
  fun recent_filter_get_needed = gtk_recent_filter_get_needed(this : RecentFilter*) : LibGtk::RecentFilterFlags
  fun recent_filter_set_name = gtk_recent_filter_set_name(this : RecentFilter*, name : UInt8*) : Void

  struct RecentManager # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::RecentManagerPrivate*
    # Signal changed
    # Virtual function changed
    # Property filename : UInt8*
    # Property size : Int32
  end
  fun recent_manager_new = gtk_recent_manager_new() : LibGtk::RecentManager*
  fun recent_manager_get_default = gtk_recent_manager_get_default() : LibGtk::RecentManager*
  fun recent_manager_add_full = gtk_recent_manager_add_full(this : RecentManager*, uri : UInt8*, recent_data : LibGtk::RecentData*) : Bool
  fun recent_manager_add_item = gtk_recent_manager_add_item(this : RecentManager*, uri : UInt8*) : Bool
  fun recent_manager_get_items = gtk_recent_manager_get_items(this : RecentManager*) : Void**
  fun recent_manager_has_item = gtk_recent_manager_has_item(this : RecentManager*, uri : UInt8*) : Bool
  fun recent_manager_lookup_item = gtk_recent_manager_lookup_item(this : RecentManager*, uri : UInt8*, error : LibGLib::Error**) : LibGtk::RecentInfo*
  fun recent_manager_move_item = gtk_recent_manager_move_item(this : RecentManager*, uri : UInt8*, new_uri : UInt8*, error : LibGLib::Error**) : Bool
  fun recent_manager_purge_items = gtk_recent_manager_purge_items(this : RecentManager*, error : LibGLib::Error**) : Int32
  fun recent_manager_remove_item = gtk_recent_manager_remove_item(this : RecentManager*, uri : UInt8*, error : LibGLib::Error**) : Bool

  struct RendererCellAccessible # object
    parent : LibGtk::CellAccessible*
    priv : LibGtk::RendererCellAccessiblePrivate*
    # Property renderer : LibGtk::CellRenderer*
  end
  fun renderer_cell_accessible_new = gtk_renderer_cell_accessible_new(renderer : LibGtk::CellRenderer*) : LibAtk::Object*

  struct Revealer # object
    parent_instance : LibGtk::Bin*
    # Property child_revealed : Bool
    # Property reveal_child : Bool
    # Property transition_duration : UInt32
    # Property transition_type : LibGtk::RevealerTransitionType
  end
  fun revealer_new = gtk_revealer_new() : LibGtk::Widget*
  fun revealer_get_child_revealed = gtk_revealer_get_child_revealed(this : Revealer*) : Bool
  fun revealer_get_reveal_child = gtk_revealer_get_reveal_child(this : Revealer*) : Bool
  fun revealer_get_transition_duration = gtk_revealer_get_transition_duration(this : Revealer*) : UInt32
  fun revealer_get_transition_type = gtk_revealer_get_transition_type(this : Revealer*) : LibGtk::RevealerTransitionType
  fun revealer_set_reveal_child = gtk_revealer_set_reveal_child(this : Revealer*, reveal_child : Bool) : Void
  fun revealer_set_transition_duration = gtk_revealer_set_transition_duration(this : Revealer*, duration : UInt32) : Void
  fun revealer_set_transition_type = gtk_revealer_set_transition_type(this : Revealer*, transition : LibGtk::RevealerTransitionType) : Void

  struct Scale # object
    range : LibGtk::Range*
    priv : LibGtk::ScalePrivate*
    # Signal format-value
    # Virtual function draw_value
    # Virtual function format_value
    # Virtual function get_layout_offsets
    # Property digits : Int32
    # Property draw_value : Bool
    # Property has_origin : Bool
    # Property value_pos : LibGtk::PositionType
  end
  fun scale_new = gtk_scale_new(orientation : LibGtk::Orientation, adjustment : LibGtk::Adjustment*) : LibGtk::Widget*
  fun scale_new_with_range = gtk_scale_new_with_range(orientation : LibGtk::Orientation, min : Float64, max : Float64, step : Float64) : LibGtk::Widget*
  fun scale_add_mark = gtk_scale_add_mark(this : Scale*, value : Float64, position : LibGtk::PositionType, markup : UInt8*) : Void
  fun scale_clear_marks = gtk_scale_clear_marks(this : Scale*) : Void
  fun scale_get_digits = gtk_scale_get_digits(this : Scale*) : Int32
  fun scale_get_draw_value = gtk_scale_get_draw_value(this : Scale*) : Bool
  fun scale_get_has_origin = gtk_scale_get_has_origin(this : Scale*) : Bool
  fun scale_get_layout = gtk_scale_get_layout(this : Scale*) : LibPango::Layout*
  fun scale_get_layout_offsets = gtk_scale_get_layout_offsets(this : Scale*, x : Int32*, y : Int32*) : Void
  fun scale_get_value_pos = gtk_scale_get_value_pos(this : Scale*) : LibGtk::PositionType
  fun scale_set_digits = gtk_scale_set_digits(this : Scale*, digits : Int32) : Void
  fun scale_set_draw_value = gtk_scale_set_draw_value(this : Scale*, draw_value : Bool) : Void
  fun scale_set_has_origin = gtk_scale_set_has_origin(this : Scale*, has_origin : Bool) : Void
  fun scale_set_value_pos = gtk_scale_set_value_pos(this : Scale*, pos : LibGtk::PositionType) : Void

  struct ScaleAccessible # object
    parent : LibGtk::RangeAccessible*
    priv : LibGtk::ScaleAccessiblePrivate*
  end

  struct ScaleButton # object
    parent : LibGtk::Button*
    priv : LibGtk::ScaleButtonPrivate*
    # Signal popdown
    # Signal popup
    # Signal value-changed
    # Virtual function value_changed
    # Property adjustment : LibGtk::Adjustment*
    # Property icons : UInt8**
    # Property size : LibGtk::IconSize
    # Property value : Float64
  end
  fun scale_button_new = gtk_scale_button_new(size : Int32, min : Float64, max : Float64, step : Float64, icons : UInt8**) : LibGtk::Widget*
  fun scale_button_get_adjustment = gtk_scale_button_get_adjustment(this : ScaleButton*) : LibGtk::Adjustment*
  fun scale_button_get_minus_button = gtk_scale_button_get_minus_button(this : ScaleButton*) : LibGtk::Button*
  fun scale_button_get_plus_button = gtk_scale_button_get_plus_button(this : ScaleButton*) : LibGtk::Button*
  fun scale_button_get_popup = gtk_scale_button_get_popup(this : ScaleButton*) : LibGtk::Widget*
  fun scale_button_get_value = gtk_scale_button_get_value(this : ScaleButton*) : Float64
  fun scale_button_set_adjustment = gtk_scale_button_set_adjustment(this : ScaleButton*, adjustment : LibGtk::Adjustment*) : Void
  fun scale_button_set_icons = gtk_scale_button_set_icons(this : ScaleButton*, icons : UInt8**) : Void
  fun scale_button_set_value = gtk_scale_button_set_value(this : ScaleButton*, value : Float64) : Void

  struct ScaleButtonAccessible # object
    parent : LibGtk::ButtonAccessible*
    priv : LibGtk::ScaleButtonAccessiblePrivate*
  end

  struct Scrollbar # object
    range : LibGtk::Range*
  end
  fun scrollbar_new = gtk_scrollbar_new(orientation : LibGtk::Orientation, adjustment : LibGtk::Adjustment*) : LibGtk::Widget*

  struct ScrolledWindow # object
    container : LibGtk::Bin*
    priv : LibGtk::ScrolledWindowPrivate*
    # Signal edge-overshot
    # Signal edge-reached
    # Signal move-focus-out
    # Signal scroll-child
    # Virtual function move_focus_out
    # Virtual function scroll_child
    # Property hadjustment : LibGtk::Adjustment*
    # Property hscrollbar_policy : LibGtk::PolicyType
    # Property kinetic_scrolling : Bool
    # Property max_content_height : Int32
    # Property max_content_width : Int32
    # Property min_content_height : Int32
    # Property min_content_width : Int32
    # Property overlay_scrolling : Bool
    # Property propagate_natural_height : Bool
    # Property propagate_natural_width : Bool
    # Property shadow_type : LibGtk::ShadowType
    # Property vadjustment : LibGtk::Adjustment*
    # Property vscrollbar_policy : LibGtk::PolicyType
    # Property window_placement : LibGtk::CornerType
    # Property window_placement_set : Bool
  end
  fun scrolled_window_new = gtk_scrolled_window_new(hadjustment : LibGtk::Adjustment*, vadjustment : LibGtk::Adjustment*) : LibGtk::Widget*
  fun scrolled_window_add_with_viewport = gtk_scrolled_window_add_with_viewport(this : ScrolledWindow*, child : LibGtk::Widget*) : Void
  fun scrolled_window_get_capture_button_press = gtk_scrolled_window_get_capture_button_press(this : ScrolledWindow*) : Bool
  fun scrolled_window_get_hadjustment = gtk_scrolled_window_get_hadjustment(this : ScrolledWindow*) : LibGtk::Adjustment*
  fun scrolled_window_get_hscrollbar = gtk_scrolled_window_get_hscrollbar(this : ScrolledWindow*) : LibGtk::Widget*
  fun scrolled_window_get_kinetic_scrolling = gtk_scrolled_window_get_kinetic_scrolling(this : ScrolledWindow*) : Bool
  fun scrolled_window_get_max_content_height = gtk_scrolled_window_get_max_content_height(this : ScrolledWindow*) : Int32
  fun scrolled_window_get_max_content_width = gtk_scrolled_window_get_max_content_width(this : ScrolledWindow*) : Int32
  fun scrolled_window_get_min_content_height = gtk_scrolled_window_get_min_content_height(this : ScrolledWindow*) : Int32
  fun scrolled_window_get_min_content_width = gtk_scrolled_window_get_min_content_width(this : ScrolledWindow*) : Int32
  fun scrolled_window_get_overlay_scrolling = gtk_scrolled_window_get_overlay_scrolling(this : ScrolledWindow*) : Bool
  fun scrolled_window_get_placement = gtk_scrolled_window_get_placement(this : ScrolledWindow*) : LibGtk::CornerType
  fun scrolled_window_get_policy = gtk_scrolled_window_get_policy(this : ScrolledWindow*, hscrollbar_policy : LibGtk::PolicyType*, vscrollbar_policy : LibGtk::PolicyType*) : Void
  fun scrolled_window_get_propagate_natural_height = gtk_scrolled_window_get_propagate_natural_height(this : ScrolledWindow*) : Bool
  fun scrolled_window_get_propagate_natural_width = gtk_scrolled_window_get_propagate_natural_width(this : ScrolledWindow*) : Bool
  fun scrolled_window_get_shadow_type = gtk_scrolled_window_get_shadow_type(this : ScrolledWindow*) : LibGtk::ShadowType
  fun scrolled_window_get_vadjustment = gtk_scrolled_window_get_vadjustment(this : ScrolledWindow*) : LibGtk::Adjustment*
  fun scrolled_window_get_vscrollbar = gtk_scrolled_window_get_vscrollbar(this : ScrolledWindow*) : LibGtk::Widget*
  fun scrolled_window_set_capture_button_press = gtk_scrolled_window_set_capture_button_press(this : ScrolledWindow*, capture_button_press : Bool) : Void
  fun scrolled_window_set_hadjustment = gtk_scrolled_window_set_hadjustment(this : ScrolledWindow*, hadjustment : LibGtk::Adjustment*) : Void
  fun scrolled_window_set_kinetic_scrolling = gtk_scrolled_window_set_kinetic_scrolling(this : ScrolledWindow*, kinetic_scrolling : Bool) : Void
  fun scrolled_window_set_max_content_height = gtk_scrolled_window_set_max_content_height(this : ScrolledWindow*, height : Int32) : Void
  fun scrolled_window_set_max_content_width = gtk_scrolled_window_set_max_content_width(this : ScrolledWindow*, width : Int32) : Void
  fun scrolled_window_set_min_content_height = gtk_scrolled_window_set_min_content_height(this : ScrolledWindow*, height : Int32) : Void
  fun scrolled_window_set_min_content_width = gtk_scrolled_window_set_min_content_width(this : ScrolledWindow*, width : Int32) : Void
  fun scrolled_window_set_overlay_scrolling = gtk_scrolled_window_set_overlay_scrolling(this : ScrolledWindow*, overlay_scrolling : Bool) : Void
  fun scrolled_window_set_placement = gtk_scrolled_window_set_placement(this : ScrolledWindow*, window_placement : LibGtk::CornerType) : Void
  fun scrolled_window_set_policy = gtk_scrolled_window_set_policy(this : ScrolledWindow*, hscrollbar_policy : LibGtk::PolicyType, vscrollbar_policy : LibGtk::PolicyType) : Void
  fun scrolled_window_set_propagate_natural_height = gtk_scrolled_window_set_propagate_natural_height(this : ScrolledWindow*, propagate : Bool) : Void
  fun scrolled_window_set_propagate_natural_width = gtk_scrolled_window_set_propagate_natural_width(this : ScrolledWindow*, propagate : Bool) : Void
  fun scrolled_window_set_shadow_type = gtk_scrolled_window_set_shadow_type(this : ScrolledWindow*, type : LibGtk::ShadowType) : Void
  fun scrolled_window_set_vadjustment = gtk_scrolled_window_set_vadjustment(this : ScrolledWindow*, vadjustment : LibGtk::Adjustment*) : Void
  fun scrolled_window_unset_placement = gtk_scrolled_window_unset_placement(this : ScrolledWindow*) : Void

  struct ScrolledWindowAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::ScrolledWindowAccessiblePrivate*
  end

  struct SearchBar # object
    parent : LibGtk::Bin*
    # Property search_mode_enabled : Bool
    # Property show_close_button : Bool
  end
  fun search_bar_new = gtk_search_bar_new() : LibGtk::Widget*
  fun search_bar_connect_entry = gtk_search_bar_connect_entry(this : SearchBar*, entry : LibGtk::Entry*) : Void
  fun search_bar_get_search_mode = gtk_search_bar_get_search_mode(this : SearchBar*) : Bool
  fun search_bar_get_show_close_button = gtk_search_bar_get_show_close_button(this : SearchBar*) : Bool
  fun search_bar_handle_event = gtk_search_bar_handle_event(this : SearchBar*, event : LibGdk::Event*) : Bool
  fun search_bar_set_search_mode = gtk_search_bar_set_search_mode(this : SearchBar*, search_mode : Bool) : Void
  fun search_bar_set_show_close_button = gtk_search_bar_set_show_close_button(this : SearchBar*, visible : Bool) : Void

  struct SearchEntry # object
    parent : LibGtk::Entry*
    # Signal next-match
    # Signal previous-match
    # Signal search-changed
    # Signal stop-search
    # Virtual function next_match
    # Virtual function previous_match
    # Virtual function search_changed
    # Virtual function stop_search
  end
  fun search_entry_new = gtk_search_entry_new() : LibGtk::Widget*
  fun search_entry_handle_event = gtk_search_entry_handle_event(this : SearchEntry*, event : LibGdk::Event*) : Bool

  struct Separator # object
    widget : LibGtk::Widget*
    priv : LibGtk::SeparatorPrivate*
  end
  fun separator_new = gtk_separator_new(orientation : LibGtk::Orientation) : LibGtk::Widget*

  struct SeparatorMenuItem # object
    menu_item : LibGtk::MenuItem*
  end
  fun separator_menu_item_new = gtk_separator_menu_item_new() : LibGtk::Widget*

  struct SeparatorToolItem # object
    parent : LibGtk::ToolItem*
    priv : LibGtk::SeparatorToolItemPrivate*
    # Property draw : Bool
  end
  fun separator_tool_item_new = gtk_separator_tool_item_new() : LibGtk::ToolItem*
  fun separator_tool_item_get_draw = gtk_separator_tool_item_get_draw(this : SeparatorToolItem*) : Bool
  fun separator_tool_item_set_draw = gtk_separator_tool_item_set_draw(this : SeparatorToolItem*, draw : Bool) : Void

  struct Settings # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::SettingsPrivate*
    # Property color_hash : Void**
    # Property gtk_alternative_button_order : Bool
    # Property gtk_alternative_sort_arrows : Bool
    # Property gtk_application_prefer_dark_theme : Bool
    # Property gtk_auto_mnemonics : Bool
    # Property gtk_button_images : Bool
    # Property gtk_can_change_accels : Bool
    # Property gtk_color_palette : UInt8*
    # Property gtk_color_scheme : UInt8*
    # Property gtk_cursor_blink : Bool
    # Property gtk_cursor_blink_time : Int32
    # Property gtk_cursor_blink_timeout : Int32
    # Property gtk_cursor_theme_name : UInt8*
    # Property gtk_cursor_theme_size : Int32
    # Property gtk_decoration_layout : UInt8*
    # Property gtk_dialogs_use_header : Bool
    # Property gtk_dnd_drag_threshold : Int32
    # Property gtk_double_click_distance : Int32
    # Property gtk_double_click_time : Int32
    # Property gtk_enable_accels : Bool
    # Property gtk_enable_animations : Bool
    # Property gtk_enable_event_sounds : Bool
    # Property gtk_enable_input_feedback_sounds : Bool
    # Property gtk_enable_mnemonics : Bool
    # Property gtk_enable_primary_paste : Bool
    # Property gtk_enable_tooltips : Bool
    # Property gtk_entry_password_hint_timeout : UInt32
    # Property gtk_entry_select_on_focus : Bool
    # Property gtk_error_bell : Bool
    # Property gtk_fallback_icon_theme : UInt8*
    # Property gtk_file_chooser_backend : UInt8*
    # Property gtk_font_name : UInt8*
    # Property gtk_fontconfig_timestamp : UInt32
    # Property gtk_icon_sizes : UInt8*
    # Property gtk_icon_theme_name : UInt8*
    # Property gtk_im_module : UInt8*
    # Property gtk_im_preedit_style : LibGtk::IMPreeditStyle
    # Property gtk_im_status_style : LibGtk::IMStatusStyle
    # Property gtk_key_theme_name : UInt8*
    # Property gtk_keynav_cursor_only : Bool
    # Property gtk_keynav_use_caret : Bool
    # Property gtk_keynav_wrap_around : Bool
    # Property gtk_label_select_on_focus : Bool
    # Property gtk_long_press_time : UInt32
    # Property gtk_menu_bar_accel : UInt8*
    # Property gtk_menu_bar_popup_delay : Int32
    # Property gtk_menu_images : Bool
    # Property gtk_menu_popdown_delay : Int32
    # Property gtk_menu_popup_delay : Int32
    # Property gtk_modules : UInt8*
    # Property gtk_primary_button_warps_slider : Bool
    # Property gtk_print_backends : UInt8*
    # Property gtk_print_preview_command : UInt8*
    # Property gtk_recent_files_enabled : Bool
    # Property gtk_recent_files_limit : Int32
    # Property gtk_recent_files_max_age : Int32
    # Property gtk_scrolled_window_placement : LibGtk::CornerType
    # Property gtk_shell_shows_app_menu : Bool
    # Property gtk_shell_shows_desktop : Bool
    # Property gtk_shell_shows_menubar : Bool
    # Property gtk_show_input_method_menu : Bool
    # Property gtk_show_unicode_menu : Bool
    # Property gtk_sound_theme_name : UInt8*
    # Property gtk_split_cursor : Bool
    # Property gtk_theme_name : UInt8*
    # Property gtk_timeout_expand : Int32
    # Property gtk_timeout_initial : Int32
    # Property gtk_timeout_repeat : Int32
    # Property gtk_titlebar_double_click : UInt8*
    # Property gtk_titlebar_middle_click : UInt8*
    # Property gtk_titlebar_right_click : UInt8*
    # Property gtk_toolbar_icon_size : LibGtk::IconSize
    # Property gtk_toolbar_style : LibGtk::ToolbarStyle
    # Property gtk_tooltip_browse_mode_timeout : Int32
    # Property gtk_tooltip_browse_timeout : Int32
    # Property gtk_tooltip_timeout : Int32
    # Property gtk_touchscreen_mode : Bool
    # Property gtk_visible_focus : LibGtk::PolicyType
    # Property gtk_xft_antialias : Int32
    # Property gtk_xft_dpi : Int32
    # Property gtk_xft_hinting : Int32
    # Property gtk_xft_hintstyle : UInt8*
    # Property gtk_xft_rgba : UInt8*
  end
  fun settings_get_default = gtk_settings_get_default() : LibGtk::Settings*
  fun settings_get_for_screen = gtk_settings_get_for_screen(screen : LibGdk::Screen*) : LibGtk::Settings*
  fun settings_install_property = gtk_settings_install_property(pspec : LibGObject::ParamSpec*) : Void
  fun settings_install_property_parser = gtk_settings_install_property_parser(pspec : LibGObject::ParamSpec*, parser : LibGtk::RcPropertyParser) : Void
  fun settings_reset_property = gtk_settings_reset_property(this : Settings*, name : UInt8*) : Void
  fun settings_set_double_property = gtk_settings_set_double_property(this : Settings*, name : UInt8*, v_double : Float64, origin : UInt8*) : Void
  fun settings_set_long_property = gtk_settings_set_long_property(this : Settings*, name : UInt8*, v_long : Int64, origin : UInt8*) : Void
  fun settings_set_property_value = gtk_settings_set_property_value(this : Settings*, name : UInt8*, svalue : LibGtk::SettingsValue*) : Void
  fun settings_set_string_property = gtk_settings_set_string_property(this : Settings*, name : UInt8*, v_string : UInt8*, origin : UInt8*) : Void

  struct ShortcutLabel # object
    _data : UInt8[0]
    # Property accelerator : UInt8*
    # Property disabled_text : UInt8*
  end
  fun shortcut_label_new = gtk_shortcut_label_new(accelerator : UInt8*) : LibGtk::Widget*
  fun shortcut_label_get_accelerator = gtk_shortcut_label_get_accelerator(this : ShortcutLabel*) : UInt8*
  fun shortcut_label_get_disabled_text = gtk_shortcut_label_get_disabled_text(this : ShortcutLabel*) : UInt8*
  fun shortcut_label_set_accelerator = gtk_shortcut_label_set_accelerator(this : ShortcutLabel*, accelerator : UInt8*) : Void
  fun shortcut_label_set_disabled_text = gtk_shortcut_label_set_disabled_text(this : ShortcutLabel*, disabled_text : UInt8*) : Void

  struct ShortcutsGroup # object
    _data : UInt8[0]
    # Property accel_size_group : LibGtk::SizeGroup*
    # Property height : UInt32
    # Property title : UInt8*
    # Property title_size_group : LibGtk::SizeGroup*
    # Property view : UInt8*
  end

  struct ShortcutsSection # object
    _data : UInt8[0]
    # Signal change-current-page
    # Property max_height : UInt32
    # Property section_name : UInt8*
    # Property title : UInt8*
    # Property view_name : UInt8*
  end

  struct ShortcutsShortcut # object
    _data : UInt8[0]
    # Property accel_size_group : LibGtk::SizeGroup*
    # Property accelerator : UInt8*
    # Property action_name : UInt8*
    # Property direction : LibGtk::TextDirection
    # Property icon : LibGio::Icon
    # Property icon_set : Bool
    # Property shortcut_type : LibGtk::ShortcutType
    # Property subtitle : UInt8*
    # Property subtitle_set : Bool
    # Property title : UInt8*
    # Property title_size_group : LibGtk::SizeGroup*
  end

  struct ShortcutsWindow # object
    window : LibGtk::Window*
    # Signal close
    # Signal search
    # Virtual function close
    # Virtual function search
    # Property section_name : UInt8*
    # Property view_name : UInt8*
  end

  struct SizeGroup # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::SizeGroupPrivate*
    # Property ignore_hidden : Bool
    # Property mode : LibGtk::SizeGroupMode
  end
  fun size_group_new = gtk_size_group_new(mode : LibGtk::SizeGroupMode) : LibGtk::SizeGroup*
  fun size_group_add_widget = gtk_size_group_add_widget(this : SizeGroup*, widget : LibGtk::Widget*) : Void
  fun size_group_get_ignore_hidden = gtk_size_group_get_ignore_hidden(this : SizeGroup*) : Bool
  fun size_group_get_mode = gtk_size_group_get_mode(this : SizeGroup*) : LibGtk::SizeGroupMode
  fun size_group_get_widgets = gtk_size_group_get_widgets(this : SizeGroup*) : Void**
  fun size_group_remove_widget = gtk_size_group_remove_widget(this : SizeGroup*, widget : LibGtk::Widget*) : Void
  fun size_group_set_ignore_hidden = gtk_size_group_set_ignore_hidden(this : SizeGroup*, ignore_hidden : Bool) : Void
  fun size_group_set_mode = gtk_size_group_set_mode(this : SizeGroup*, mode : LibGtk::SizeGroupMode) : Void

  struct Socket # object
    container : LibGtk::Container*
    priv : LibGtk::SocketPrivate*
    # Signal plug-added
    # Signal plug-removed
    # Virtual function plug_added
    # Virtual function plug_removed
  end
  fun socket_new = gtk_socket_new() : LibGtk::Widget*
  fun socket_add_id = gtk_socket_add_id(this : Socket*, window : UInt64) : Void
  fun socket_get_id = gtk_socket_get_id(this : Socket*) : UInt64
  fun socket_get_plug_window = gtk_socket_get_plug_window(this : Socket*) : LibGdk::Window*

  struct SpinButton # object
    entry : LibGtk::Entry*
    priv : LibGtk::SpinButtonPrivate*
    # Signal change-value
    # Signal input
    # Signal output
    # Signal value-changed
    # Signal wrapped
    # Virtual function change_value
    # Virtual function input
    # Virtual function output
    # Virtual function value_changed
    # Virtual function wrapped
    # Property adjustment : LibGtk::Adjustment*
    # Property climb_rate : Float64
    # Property digits : UInt32
    # Property numeric : Bool
    # Property snap_to_ticks : Bool
    # Property update_policy : LibGtk::SpinButtonUpdatePolicy
    # Property value : Float64
    # Property wrap : Bool
  end
  fun spin_button_new = gtk_spin_button_new(adjustment : LibGtk::Adjustment*, climb_rate : Float64, digits : UInt32) : LibGtk::Widget*
  fun spin_button_new_with_range = gtk_spin_button_new_with_range(min : Float64, max : Float64, step : Float64) : LibGtk::Widget*
  fun spin_button_configure = gtk_spin_button_configure(this : SpinButton*, adjustment : LibGtk::Adjustment*, climb_rate : Float64, digits : UInt32) : Void
  fun spin_button_get_adjustment = gtk_spin_button_get_adjustment(this : SpinButton*) : LibGtk::Adjustment*
  fun spin_button_get_digits = gtk_spin_button_get_digits(this : SpinButton*) : UInt32
  fun spin_button_get_increments = gtk_spin_button_get_increments(this : SpinButton*, step : Float64*, page : Float64*) : Void
  fun spin_button_get_numeric = gtk_spin_button_get_numeric(this : SpinButton*) : Bool
  fun spin_button_get_range = gtk_spin_button_get_range(this : SpinButton*, min : Float64*, max : Float64*) : Void
  fun spin_button_get_snap_to_ticks = gtk_spin_button_get_snap_to_ticks(this : SpinButton*) : Bool
  fun spin_button_get_update_policy = gtk_spin_button_get_update_policy(this : SpinButton*) : LibGtk::SpinButtonUpdatePolicy
  fun spin_button_get_value = gtk_spin_button_get_value(this : SpinButton*) : Float64
  fun spin_button_get_value_as_int = gtk_spin_button_get_value_as_int(this : SpinButton*) : Int32
  fun spin_button_get_wrap = gtk_spin_button_get_wrap(this : SpinButton*) : Bool
  fun spin_button_set_adjustment = gtk_spin_button_set_adjustment(this : SpinButton*, adjustment : LibGtk::Adjustment*) : Void
  fun spin_button_set_digits = gtk_spin_button_set_digits(this : SpinButton*, digits : UInt32) : Void
  fun spin_button_set_increments = gtk_spin_button_set_increments(this : SpinButton*, step : Float64, page : Float64) : Void
  fun spin_button_set_numeric = gtk_spin_button_set_numeric(this : SpinButton*, numeric : Bool) : Void
  fun spin_button_set_range = gtk_spin_button_set_range(this : SpinButton*, min : Float64, max : Float64) : Void
  fun spin_button_set_snap_to_ticks = gtk_spin_button_set_snap_to_ticks(this : SpinButton*, snap_to_ticks : Bool) : Void
  fun spin_button_set_update_policy = gtk_spin_button_set_update_policy(this : SpinButton*, policy : LibGtk::SpinButtonUpdatePolicy) : Void
  fun spin_button_set_value = gtk_spin_button_set_value(this : SpinButton*, value : Float64) : Void
  fun spin_button_set_wrap = gtk_spin_button_set_wrap(this : SpinButton*, wrap : Bool) : Void
  fun spin_button_spin = gtk_spin_button_spin(this : SpinButton*, direction : LibGtk::SpinType, increment : Float64) : Void
  fun spin_button_update = gtk_spin_button_update(this : SpinButton*) : Void

  struct SpinButtonAccessible # object
    parent : LibGtk::EntryAccessible*
    priv : LibGtk::SpinButtonAccessiblePrivate*
  end

  struct Spinner # object
    parent : LibGtk::Widget*
    priv : LibGtk::SpinnerPrivate*
    # Property active : Bool
  end
  fun spinner_new = gtk_spinner_new() : LibGtk::Widget*
  fun spinner_start = gtk_spinner_start(this : Spinner*) : Void
  fun spinner_stop = gtk_spinner_stop(this : Spinner*) : Void

  struct SpinnerAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::SpinnerAccessiblePrivate*
  end

  struct Stack # object
    parent_instance : LibGtk::Container*
    # Property hhomogeneous : Bool
    # Property homogeneous : Bool
    # Property interpolate_size : Bool
    # Property transition_duration : UInt32
    # Property transition_running : Bool
    # Property transition_type : LibGtk::StackTransitionType
    # Property vhomogeneous : Bool
    # Property visible_child : LibGtk::Widget*
    # Property visible_child_name : UInt8*
  end
  fun stack_new = gtk_stack_new() : LibGtk::Widget*
  fun stack_add_named = gtk_stack_add_named(this : Stack*, child : LibGtk::Widget*, name : UInt8*) : Void
  fun stack_add_titled = gtk_stack_add_titled(this : Stack*, child : LibGtk::Widget*, name : UInt8*, title : UInt8*) : Void
  fun stack_get_child_by_name = gtk_stack_get_child_by_name(this : Stack*, name : UInt8*) : LibGtk::Widget*
  fun stack_get_hhomogeneous = gtk_stack_get_hhomogeneous(this : Stack*) : Bool
  fun stack_get_homogeneous = gtk_stack_get_homogeneous(this : Stack*) : Bool
  fun stack_get_interpolate_size = gtk_stack_get_interpolate_size(this : Stack*) : Bool
  fun stack_get_transition_duration = gtk_stack_get_transition_duration(this : Stack*) : UInt32
  fun stack_get_transition_running = gtk_stack_get_transition_running(this : Stack*) : Bool
  fun stack_get_transition_type = gtk_stack_get_transition_type(this : Stack*) : LibGtk::StackTransitionType
  fun stack_get_vhomogeneous = gtk_stack_get_vhomogeneous(this : Stack*) : Bool
  fun stack_get_visible_child = gtk_stack_get_visible_child(this : Stack*) : LibGtk::Widget*
  fun stack_get_visible_child_name = gtk_stack_get_visible_child_name(this : Stack*) : UInt8*
  fun stack_set_hhomogeneous = gtk_stack_set_hhomogeneous(this : Stack*, hhomogeneous : Bool) : Void
  fun stack_set_homogeneous = gtk_stack_set_homogeneous(this : Stack*, homogeneous : Bool) : Void
  fun stack_set_interpolate_size = gtk_stack_set_interpolate_size(this : Stack*, interpolate_size : Bool) : Void
  fun stack_set_transition_duration = gtk_stack_set_transition_duration(this : Stack*, duration : UInt32) : Void
  fun stack_set_transition_type = gtk_stack_set_transition_type(this : Stack*, transition : LibGtk::StackTransitionType) : Void
  fun stack_set_vhomogeneous = gtk_stack_set_vhomogeneous(this : Stack*, vhomogeneous : Bool) : Void
  fun stack_set_visible_child = gtk_stack_set_visible_child(this : Stack*, child : LibGtk::Widget*) : Void
  fun stack_set_visible_child_full = gtk_stack_set_visible_child_full(this : Stack*, name : UInt8*, transition : LibGtk::StackTransitionType) : Void
  fun stack_set_visible_child_name = gtk_stack_set_visible_child_name(this : Stack*, name : UInt8*) : Void

  struct StackAccessible # object
    parent : LibGtk::ContainerAccessible*
  end

  struct StackSidebar # object
    parent : LibGtk::Bin*
    # Property stack : LibGtk::Stack*
  end
  fun stack_sidebar_new = gtk_stack_sidebar_new() : LibGtk::Widget*
  fun stack_sidebar_get_stack = gtk_stack_sidebar_get_stack(this : StackSidebar*) : LibGtk::Stack*
  fun stack_sidebar_set_stack = gtk_stack_sidebar_set_stack(this : StackSidebar*, stack : LibGtk::Stack*) : Void

  struct StackSwitcher # object
    widget : LibGtk::Box*
    # Property icon_size : Int32
    # Property stack : LibGtk::Stack*
  end
  fun stack_switcher_new = gtk_stack_switcher_new() : LibGtk::Widget*
  fun stack_switcher_get_stack = gtk_stack_switcher_get_stack(this : StackSwitcher*) : LibGtk::Stack*
  fun stack_switcher_set_stack = gtk_stack_switcher_set_stack(this : StackSwitcher*, stack : LibGtk::Stack*) : Void

  struct StatusIcon # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::StatusIconPrivate*
    # Signal activate
    # Signal button-press-event
    # Signal button-release-event
    # Signal popup-menu
    # Signal query-tooltip
    # Signal scroll-event
    # Signal size-changed
    # Virtual function activate
    # Virtual function button_press_event
    # Virtual function button_release_event
    # Virtual function popup_menu
    # Virtual function query_tooltip
    # Virtual function scroll_event
    # Virtual function size_changed
    # Property embedded : Bool
    # Property file : UInt8*
    # Property gicon : LibGio::Icon
    # Property has_tooltip : Bool
    # Property icon_name : UInt8*
    # Property orientation : LibGtk::Orientation
    # Property pixbuf : LibGdkPixbuf::Pixbuf*
    # Property screen : LibGdk::Screen*
    # Property size : Int32
    # Property stock : UInt8*
    # Property storage_type : LibGtk::ImageType
    # Property title : UInt8*
    # Property tooltip_markup : UInt8*
    # Property tooltip_text : UInt8*
    # Property visible : Bool
  end
  fun status_icon_new = gtk_status_icon_new() : LibGtk::StatusIcon*
  fun status_icon_new_from_file = gtk_status_icon_new_from_file(filename : UInt8*) : LibGtk::StatusIcon*
  fun status_icon_new_from_gicon = gtk_status_icon_new_from_gicon(icon : LibGio::Icon*) : LibGtk::StatusIcon*
  fun status_icon_new_from_icon_name = gtk_status_icon_new_from_icon_name(icon_name : UInt8*) : LibGtk::StatusIcon*
  fun status_icon_new_from_pixbuf = gtk_status_icon_new_from_pixbuf(pixbuf : LibGdkPixbuf::Pixbuf*) : LibGtk::StatusIcon*
  fun status_icon_new_from_stock = gtk_status_icon_new_from_stock(stock_id : UInt8*) : LibGtk::StatusIcon*
  fun status_icon_position_menu = gtk_status_icon_position_menu(menu : LibGtk::Menu*, x : Int32*, y : Int32*, push_in : Bool*, user_data : LibGtk::StatusIcon*) : Void
  fun status_icon_get_geometry = gtk_status_icon_get_geometry(this : StatusIcon*, screen : LibGdk::Screen**, area : LibGdk::Rectangle*, orientation : LibGtk::Orientation*) : Bool
  fun status_icon_get_gicon = gtk_status_icon_get_gicon(this : StatusIcon*) : LibGio::Icon*
  fun status_icon_get_has_tooltip = gtk_status_icon_get_has_tooltip(this : StatusIcon*) : Bool
  fun status_icon_get_icon_name = gtk_status_icon_get_icon_name(this : StatusIcon*) : UInt8*
  fun status_icon_get_pixbuf = gtk_status_icon_get_pixbuf(this : StatusIcon*) : LibGdkPixbuf::Pixbuf*
  fun status_icon_get_screen = gtk_status_icon_get_screen(this : StatusIcon*) : LibGdk::Screen*
  fun status_icon_get_size = gtk_status_icon_get_size(this : StatusIcon*) : Int32
  fun status_icon_get_stock = gtk_status_icon_get_stock(this : StatusIcon*) : UInt8*
  fun status_icon_get_storage_type = gtk_status_icon_get_storage_type(this : StatusIcon*) : LibGtk::ImageType
  fun status_icon_get_title = gtk_status_icon_get_title(this : StatusIcon*) : UInt8*
  fun status_icon_get_tooltip_markup = gtk_status_icon_get_tooltip_markup(this : StatusIcon*) : UInt8*
  fun status_icon_get_tooltip_text = gtk_status_icon_get_tooltip_text(this : StatusIcon*) : UInt8*
  fun status_icon_get_visible = gtk_status_icon_get_visible(this : StatusIcon*) : Bool
  fun status_icon_get_x11_window_id = gtk_status_icon_get_x11_window_id(this : StatusIcon*) : UInt32
  fun status_icon_is_embedded = gtk_status_icon_is_embedded(this : StatusIcon*) : Bool
  fun status_icon_set_from_file = gtk_status_icon_set_from_file(this : StatusIcon*, filename : UInt8*) : Void
  fun status_icon_set_from_gicon = gtk_status_icon_set_from_gicon(this : StatusIcon*, icon : LibGio::Icon*) : Void
  fun status_icon_set_from_icon_name = gtk_status_icon_set_from_icon_name(this : StatusIcon*, icon_name : UInt8*) : Void
  fun status_icon_set_from_pixbuf = gtk_status_icon_set_from_pixbuf(this : StatusIcon*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun status_icon_set_from_stock = gtk_status_icon_set_from_stock(this : StatusIcon*, stock_id : UInt8*) : Void
  fun status_icon_set_has_tooltip = gtk_status_icon_set_has_tooltip(this : StatusIcon*, has_tooltip : Bool) : Void
  fun status_icon_set_name = gtk_status_icon_set_name(this : StatusIcon*, name : UInt8*) : Void
  fun status_icon_set_screen = gtk_status_icon_set_screen(this : StatusIcon*, screen : LibGdk::Screen*) : Void
  fun status_icon_set_title = gtk_status_icon_set_title(this : StatusIcon*, title : UInt8*) : Void
  fun status_icon_set_tooltip_markup = gtk_status_icon_set_tooltip_markup(this : StatusIcon*, markup : UInt8*) : Void
  fun status_icon_set_tooltip_text = gtk_status_icon_set_tooltip_text(this : StatusIcon*, text : UInt8*) : Void
  fun status_icon_set_visible = gtk_status_icon_set_visible(this : StatusIcon*, visible : Bool) : Void

  struct Statusbar # object
    parent_widget : LibGtk::Box*
    priv : LibGtk::StatusbarPrivate*
    # Signal text-popped
    # Signal text-pushed
    # Virtual function text_popped
    # Virtual function text_pushed
  end
  fun statusbar_new = gtk_statusbar_new() : LibGtk::Widget*
  fun statusbar_get_context_id = gtk_statusbar_get_context_id(this : Statusbar*, context_description : UInt8*) : UInt32
  fun statusbar_get_message_area = gtk_statusbar_get_message_area(this : Statusbar*) : LibGtk::Box*
  fun statusbar_pop = gtk_statusbar_pop(this : Statusbar*, context_id : UInt32) : Void
  fun statusbar_push = gtk_statusbar_push(this : Statusbar*, context_id : UInt32, text : UInt8*) : UInt32
  fun statusbar_remove = gtk_statusbar_remove(this : Statusbar*, context_id : UInt32, message_id : UInt32) : Void
  fun statusbar_remove_all = gtk_statusbar_remove_all(this : Statusbar*, context_id : UInt32) : Void

  struct StatusbarAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::StatusbarAccessiblePrivate*
  end

  struct Style # object
    parent_instance : LibGObject::Object*
    fg : LibGdk::Color
    bg : LibGdk::Color
    light : LibGdk::Color
    dark : LibGdk::Color
    mid : LibGdk::Color
    text : LibGdk::Color
    base : LibGdk::Color
    text_aa : LibGdk::Color
    black : LibGdk::Color
    white : LibGdk::Color
    font_desc : LibPango::FontDescription*
    xthickness : Int32
    ythickness : Int32
    background : LibCairo::Pattern*
    attach_count : Int32
    visual : LibGdk::Visual*
    private_font_desc : LibPango::FontDescription*
    rc_style : LibGtk::RcStyle*
    styles : Void**
    property_cache : Void*
    icon_factories : Void**
    # Signal realize
    # Signal unrealize
    # Virtual function copy
    # Virtual function draw_arrow
    # Virtual function draw_box
    # Virtual function draw_box_gap
    # Virtual function draw_check
    # Virtual function draw_diamond
    # Virtual function draw_expander
    # Virtual function draw_extension
    # Virtual function draw_flat_box
    # Virtual function draw_focus
    # Virtual function draw_handle
    # Virtual function draw_hline
    # Virtual function draw_layout
    # Virtual function draw_option
    # Virtual function draw_resize_grip
    # Virtual function draw_shadow
    # Virtual function draw_shadow_gap
    # Virtual function draw_slider
    # Virtual function draw_spinner
    # Virtual function draw_tab
    # Virtual function draw_vline
    # Virtual function init_from_rc
    # Virtual function realize
    # Virtual function render_icon
    # Virtual function set_background
    # Virtual function unrealize
    # Property context : LibGtk::StyleContext*
  end
  fun style_new = gtk_style_new() : LibGtk::Style*
  fun style_apply_default_background = gtk_style_apply_default_background(this : Style*, cr : LibCairo::Context*, window : LibGdk::Window*, state_type : LibGtk::StateType, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun style_copy = gtk_style_copy(this : Style*) : LibGtk::Style*
  fun style_detach = gtk_style_detach(this : Style*) : Void
  fun style_get_style_property = gtk_style_get_style_property(this : Style*, widget_type : UInt64, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun style_has_context = gtk_style_has_context(this : Style*) : Bool
  fun style_lookup_color = gtk_style_lookup_color(this : Style*, color_name : UInt8*, color : LibGdk::Color*) : Bool
  fun style_lookup_icon_set = gtk_style_lookup_icon_set(this : Style*, stock_id : UInt8*) : LibGtk::IconSet*
  fun style_render_icon = gtk_style_render_icon(this : Style*, source : LibGtk::IconSource*, direction : LibGtk::TextDirection, state : LibGtk::StateType, size : Int32, widget : LibGtk::Widget*, detail : UInt8*) : LibGdkPixbuf::Pixbuf*
  fun style_set_background = gtk_style_set_background(this : Style*, window : LibGdk::Window*, state_type : LibGtk::StateType) : Void

  struct StyleContext # object
    parent_object : LibGObject::Object*
    priv : LibGtk::StyleContextPrivate*
    # Signal changed
    # Virtual function changed
    # Property direction : LibGtk::TextDirection
    # Property paint_clock : LibGdk::FrameClock*
    # Property parent : LibGtk::StyleContext*
    # Property screen : LibGdk::Screen*
  end
  fun style_context_new = gtk_style_context_new() : LibGtk::StyleContext*
  fun style_context_add_provider_for_screen = gtk_style_context_add_provider_for_screen(screen : LibGdk::Screen*, provider : LibGtk::StyleProvider*, priority : UInt32) : Void
  fun style_context_remove_provider_for_screen = gtk_style_context_remove_provider_for_screen(screen : LibGdk::Screen*, provider : LibGtk::StyleProvider*) : Void
  fun style_context_reset_widgets = gtk_style_context_reset_widgets(screen : LibGdk::Screen*) : Void
  fun style_context_add_class = gtk_style_context_add_class(this : StyleContext*, class_name : UInt8*) : Void
  fun style_context_add_provider = gtk_style_context_add_provider(this : StyleContext*, provider : LibGtk::StyleProvider*, priority : UInt32) : Void
  fun style_context_add_region = gtk_style_context_add_region(this : StyleContext*, region_name : UInt8*, flags : LibGtk::RegionFlags) : Void
  fun style_context_cancel_animations = gtk_style_context_cancel_animations(this : StyleContext*, region_id : Void*) : Void
  fun style_context_get_background_color = gtk_style_context_get_background_color(this : StyleContext*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun style_context_get_border = gtk_style_context_get_border(this : StyleContext*, state : LibGtk::StateFlags, border : LibGtk::Border*) : Void
  fun style_context_get_border_color = gtk_style_context_get_border_color(this : StyleContext*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun style_context_get_color = gtk_style_context_get_color(this : StyleContext*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun style_context_get_direction = gtk_style_context_get_direction(this : StyleContext*) : LibGtk::TextDirection
  fun style_context_get_font = gtk_style_context_get_font(this : StyleContext*, state : LibGtk::StateFlags) : LibPango::FontDescription*
  fun style_context_get_frame_clock = gtk_style_context_get_frame_clock(this : StyleContext*) : LibGdk::FrameClock*
  fun style_context_get_junction_sides = gtk_style_context_get_junction_sides(this : StyleContext*) : LibGtk::JunctionSides
  fun style_context_get_margin = gtk_style_context_get_margin(this : StyleContext*, state : LibGtk::StateFlags, margin : LibGtk::Border*) : Void
  fun style_context_get_padding = gtk_style_context_get_padding(this : StyleContext*, state : LibGtk::StateFlags, padding : LibGtk::Border*) : Void
  fun style_context_get_parent = gtk_style_context_get_parent(this : StyleContext*) : LibGtk::StyleContext*
  fun style_context_get_path = gtk_style_context_get_path(this : StyleContext*) : LibGtk::WidgetPath*
  fun style_context_get_property = gtk_style_context_get_property(this : StyleContext*, property : UInt8*, state : LibGtk::StateFlags, value : LibGObject::Value*) : Void
  fun style_context_get_scale = gtk_style_context_get_scale(this : StyleContext*) : Int32
  fun style_context_get_screen = gtk_style_context_get_screen(this : StyleContext*) : LibGdk::Screen*
  fun style_context_get_section = gtk_style_context_get_section(this : StyleContext*, property : UInt8*) : LibGtk::CssSection*
  fun style_context_get_state = gtk_style_context_get_state(this : StyleContext*) : LibGtk::StateFlags
  fun style_context_get_style_property = gtk_style_context_get_style_property(this : StyleContext*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun style_context_has_class = gtk_style_context_has_class(this : StyleContext*, class_name : UInt8*) : Bool
  fun style_context_has_region = gtk_style_context_has_region(this : StyleContext*, region_name : UInt8*, flags_return : LibGtk::RegionFlags*) : Bool
  fun style_context_invalidate = gtk_style_context_invalidate(this : StyleContext*) : Void
  fun style_context_list_classes = gtk_style_context_list_classes(this : StyleContext*) : Void**
  fun style_context_list_regions = gtk_style_context_list_regions(this : StyleContext*) : Void**
  fun style_context_lookup_color = gtk_style_context_lookup_color(this : StyleContext*, color_name : UInt8*, color : LibGdk::RGBA*) : Bool
  fun style_context_lookup_icon_set = gtk_style_context_lookup_icon_set(this : StyleContext*, stock_id : UInt8*) : LibGtk::IconSet*
  fun style_context_notify_state_change = gtk_style_context_notify_state_change(this : StyleContext*, window : LibGdk::Window*, region_id : Void*, state : LibGtk::StateType, state_value : Bool) : Void
  fun style_context_pop_animatable_region = gtk_style_context_pop_animatable_region(this : StyleContext*) : Void
  fun style_context_push_animatable_region = gtk_style_context_push_animatable_region(this : StyleContext*, region_id : Void*) : Void
  fun style_context_remove_class = gtk_style_context_remove_class(this : StyleContext*, class_name : UInt8*) : Void
  fun style_context_remove_provider = gtk_style_context_remove_provider(this : StyleContext*, provider : LibGtk::StyleProvider*) : Void
  fun style_context_remove_region = gtk_style_context_remove_region(this : StyleContext*, region_name : UInt8*) : Void
  fun style_context_restore = gtk_style_context_restore(this : StyleContext*) : Void
  fun style_context_save = gtk_style_context_save(this : StyleContext*) : Void
  fun style_context_scroll_animations = gtk_style_context_scroll_animations(this : StyleContext*, window : LibGdk::Window*, dx : Int32, dy : Int32) : Void
  fun style_context_set_background = gtk_style_context_set_background(this : StyleContext*, window : LibGdk::Window*) : Void
  fun style_context_set_direction = gtk_style_context_set_direction(this : StyleContext*, direction : LibGtk::TextDirection) : Void
  fun style_context_set_frame_clock = gtk_style_context_set_frame_clock(this : StyleContext*, frame_clock : LibGdk::FrameClock*) : Void
  fun style_context_set_junction_sides = gtk_style_context_set_junction_sides(this : StyleContext*, sides : LibGtk::JunctionSides) : Void
  fun style_context_set_parent = gtk_style_context_set_parent(this : StyleContext*, parent : LibGtk::StyleContext*) : Void
  fun style_context_set_path = gtk_style_context_set_path(this : StyleContext*, path : LibGtk::WidgetPath*) : Void
  fun style_context_set_scale = gtk_style_context_set_scale(this : StyleContext*, scale : Int32) : Void
  fun style_context_set_screen = gtk_style_context_set_screen(this : StyleContext*, screen : LibGdk::Screen*) : Void
  fun style_context_set_state = gtk_style_context_set_state(this : StyleContext*, flags : LibGtk::StateFlags) : Void
  fun style_context_state_is_running = gtk_style_context_state_is_running(this : StyleContext*, state : LibGtk::StateType, progress : Float64*) : Bool
  fun style_context_to_string = gtk_style_context_to_string(this : StyleContext*, flags : LibGtk::StyleContextPrintFlags) : UInt8*

  struct StyleProperties # object
    parent_object : LibGObject::Object*
    priv : LibGtk::StylePropertiesPrivate*
  end
  fun style_properties_new = gtk_style_properties_new() : LibGtk::StyleProperties*
  fun style_properties_clear = gtk_style_properties_clear(this : StyleProperties*) : Void
  fun style_properties_get_property = gtk_style_properties_get_property(this : StyleProperties*, property : UInt8*, state : LibGtk::StateFlags, value : LibGObject::Value*) : Bool
  fun style_properties_lookup_color = gtk_style_properties_lookup_color(this : StyleProperties*, name : UInt8*) : LibGtk::SymbolicColor*
  fun style_properties_map_color = gtk_style_properties_map_color(this : StyleProperties*, name : UInt8*, color : LibGtk::SymbolicColor*) : Void
  fun style_properties_merge = gtk_style_properties_merge(this : StyleProperties*, props_to_merge : LibGtk::StyleProperties*, replace : Bool) : Void
  fun style_properties_set_property = gtk_style_properties_set_property(this : StyleProperties*, property : UInt8*, state : LibGtk::StateFlags, value : LibGObject::Value*) : Void
  fun style_properties_unset_property = gtk_style_properties_unset_property(this : StyleProperties*, property : UInt8*, state : LibGtk::StateFlags) : Void

  struct Switch # object
    parent_instance : LibGtk::Widget*
    priv : LibGtk::SwitchPrivate*
    # Signal activate
    # Signal state-set
    # Virtual function activate
    # Virtual function state_set
    # Property active : Bool
    # Property state : Bool
  end
  fun switch_new = gtk_switch_new() : LibGtk::Widget*
  fun switch_get_active = gtk_switch_get_active(this : Switch*) : Bool
  fun switch_get_state = gtk_switch_get_state(this : Switch*) : Bool
  fun switch_set_active = gtk_switch_set_active(this : Switch*, is_active : Bool) : Void
  fun switch_set_state = gtk_switch_set_state(this : Switch*, state : Bool) : Void

  struct SwitchAccessible # object
    parent : LibGtk::WidgetAccessible*
    priv : LibGtk::SwitchAccessiblePrivate*
  end

  struct Table # object
    container : LibGtk::Container*
    priv : LibGtk::TablePrivate*
    # Property column_spacing : UInt32
    # Property homogeneous : Bool
    # Property n_columns : UInt32
    # Property n_rows : UInt32
    # Property row_spacing : UInt32
  end
  fun table_new = gtk_table_new(rows : UInt32, columns : UInt32, homogeneous : Bool) : LibGtk::Widget*
  fun table_attach = gtk_table_attach(this : Table*, child : LibGtk::Widget*, left_attach : UInt32, right_attach : UInt32, top_attach : UInt32, bottom_attach : UInt32, xoptions : LibGtk::AttachOptions, yoptions : LibGtk::AttachOptions, xpadding : UInt32, ypadding : UInt32) : Void
  fun table_attach_defaults = gtk_table_attach_defaults(this : Table*, widget : LibGtk::Widget*, left_attach : UInt32, right_attach : UInt32, top_attach : UInt32, bottom_attach : UInt32) : Void
  fun table_get_col_spacing = gtk_table_get_col_spacing(this : Table*, column : UInt32) : UInt32
  fun table_get_default_col_spacing = gtk_table_get_default_col_spacing(this : Table*) : UInt32
  fun table_get_default_row_spacing = gtk_table_get_default_row_spacing(this : Table*) : UInt32
  fun table_get_homogeneous = gtk_table_get_homogeneous(this : Table*) : Bool
  fun table_get_row_spacing = gtk_table_get_row_spacing(this : Table*, row : UInt32) : UInt32
  fun table_get_size = gtk_table_get_size(this : Table*, rows : UInt32*, columns : UInt32*) : Void
  fun table_resize = gtk_table_resize(this : Table*, rows : UInt32, columns : UInt32) : Void
  fun table_set_col_spacing = gtk_table_set_col_spacing(this : Table*, column : UInt32, spacing : UInt32) : Void
  fun table_set_col_spacings = gtk_table_set_col_spacings(this : Table*, spacing : UInt32) : Void
  fun table_set_homogeneous = gtk_table_set_homogeneous(this : Table*, homogeneous : Bool) : Void
  fun table_set_row_spacing = gtk_table_set_row_spacing(this : Table*, row : UInt32, spacing : UInt32) : Void
  fun table_set_row_spacings = gtk_table_set_row_spacings(this : Table*, spacing : UInt32) : Void

  struct TearoffMenuItem # object
    menu_item : LibGtk::MenuItem*
    priv : LibGtk::TearoffMenuItemPrivate*
  end
  fun tearoff_menu_item_new = gtk_tearoff_menu_item_new() : LibGtk::Widget*

  struct TextBuffer # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::TextBufferPrivate*
    # Signal apply-tag
    # Signal begin-user-action
    # Signal changed
    # Signal delete-range
    # Signal end-user-action
    # Signal insert-child-anchor
    # Signal insert-pixbuf
    # Signal insert-text
    # Signal mark-deleted
    # Signal mark-set
    # Signal modified-changed
    # Signal paste-done
    # Signal remove-tag
    # Virtual function apply_tag
    # Virtual function begin_user_action
    # Virtual function changed
    # Virtual function delete_range
    # Virtual function end_user_action
    # Virtual function insert_child_anchor
    # Virtual function insert_pixbuf
    # Virtual function insert_text
    # Virtual function mark_deleted
    # Virtual function mark_set
    # Virtual function modified_changed
    # Virtual function paste_done
    # Virtual function remove_tag
    # Property copy_target_list : LibGtk::TargetList
    # Property cursor_position : Int32
    # Property has_selection : Bool
    # Property paste_target_list : LibGtk::TargetList
    # Property tag_table : LibGtk::TextTagTable*
    # Property text : UInt8*
  end
  fun text_buffer_new = gtk_text_buffer_new(table : LibGtk::TextTagTable*) : LibGtk::TextBuffer*
  fun text_buffer_add_mark = gtk_text_buffer_add_mark(this : TextBuffer*, mark : LibGtk::TextMark*, where : LibGtk::TextIter*) : Void
  fun text_buffer_add_selection_clipboard = gtk_text_buffer_add_selection_clipboard(this : TextBuffer*, clipboard : LibGtk::Clipboard*) : Void
  fun text_buffer_apply_tag = gtk_text_buffer_apply_tag(this : TextBuffer*, tag : LibGtk::TextTag*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_apply_tag_by_name = gtk_text_buffer_apply_tag_by_name(this : TextBuffer*, name : UInt8*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_backspace = gtk_text_buffer_backspace(this : TextBuffer*, iter : LibGtk::TextIter*, interactive : Bool, default_editable : Bool) : Bool
  fun text_buffer_begin_user_action = gtk_text_buffer_begin_user_action(this : TextBuffer*) : Void
  fun text_buffer_copy_clipboard = gtk_text_buffer_copy_clipboard(this : TextBuffer*, clipboard : LibGtk::Clipboard*) : Void
  fun text_buffer_create_child_anchor = gtk_text_buffer_create_child_anchor(this : TextBuffer*, iter : LibGtk::TextIter*) : LibGtk::TextChildAnchor*
  fun text_buffer_create_mark = gtk_text_buffer_create_mark(this : TextBuffer*, mark_name : UInt8*, where : LibGtk::TextIter*, left_gravity : Bool) : LibGtk::TextMark*
  fun text_buffer_cut_clipboard = gtk_text_buffer_cut_clipboard(this : TextBuffer*, clipboard : LibGtk::Clipboard*, default_editable : Bool) : Void
  fun text_buffer_delete = gtk_text_buffer_delete(this : TextBuffer*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_delete_interactive = gtk_text_buffer_delete_interactive(this : TextBuffer*, start_iter : LibGtk::TextIter*, end_iter : LibGtk::TextIter*, default_editable : Bool) : Bool
  fun text_buffer_delete_mark = gtk_text_buffer_delete_mark(this : TextBuffer*, mark : LibGtk::TextMark*) : Void
  fun text_buffer_delete_mark_by_name = gtk_text_buffer_delete_mark_by_name(this : TextBuffer*, name : UInt8*) : Void
  fun text_buffer_delete_selection = gtk_text_buffer_delete_selection(this : TextBuffer*, interactive : Bool, default_editable : Bool) : Bool
  fun text_buffer_deserialize = gtk_text_buffer_deserialize(this : TextBuffer*, content_buffer : LibGtk::TextBuffer*, format : LibGdk::Atom*, iter : LibGtk::TextIter*, data : UInt8*, length : UInt64, error : LibGLib::Error**) : Bool
  fun text_buffer_deserialize_get_can_create_tags = gtk_text_buffer_deserialize_get_can_create_tags(this : TextBuffer*, format : LibGdk::Atom*) : Bool
  fun text_buffer_deserialize_set_can_create_tags = gtk_text_buffer_deserialize_set_can_create_tags(this : TextBuffer*, format : LibGdk::Atom*, can_create_tags : Bool) : Void
  fun text_buffer_end_user_action = gtk_text_buffer_end_user_action(this : TextBuffer*) : Void
  fun text_buffer_get_bounds = gtk_text_buffer_get_bounds(this : TextBuffer*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_get_char_count = gtk_text_buffer_get_char_count(this : TextBuffer*) : Int32
  fun text_buffer_get_copy_target_list = gtk_text_buffer_get_copy_target_list(this : TextBuffer*) : LibGtk::TargetList*
  fun text_buffer_get_deserialize_formats = gtk_text_buffer_get_deserialize_formats(this : TextBuffer*, n_formats : Int32*) : LibGdk::Atom**
  fun text_buffer_get_end_iter = gtk_text_buffer_get_end_iter(this : TextBuffer*, iter : LibGtk::TextIter*) : Void
  fun text_buffer_get_has_selection = gtk_text_buffer_get_has_selection(this : TextBuffer*) : Bool
  fun text_buffer_get_insert = gtk_text_buffer_get_insert(this : TextBuffer*) : LibGtk::TextMark*
  fun text_buffer_get_iter_at_child_anchor = gtk_text_buffer_get_iter_at_child_anchor(this : TextBuffer*, iter : LibGtk::TextIter*, anchor : LibGtk::TextChildAnchor*) : Void
  fun text_buffer_get_iter_at_line = gtk_text_buffer_get_iter_at_line(this : TextBuffer*, iter : LibGtk::TextIter*, line_number : Int32) : Void
  fun text_buffer_get_iter_at_line_index = gtk_text_buffer_get_iter_at_line_index(this : TextBuffer*, iter : LibGtk::TextIter*, line_number : Int32, byte_index : Int32) : Void
  fun text_buffer_get_iter_at_line_offset = gtk_text_buffer_get_iter_at_line_offset(this : TextBuffer*, iter : LibGtk::TextIter*, line_number : Int32, char_offset : Int32) : Void
  fun text_buffer_get_iter_at_mark = gtk_text_buffer_get_iter_at_mark(this : TextBuffer*, iter : LibGtk::TextIter*, mark : LibGtk::TextMark*) : Void
  fun text_buffer_get_iter_at_offset = gtk_text_buffer_get_iter_at_offset(this : TextBuffer*, iter : LibGtk::TextIter*, char_offset : Int32) : Void
  fun text_buffer_get_line_count = gtk_text_buffer_get_line_count(this : TextBuffer*) : Int32
  fun text_buffer_get_mark = gtk_text_buffer_get_mark(this : TextBuffer*, name : UInt8*) : LibGtk::TextMark*
  fun text_buffer_get_modified = gtk_text_buffer_get_modified(this : TextBuffer*) : Bool
  fun text_buffer_get_paste_target_list = gtk_text_buffer_get_paste_target_list(this : TextBuffer*) : LibGtk::TargetList*
  fun text_buffer_get_selection_bound = gtk_text_buffer_get_selection_bound(this : TextBuffer*) : LibGtk::TextMark*
  fun text_buffer_get_selection_bounds = gtk_text_buffer_get_selection_bounds(this : TextBuffer*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Bool
  fun text_buffer_get_serialize_formats = gtk_text_buffer_get_serialize_formats(this : TextBuffer*, n_formats : Int32*) : LibGdk::Atom**
  fun text_buffer_get_slice = gtk_text_buffer_get_slice(this : TextBuffer*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*, include_hidden_chars : Bool) : UInt8*
  fun text_buffer_get_start_iter = gtk_text_buffer_get_start_iter(this : TextBuffer*, iter : LibGtk::TextIter*) : Void
  fun text_buffer_get_tag_table = gtk_text_buffer_get_tag_table(this : TextBuffer*) : LibGtk::TextTagTable*
  fun text_buffer_get_text = gtk_text_buffer_get_text(this : TextBuffer*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*, include_hidden_chars : Bool) : UInt8*
  fun text_buffer_insert = gtk_text_buffer_insert(this : TextBuffer*, iter : LibGtk::TextIter*, text : UInt8*, len : Int32) : Void
  fun text_buffer_insert_at_cursor = gtk_text_buffer_insert_at_cursor(this : TextBuffer*, text : UInt8*, len : Int32) : Void
  fun text_buffer_insert_child_anchor = gtk_text_buffer_insert_child_anchor(this : TextBuffer*, iter : LibGtk::TextIter*, anchor : LibGtk::TextChildAnchor*) : Void
  fun text_buffer_insert_interactive = gtk_text_buffer_insert_interactive(this : TextBuffer*, iter : LibGtk::TextIter*, text : UInt8*, len : Int32, default_editable : Bool) : Bool
  fun text_buffer_insert_interactive_at_cursor = gtk_text_buffer_insert_interactive_at_cursor(this : TextBuffer*, text : UInt8*, len : Int32, default_editable : Bool) : Bool
  fun text_buffer_insert_markup = gtk_text_buffer_insert_markup(this : TextBuffer*, iter : LibGtk::TextIter*, markup : UInt8*, len : Int32) : Void
  fun text_buffer_insert_pixbuf = gtk_text_buffer_insert_pixbuf(this : TextBuffer*, iter : LibGtk::TextIter*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun text_buffer_insert_range = gtk_text_buffer_insert_range(this : TextBuffer*, iter : LibGtk::TextIter*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_insert_range_interactive = gtk_text_buffer_insert_range_interactive(this : TextBuffer*, iter : LibGtk::TextIter*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*, default_editable : Bool) : Bool
  fun text_buffer_move_mark = gtk_text_buffer_move_mark(this : TextBuffer*, mark : LibGtk::TextMark*, where : LibGtk::TextIter*) : Void
  fun text_buffer_move_mark_by_name = gtk_text_buffer_move_mark_by_name(this : TextBuffer*, name : UInt8*, where : LibGtk::TextIter*) : Void
  fun text_buffer_paste_clipboard = gtk_text_buffer_paste_clipboard(this : TextBuffer*, clipboard : LibGtk::Clipboard*, override_location : LibGtk::TextIter*, default_editable : Bool) : Void
  fun text_buffer_place_cursor = gtk_text_buffer_place_cursor(this : TextBuffer*, where : LibGtk::TextIter*) : Void
  fun text_buffer_register_deserialize_format = gtk_text_buffer_register_deserialize_format(this : TextBuffer*, mime_type : UInt8*, function : LibGtk::TextBufferDeserializeFunc, user_data : Void*, user_data_destroy : LibGLib::DestroyNotify) : LibGdk::Atom*
  fun text_buffer_register_deserialize_tagset = gtk_text_buffer_register_deserialize_tagset(this : TextBuffer*, tagset_name : UInt8*) : LibGdk::Atom*
  fun text_buffer_register_serialize_format = gtk_text_buffer_register_serialize_format(this : TextBuffer*, mime_type : UInt8*, function : LibGtk::TextBufferSerializeFunc, user_data : Void*, user_data_destroy : LibGLib::DestroyNotify) : LibGdk::Atom*
  fun text_buffer_register_serialize_tagset = gtk_text_buffer_register_serialize_tagset(this : TextBuffer*, tagset_name : UInt8*) : LibGdk::Atom*
  fun text_buffer_remove_all_tags = gtk_text_buffer_remove_all_tags(this : TextBuffer*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_remove_selection_clipboard = gtk_text_buffer_remove_selection_clipboard(this : TextBuffer*, clipboard : LibGtk::Clipboard*) : Void
  fun text_buffer_remove_tag = gtk_text_buffer_remove_tag(this : TextBuffer*, tag : LibGtk::TextTag*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_remove_tag_by_name = gtk_text_buffer_remove_tag_by_name(this : TextBuffer*, name : UInt8*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Void
  fun text_buffer_select_range = gtk_text_buffer_select_range(this : TextBuffer*, ins : LibGtk::TextIter*, bound : LibGtk::TextIter*) : Void
  fun text_buffer_serialize = gtk_text_buffer_serialize(this : TextBuffer*, content_buffer : LibGtk::TextBuffer*, format : LibGdk::Atom*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*, length : UInt64*) : UInt8*
  fun text_buffer_set_modified = gtk_text_buffer_set_modified(this : TextBuffer*, setting : Bool) : Void
  fun text_buffer_set_text = gtk_text_buffer_set_text(this : TextBuffer*, text : UInt8*, len : Int32) : Void
  fun text_buffer_unregister_deserialize_format = gtk_text_buffer_unregister_deserialize_format(this : TextBuffer*, format : LibGdk::Atom*) : Void
  fun text_buffer_unregister_serialize_format = gtk_text_buffer_unregister_serialize_format(this : TextBuffer*, format : LibGdk::Atom*) : Void

  struct TextCellAccessible # object
    parent : LibGtk::RendererCellAccessible*
    priv : LibGtk::TextCellAccessiblePrivate*
  end

  struct TextChildAnchor # object
    parent_instance : LibGObject::Object*
    segment : Void*
  end
  fun text_child_anchor_new = gtk_text_child_anchor_new() : LibGtk::TextChildAnchor*
  fun text_child_anchor_get_deleted = gtk_text_child_anchor_get_deleted(this : TextChildAnchor*) : Bool
  fun text_child_anchor_get_widgets = gtk_text_child_anchor_get_widgets(this : TextChildAnchor*) : Void**

  struct TextMark # object
    parent_instance : LibGObject::Object*
    segment : Void*
    # Property left_gravity : Bool
    # Property name : UInt8*
  end
  fun text_mark_new = gtk_text_mark_new(name : UInt8*, left_gravity : Bool) : LibGtk::TextMark*
  fun text_mark_get_buffer = gtk_text_mark_get_buffer(this : TextMark*) : LibGtk::TextBuffer*
  fun text_mark_get_deleted = gtk_text_mark_get_deleted(this : TextMark*) : Bool
  fun text_mark_get_left_gravity = gtk_text_mark_get_left_gravity(this : TextMark*) : Bool
  fun text_mark_get_name = gtk_text_mark_get_name(this : TextMark*) : UInt8*
  fun text_mark_get_visible = gtk_text_mark_get_visible(this : TextMark*) : Bool
  fun text_mark_set_visible = gtk_text_mark_set_visible(this : TextMark*, setting : Bool) : Void

  struct TextTag # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::TextTagPrivate*
    # Signal event
    # Virtual function event
    # Property accumulative_margin : Bool
    # Property background : UInt8*
    # Property background_full_height : Bool
    # Property background_full_height_set : Bool
    # Property background_gdk : LibGdk::Color
    # Property background_rgba : LibGdk::RGBA
    # Property background_set : Bool
    # Property direction : LibGtk::TextDirection
    # Property editable : Bool
    # Property editable_set : Bool
    # Property fallback : Bool
    # Property fallback_set : Bool
    # Property family : UInt8*
    # Property family_set : Bool
    # Property font : UInt8*
    # Property font_desc : LibPango::FontDescription
    # Property font_features : UInt8*
    # Property font_features_set : Bool
    # Property foreground : UInt8*
    # Property foreground_gdk : LibGdk::Color
    # Property foreground_rgba : LibGdk::RGBA
    # Property foreground_set : Bool
    # Property indent : Int32
    # Property indent_set : Bool
    # Property invisible : Bool
    # Property invisible_set : Bool
    # Property justification : LibGtk::Justification
    # Property justification_set : Bool
    # Property language : UInt8*
    # Property language_set : Bool
    # Property left_margin : Int32
    # Property left_margin_set : Bool
    # Property letter_spacing : Int32
    # Property letter_spacing_set : Bool
    # Property name : UInt8*
    # Property paragraph_background : UInt8*
    # Property paragraph_background_gdk : LibGdk::Color
    # Property paragraph_background_rgba : LibGdk::RGBA
    # Property paragraph_background_set : Bool
    # Property pixels_above_lines : Int32
    # Property pixels_above_lines_set : Bool
    # Property pixels_below_lines : Int32
    # Property pixels_below_lines_set : Bool
    # Property pixels_inside_wrap : Int32
    # Property pixels_inside_wrap_set : Bool
    # Property right_margin : Int32
    # Property right_margin_set : Bool
    # Property rise : Int32
    # Property rise_set : Bool
    # Property scale : Float64
    # Property scale_set : Bool
    # Property size : Int32
    # Property size_points : Float64
    # Property size_set : Bool
    # Property stretch : LibPango::Stretch
    # Property stretch_set : Bool
    # Property strikethrough : Bool
    # Property strikethrough_rgba : LibGdk::RGBA
    # Property strikethrough_rgba_set : Bool
    # Property strikethrough_set : Bool
    # Property style : LibPango::Style
    # Property style_set : Bool
    # Property tabs : LibPango::TabArray
    # Property tabs_set : Bool
    # Property underline : LibPango::Underline
    # Property underline_rgba : LibGdk::RGBA
    # Property underline_rgba_set : Bool
    # Property underline_set : Bool
    # Property variant : LibPango::Variant
    # Property variant_set : Bool
    # Property weight : Int32
    # Property weight_set : Bool
    # Property wrap_mode : LibGtk::WrapMode
    # Property wrap_mode_set : Bool
  end
  fun text_tag_new = gtk_text_tag_new(name : UInt8*) : LibGtk::TextTag*
  fun text_tag_changed = gtk_text_tag_changed(this : TextTag*, size_changed : Bool) : Void
  fun text_tag_event = gtk_text_tag_event(this : TextTag*, event_object : LibGObject::Object*, event : LibGdk::Event*, iter : LibGtk::TextIter*) : Bool
  fun text_tag_get_priority = gtk_text_tag_get_priority(this : TextTag*) : Int32
  fun text_tag_set_priority = gtk_text_tag_set_priority(this : TextTag*, priority : Int32) : Void

  struct TextTagTable # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::TextTagTablePrivate*
    # Signal tag-added
    # Signal tag-changed
    # Signal tag-removed
    # Virtual function tag_added
    # Virtual function tag_changed
    # Virtual function tag_removed
  end
  fun text_tag_table_new = gtk_text_tag_table_new() : LibGtk::TextTagTable*
  fun text_tag_table_add = gtk_text_tag_table_add(this : TextTagTable*, tag : LibGtk::TextTag*) : Bool
  fun text_tag_table_foreach = gtk_text_tag_table_foreach(this : TextTagTable*, func : LibGtk::TextTagTableForeach, data : Void*) : Void
  fun text_tag_table_get_size = gtk_text_tag_table_get_size(this : TextTagTable*) : Int32
  fun text_tag_table_lookup = gtk_text_tag_table_lookup(this : TextTagTable*, name : UInt8*) : LibGtk::TextTag*
  fun text_tag_table_remove = gtk_text_tag_table_remove(this : TextTagTable*, tag : LibGtk::TextTag*) : Void

  struct TextView # object
    parent_instance : LibGtk::Container*
    priv : LibGtk::TextViewPrivate*
    # Signal backspace
    # Signal copy-clipboard
    # Signal cut-clipboard
    # Signal delete-from-cursor
    # Signal extend-selection
    # Signal insert-at-cursor
    # Signal insert-emoji
    # Signal move-cursor
    # Signal move-viewport
    # Signal paste-clipboard
    # Signal populate-popup
    # Signal preedit-changed
    # Signal select-all
    # Signal set-anchor
    # Signal toggle-cursor-visible
    # Signal toggle-overwrite
    # Virtual function backspace
    # Virtual function copy_clipboard
    # Virtual function cut_clipboard
    # Virtual function delete_from_cursor
    # Virtual function draw_layer
    # Virtual function extend_selection
    # Virtual function insert_at_cursor
    # Virtual function insert_emoji
    # Virtual function move_cursor
    # Virtual function paste_clipboard
    # Virtual function populate_popup
    # Virtual function set_anchor
    # Virtual function toggle_overwrite
    # Property accepts_tab : Bool
    # Property bottom_margin : Int32
    # Property buffer : LibGtk::TextBuffer*
    # Property cursor_visible : Bool
    # Property editable : Bool
    # Property im_module : UInt8*
    # Property indent : Int32
    # Property input_hints : LibGtk::InputHints
    # Property input_purpose : LibGtk::InputPurpose
    # Property justification : LibGtk::Justification
    # Property left_margin : Int32
    # Property monospace : Bool
    # Property overwrite : Bool
    # Property pixels_above_lines : Int32
    # Property pixels_below_lines : Int32
    # Property pixels_inside_wrap : Int32
    # Property populate_all : Bool
    # Property right_margin : Int32
    # Property tabs : LibPango::TabArray
    # Property top_margin : Int32
    # Property wrap_mode : LibGtk::WrapMode
  end
  fun text_view_new = gtk_text_view_new() : LibGtk::Widget*
  fun text_view_new_with_buffer = gtk_text_view_new_with_buffer(buffer : LibGtk::TextBuffer*) : LibGtk::Widget*
  fun text_view_add_child_at_anchor = gtk_text_view_add_child_at_anchor(this : TextView*, child : LibGtk::Widget*, anchor : LibGtk::TextChildAnchor*) : Void
  fun text_view_add_child_in_window = gtk_text_view_add_child_in_window(this : TextView*, child : LibGtk::Widget*, which_window : LibGtk::TextWindowType, xpos : Int32, ypos : Int32) : Void
  fun text_view_backward_display_line = gtk_text_view_backward_display_line(this : TextView*, iter : LibGtk::TextIter*) : Bool
  fun text_view_backward_display_line_start = gtk_text_view_backward_display_line_start(this : TextView*, iter : LibGtk::TextIter*) : Bool
  fun text_view_buffer_to_window_coords = gtk_text_view_buffer_to_window_coords(this : TextView*, win : LibGtk::TextWindowType, buffer_x : Int32, buffer_y : Int32, window_x : Int32*, window_y : Int32*) : Void
  fun text_view_forward_display_line = gtk_text_view_forward_display_line(this : TextView*, iter : LibGtk::TextIter*) : Bool
  fun text_view_forward_display_line_end = gtk_text_view_forward_display_line_end(this : TextView*, iter : LibGtk::TextIter*) : Bool
  fun text_view_get_accepts_tab = gtk_text_view_get_accepts_tab(this : TextView*) : Bool
  fun text_view_get_border_window_size = gtk_text_view_get_border_window_size(this : TextView*, type : LibGtk::TextWindowType) : Int32
  fun text_view_get_bottom_margin = gtk_text_view_get_bottom_margin(this : TextView*) : Int32
  fun text_view_get_buffer = gtk_text_view_get_buffer(this : TextView*) : LibGtk::TextBuffer*
  fun text_view_get_cursor_locations = gtk_text_view_get_cursor_locations(this : TextView*, iter : LibGtk::TextIter*, strong : LibGdk::Rectangle*, weak : LibGdk::Rectangle*) : Void
  fun text_view_get_cursor_visible = gtk_text_view_get_cursor_visible(this : TextView*) : Bool
  fun text_view_get_default_attributes = gtk_text_view_get_default_attributes(this : TextView*) : LibGtk::TextAttributes*
  fun text_view_get_editable = gtk_text_view_get_editable(this : TextView*) : Bool
  fun text_view_get_hadjustment = gtk_text_view_get_hadjustment(this : TextView*) : LibGtk::Adjustment*
  fun text_view_get_indent = gtk_text_view_get_indent(this : TextView*) : Int32
  fun text_view_get_input_hints = gtk_text_view_get_input_hints(this : TextView*) : LibGtk::InputHints
  fun text_view_get_input_purpose = gtk_text_view_get_input_purpose(this : TextView*) : LibGtk::InputPurpose
  fun text_view_get_iter_at_location = gtk_text_view_get_iter_at_location(this : TextView*, iter : LibGtk::TextIter*, x : Int32, y : Int32) : Bool
  fun text_view_get_iter_at_position = gtk_text_view_get_iter_at_position(this : TextView*, iter : LibGtk::TextIter*, trailing : Int32*, x : Int32, y : Int32) : Bool
  fun text_view_get_iter_location = gtk_text_view_get_iter_location(this : TextView*, iter : LibGtk::TextIter*, location : LibGdk::Rectangle*) : Void
  fun text_view_get_justification = gtk_text_view_get_justification(this : TextView*) : LibGtk::Justification
  fun text_view_get_left_margin = gtk_text_view_get_left_margin(this : TextView*) : Int32
  fun text_view_get_line_at_y = gtk_text_view_get_line_at_y(this : TextView*, target_iter : LibGtk::TextIter*, y : Int32, line_top : Int32*) : Void
  fun text_view_get_line_yrange = gtk_text_view_get_line_yrange(this : TextView*, iter : LibGtk::TextIter*, y : Int32*, height : Int32*) : Void
  fun text_view_get_monospace = gtk_text_view_get_monospace(this : TextView*) : Bool
  fun text_view_get_overwrite = gtk_text_view_get_overwrite(this : TextView*) : Bool
  fun text_view_get_pixels_above_lines = gtk_text_view_get_pixels_above_lines(this : TextView*) : Int32
  fun text_view_get_pixels_below_lines = gtk_text_view_get_pixels_below_lines(this : TextView*) : Int32
  fun text_view_get_pixels_inside_wrap = gtk_text_view_get_pixels_inside_wrap(this : TextView*) : Int32
  fun text_view_get_right_margin = gtk_text_view_get_right_margin(this : TextView*) : Int32
  fun text_view_get_tabs = gtk_text_view_get_tabs(this : TextView*) : LibPango::TabArray*
  fun text_view_get_top_margin = gtk_text_view_get_top_margin(this : TextView*) : Int32
  fun text_view_get_vadjustment = gtk_text_view_get_vadjustment(this : TextView*) : LibGtk::Adjustment*
  fun text_view_get_visible_rect = gtk_text_view_get_visible_rect(this : TextView*, visible_rect : LibGdk::Rectangle*) : Void
  fun text_view_get_window = gtk_text_view_get_window(this : TextView*, win : LibGtk::TextWindowType) : LibGdk::Window*
  fun text_view_get_window_type = gtk_text_view_get_window_type(this : TextView*, window : LibGdk::Window*) : LibGtk::TextWindowType
  fun text_view_get_wrap_mode = gtk_text_view_get_wrap_mode(this : TextView*) : LibGtk::WrapMode
  fun text_view_im_context_filter_keypress = gtk_text_view_im_context_filter_keypress(this : TextView*, event : LibGdk::EventKey*) : Bool
  fun text_view_move_child = gtk_text_view_move_child(this : TextView*, child : LibGtk::Widget*, xpos : Int32, ypos : Int32) : Void
  fun text_view_move_mark_onscreen = gtk_text_view_move_mark_onscreen(this : TextView*, mark : LibGtk::TextMark*) : Bool
  fun text_view_move_visually = gtk_text_view_move_visually(this : TextView*, iter : LibGtk::TextIter*, count : Int32) : Bool
  fun text_view_place_cursor_onscreen = gtk_text_view_place_cursor_onscreen(this : TextView*) : Bool
  fun text_view_reset_cursor_blink = gtk_text_view_reset_cursor_blink(this : TextView*) : Void
  fun text_view_reset_im_context = gtk_text_view_reset_im_context(this : TextView*) : Void
  fun text_view_scroll_mark_onscreen = gtk_text_view_scroll_mark_onscreen(this : TextView*, mark : LibGtk::TextMark*) : Void
  fun text_view_scroll_to_iter = gtk_text_view_scroll_to_iter(this : TextView*, iter : LibGtk::TextIter*, within_margin : Float64, use_align : Bool, xalign : Float64, yalign : Float64) : Bool
  fun text_view_scroll_to_mark = gtk_text_view_scroll_to_mark(this : TextView*, mark : LibGtk::TextMark*, within_margin : Float64, use_align : Bool, xalign : Float64, yalign : Float64) : Void
  fun text_view_set_accepts_tab = gtk_text_view_set_accepts_tab(this : TextView*, accepts_tab : Bool) : Void
  fun text_view_set_border_window_size = gtk_text_view_set_border_window_size(this : TextView*, type : LibGtk::TextWindowType, size : Int32) : Void
  fun text_view_set_bottom_margin = gtk_text_view_set_bottom_margin(this : TextView*, bottom_margin : Int32) : Void
  fun text_view_set_buffer = gtk_text_view_set_buffer(this : TextView*, buffer : LibGtk::TextBuffer*) : Void
  fun text_view_set_cursor_visible = gtk_text_view_set_cursor_visible(this : TextView*, setting : Bool) : Void
  fun text_view_set_editable = gtk_text_view_set_editable(this : TextView*, setting : Bool) : Void
  fun text_view_set_indent = gtk_text_view_set_indent(this : TextView*, indent : Int32) : Void
  fun text_view_set_input_hints = gtk_text_view_set_input_hints(this : TextView*, hints : LibGtk::InputHints) : Void
  fun text_view_set_input_purpose = gtk_text_view_set_input_purpose(this : TextView*, purpose : LibGtk::InputPurpose) : Void
  fun text_view_set_justification = gtk_text_view_set_justification(this : TextView*, justification : LibGtk::Justification) : Void
  fun text_view_set_left_margin = gtk_text_view_set_left_margin(this : TextView*, left_margin : Int32) : Void
  fun text_view_set_monospace = gtk_text_view_set_monospace(this : TextView*, monospace : Bool) : Void
  fun text_view_set_overwrite = gtk_text_view_set_overwrite(this : TextView*, overwrite : Bool) : Void
  fun text_view_set_pixels_above_lines = gtk_text_view_set_pixels_above_lines(this : TextView*, pixels_above_lines : Int32) : Void
  fun text_view_set_pixels_below_lines = gtk_text_view_set_pixels_below_lines(this : TextView*, pixels_below_lines : Int32) : Void
  fun text_view_set_pixels_inside_wrap = gtk_text_view_set_pixels_inside_wrap(this : TextView*, pixels_inside_wrap : Int32) : Void
  fun text_view_set_right_margin = gtk_text_view_set_right_margin(this : TextView*, right_margin : Int32) : Void
  fun text_view_set_tabs = gtk_text_view_set_tabs(this : TextView*, tabs : LibPango::TabArray*) : Void
  fun text_view_set_top_margin = gtk_text_view_set_top_margin(this : TextView*, top_margin : Int32) : Void
  fun text_view_set_wrap_mode = gtk_text_view_set_wrap_mode(this : TextView*, wrap_mode : LibGtk::WrapMode) : Void
  fun text_view_starts_display_line = gtk_text_view_starts_display_line(this : TextView*, iter : LibGtk::TextIter*) : Bool
  fun text_view_window_to_buffer_coords = gtk_text_view_window_to_buffer_coords(this : TextView*, win : LibGtk::TextWindowType, window_x : Int32, window_y : Int32, buffer_x : Int32*, buffer_y : Int32*) : Void

  struct TextViewAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::TextViewAccessiblePrivate*
  end

  struct ThemingEngine # object
    parent_object : LibGObject::Object*
    priv : LibGtk::ThemingEnginePrivate*
    # Virtual function render_activity
    # Virtual function render_arrow
    # Virtual function render_background
    # Virtual function render_check
    # Virtual function render_expander
    # Virtual function render_extension
    # Virtual function render_focus
    # Virtual function render_frame
    # Virtual function render_frame_gap
    # Virtual function render_handle
    # Virtual function render_icon
    # Virtual function render_icon_surface
    # Virtual function render_layout
    # Virtual function render_line
    # Virtual function render_option
    # Virtual function render_slider
    # Property name : UInt8*
  end
  fun theming_engine_load = gtk_theming_engine_load(name : UInt8*) : LibGtk::ThemingEngine*
  fun theming_engine_get_background_color = gtk_theming_engine_get_background_color(this : ThemingEngine*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun theming_engine_get_border = gtk_theming_engine_get_border(this : ThemingEngine*, state : LibGtk::StateFlags, border : LibGtk::Border*) : Void
  fun theming_engine_get_border_color = gtk_theming_engine_get_border_color(this : ThemingEngine*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun theming_engine_get_color = gtk_theming_engine_get_color(this : ThemingEngine*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun theming_engine_get_direction = gtk_theming_engine_get_direction(this : ThemingEngine*) : LibGtk::TextDirection
  fun theming_engine_get_font = gtk_theming_engine_get_font(this : ThemingEngine*, state : LibGtk::StateFlags) : LibPango::FontDescription*
  fun theming_engine_get_junction_sides = gtk_theming_engine_get_junction_sides(this : ThemingEngine*) : LibGtk::JunctionSides
  fun theming_engine_get_margin = gtk_theming_engine_get_margin(this : ThemingEngine*, state : LibGtk::StateFlags, margin : LibGtk::Border*) : Void
  fun theming_engine_get_padding = gtk_theming_engine_get_padding(this : ThemingEngine*, state : LibGtk::StateFlags, padding : LibGtk::Border*) : Void
  fun theming_engine_get_path = gtk_theming_engine_get_path(this : ThemingEngine*) : LibGtk::WidgetPath*
  fun theming_engine_get_property = gtk_theming_engine_get_property(this : ThemingEngine*, property : UInt8*, state : LibGtk::StateFlags, value : LibGObject::Value*) : Void
  fun theming_engine_get_screen = gtk_theming_engine_get_screen(this : ThemingEngine*) : LibGdk::Screen*
  fun theming_engine_get_state = gtk_theming_engine_get_state(this : ThemingEngine*) : LibGtk::StateFlags
  fun theming_engine_get_style_property = gtk_theming_engine_get_style_property(this : ThemingEngine*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun theming_engine_has_class = gtk_theming_engine_has_class(this : ThemingEngine*, style_class : UInt8*) : Bool
  fun theming_engine_has_region = gtk_theming_engine_has_region(this : ThemingEngine*, style_region : UInt8*, flags : LibGtk::RegionFlags*) : Bool
  fun theming_engine_lookup_color = gtk_theming_engine_lookup_color(this : ThemingEngine*, color_name : UInt8*, color : LibGdk::RGBA*) : Bool
  fun theming_engine_state_is_running = gtk_theming_engine_state_is_running(this : ThemingEngine*, state : LibGtk::StateType, progress : Float64*) : Bool

  struct ToggleAction # object
    parent : LibGtk::Action*
    private_data : LibGtk::ToggleActionPrivate*
    # Signal toggled
    # Virtual function toggled
    # Property active : Bool
    # Property draw_as_radio : Bool
  end
  fun toggle_action_new = gtk_toggle_action_new(name : UInt8*, label : UInt8*, tooltip : UInt8*, stock_id : UInt8*) : LibGtk::ToggleAction*
  fun toggle_action_get_active = gtk_toggle_action_get_active(this : ToggleAction*) : Bool
  fun toggle_action_get_draw_as_radio = gtk_toggle_action_get_draw_as_radio(this : ToggleAction*) : Bool
  fun toggle_action_set_active = gtk_toggle_action_set_active(this : ToggleAction*, is_active : Bool) : Void
  fun toggle_action_set_draw_as_radio = gtk_toggle_action_set_draw_as_radio(this : ToggleAction*, draw_as_radio : Bool) : Void
  fun toggle_action_toggled = gtk_toggle_action_toggled(this : ToggleAction*) : Void

  struct ToggleButton # object
    button : LibGtk::Button*
    priv : LibGtk::ToggleButtonPrivate*
    # Signal toggled
    # Virtual function toggled
    # Property active : Bool
    # Property draw_indicator : Bool
    # Property inconsistent : Bool
  end
  fun toggle_button_new = gtk_toggle_button_new() : LibGtk::Widget*
  fun toggle_button_new_with_label = gtk_toggle_button_new_with_label(label : UInt8*) : LibGtk::Widget*
  fun toggle_button_new_with_mnemonic = gtk_toggle_button_new_with_mnemonic(label : UInt8*) : LibGtk::Widget*
  fun toggle_button_get_active = gtk_toggle_button_get_active(this : ToggleButton*) : Bool
  fun toggle_button_get_inconsistent = gtk_toggle_button_get_inconsistent(this : ToggleButton*) : Bool
  fun toggle_button_get_mode = gtk_toggle_button_get_mode(this : ToggleButton*) : Bool
  fun toggle_button_set_active = gtk_toggle_button_set_active(this : ToggleButton*, is_active : Bool) : Void
  fun toggle_button_set_inconsistent = gtk_toggle_button_set_inconsistent(this : ToggleButton*, setting : Bool) : Void
  fun toggle_button_set_mode = gtk_toggle_button_set_mode(this : ToggleButton*, draw_indicator : Bool) : Void
  fun toggle_button_toggled = gtk_toggle_button_toggled(this : ToggleButton*) : Void

  struct ToggleButtonAccessible # object
    parent : LibGtk::ButtonAccessible*
    priv : LibGtk::ToggleButtonAccessiblePrivate*
  end

  struct ToggleToolButton # object
    parent : LibGtk::ToolButton*
    priv : LibGtk::ToggleToolButtonPrivate*
    # Signal toggled
    # Virtual function toggled
    # Property active : Bool
  end
  fun toggle_tool_button_new = gtk_toggle_tool_button_new() : LibGtk::ToolItem*
  fun toggle_tool_button_new_from_stock = gtk_toggle_tool_button_new_from_stock(stock_id : UInt8*) : LibGtk::ToolItem*
  fun toggle_tool_button_get_active = gtk_toggle_tool_button_get_active(this : ToggleToolButton*) : Bool
  fun toggle_tool_button_set_active = gtk_toggle_tool_button_set_active(this : ToggleToolButton*, is_active : Bool) : Void

  struct ToolButton # object
    parent : LibGtk::ToolItem*
    priv : LibGtk::ToolButtonPrivate*
    # Signal clicked
    # Virtual function clicked
    # Property icon_name : UInt8*
    # Property icon_widget : LibGtk::Widget*
    # Property label : UInt8*
    # Property label_widget : LibGtk::Widget*
    # Property stock_id : UInt8*
    # Property use_underline : Bool
  end
  fun tool_button_new = gtk_tool_button_new(icon_widget : LibGtk::Widget*, label : UInt8*) : LibGtk::ToolItem*
  fun tool_button_new_from_stock = gtk_tool_button_new_from_stock(stock_id : UInt8*) : LibGtk::ToolItem*
  fun tool_button_get_icon_name = gtk_tool_button_get_icon_name(this : ToolButton*) : UInt8*
  fun tool_button_get_icon_widget = gtk_tool_button_get_icon_widget(this : ToolButton*) : LibGtk::Widget*
  fun tool_button_get_label = gtk_tool_button_get_label(this : ToolButton*) : UInt8*
  fun tool_button_get_label_widget = gtk_tool_button_get_label_widget(this : ToolButton*) : LibGtk::Widget*
  fun tool_button_get_stock_id = gtk_tool_button_get_stock_id(this : ToolButton*) : UInt8*
  fun tool_button_get_use_underline = gtk_tool_button_get_use_underline(this : ToolButton*) : Bool
  fun tool_button_set_icon_name = gtk_tool_button_set_icon_name(this : ToolButton*, icon_name : UInt8*) : Void
  fun tool_button_set_icon_widget = gtk_tool_button_set_icon_widget(this : ToolButton*, icon_widget : LibGtk::Widget*) : Void
  fun tool_button_set_label = gtk_tool_button_set_label(this : ToolButton*, label : UInt8*) : Void
  fun tool_button_set_label_widget = gtk_tool_button_set_label_widget(this : ToolButton*, label_widget : LibGtk::Widget*) : Void
  fun tool_button_set_stock_id = gtk_tool_button_set_stock_id(this : ToolButton*, stock_id : UInt8*) : Void
  fun tool_button_set_use_underline = gtk_tool_button_set_use_underline(this : ToolButton*, use_underline : Bool) : Void

  struct ToolItem # object
    parent : LibGtk::Bin*
    priv : LibGtk::ToolItemPrivate*
    # Signal create-menu-proxy
    # Signal toolbar-reconfigured
    # Virtual function create_menu_proxy
    # Virtual function toolbar_reconfigured
    # Property is_important : Bool
    # Property visible_horizontal : Bool
    # Property visible_vertical : Bool
  end
  fun tool_item_new = gtk_tool_item_new() : LibGtk::ToolItem*
  fun tool_item_get_ellipsize_mode = gtk_tool_item_get_ellipsize_mode(this : ToolItem*) : LibPango::EllipsizeMode
  fun tool_item_get_expand = gtk_tool_item_get_expand(this : ToolItem*) : Bool
  fun tool_item_get_homogeneous = gtk_tool_item_get_homogeneous(this : ToolItem*) : Bool
  fun tool_item_get_icon_size = gtk_tool_item_get_icon_size(this : ToolItem*) : Int32
  fun tool_item_get_is_important = gtk_tool_item_get_is_important(this : ToolItem*) : Bool
  fun tool_item_get_orientation = gtk_tool_item_get_orientation(this : ToolItem*) : LibGtk::Orientation
  fun tool_item_get_proxy_menu_item = gtk_tool_item_get_proxy_menu_item(this : ToolItem*, menu_item_id : UInt8*) : LibGtk::Widget*
  fun tool_item_get_relief_style = gtk_tool_item_get_relief_style(this : ToolItem*) : LibGtk::ReliefStyle
  fun tool_item_get_text_alignment = gtk_tool_item_get_text_alignment(this : ToolItem*) : Float32
  fun tool_item_get_text_orientation = gtk_tool_item_get_text_orientation(this : ToolItem*) : LibGtk::Orientation
  fun tool_item_get_text_size_group = gtk_tool_item_get_text_size_group(this : ToolItem*) : LibGtk::SizeGroup*
  fun tool_item_get_toolbar_style = gtk_tool_item_get_toolbar_style(this : ToolItem*) : LibGtk::ToolbarStyle
  fun tool_item_get_use_drag_window = gtk_tool_item_get_use_drag_window(this : ToolItem*) : Bool
  fun tool_item_get_visible_horizontal = gtk_tool_item_get_visible_horizontal(this : ToolItem*) : Bool
  fun tool_item_get_visible_vertical = gtk_tool_item_get_visible_vertical(this : ToolItem*) : Bool
  fun tool_item_rebuild_menu = gtk_tool_item_rebuild_menu(this : ToolItem*) : Void
  fun tool_item_retrieve_proxy_menu_item = gtk_tool_item_retrieve_proxy_menu_item(this : ToolItem*) : LibGtk::Widget*
  fun tool_item_set_expand = gtk_tool_item_set_expand(this : ToolItem*, expand : Bool) : Void
  fun tool_item_set_homogeneous = gtk_tool_item_set_homogeneous(this : ToolItem*, homogeneous : Bool) : Void
  fun tool_item_set_is_important = gtk_tool_item_set_is_important(this : ToolItem*, is_important : Bool) : Void
  fun tool_item_set_proxy_menu_item = gtk_tool_item_set_proxy_menu_item(this : ToolItem*, menu_item_id : UInt8*, menu_item : LibGtk::Widget*) : Void
  fun tool_item_set_tooltip_markup = gtk_tool_item_set_tooltip_markup(this : ToolItem*, markup : UInt8*) : Void
  fun tool_item_set_tooltip_text = gtk_tool_item_set_tooltip_text(this : ToolItem*, text : UInt8*) : Void
  fun tool_item_set_use_drag_window = gtk_tool_item_set_use_drag_window(this : ToolItem*, use_drag_window : Bool) : Void
  fun tool_item_set_visible_horizontal = gtk_tool_item_set_visible_horizontal(this : ToolItem*, visible_horizontal : Bool) : Void
  fun tool_item_set_visible_vertical = gtk_tool_item_set_visible_vertical(this : ToolItem*, visible_vertical : Bool) : Void
  fun tool_item_toolbar_reconfigured = gtk_tool_item_toolbar_reconfigured(this : ToolItem*) : Void

  struct ToolItemGroup # object
    parent_instance : LibGtk::Container*
    priv : LibGtk::ToolItemGroupPrivate*
    # Property collapsed : Bool
    # Property ellipsize : LibPango::EllipsizeMode
    # Property header_relief : LibGtk::ReliefStyle
    # Property label : UInt8*
    # Property label_widget : LibGtk::Widget*
  end
  fun tool_item_group_new = gtk_tool_item_group_new(label : UInt8*) : LibGtk::Widget*
  fun tool_item_group_get_collapsed = gtk_tool_item_group_get_collapsed(this : ToolItemGroup*) : Bool
  fun tool_item_group_get_drop_item = gtk_tool_item_group_get_drop_item(this : ToolItemGroup*, x : Int32, y : Int32) : LibGtk::ToolItem*
  fun tool_item_group_get_ellipsize = gtk_tool_item_group_get_ellipsize(this : ToolItemGroup*) : LibPango::EllipsizeMode
  fun tool_item_group_get_header_relief = gtk_tool_item_group_get_header_relief(this : ToolItemGroup*) : LibGtk::ReliefStyle
  fun tool_item_group_get_item_position = gtk_tool_item_group_get_item_position(this : ToolItemGroup*, item : LibGtk::ToolItem*) : Int32
  fun tool_item_group_get_label = gtk_tool_item_group_get_label(this : ToolItemGroup*) : UInt8*
  fun tool_item_group_get_label_widget = gtk_tool_item_group_get_label_widget(this : ToolItemGroup*) : LibGtk::Widget*
  fun tool_item_group_get_n_items = gtk_tool_item_group_get_n_items(this : ToolItemGroup*) : UInt32
  fun tool_item_group_get_nth_item = gtk_tool_item_group_get_nth_item(this : ToolItemGroup*, index : UInt32) : LibGtk::ToolItem*
  fun tool_item_group_insert = gtk_tool_item_group_insert(this : ToolItemGroup*, item : LibGtk::ToolItem*, position : Int32) : Void
  fun tool_item_group_set_collapsed = gtk_tool_item_group_set_collapsed(this : ToolItemGroup*, collapsed : Bool) : Void
  fun tool_item_group_set_ellipsize = gtk_tool_item_group_set_ellipsize(this : ToolItemGroup*, ellipsize : LibPango::EllipsizeMode) : Void
  fun tool_item_group_set_header_relief = gtk_tool_item_group_set_header_relief(this : ToolItemGroup*, style : LibGtk::ReliefStyle) : Void
  fun tool_item_group_set_item_position = gtk_tool_item_group_set_item_position(this : ToolItemGroup*, item : LibGtk::ToolItem*, position : Int32) : Void
  fun tool_item_group_set_label = gtk_tool_item_group_set_label(this : ToolItemGroup*, label : UInt8*) : Void
  fun tool_item_group_set_label_widget = gtk_tool_item_group_set_label_widget(this : ToolItemGroup*, label_widget : LibGtk::Widget*) : Void

  struct ToolPalette # object
    parent_instance : LibGtk::Container*
    priv : LibGtk::ToolPalettePrivate*
    # Property icon_size : LibGtk::IconSize
    # Property icon_size_set : Bool
    # Property toolbar_style : LibGtk::ToolbarStyle
  end
  fun tool_palette_new = gtk_tool_palette_new() : LibGtk::Widget*
  fun tool_palette_get_drag_target_group = gtk_tool_palette_get_drag_target_group() : LibGtk::TargetEntry*
  fun tool_palette_get_drag_target_item = gtk_tool_palette_get_drag_target_item() : LibGtk::TargetEntry*
  fun tool_palette_add_drag_dest = gtk_tool_palette_add_drag_dest(this : ToolPalette*, widget : LibGtk::Widget*, flags : LibGtk::DestDefaults, targets : LibGtk::ToolPaletteDragTargets, actions : LibGdk::DragAction) : Void
  fun tool_palette_get_drag_item = gtk_tool_palette_get_drag_item(this : ToolPalette*, selection : LibGtk::SelectionData*) : LibGtk::Widget*
  fun tool_palette_get_drop_group = gtk_tool_palette_get_drop_group(this : ToolPalette*, x : Int32, y : Int32) : LibGtk::ToolItemGroup*
  fun tool_palette_get_drop_item = gtk_tool_palette_get_drop_item(this : ToolPalette*, x : Int32, y : Int32) : LibGtk::ToolItem*
  fun tool_palette_get_exclusive = gtk_tool_palette_get_exclusive(this : ToolPalette*, group : LibGtk::ToolItemGroup*) : Bool
  fun tool_palette_get_expand = gtk_tool_palette_get_expand(this : ToolPalette*, group : LibGtk::ToolItemGroup*) : Bool
  fun tool_palette_get_group_position = gtk_tool_palette_get_group_position(this : ToolPalette*, group : LibGtk::ToolItemGroup*) : Int32
  fun tool_palette_get_hadjustment = gtk_tool_palette_get_hadjustment(this : ToolPalette*) : LibGtk::Adjustment*
  fun tool_palette_get_icon_size = gtk_tool_palette_get_icon_size(this : ToolPalette*) : Int32
  fun tool_palette_get_style = gtk_tool_palette_get_style(this : ToolPalette*) : LibGtk::ToolbarStyle
  fun tool_palette_get_vadjustment = gtk_tool_palette_get_vadjustment(this : ToolPalette*) : LibGtk::Adjustment*
  fun tool_palette_set_drag_source = gtk_tool_palette_set_drag_source(this : ToolPalette*, targets : LibGtk::ToolPaletteDragTargets) : Void
  fun tool_palette_set_exclusive = gtk_tool_palette_set_exclusive(this : ToolPalette*, group : LibGtk::ToolItemGroup*, exclusive : Bool) : Void
  fun tool_palette_set_expand = gtk_tool_palette_set_expand(this : ToolPalette*, group : LibGtk::ToolItemGroup*, expand : Bool) : Void
  fun tool_palette_set_group_position = gtk_tool_palette_set_group_position(this : ToolPalette*, group : LibGtk::ToolItemGroup*, position : Int32) : Void
  fun tool_palette_set_icon_size = gtk_tool_palette_set_icon_size(this : ToolPalette*, icon_size : Int32) : Void
  fun tool_palette_set_style = gtk_tool_palette_set_style(this : ToolPalette*, style : LibGtk::ToolbarStyle) : Void
  fun tool_palette_unset_icon_size = gtk_tool_palette_unset_icon_size(this : ToolPalette*) : Void
  fun tool_palette_unset_style = gtk_tool_palette_unset_style(this : ToolPalette*) : Void

  struct Toolbar # object
    container : LibGtk::Container*
    priv : LibGtk::ToolbarPrivate*
    # Signal focus-home-or-end
    # Signal orientation-changed
    # Signal popup-context-menu
    # Signal style-changed
    # Virtual function orientation_changed
    # Virtual function popup_context_menu
    # Virtual function style_changed
    # Property icon_size : LibGtk::IconSize
    # Property icon_size_set : Bool
    # Property show_arrow : Bool
    # Property toolbar_style : LibGtk::ToolbarStyle
  end
  fun toolbar_new = gtk_toolbar_new() : LibGtk::Widget*
  fun toolbar_get_drop_index = gtk_toolbar_get_drop_index(this : Toolbar*, x : Int32, y : Int32) : Int32
  fun toolbar_get_icon_size = gtk_toolbar_get_icon_size(this : Toolbar*) : LibGtk::IconSize
  fun toolbar_get_item_index = gtk_toolbar_get_item_index(this : Toolbar*, item : LibGtk::ToolItem*) : Int32
  fun toolbar_get_n_items = gtk_toolbar_get_n_items(this : Toolbar*) : Int32
  fun toolbar_get_nth_item = gtk_toolbar_get_nth_item(this : Toolbar*, n : Int32) : LibGtk::ToolItem*
  fun toolbar_get_relief_style = gtk_toolbar_get_relief_style(this : Toolbar*) : LibGtk::ReliefStyle
  fun toolbar_get_show_arrow = gtk_toolbar_get_show_arrow(this : Toolbar*) : Bool
  fun toolbar_get_style = gtk_toolbar_get_style(this : Toolbar*) : LibGtk::ToolbarStyle
  fun toolbar_insert = gtk_toolbar_insert(this : Toolbar*, item : LibGtk::ToolItem*, pos : Int32) : Void
  fun toolbar_set_drop_highlight_item = gtk_toolbar_set_drop_highlight_item(this : Toolbar*, tool_item : LibGtk::ToolItem*, index : Int32) : Void
  fun toolbar_set_icon_size = gtk_toolbar_set_icon_size(this : Toolbar*, icon_size : LibGtk::IconSize) : Void
  fun toolbar_set_show_arrow = gtk_toolbar_set_show_arrow(this : Toolbar*, show_arrow : Bool) : Void
  fun toolbar_set_style = gtk_toolbar_set_style(this : Toolbar*, style : LibGtk::ToolbarStyle) : Void
  fun toolbar_unset_icon_size = gtk_toolbar_unset_icon_size(this : Toolbar*) : Void
  fun toolbar_unset_style = gtk_toolbar_unset_style(this : Toolbar*) : Void

  struct Tooltip # object
    _data : UInt8[0]
  end
  fun tooltip_trigger_tooltip_query = gtk_tooltip_trigger_tooltip_query(display : LibGdk::Display*) : Void
  fun tooltip_set_custom = gtk_tooltip_set_custom(this : Tooltip*, custom_widget : LibGtk::Widget*) : Void
  fun tooltip_set_icon = gtk_tooltip_set_icon(this : Tooltip*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun tooltip_set_icon_from_gicon = gtk_tooltip_set_icon_from_gicon(this : Tooltip*, gicon : LibGio::Icon*, size : Int32) : Void
  fun tooltip_set_icon_from_icon_name = gtk_tooltip_set_icon_from_icon_name(this : Tooltip*, icon_name : UInt8*, size : Int32) : Void
  fun tooltip_set_icon_from_stock = gtk_tooltip_set_icon_from_stock(this : Tooltip*, stock_id : UInt8*, size : Int32) : Void
  fun tooltip_set_markup = gtk_tooltip_set_markup(this : Tooltip*, markup : UInt8*) : Void
  fun tooltip_set_text = gtk_tooltip_set_text(this : Tooltip*, text : UInt8*) : Void
  fun tooltip_set_tip_area = gtk_tooltip_set_tip_area(this : Tooltip*, rect : LibGdk::Rectangle*) : Void

  struct ToplevelAccessible # object
    parent : LibAtk::Object*
    priv : LibGtk::ToplevelAccessiblePrivate*
  end
  fun toplevel_accessible_get_children = gtk_toplevel_accessible_get_children(this : ToplevelAccessible*) : Void**

  struct TreeModelFilter # object
    parent : LibGObject::Object*
    priv : LibGtk::TreeModelFilterPrivate*
    # Virtual function modify
    # Virtual function visible
    # Property child_model : LibGtk::TreeModel
    # Property virtual_root : LibGtk::TreePath
  end
  fun tree_model_filter_clear_cache = gtk_tree_model_filter_clear_cache(this : TreeModelFilter*) : Void
  fun tree_model_filter_convert_child_iter_to_iter = gtk_tree_model_filter_convert_child_iter_to_iter(this : TreeModelFilter*, filter_iter : LibGtk::TreeIter*, child_iter : LibGtk::TreeIter*) : Bool
  fun tree_model_filter_convert_child_path_to_path = gtk_tree_model_filter_convert_child_path_to_path(this : TreeModelFilter*, child_path : LibGtk::TreePath*) : LibGtk::TreePath*
  fun tree_model_filter_convert_iter_to_child_iter = gtk_tree_model_filter_convert_iter_to_child_iter(this : TreeModelFilter*, child_iter : LibGtk::TreeIter*, filter_iter : LibGtk::TreeIter*) : Void
  fun tree_model_filter_convert_path_to_child_path = gtk_tree_model_filter_convert_path_to_child_path(this : TreeModelFilter*, filter_path : LibGtk::TreePath*) : LibGtk::TreePath*
  fun tree_model_filter_get_model = gtk_tree_model_filter_get_model(this : TreeModelFilter*) : LibGtk::TreeModel*
  fun tree_model_filter_refilter = gtk_tree_model_filter_refilter(this : TreeModelFilter*) : Void
  fun tree_model_filter_set_modify_func = gtk_tree_model_filter_set_modify_func(this : TreeModelFilter*, n_columns : Int32, types : UInt64*, func : LibGtk::TreeModelFilterModifyFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_model_filter_set_visible_column = gtk_tree_model_filter_set_visible_column(this : TreeModelFilter*, column : Int32) : Void
  fun tree_model_filter_set_visible_func = gtk_tree_model_filter_set_visible_func(this : TreeModelFilter*, func : LibGtk::TreeModelFilterVisibleFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void

  struct TreeModelSort # object
    parent : LibGObject::Object*
    priv : LibGtk::TreeModelSortPrivate*
    # Property model : LibGtk::TreeModel
  end
  fun tree_model_sort_clear_cache = gtk_tree_model_sort_clear_cache(this : TreeModelSort*) : Void
  fun tree_model_sort_convert_child_iter_to_iter = gtk_tree_model_sort_convert_child_iter_to_iter(this : TreeModelSort*, sort_iter : LibGtk::TreeIter*, child_iter : LibGtk::TreeIter*) : Bool
  fun tree_model_sort_convert_child_path_to_path = gtk_tree_model_sort_convert_child_path_to_path(this : TreeModelSort*, child_path : LibGtk::TreePath*) : LibGtk::TreePath*
  fun tree_model_sort_convert_iter_to_child_iter = gtk_tree_model_sort_convert_iter_to_child_iter(this : TreeModelSort*, child_iter : LibGtk::TreeIter*, sorted_iter : LibGtk::TreeIter*) : Void
  fun tree_model_sort_convert_path_to_child_path = gtk_tree_model_sort_convert_path_to_child_path(this : TreeModelSort*, sorted_path : LibGtk::TreePath*) : LibGtk::TreePath*
  fun tree_model_sort_get_model = gtk_tree_model_sort_get_model(this : TreeModelSort*) : LibGtk::TreeModel*
  fun tree_model_sort_iter_is_valid = gtk_tree_model_sort_iter_is_valid(this : TreeModelSort*, iter : LibGtk::TreeIter*) : Bool
  fun tree_model_sort_reset_default_sort_func = gtk_tree_model_sort_reset_default_sort_func(this : TreeModelSort*) : Void

  struct TreeSelection # object
    parent : LibGObject::Object*
    priv : LibGtk::TreeSelectionPrivate*
    # Signal changed
    # Virtual function changed
    # Property mode : LibGtk::SelectionMode
  end
  fun tree_selection_count_selected_rows = gtk_tree_selection_count_selected_rows(this : TreeSelection*) : Int32
  fun tree_selection_get_mode = gtk_tree_selection_get_mode(this : TreeSelection*) : LibGtk::SelectionMode
  fun tree_selection_get_selected = gtk_tree_selection_get_selected(this : TreeSelection*, model : LibGtk::TreeModel**, iter : LibGtk::TreeIter*) : Bool
  fun tree_selection_get_selected_rows = gtk_tree_selection_get_selected_rows(this : TreeSelection*, model : LibGtk::TreeModel**) : Void**
  fun tree_selection_get_tree_view = gtk_tree_selection_get_tree_view(this : TreeSelection*) : LibGtk::TreeView*
  fun tree_selection_iter_is_selected = gtk_tree_selection_iter_is_selected(this : TreeSelection*, iter : LibGtk::TreeIter*) : Bool
  fun tree_selection_path_is_selected = gtk_tree_selection_path_is_selected(this : TreeSelection*, path : LibGtk::TreePath*) : Bool
  fun tree_selection_select_all = gtk_tree_selection_select_all(this : TreeSelection*) : Void
  fun tree_selection_select_iter = gtk_tree_selection_select_iter(this : TreeSelection*, iter : LibGtk::TreeIter*) : Void
  fun tree_selection_select_path = gtk_tree_selection_select_path(this : TreeSelection*, path : LibGtk::TreePath*) : Void
  fun tree_selection_select_range = gtk_tree_selection_select_range(this : TreeSelection*, start_path : LibGtk::TreePath*, end_path : LibGtk::TreePath*) : Void
  fun tree_selection_selected_foreach = gtk_tree_selection_selected_foreach(this : TreeSelection*, func : LibGtk::TreeSelectionForeachFunc, data : Void*) : Void
  fun tree_selection_set_mode = gtk_tree_selection_set_mode(this : TreeSelection*, type : LibGtk::SelectionMode) : Void
  fun tree_selection_set_select_function = gtk_tree_selection_set_select_function(this : TreeSelection*, func : LibGtk::TreeSelectionFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_selection_unselect_all = gtk_tree_selection_unselect_all(this : TreeSelection*) : Void
  fun tree_selection_unselect_iter = gtk_tree_selection_unselect_iter(this : TreeSelection*, iter : LibGtk::TreeIter*) : Void
  fun tree_selection_unselect_path = gtk_tree_selection_unselect_path(this : TreeSelection*, path : LibGtk::TreePath*) : Void
  fun tree_selection_unselect_range = gtk_tree_selection_unselect_range(this : TreeSelection*, start_path : LibGtk::TreePath*, end_path : LibGtk::TreePath*) : Void

  struct TreeStore # object
    parent : LibGObject::Object*
    priv : LibGtk::TreeStorePrivate*
  end
  fun tree_store_new = gtk_tree_store_newv(n_columns : Int32, types : UInt64*) : LibGtk::TreeStore*
  fun tree_store_append = gtk_tree_store_append(this : TreeStore*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*) : Void
  fun tree_store_clear = gtk_tree_store_clear(this : TreeStore*) : Void
  fun tree_store_insert = gtk_tree_store_insert(this : TreeStore*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*, position : Int32) : Void
  fun tree_store_insert_after = gtk_tree_store_insert_after(this : TreeStore*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*, sibling : LibGtk::TreeIter*) : Void
  fun tree_store_insert_before = gtk_tree_store_insert_before(this : TreeStore*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*, sibling : LibGtk::TreeIter*) : Void
  fun tree_store_insert_with_values = gtk_tree_store_insert_with_valuesv(this : TreeStore*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*, position : Int32, columns : Int32*, values : LibGObject::Value*, n_values : Int32) : Void
  fun tree_store_is_ancestor = gtk_tree_store_is_ancestor(this : TreeStore*, iter : LibGtk::TreeIter*, descendant : LibGtk::TreeIter*) : Bool
  fun tree_store_iter_depth = gtk_tree_store_iter_depth(this : TreeStore*, iter : LibGtk::TreeIter*) : Int32
  fun tree_store_iter_is_valid = gtk_tree_store_iter_is_valid(this : TreeStore*, iter : LibGtk::TreeIter*) : Bool
  fun tree_store_move_after = gtk_tree_store_move_after(this : TreeStore*, iter : LibGtk::TreeIter*, position : LibGtk::TreeIter*) : Void
  fun tree_store_move_before = gtk_tree_store_move_before(this : TreeStore*, iter : LibGtk::TreeIter*, position : LibGtk::TreeIter*) : Void
  fun tree_store_prepend = gtk_tree_store_prepend(this : TreeStore*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*) : Void
  fun tree_store_remove = gtk_tree_store_remove(this : TreeStore*, iter : LibGtk::TreeIter*) : Bool
  fun tree_store_set_column_types = gtk_tree_store_set_column_types(this : TreeStore*, n_columns : Int32, types : UInt64*) : Void
  fun tree_store_set_value = gtk_tree_store_set_value(this : TreeStore*, iter : LibGtk::TreeIter*, column : Int32, value : LibGObject::Value*) : Void
  fun tree_store_set = gtk_tree_store_set_valuesv(this : TreeStore*, iter : LibGtk::TreeIter*, columns : Int32*, values : LibGObject::Value*, n_values : Int32) : Void
  fun tree_store_swap = gtk_tree_store_swap(this : TreeStore*, a : LibGtk::TreeIter*, b : LibGtk::TreeIter*) : Void

  struct TreeView # object
    parent : LibGtk::Container*
    priv : LibGtk::TreeViewPrivate*
    # Signal columns-changed
    # Signal cursor-changed
    # Signal expand-collapse-cursor-row
    # Signal move-cursor
    # Signal row-activated
    # Signal row-collapsed
    # Signal row-expanded
    # Signal select-all
    # Signal select-cursor-parent
    # Signal select-cursor-row
    # Signal start-interactive-search
    # Signal test-collapse-row
    # Signal test-expand-row
    # Signal toggle-cursor-row
    # Signal unselect-all
    # Virtual function columns_changed
    # Virtual function cursor_changed
    # Virtual function expand_collapse_cursor_row
    # Virtual function move_cursor
    # Virtual function row_activated
    # Virtual function row_collapsed
    # Virtual function row_expanded
    # Virtual function select_all
    # Virtual function select_cursor_parent
    # Virtual function select_cursor_row
    # Virtual function start_interactive_search
    # Virtual function test_collapse_row
    # Virtual function test_expand_row
    # Virtual function toggle_cursor_row
    # Virtual function unselect_all
    # Property activate_on_single_click : Bool
    # Property enable_grid_lines : LibGtk::TreeViewGridLines
    # Property enable_search : Bool
    # Property enable_tree_lines : Bool
    # Property expander_column : LibGtk::TreeViewColumn*
    # Property fixed_height_mode : Bool
    # Property headers_clickable : Bool
    # Property headers_visible : Bool
    # Property hover_expand : Bool
    # Property hover_selection : Bool
    # Property level_indentation : Int32
    # Property model : LibGtk::TreeModel
    # Property reorderable : Bool
    # Property rubber_banding : Bool
    # Property rules_hint : Bool
    # Property search_column : Int32
    # Property show_expanders : Bool
    # Property tooltip_column : Int32
  end
  fun tree_view_new = gtk_tree_view_new() : LibGtk::Widget*
  fun tree_view_new_with_model = gtk_tree_view_new_with_model(model : LibGtk::TreeModel*) : LibGtk::Widget*
  fun tree_view_append_column = gtk_tree_view_append_column(this : TreeView*, column : LibGtk::TreeViewColumn*) : Int32
  fun tree_view_collapse_all = gtk_tree_view_collapse_all(this : TreeView*) : Void
  fun tree_view_collapse_row = gtk_tree_view_collapse_row(this : TreeView*, path : LibGtk::TreePath*) : Bool
  fun tree_view_columns_autosize = gtk_tree_view_columns_autosize(this : TreeView*) : Void
  fun tree_view_convert_bin_window_to_tree_coords = gtk_tree_view_convert_bin_window_to_tree_coords(this : TreeView*, bx : Int32, by : Int32, tx : Int32*, ty : Int32*) : Void
  fun tree_view_convert_bin_window_to_widget_coords = gtk_tree_view_convert_bin_window_to_widget_coords(this : TreeView*, bx : Int32, by : Int32, wx : Int32*, wy : Int32*) : Void
  fun tree_view_convert_tree_to_bin_window_coords = gtk_tree_view_convert_tree_to_bin_window_coords(this : TreeView*, tx : Int32, ty : Int32, bx : Int32*, by : Int32*) : Void
  fun tree_view_convert_tree_to_widget_coords = gtk_tree_view_convert_tree_to_widget_coords(this : TreeView*, tx : Int32, ty : Int32, wx : Int32*, wy : Int32*) : Void
  fun tree_view_convert_widget_to_bin_window_coords = gtk_tree_view_convert_widget_to_bin_window_coords(this : TreeView*, wx : Int32, wy : Int32, bx : Int32*, by : Int32*) : Void
  fun tree_view_convert_widget_to_tree_coords = gtk_tree_view_convert_widget_to_tree_coords(this : TreeView*, wx : Int32, wy : Int32, tx : Int32*, ty : Int32*) : Void
  fun tree_view_create_row_drag_icon = gtk_tree_view_create_row_drag_icon(this : TreeView*, path : LibGtk::TreePath*) : LibCairo::Surface*
  fun tree_view_enable_model_drag_dest = gtk_tree_view_enable_model_drag_dest(this : TreeView*, targets : LibGtk::TargetEntry*, n_targets : Int32, actions : LibGdk::DragAction) : Void
  fun tree_view_enable_model_drag_source = gtk_tree_view_enable_model_drag_source(this : TreeView*, start_button_mask : LibGdk::ModifierType, targets : LibGtk::TargetEntry*, n_targets : Int32, actions : LibGdk::DragAction) : Void
  fun tree_view_expand_all = gtk_tree_view_expand_all(this : TreeView*) : Void
  fun tree_view_expand_row = gtk_tree_view_expand_row(this : TreeView*, path : LibGtk::TreePath*, open_all : Bool) : Bool
  fun tree_view_expand_to_path = gtk_tree_view_expand_to_path(this : TreeView*, path : LibGtk::TreePath*) : Void
  fun tree_view_get_activate_on_single_click = gtk_tree_view_get_activate_on_single_click(this : TreeView*) : Bool
  fun tree_view_get_background_area = gtk_tree_view_get_background_area(this : TreeView*, path : LibGtk::TreePath*, column : LibGtk::TreeViewColumn*, rect : LibGdk::Rectangle*) : Void
  fun tree_view_get_bin_window = gtk_tree_view_get_bin_window(this : TreeView*) : LibGdk::Window*
  fun tree_view_get_cell_area = gtk_tree_view_get_cell_area(this : TreeView*, path : LibGtk::TreePath*, column : LibGtk::TreeViewColumn*, rect : LibGdk::Rectangle*) : Void
  fun tree_view_get_column = gtk_tree_view_get_column(this : TreeView*, n : Int32) : LibGtk::TreeViewColumn*
  fun tree_view_get_columns = gtk_tree_view_get_columns(this : TreeView*) : Void**
  fun tree_view_get_cursor = gtk_tree_view_get_cursor(this : TreeView*, path : LibGtk::TreePath**, focus_column : LibGtk::TreeViewColumn**) : Void
  fun tree_view_get_dest_row_at_pos = gtk_tree_view_get_dest_row_at_pos(this : TreeView*, drag_x : Int32, drag_y : Int32, path : LibGtk::TreePath**, pos : LibGtk::TreeViewDropPosition*) : Bool
  fun tree_view_get_drag_dest_row = gtk_tree_view_get_drag_dest_row(this : TreeView*, path : LibGtk::TreePath**, pos : LibGtk::TreeViewDropPosition*) : Void
  fun tree_view_get_enable_search = gtk_tree_view_get_enable_search(this : TreeView*) : Bool
  fun tree_view_get_enable_tree_lines = gtk_tree_view_get_enable_tree_lines(this : TreeView*) : Bool
  fun tree_view_get_expander_column = gtk_tree_view_get_expander_column(this : TreeView*) : LibGtk::TreeViewColumn*
  fun tree_view_get_fixed_height_mode = gtk_tree_view_get_fixed_height_mode(this : TreeView*) : Bool
  fun tree_view_get_grid_lines = gtk_tree_view_get_grid_lines(this : TreeView*) : LibGtk::TreeViewGridLines
  fun tree_view_get_hadjustment = gtk_tree_view_get_hadjustment(this : TreeView*) : LibGtk::Adjustment*
  fun tree_view_get_headers_clickable = gtk_tree_view_get_headers_clickable(this : TreeView*) : Bool
  fun tree_view_get_headers_visible = gtk_tree_view_get_headers_visible(this : TreeView*) : Bool
  fun tree_view_get_hover_expand = gtk_tree_view_get_hover_expand(this : TreeView*) : Bool
  fun tree_view_get_hover_selection = gtk_tree_view_get_hover_selection(this : TreeView*) : Bool
  fun tree_view_get_level_indentation = gtk_tree_view_get_level_indentation(this : TreeView*) : Int32
  fun tree_view_get_model = gtk_tree_view_get_model(this : TreeView*) : LibGtk::TreeModel*
  fun tree_view_get_n_columns = gtk_tree_view_get_n_columns(this : TreeView*) : UInt32
  fun tree_view_get_path_at_pos = gtk_tree_view_get_path_at_pos(this : TreeView*, x : Int32, y : Int32, path : LibGtk::TreePath**, column : LibGtk::TreeViewColumn**, cell_x : Int32*, cell_y : Int32*) : Bool
  fun tree_view_get_reorderable = gtk_tree_view_get_reorderable(this : TreeView*) : Bool
  fun tree_view_get_rubber_banding = gtk_tree_view_get_rubber_banding(this : TreeView*) : Bool
  fun tree_view_get_rules_hint = gtk_tree_view_get_rules_hint(this : TreeView*) : Bool
  fun tree_view_get_search_column = gtk_tree_view_get_search_column(this : TreeView*) : Int32
  fun tree_view_get_search_entry = gtk_tree_view_get_search_entry(this : TreeView*) : LibGtk::Entry*
  fun tree_view_get_selection = gtk_tree_view_get_selection(this : TreeView*) : LibGtk::TreeSelection*
  fun tree_view_get_show_expanders = gtk_tree_view_get_show_expanders(this : TreeView*) : Bool
  fun tree_view_get_tooltip_column = gtk_tree_view_get_tooltip_column(this : TreeView*) : Int32
  fun tree_view_get_tooltip_context = gtk_tree_view_get_tooltip_context(this : TreeView*, x : Int32*, y : Int32*, keyboard_tip : Bool, model : LibGtk::TreeModel**, path : LibGtk::TreePath**, iter : LibGtk::TreeIter*) : Bool
  fun tree_view_get_vadjustment = gtk_tree_view_get_vadjustment(this : TreeView*) : LibGtk::Adjustment*
  fun tree_view_get_visible_range = gtk_tree_view_get_visible_range(this : TreeView*, start_path : LibGtk::TreePath**, end_path : LibGtk::TreePath**) : Bool
  fun tree_view_get_visible_rect = gtk_tree_view_get_visible_rect(this : TreeView*, visible_rect : LibGdk::Rectangle*) : Void
  fun tree_view_insert_column = gtk_tree_view_insert_column(this : TreeView*, column : LibGtk::TreeViewColumn*, position : Int32) : Int32
  fun tree_view_insert_column_with_data_func = gtk_tree_view_insert_column_with_data_func(this : TreeView*, position : Int32, title : UInt8*, cell : LibGtk::CellRenderer*, func : LibGtk::TreeCellDataFunc, data : Void*, dnotify : LibGLib::DestroyNotify) : Int32
  fun tree_view_is_blank_at_pos = gtk_tree_view_is_blank_at_pos(this : TreeView*, x : Int32, y : Int32, path : LibGtk::TreePath**, column : LibGtk::TreeViewColumn**, cell_x : Int32*, cell_y : Int32*) : Bool
  fun tree_view_is_rubber_banding_active = gtk_tree_view_is_rubber_banding_active(this : TreeView*) : Bool
  fun tree_view_map_expanded_rows = gtk_tree_view_map_expanded_rows(this : TreeView*, func : LibGtk::TreeViewMappingFunc, data : Void*) : Void
  fun tree_view_move_column_after = gtk_tree_view_move_column_after(this : TreeView*, column : LibGtk::TreeViewColumn*, base_column : LibGtk::TreeViewColumn*) : Void
  fun tree_view_remove_column = gtk_tree_view_remove_column(this : TreeView*, column : LibGtk::TreeViewColumn*) : Int32
  fun tree_view_row_activated = gtk_tree_view_row_activated(this : TreeView*, path : LibGtk::TreePath*, column : LibGtk::TreeViewColumn*) : Void
  fun tree_view_row_expanded = gtk_tree_view_row_expanded(this : TreeView*, path : LibGtk::TreePath*) : Bool
  fun tree_view_scroll_to_cell = gtk_tree_view_scroll_to_cell(this : TreeView*, path : LibGtk::TreePath*, column : LibGtk::TreeViewColumn*, use_align : Bool, row_align : Float32, col_align : Float32) : Void
  fun tree_view_scroll_to_point = gtk_tree_view_scroll_to_point(this : TreeView*, tree_x : Int32, tree_y : Int32) : Void
  fun tree_view_set_activate_on_single_click = gtk_tree_view_set_activate_on_single_click(this : TreeView*, single : Bool) : Void
  fun tree_view_set_column_drag_function = gtk_tree_view_set_column_drag_function(this : TreeView*, func : LibGtk::TreeViewColumnDropFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_view_set_cursor = gtk_tree_view_set_cursor(this : TreeView*, path : LibGtk::TreePath*, focus_column : LibGtk::TreeViewColumn*, start_editing : Bool) : Void
  fun tree_view_set_cursor_on_cell = gtk_tree_view_set_cursor_on_cell(this : TreeView*, path : LibGtk::TreePath*, focus_column : LibGtk::TreeViewColumn*, focus_cell : LibGtk::CellRenderer*, start_editing : Bool) : Void
  fun tree_view_set_destroy_count_func = gtk_tree_view_set_destroy_count_func(this : TreeView*, func : LibGtk::TreeDestroyCountFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_view_set_drag_dest_row = gtk_tree_view_set_drag_dest_row(this : TreeView*, path : LibGtk::TreePath*, pos : LibGtk::TreeViewDropPosition) : Void
  fun tree_view_set_enable_search = gtk_tree_view_set_enable_search(this : TreeView*, enable_search : Bool) : Void
  fun tree_view_set_enable_tree_lines = gtk_tree_view_set_enable_tree_lines(this : TreeView*, enabled : Bool) : Void
  fun tree_view_set_expander_column = gtk_tree_view_set_expander_column(this : TreeView*, column : LibGtk::TreeViewColumn*) : Void
  fun tree_view_set_fixed_height_mode = gtk_tree_view_set_fixed_height_mode(this : TreeView*, enable : Bool) : Void
  fun tree_view_set_grid_lines = gtk_tree_view_set_grid_lines(this : TreeView*, grid_lines : LibGtk::TreeViewGridLines) : Void
  fun tree_view_set_hadjustment = gtk_tree_view_set_hadjustment(this : TreeView*, adjustment : LibGtk::Adjustment*) : Void
  fun tree_view_set_headers_clickable = gtk_tree_view_set_headers_clickable(this : TreeView*, setting : Bool) : Void
  fun tree_view_set_headers_visible = gtk_tree_view_set_headers_visible(this : TreeView*, headers_visible : Bool) : Void
  fun tree_view_set_hover_expand = gtk_tree_view_set_hover_expand(this : TreeView*, expand : Bool) : Void
  fun tree_view_set_hover_selection = gtk_tree_view_set_hover_selection(this : TreeView*, hover : Bool) : Void
  fun tree_view_set_level_indentation = gtk_tree_view_set_level_indentation(this : TreeView*, indentation : Int32) : Void
  fun tree_view_set_model = gtk_tree_view_set_model(this : TreeView*, model : LibGtk::TreeModel*) : Void
  fun tree_view_set_reorderable = gtk_tree_view_set_reorderable(this : TreeView*, reorderable : Bool) : Void
  fun tree_view_set_row_separator_func = gtk_tree_view_set_row_separator_func(this : TreeView*, func : LibGtk::TreeViewRowSeparatorFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_view_set_rubber_banding = gtk_tree_view_set_rubber_banding(this : TreeView*, enable : Bool) : Void
  fun tree_view_set_rules_hint = gtk_tree_view_set_rules_hint(this : TreeView*, setting : Bool) : Void
  fun tree_view_set_search_column = gtk_tree_view_set_search_column(this : TreeView*, column : Int32) : Void
  fun tree_view_set_search_entry = gtk_tree_view_set_search_entry(this : TreeView*, entry : LibGtk::Entry*) : Void
  fun tree_view_set_search_equal_func = gtk_tree_view_set_search_equal_func(this : TreeView*, search_equal_func : LibGtk::TreeViewSearchEqualFunc, search_user_data : Void*, search_destroy : LibGLib::DestroyNotify) : Void
  fun tree_view_set_search_position_func = gtk_tree_view_set_search_position_func(this : TreeView*, func : LibGtk::TreeViewSearchPositionFunc, data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_view_set_show_expanders = gtk_tree_view_set_show_expanders(this : TreeView*, enabled : Bool) : Void
  fun tree_view_set_tooltip_cell = gtk_tree_view_set_tooltip_cell(this : TreeView*, tooltip : LibGtk::Tooltip*, path : LibGtk::TreePath*, column : LibGtk::TreeViewColumn*, cell : LibGtk::CellRenderer*) : Void
  fun tree_view_set_tooltip_column = gtk_tree_view_set_tooltip_column(this : TreeView*, column : Int32) : Void
  fun tree_view_set_tooltip_row = gtk_tree_view_set_tooltip_row(this : TreeView*, tooltip : LibGtk::Tooltip*, path : LibGtk::TreePath*) : Void
  fun tree_view_set_vadjustment = gtk_tree_view_set_vadjustment(this : TreeView*, adjustment : LibGtk::Adjustment*) : Void
  fun tree_view_unset_rows_drag_dest = gtk_tree_view_unset_rows_drag_dest(this : TreeView*) : Void
  fun tree_view_unset_rows_drag_source = gtk_tree_view_unset_rows_drag_source(this : TreeView*) : Void

  struct TreeViewAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::TreeViewAccessiblePrivate*
  end

  struct TreeViewColumn # object
    parent_instance : LibGObject::InitiallyUnowned*
    priv : LibGtk::TreeViewColumnPrivate*
    # Signal clicked
    # Virtual function clicked
    # Property alignment : Float32
    # Property cell_area : LibGtk::CellArea*
    # Property clickable : Bool
    # Property expand : Bool
    # Property fixed_width : Int32
    # Property max_width : Int32
    # Property min_width : Int32
    # Property reorderable : Bool
    # Property resizable : Bool
    # Property sizing : LibGtk::TreeViewColumnSizing
    # Property sort_column_id : Int32
    # Property sort_indicator : Bool
    # Property sort_order : LibGtk::SortType
    # Property spacing : Int32
    # Property title : UInt8*
    # Property visible : Bool
    # Property widget : LibGtk::Widget*
    # Property width : Int32
    # Property x_offset : Int32
  end
  fun tree_view_column_new = gtk_tree_view_column_new() : LibGtk::TreeViewColumn*
  fun tree_view_column_new_with_area = gtk_tree_view_column_new_with_area(area : LibGtk::CellArea*) : LibGtk::TreeViewColumn*
  fun tree_view_column_add_attribute = gtk_tree_view_column_add_attribute(this : TreeViewColumn*, cell_renderer : LibGtk::CellRenderer*, attribute : UInt8*, column : Int32) : Void
  fun tree_view_column_cell_get_position = gtk_tree_view_column_cell_get_position(this : TreeViewColumn*, cell_renderer : LibGtk::CellRenderer*, x_offset : Int32*, width : Int32*) : Bool
  fun tree_view_column_cell_get_size = gtk_tree_view_column_cell_get_size(this : TreeViewColumn*, cell_area : LibGdk::Rectangle*, x_offset : Int32*, y_offset : Int32*, width : Int32*, height : Int32*) : Void
  fun tree_view_column_cell_is_visible = gtk_tree_view_column_cell_is_visible(this : TreeViewColumn*) : Bool
  fun tree_view_column_cell_set_cell_data = gtk_tree_view_column_cell_set_cell_data(this : TreeViewColumn*, tree_model : LibGtk::TreeModel*, iter : LibGtk::TreeIter*, is_expander : Bool, is_expanded : Bool) : Void
  fun tree_view_column_clear = gtk_tree_view_column_clear(this : TreeViewColumn*) : Void
  fun tree_view_column_clear_attributes = gtk_tree_view_column_clear_attributes(this : TreeViewColumn*, cell_renderer : LibGtk::CellRenderer*) : Void
  fun tree_view_column_clicked = gtk_tree_view_column_clicked(this : TreeViewColumn*) : Void
  fun tree_view_column_focus_cell = gtk_tree_view_column_focus_cell(this : TreeViewColumn*, cell : LibGtk::CellRenderer*) : Void
  fun tree_view_column_get_alignment = gtk_tree_view_column_get_alignment(this : TreeViewColumn*) : Float32
  fun tree_view_column_get_button = gtk_tree_view_column_get_button(this : TreeViewColumn*) : LibGtk::Widget*
  fun tree_view_column_get_clickable = gtk_tree_view_column_get_clickable(this : TreeViewColumn*) : Bool
  fun tree_view_column_get_expand = gtk_tree_view_column_get_expand(this : TreeViewColumn*) : Bool
  fun tree_view_column_get_fixed_width = gtk_tree_view_column_get_fixed_width(this : TreeViewColumn*) : Int32
  fun tree_view_column_get_max_width = gtk_tree_view_column_get_max_width(this : TreeViewColumn*) : Int32
  fun tree_view_column_get_min_width = gtk_tree_view_column_get_min_width(this : TreeViewColumn*) : Int32
  fun tree_view_column_get_reorderable = gtk_tree_view_column_get_reorderable(this : TreeViewColumn*) : Bool
  fun tree_view_column_get_resizable = gtk_tree_view_column_get_resizable(this : TreeViewColumn*) : Bool
  fun tree_view_column_get_sizing = gtk_tree_view_column_get_sizing(this : TreeViewColumn*) : LibGtk::TreeViewColumnSizing
  fun tree_view_column_get_sort_column_id = gtk_tree_view_column_get_sort_column_id(this : TreeViewColumn*) : Int32
  fun tree_view_column_get_sort_indicator = gtk_tree_view_column_get_sort_indicator(this : TreeViewColumn*) : Bool
  fun tree_view_column_get_sort_order = gtk_tree_view_column_get_sort_order(this : TreeViewColumn*) : LibGtk::SortType
  fun tree_view_column_get_spacing = gtk_tree_view_column_get_spacing(this : TreeViewColumn*) : Int32
  fun tree_view_column_get_title = gtk_tree_view_column_get_title(this : TreeViewColumn*) : UInt8*
  fun tree_view_column_get_tree_view = gtk_tree_view_column_get_tree_view(this : TreeViewColumn*) : LibGtk::Widget*
  fun tree_view_column_get_visible = gtk_tree_view_column_get_visible(this : TreeViewColumn*) : Bool
  fun tree_view_column_get_widget = gtk_tree_view_column_get_widget(this : TreeViewColumn*) : LibGtk::Widget*
  fun tree_view_column_get_width = gtk_tree_view_column_get_width(this : TreeViewColumn*) : Int32
  fun tree_view_column_get_x_offset = gtk_tree_view_column_get_x_offset(this : TreeViewColumn*) : Int32
  fun tree_view_column_pack_end = gtk_tree_view_column_pack_end(this : TreeViewColumn*, cell : LibGtk::CellRenderer*, expand : Bool) : Void
  fun tree_view_column_pack_start = gtk_tree_view_column_pack_start(this : TreeViewColumn*, cell : LibGtk::CellRenderer*, expand : Bool) : Void
  fun tree_view_column_queue_resize = gtk_tree_view_column_queue_resize(this : TreeViewColumn*) : Void
  fun tree_view_column_set_alignment = gtk_tree_view_column_set_alignment(this : TreeViewColumn*, xalign : Float32) : Void
  fun tree_view_column_set_cell_data_func = gtk_tree_view_column_set_cell_data_func(this : TreeViewColumn*, cell_renderer : LibGtk::CellRenderer*, func : LibGtk::TreeCellDataFunc, func_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_view_column_set_clickable = gtk_tree_view_column_set_clickable(this : TreeViewColumn*, clickable : Bool) : Void
  fun tree_view_column_set_expand = gtk_tree_view_column_set_expand(this : TreeViewColumn*, expand : Bool) : Void
  fun tree_view_column_set_fixed_width = gtk_tree_view_column_set_fixed_width(this : TreeViewColumn*, fixed_width : Int32) : Void
  fun tree_view_column_set_max_width = gtk_tree_view_column_set_max_width(this : TreeViewColumn*, max_width : Int32) : Void
  fun tree_view_column_set_min_width = gtk_tree_view_column_set_min_width(this : TreeViewColumn*, min_width : Int32) : Void
  fun tree_view_column_set_reorderable = gtk_tree_view_column_set_reorderable(this : TreeViewColumn*, reorderable : Bool) : Void
  fun tree_view_column_set_resizable = gtk_tree_view_column_set_resizable(this : TreeViewColumn*, resizable : Bool) : Void
  fun tree_view_column_set_sizing = gtk_tree_view_column_set_sizing(this : TreeViewColumn*, type : LibGtk::TreeViewColumnSizing) : Void
  fun tree_view_column_set_sort_column_id = gtk_tree_view_column_set_sort_column_id(this : TreeViewColumn*, sort_column_id : Int32) : Void
  fun tree_view_column_set_sort_indicator = gtk_tree_view_column_set_sort_indicator(this : TreeViewColumn*, setting : Bool) : Void
  fun tree_view_column_set_sort_order = gtk_tree_view_column_set_sort_order(this : TreeViewColumn*, order : LibGtk::SortType) : Void
  fun tree_view_column_set_spacing = gtk_tree_view_column_set_spacing(this : TreeViewColumn*, spacing : Int32) : Void
  fun tree_view_column_set_title = gtk_tree_view_column_set_title(this : TreeViewColumn*, title : UInt8*) : Void
  fun tree_view_column_set_visible = gtk_tree_view_column_set_visible(this : TreeViewColumn*, visible : Bool) : Void
  fun tree_view_column_set_widget = gtk_tree_view_column_set_widget(this : TreeViewColumn*, widget : LibGtk::Widget*) : Void

  struct UIManager # object
    parent : LibGObject::Object*
    private_data : LibGtk::UIManagerPrivate*
    # Signal actions-changed
    # Signal add-widget
    # Signal connect-proxy
    # Signal disconnect-proxy
    # Signal post-activate
    # Signal pre-activate
    # Virtual function actions_changed
    # Virtual function add_widget
    # Virtual function connect_proxy
    # Virtual function disconnect_proxy
    # Virtual function get_action
    # Virtual function get_widget
    # Virtual function post_activate
    # Virtual function pre_activate
    # Property add_tearoffs : Bool
    # Property ui : UInt8*
  end
  fun u_i_manager_new = gtk_ui_manager_new() : LibGtk::UIManager*
  fun u_i_manager_add_ui = gtk_ui_manager_add_ui(this : UIManager*, merge_id : UInt32, path : UInt8*, name : UInt8*, action : UInt8*, type : LibGtk::UIManagerItemType, top : Bool) : Void
  fun u_i_manager_add_ui_from_file = gtk_ui_manager_add_ui_from_file(this : UIManager*, filename : UInt8*, error : LibGLib::Error**) : UInt32
  fun u_i_manager_add_ui_from_resource = gtk_ui_manager_add_ui_from_resource(this : UIManager*, resource_path : UInt8*, error : LibGLib::Error**) : UInt32
  fun u_i_manager_add_ui_from_string = gtk_ui_manager_add_ui_from_string(this : UIManager*, buffer : UInt8*, length : Int64, error : LibGLib::Error**) : UInt32
  fun u_i_manager_ensure_update = gtk_ui_manager_ensure_update(this : UIManager*) : Void
  fun u_i_manager_get_accel_group = gtk_ui_manager_get_accel_group(this : UIManager*) : LibGtk::AccelGroup*
  fun u_i_manager_get_action = gtk_ui_manager_get_action(this : UIManager*, path : UInt8*) : LibGtk::Action*
  fun u_i_manager_get_action_groups = gtk_ui_manager_get_action_groups(this : UIManager*) : Void**
  fun u_i_manager_get_add_tearoffs = gtk_ui_manager_get_add_tearoffs(this : UIManager*) : Bool
  fun u_i_manager_get_toplevels = gtk_ui_manager_get_toplevels(this : UIManager*, types : LibGtk::UIManagerItemType) : Void**
  fun u_i_manager_get_ui = gtk_ui_manager_get_ui(this : UIManager*) : UInt8*
  fun u_i_manager_get_widget = gtk_ui_manager_get_widget(this : UIManager*, path : UInt8*) : LibGtk::Widget*
  fun u_i_manager_insert_action_group = gtk_ui_manager_insert_action_group(this : UIManager*, action_group : LibGtk::ActionGroup*, pos : Int32) : Void
  fun u_i_manager_new_merge_id = gtk_ui_manager_new_merge_id(this : UIManager*) : UInt32
  fun u_i_manager_remove_action_group = gtk_ui_manager_remove_action_group(this : UIManager*, action_group : LibGtk::ActionGroup*) : Void
  fun u_i_manager_remove_ui = gtk_ui_manager_remove_ui(this : UIManager*, merge_id : UInt32) : Void
  fun u_i_manager_set_add_tearoffs = gtk_ui_manager_set_add_tearoffs(this : UIManager*, add_tearoffs : Bool) : Void

  struct VBox # object
    box : LibGtk::Box*
  end
  fun v_box_new = gtk_vbox_new(homogeneous : Bool, spacing : Int32) : LibGtk::Widget*

  struct VButtonBox # object
    button_box : LibGtk::ButtonBox*
  end
  fun v_button_box_new = gtk_vbutton_box_new() : LibGtk::Widget*

  struct VPaned # object
    paned : LibGtk::Paned*
  end
  fun v_paned_new = gtk_vpaned_new() : LibGtk::Widget*

  struct VScale # object
    scale : LibGtk::Scale*
  end
  fun v_scale_new = gtk_vscale_new(adjustment : LibGtk::Adjustment*) : LibGtk::Widget*
  fun v_scale_new_with_range = gtk_vscale_new_with_range(min : Float64, max : Float64, step : Float64) : LibGtk::Widget*

  struct VScrollbar # object
    scrollbar : LibGtk::Scrollbar*
  end
  fun v_scrollbar_new = gtk_vscrollbar_new(adjustment : LibGtk::Adjustment*) : LibGtk::Widget*

  struct VSeparator # object
    separator : LibGtk::Separator*
  end
  fun v_separator_new = gtk_vseparator_new() : LibGtk::Widget*

  struct Viewport # object
    bin : LibGtk::Bin*
    priv : LibGtk::ViewportPrivate*
    # Property shadow_type : LibGtk::ShadowType
  end
  fun viewport_new = gtk_viewport_new(hadjustment : LibGtk::Adjustment*, vadjustment : LibGtk::Adjustment*) : LibGtk::Widget*
  fun viewport_get_bin_window = gtk_viewport_get_bin_window(this : Viewport*) : LibGdk::Window*
  fun viewport_get_hadjustment = gtk_viewport_get_hadjustment(this : Viewport*) : LibGtk::Adjustment*
  fun viewport_get_shadow_type = gtk_viewport_get_shadow_type(this : Viewport*) : LibGtk::ShadowType
  fun viewport_get_vadjustment = gtk_viewport_get_vadjustment(this : Viewport*) : LibGtk::Adjustment*
  fun viewport_get_view_window = gtk_viewport_get_view_window(this : Viewport*) : LibGdk::Window*
  fun viewport_set_hadjustment = gtk_viewport_set_hadjustment(this : Viewport*, adjustment : LibGtk::Adjustment*) : Void
  fun viewport_set_shadow_type = gtk_viewport_set_shadow_type(this : Viewport*, type : LibGtk::ShadowType) : Void
  fun viewport_set_vadjustment = gtk_viewport_set_vadjustment(this : Viewport*, adjustment : LibGtk::Adjustment*) : Void

  struct VolumeButton # object
    parent : LibGtk::ScaleButton*
    # Property use_symbolic : Bool
  end
  fun volume_button_new = gtk_volume_button_new() : LibGtk::Widget*

  struct Widget # object
    parent_instance : LibGObject::InitiallyUnowned*
    priv : LibGtk::WidgetPrivate*
    # Signal accel-closures-changed
    # Signal button-press-event
    # Signal button-release-event
    # Signal can-activate-accel
    # Signal child-notify
    # Signal composited-changed
    # Signal configure-event
    # Signal damage-event
    # Signal delete-event
    # Signal destroy
    # Signal destroy-event
    # Signal direction-changed
    # Signal drag-begin
    # Signal drag-data-delete
    # Signal drag-data-get
    # Signal drag-data-received
    # Signal drag-drop
    # Signal drag-end
    # Signal drag-failed
    # Signal drag-leave
    # Signal drag-motion
    # Signal draw
    # Signal enter-notify-event
    # Signal event
    # Signal event-after
    # Signal focus
    # Signal focus-in-event
    # Signal focus-out-event
    # Signal grab-broken-event
    # Signal grab-focus
    # Signal grab-notify
    # Signal hide
    # Signal hierarchy-changed
    # Signal key-press-event
    # Signal key-release-event
    # Signal keynav-failed
    # Signal leave-notify-event
    # Signal map
    # Signal map-event
    # Signal mnemonic-activate
    # Signal motion-notify-event
    # Signal move-focus
    # Signal parent-set
    # Signal popup-menu
    # Signal property-notify-event
    # Signal proximity-in-event
    # Signal proximity-out-event
    # Signal query-tooltip
    # Signal realize
    # Signal screen-changed
    # Signal scroll-event
    # Signal selection-clear-event
    # Signal selection-get
    # Signal selection-notify-event
    # Signal selection-received
    # Signal selection-request-event
    # Signal show
    # Signal show-help
    # Signal size-allocate
    # Signal state-changed
    # Signal state-flags-changed
    # Signal style-set
    # Signal style-updated
    # Signal touch-event
    # Signal unmap
    # Signal unmap-event
    # Signal unrealize
    # Signal visibility-notify-event
    # Signal window-state-event
    # Virtual function adjust_baseline_allocation
    # Virtual function adjust_baseline_request
    # Virtual function adjust_size_allocation
    # Virtual function adjust_size_request
    # Virtual function button_press_event
    # Virtual function button_release_event
    # Virtual function can_activate_accel
    # Virtual function child_notify
    # Virtual function composited_changed
    # Virtual function compute_expand
    # Virtual function configure_event
    # Virtual function damage_event
    # Virtual function delete_event
    # Virtual function destroy
    # Virtual function destroy_event
    # Virtual function direction_changed
    # Virtual function dispatch_child_properties_changed
    # Virtual function drag_begin
    # Virtual function drag_data_delete
    # Virtual function drag_data_get
    # Virtual function drag_data_received
    # Virtual function drag_drop
    # Virtual function drag_end
    # Virtual function drag_failed
    # Virtual function drag_leave
    # Virtual function drag_motion
    # Virtual function draw
    # Virtual function enter_notify_event
    # Virtual function event
    # Virtual function focus
    # Virtual function focus_in_event
    # Virtual function focus_out_event
    # Virtual function get_accessible
    # Virtual function get_preferred_height
    # Virtual function get_preferred_height_and_baseline_for_width
    # Virtual function get_preferred_height_for_width
    # Virtual function get_preferred_width
    # Virtual function get_preferred_width_for_height
    # Virtual function get_request_mode
    # Virtual function grab_broken_event
    # Virtual function grab_focus
    # Virtual function grab_notify
    # Virtual function hide
    # Virtual function hierarchy_changed
    # Virtual function key_press_event
    # Virtual function key_release_event
    # Virtual function keynav_failed
    # Virtual function leave_notify_event
    # Virtual function map
    # Virtual function map_event
    # Virtual function mnemonic_activate
    # Virtual function motion_notify_event
    # Virtual function move_focus
    # Virtual function parent_set
    # Virtual function popup_menu
    # Virtual function property_notify_event
    # Virtual function proximity_in_event
    # Virtual function proximity_out_event
    # Virtual function query_tooltip
    # Virtual function queue_draw_region
    # Virtual function realize
    # Virtual function screen_changed
    # Virtual function scroll_event
    # Virtual function selection_clear_event
    # Virtual function selection_get
    # Virtual function selection_notify_event
    # Virtual function selection_received
    # Virtual function selection_request_event
    # Virtual function show
    # Virtual function show_all
    # Virtual function show_help
    # Virtual function size_allocate
    # Virtual function state_changed
    # Virtual function state_flags_changed
    # Virtual function style_set
    # Virtual function style_updated
    # Virtual function touch_event
    # Virtual function unmap
    # Virtual function unmap_event
    # Virtual function unrealize
    # Virtual function visibility_notify_event
    # Virtual function window_state_event
    # Property app_paintable : Bool
    # Property can_default : Bool
    # Property can_focus : Bool
    # Property composite_child : Bool
    # Property double_buffered : Bool
    # Property events : LibGdk::EventMask
    # Property expand : Bool
    # Property focus_on_click : Bool
    # Property halign : LibGtk::Align
    # Property has_default : Bool
    # Property has_focus : Bool
    # Property has_tooltip : Bool
    # Property height_request : Int32
    # Property hexpand : Bool
    # Property hexpand_set : Bool
    # Property is_focus : Bool
    # Property margin : Int32
    # Property margin_bottom : Int32
    # Property margin_end : Int32
    # Property margin_left : Int32
    # Property margin_right : Int32
    # Property margin_start : Int32
    # Property margin_top : Int32
    # Property name : UInt8*
    # Property no_show_all : Bool
    # Property opacity : Float64
    # Property parent : LibGtk::Container*
    # Property receives_default : Bool
    # Property scale_factor : Int32
    # Property sensitive : Bool
    # Property style : LibGtk::Style*
    # Property tooltip_markup : UInt8*
    # Property tooltip_text : UInt8*
    # Property valign : LibGtk::Align
    # Property vexpand : Bool
    # Property vexpand_set : Bool
    # Property visible : Bool
    # Property width_request : Int32
    # Property window : LibGdk::Window*
  end
  fun widget_get_default_direction = gtk_widget_get_default_direction() : LibGtk::TextDirection
  fun widget_get_default_style = gtk_widget_get_default_style() : LibGtk::Style*
  fun widget_pop_composite_child = gtk_widget_pop_composite_child() : Void
  fun widget_push_composite_child = gtk_widget_push_composite_child() : Void
  fun widget_set_default_direction = gtk_widget_set_default_direction(dir : LibGtk::TextDirection) : Void
  fun widget_activate = gtk_widget_activate(this : Widget*) : Bool
  fun widget_add_accelerator = gtk_widget_add_accelerator(this : Widget*, accel_signal : UInt8*, accel_group : LibGtk::AccelGroup*, accel_key : UInt32, accel_mods : LibGdk::ModifierType, accel_flags : LibGtk::AccelFlags) : Void
  fun widget_add_device_events = gtk_widget_add_device_events(this : Widget*, device : LibGdk::Device*, events : LibGdk::EventMask) : Void
  fun widget_add_events = gtk_widget_add_events(this : Widget*, events : Int32) : Void
  fun widget_add_mnemonic_label = gtk_widget_add_mnemonic_label(this : Widget*, label : LibGtk::Widget*) : Void
  fun widget_add_tick_callback = gtk_widget_add_tick_callback(this : Widget*, callback : LibGtk::TickCallback, user_data : Void*, notify : LibGLib::DestroyNotify) : UInt32
  fun widget_can_activate_accel = gtk_widget_can_activate_accel(this : Widget*, signal_id : UInt32) : Bool
  fun widget_child_focus = gtk_widget_child_focus(this : Widget*, direction : LibGtk::DirectionType) : Bool
  fun widget_child_notify = gtk_widget_child_notify(this : Widget*, child_property : UInt8*) : Void
  fun widget_class_path = gtk_widget_class_path(this : Widget*, path_length : UInt32*, path : UInt8**, path_reversed : UInt8**) : Void
  fun widget_compute_expand = gtk_widget_compute_expand(this : Widget*, orientation : LibGtk::Orientation) : Bool
  fun widget_create_pango_context = gtk_widget_create_pango_context(this : Widget*) : LibPango::Context*
  fun widget_create_pango_layout = gtk_widget_create_pango_layout(this : Widget*, text : UInt8*) : LibPango::Layout*
  fun widget_destroy = gtk_widget_destroy(this : Widget*) : Void
  fun widget_destroyed = gtk_widget_destroyed(this : Widget*, widget_pointer : LibGtk::Widget**) : Void
  fun widget_device_is_shadowed = gtk_widget_device_is_shadowed(this : Widget*, device : LibGdk::Device*) : Bool
  fun widget_drag_begin = gtk_drag_begin(this : Widget*, targets : LibGtk::TargetList*, actions : LibGdk::DragAction, button : Int32, event : LibGdk::Event*) : LibGdk::DragContext*
  fun widget_drag_begin_with_coordinates = gtk_drag_begin_with_coordinates(this : Widget*, targets : LibGtk::TargetList*, actions : LibGdk::DragAction, button : Int32, event : LibGdk::Event*, x : Int32, y : Int32) : LibGdk::DragContext*
  fun widget_drag_check_threshold = gtk_drag_check_threshold(this : Widget*, start_x : Int32, start_y : Int32, current_x : Int32, current_y : Int32) : Bool
  fun widget_drag_dest_add_image_targets = gtk_drag_dest_add_image_targets(this : Widget*) : Void
  fun widget_drag_dest_add_text_targets = gtk_drag_dest_add_text_targets(this : Widget*) : Void
  fun widget_drag_dest_add_uri_targets = gtk_drag_dest_add_uri_targets(this : Widget*) : Void
  fun widget_drag_dest_find_target = gtk_drag_dest_find_target(this : Widget*, context : LibGdk::DragContext*, target_list : LibGtk::TargetList*) : LibGdk::Atom*
  fun widget_drag_dest_get_target_list = gtk_drag_dest_get_target_list(this : Widget*) : LibGtk::TargetList*
  fun widget_drag_dest_get_track_motion = gtk_drag_dest_get_track_motion(this : Widget*) : Bool
  fun widget_drag_dest_set = gtk_drag_dest_set(this : Widget*, flags : LibGtk::DestDefaults, targets : LibGtk::TargetEntry*, n_targets : Int32, actions : LibGdk::DragAction) : Void
  fun widget_drag_dest_set_proxy = gtk_drag_dest_set_proxy(this : Widget*, proxy_window : LibGdk::Window*, protocol : LibGdk::DragProtocol, use_coordinates : Bool) : Void
  fun widget_drag_dest_set_target_list = gtk_drag_dest_set_target_list(this : Widget*, target_list : LibGtk::TargetList*) : Void
  fun widget_drag_dest_set_track_motion = gtk_drag_dest_set_track_motion(this : Widget*, track_motion : Bool) : Void
  fun widget_drag_dest_unset = gtk_drag_dest_unset(this : Widget*) : Void
  fun widget_drag_get_data = gtk_drag_get_data(this : Widget*, context : LibGdk::DragContext*, target : LibGdk::Atom*, time : UInt32) : Void
  fun widget_drag_highlight = gtk_drag_highlight(this : Widget*) : Void
  fun widget_drag_source_add_image_targets = gtk_drag_source_add_image_targets(this : Widget*) : Void
  fun widget_drag_source_add_text_targets = gtk_drag_source_add_text_targets(this : Widget*) : Void
  fun widget_drag_source_add_uri_targets = gtk_drag_source_add_uri_targets(this : Widget*) : Void
  fun widget_drag_source_get_target_list = gtk_drag_source_get_target_list(this : Widget*) : LibGtk::TargetList*
  fun widget_drag_source_set = gtk_drag_source_set(this : Widget*, start_button_mask : LibGdk::ModifierType, targets : LibGtk::TargetEntry*, n_targets : Int32, actions : LibGdk::DragAction) : Void
  fun widget_drag_source_set_icon_gicon = gtk_drag_source_set_icon_gicon(this : Widget*, icon : LibGio::Icon*) : Void
  fun widget_drag_source_set_icon_name = gtk_drag_source_set_icon_name(this : Widget*, icon_name : UInt8*) : Void
  fun widget_drag_source_set_icon_pixbuf = gtk_drag_source_set_icon_pixbuf(this : Widget*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun widget_drag_source_set_icon_stock = gtk_drag_source_set_icon_stock(this : Widget*, stock_id : UInt8*) : Void
  fun widget_drag_source_set_target_list = gtk_drag_source_set_target_list(this : Widget*, target_list : LibGtk::TargetList*) : Void
  fun widget_drag_source_unset = gtk_drag_source_unset(this : Widget*) : Void
  fun widget_drag_unhighlight = gtk_drag_unhighlight(this : Widget*) : Void
  fun widget_draw = gtk_widget_draw(this : Widget*, cr : LibCairo::Context*) : Void
  fun widget_ensure_style = gtk_widget_ensure_style(this : Widget*) : Void
  fun widget_error_bell = gtk_widget_error_bell(this : Widget*) : Void
  fun widget_event = gtk_widget_event(this : Widget*, event : LibGdk::Event*) : Bool
  fun widget_freeze_child_notify = gtk_widget_freeze_child_notify(this : Widget*) : Void
  fun widget_get_accessible = gtk_widget_get_accessible(this : Widget*) : LibAtk::Object*
  fun widget_get_action_group = gtk_widget_get_action_group(this : Widget*, prefix : UInt8*) : LibGio::ActionGroup*
  fun widget_get_allocated_baseline = gtk_widget_get_allocated_baseline(this : Widget*) : Int32
  fun widget_get_allocated_height = gtk_widget_get_allocated_height(this : Widget*) : Int32
  fun widget_get_allocated_size = gtk_widget_get_allocated_size(this : Widget*, allocation : LibGdk::Rectangle*, baseline : Int32*) : Void
  fun widget_get_allocated_width = gtk_widget_get_allocated_width(this : Widget*) : Int32
  fun widget_get_allocation = gtk_widget_get_allocation(this : Widget*, allocation : LibGdk::Rectangle*) : Void
  fun widget_get_ancestor = gtk_widget_get_ancestor(this : Widget*, widget_type : UInt64) : LibGtk::Widget*
  fun widget_get_app_paintable = gtk_widget_get_app_paintable(this : Widget*) : Bool
  fun widget_get_can_default = gtk_widget_get_can_default(this : Widget*) : Bool
  fun widget_get_can_focus = gtk_widget_get_can_focus(this : Widget*) : Bool
  fun widget_get_child_requisition = gtk_widget_get_child_requisition(this : Widget*, requisition : LibGtk::Requisition*) : Void
  fun widget_get_child_visible = gtk_widget_get_child_visible(this : Widget*) : Bool
  fun widget_get_clip = gtk_widget_get_clip(this : Widget*, clip : LibGdk::Rectangle*) : Void
  fun widget_get_clipboard = gtk_widget_get_clipboard(this : Widget*, selection : LibGdk::Atom*) : LibGtk::Clipboard*
  fun widget_get_composite_name = gtk_widget_get_composite_name(this : Widget*) : UInt8*
  fun widget_get_device_enabled = gtk_widget_get_device_enabled(this : Widget*, device : LibGdk::Device*) : Bool
  fun widget_get_device_events = gtk_widget_get_device_events(this : Widget*, device : LibGdk::Device*) : LibGdk::EventMask
  fun widget_get_direction = gtk_widget_get_direction(this : Widget*) : LibGtk::TextDirection
  fun widget_get_display = gtk_widget_get_display(this : Widget*) : LibGdk::Display*
  fun widget_get_double_buffered = gtk_widget_get_double_buffered(this : Widget*) : Bool
  fun widget_get_events = gtk_widget_get_events(this : Widget*) : Int32
  fun widget_get_focus_on_click = gtk_widget_get_focus_on_click(this : Widget*) : Bool
  fun widget_get_font_map = gtk_widget_get_font_map(this : Widget*) : LibPango::FontMap*
  fun widget_get_font_options = gtk_widget_get_font_options(this : Widget*) : LibCairo::FontOptions*
  fun widget_get_frame_clock = gtk_widget_get_frame_clock(this : Widget*) : LibGdk::FrameClock*
  fun widget_get_halign = gtk_widget_get_halign(this : Widget*) : LibGtk::Align
  fun widget_get_has_tooltip = gtk_widget_get_has_tooltip(this : Widget*) : Bool
  fun widget_get_has_window = gtk_widget_get_has_window(this : Widget*) : Bool
  fun widget_get_hexpand = gtk_widget_get_hexpand(this : Widget*) : Bool
  fun widget_get_hexpand_set = gtk_widget_get_hexpand_set(this : Widget*) : Bool
  fun widget_get_mapped = gtk_widget_get_mapped(this : Widget*) : Bool
  fun widget_get_margin_bottom = gtk_widget_get_margin_bottom(this : Widget*) : Int32
  fun widget_get_margin_end = gtk_widget_get_margin_end(this : Widget*) : Int32
  fun widget_get_margin_left = gtk_widget_get_margin_left(this : Widget*) : Int32
  fun widget_get_margin_right = gtk_widget_get_margin_right(this : Widget*) : Int32
  fun widget_get_margin_start = gtk_widget_get_margin_start(this : Widget*) : Int32
  fun widget_get_margin_top = gtk_widget_get_margin_top(this : Widget*) : Int32
  fun widget_get_modifier_mask = gtk_widget_get_modifier_mask(this : Widget*, intent : LibGdk::ModifierIntent) : LibGdk::ModifierType
  fun widget_get_modifier_style = gtk_widget_get_modifier_style(this : Widget*) : LibGtk::RcStyle*
  fun widget_get_name = gtk_widget_get_name(this : Widget*) : UInt8*
  fun widget_get_no_show_all = gtk_widget_get_no_show_all(this : Widget*) : Bool
  fun widget_get_opacity = gtk_widget_get_opacity(this : Widget*) : Float64
  fun widget_get_pango_context = gtk_widget_get_pango_context(this : Widget*) : LibPango::Context*
  fun widget_get_parent = gtk_widget_get_parent(this : Widget*) : LibGtk::Widget*
  fun widget_get_parent_window = gtk_widget_get_parent_window(this : Widget*) : LibGdk::Window*
  fun widget_get_path = gtk_widget_get_path(this : Widget*) : LibGtk::WidgetPath*
  fun widget_get_pointer = gtk_widget_get_pointer(this : Widget*, x : Int32*, y : Int32*) : Void
  fun widget_get_preferred_height = gtk_widget_get_preferred_height(this : Widget*, minimum_height : Int32*, natural_height : Int32*) : Void
  fun widget_get_preferred_height_and_baseline_for_width = gtk_widget_get_preferred_height_and_baseline_for_width(this : Widget*, width : Int32, minimum_height : Int32*, natural_height : Int32*, minimum_baseline : Int32*, natural_baseline : Int32*) : Void
  fun widget_get_preferred_height_for_width = gtk_widget_get_preferred_height_for_width(this : Widget*, width : Int32, minimum_height : Int32*, natural_height : Int32*) : Void
  fun widget_get_preferred_size = gtk_widget_get_preferred_size(this : Widget*, minimum_size : LibGtk::Requisition*, natural_size : LibGtk::Requisition*) : Void
  fun widget_get_preferred_width = gtk_widget_get_preferred_width(this : Widget*, minimum_width : Int32*, natural_width : Int32*) : Void
  fun widget_get_preferred_width_for_height = gtk_widget_get_preferred_width_for_height(this : Widget*, height : Int32, minimum_width : Int32*, natural_width : Int32*) : Void
  fun widget_get_realized = gtk_widget_get_realized(this : Widget*) : Bool
  fun widget_get_receives_default = gtk_widget_get_receives_default(this : Widget*) : Bool
  fun widget_get_request_mode = gtk_widget_get_request_mode(this : Widget*) : LibGtk::SizeRequestMode
  fun widget_get_requisition = gtk_widget_get_requisition(this : Widget*, requisition : LibGtk::Requisition*) : Void
  fun widget_get_root_window = gtk_widget_get_root_window(this : Widget*) : LibGdk::Window*
  fun widget_get_scale_factor = gtk_widget_get_scale_factor(this : Widget*) : Int32
  fun widget_get_screen = gtk_widget_get_screen(this : Widget*) : LibGdk::Screen*
  fun widget_get_sensitive = gtk_widget_get_sensitive(this : Widget*) : Bool
  fun widget_get_settings = gtk_widget_get_settings(this : Widget*) : LibGtk::Settings*
  fun widget_get_size_request = gtk_widget_get_size_request(this : Widget*, width : Int32*, height : Int32*) : Void
  fun widget_get_state = gtk_widget_get_state(this : Widget*) : LibGtk::StateType
  fun widget_get_state_flags = gtk_widget_get_state_flags(this : Widget*) : LibGtk::StateFlags
  fun widget_get_style = gtk_widget_get_style(this : Widget*) : LibGtk::Style*
  fun widget_get_style_context = gtk_widget_get_style_context(this : Widget*) : LibGtk::StyleContext*
  fun widget_get_support_multidevice = gtk_widget_get_support_multidevice(this : Widget*) : Bool
  fun widget_get_template_child = gtk_widget_get_template_child(this : Widget*, widget_type : UInt64, name : UInt8*) : LibGObject::Object*
  fun widget_get_tooltip_markup = gtk_widget_get_tooltip_markup(this : Widget*) : UInt8*
  fun widget_get_tooltip_text = gtk_widget_get_tooltip_text(this : Widget*) : UInt8*
  fun widget_get_tooltip_window = gtk_widget_get_tooltip_window(this : Widget*) : LibGtk::Window*
  fun widget_get_toplevel = gtk_widget_get_toplevel(this : Widget*) : LibGtk::Widget*
  fun widget_get_valign = gtk_widget_get_valign(this : Widget*) : LibGtk::Align
  fun widget_get_valign_with_baseline = gtk_widget_get_valign_with_baseline(this : Widget*) : LibGtk::Align
  fun widget_get_vexpand = gtk_widget_get_vexpand(this : Widget*) : Bool
  fun widget_get_vexpand_set = gtk_widget_get_vexpand_set(this : Widget*) : Bool
  fun widget_get_visible = gtk_widget_get_visible(this : Widget*) : Bool
  fun widget_get_visual = gtk_widget_get_visual(this : Widget*) : LibGdk::Visual*
  fun widget_get_window = gtk_widget_get_window(this : Widget*) : LibGdk::Window*
  fun widget_grab_add = gtk_grab_add(this : Widget*) : Void
  fun widget_grab_default = gtk_widget_grab_default(this : Widget*) : Void
  fun widget_grab_focus = gtk_widget_grab_focus(this : Widget*) : Void
  fun widget_grab_remove = gtk_grab_remove(this : Widget*) : Void
  fun widget_has_default = gtk_widget_has_default(this : Widget*) : Bool
  fun widget_has_focus = gtk_widget_has_focus(this : Widget*) : Bool
  fun widget_has_grab = gtk_widget_has_grab(this : Widget*) : Bool
  fun widget_has_rc_style = gtk_widget_has_rc_style(this : Widget*) : Bool
  fun widget_has_screen = gtk_widget_has_screen(this : Widget*) : Bool
  fun widget_has_visible_focus = gtk_widget_has_visible_focus(this : Widget*) : Bool
  fun widget_hide = gtk_widget_hide(this : Widget*) : Void
  fun widget_hide_on_delete = gtk_widget_hide_on_delete(this : Widget*) : Bool
  fun widget_in_destruction = gtk_widget_in_destruction(this : Widget*) : Bool
  fun widget_init_template = gtk_widget_init_template(this : Widget*) : Void
  fun widget_input_shape_combine_region = gtk_widget_input_shape_combine_region(this : Widget*, region : LibCairo::Region*) : Void
  fun widget_insert_action_group = gtk_widget_insert_action_group(this : Widget*, name : UInt8*, group : LibGio::ActionGroup*) : Void
  fun widget_intersect = gtk_widget_intersect(this : Widget*, area : LibGdk::Rectangle*, intersection : LibGdk::Rectangle*) : Bool
  fun widget_is_ancestor = gtk_widget_is_ancestor(this : Widget*, ancestor : LibGtk::Widget*) : Bool
  fun widget_is_composited = gtk_widget_is_composited(this : Widget*) : Bool
  fun widget_is_drawable = gtk_widget_is_drawable(this : Widget*) : Bool
  fun widget_is_focus = gtk_widget_is_focus(this : Widget*) : Bool
  fun widget_is_sensitive = gtk_widget_is_sensitive(this : Widget*) : Bool
  fun widget_is_toplevel = gtk_widget_is_toplevel(this : Widget*) : Bool
  fun widget_is_visible = gtk_widget_is_visible(this : Widget*) : Bool
  fun widget_keynav_failed = gtk_widget_keynav_failed(this : Widget*, direction : LibGtk::DirectionType) : Bool
  fun widget_list_accel_closures = gtk_widget_list_accel_closures(this : Widget*) : Void**
  fun widget_list_action_prefixes = gtk_widget_list_action_prefixes(this : Widget*) : UInt8**
  fun widget_list_mnemonic_labels = gtk_widget_list_mnemonic_labels(this : Widget*) : Void**
  fun widget_map = gtk_widget_map(this : Widget*) : Void
  fun widget_mnemonic_activate = gtk_widget_mnemonic_activate(this : Widget*, group_cycling : Bool) : Bool
  fun widget_modify_base = gtk_widget_modify_base(this : Widget*, state : LibGtk::StateType, color : LibGdk::Color*) : Void
  fun widget_modify_bg = gtk_widget_modify_bg(this : Widget*, state : LibGtk::StateType, color : LibGdk::Color*) : Void
  fun widget_modify_cursor = gtk_widget_modify_cursor(this : Widget*, primary : LibGdk::Color*, secondary : LibGdk::Color*) : Void
  fun widget_modify_fg = gtk_widget_modify_fg(this : Widget*, state : LibGtk::StateType, color : LibGdk::Color*) : Void
  fun widget_modify_font = gtk_widget_modify_font(this : Widget*, font_desc : LibPango::FontDescription*) : Void
  fun widget_modify_style = gtk_widget_modify_style(this : Widget*, style : LibGtk::RcStyle*) : Void
  fun widget_modify_text = gtk_widget_modify_text(this : Widget*, state : LibGtk::StateType, color : LibGdk::Color*) : Void
  fun widget_override_background_color = gtk_widget_override_background_color(this : Widget*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun widget_override_color = gtk_widget_override_color(this : Widget*, state : LibGtk::StateFlags, color : LibGdk::RGBA*) : Void
  fun widget_override_cursor = gtk_widget_override_cursor(this : Widget*, cursor : LibGdk::RGBA*, secondary_cursor : LibGdk::RGBA*) : Void
  fun widget_override_font = gtk_widget_override_font(this : Widget*, font_desc : LibPango::FontDescription*) : Void
  fun widget_override_symbolic_color = gtk_widget_override_symbolic_color(this : Widget*, name : UInt8*, color : LibGdk::RGBA*) : Void
  fun widget_path = gtk_widget_path(this : Widget*, path_length : UInt32*, path : UInt8**, path_reversed : UInt8**) : Void
  fun widget_queue_allocate = gtk_widget_queue_allocate(this : Widget*) : Void
  fun widget_queue_compute_expand = gtk_widget_queue_compute_expand(this : Widget*) : Void
  fun widget_queue_draw = gtk_widget_queue_draw(this : Widget*) : Void
  fun widget_queue_draw_area = gtk_widget_queue_draw_area(this : Widget*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun widget_queue_draw_region = gtk_widget_queue_draw_region(this : Widget*, region : LibCairo::Region*) : Void
  fun widget_queue_resize = gtk_widget_queue_resize(this : Widget*) : Void
  fun widget_queue_resize_no_redraw = gtk_widget_queue_resize_no_redraw(this : Widget*) : Void
  fun widget_realize = gtk_widget_realize(this : Widget*) : Void
  fun widget_region_intersect = gtk_widget_region_intersect(this : Widget*, region : LibCairo::Region*) : LibCairo::Region*
  fun widget_register_window = gtk_widget_register_window(this : Widget*, window : LibGdk::Window*) : Void
  fun widget_remove_accelerator = gtk_widget_remove_accelerator(this : Widget*, accel_group : LibGtk::AccelGroup*, accel_key : UInt32, accel_mods : LibGdk::ModifierType) : Bool
  fun widget_remove_mnemonic_label = gtk_widget_remove_mnemonic_label(this : Widget*, label : LibGtk::Widget*) : Void
  fun widget_remove_tick_callback = gtk_widget_remove_tick_callback(this : Widget*, id : UInt32) : Void
  fun widget_render_icon = gtk_widget_render_icon(this : Widget*, stock_id : UInt8*, size : Int32, detail : UInt8*) : LibGdkPixbuf::Pixbuf*
  fun widget_render_icon_pixbuf = gtk_widget_render_icon_pixbuf(this : Widget*, stock_id : UInt8*, size : Int32) : LibGdkPixbuf::Pixbuf*
  fun widget_reparent = gtk_widget_reparent(this : Widget*, new_parent : LibGtk::Widget*) : Void
  fun widget_reset_rc_styles = gtk_widget_reset_rc_styles(this : Widget*) : Void
  fun widget_reset_style = gtk_widget_reset_style(this : Widget*) : Void
  fun widget_send_expose = gtk_widget_send_expose(this : Widget*, event : LibGdk::Event*) : Int32
  fun widget_send_focus_change = gtk_widget_send_focus_change(this : Widget*, event : LibGdk::Event*) : Bool
  fun widget_set_accel_path = gtk_widget_set_accel_path(this : Widget*, accel_path : UInt8*, accel_group : LibGtk::AccelGroup*) : Void
  fun widget_set_allocation = gtk_widget_set_allocation(this : Widget*, allocation : LibGdk::Rectangle*) : Void
  fun widget_set_app_paintable = gtk_widget_set_app_paintable(this : Widget*, app_paintable : Bool) : Void
  fun widget_set_can_default = gtk_widget_set_can_default(this : Widget*, can_default : Bool) : Void
  fun widget_set_can_focus = gtk_widget_set_can_focus(this : Widget*, can_focus : Bool) : Void
  fun widget_set_child_visible = gtk_widget_set_child_visible(this : Widget*, is_visible : Bool) : Void
  fun widget_set_clip = gtk_widget_set_clip(this : Widget*, clip : LibGdk::Rectangle*) : Void
  fun widget_set_composite_name = gtk_widget_set_composite_name(this : Widget*, name : UInt8*) : Void
  fun widget_set_device_enabled = gtk_widget_set_device_enabled(this : Widget*, device : LibGdk::Device*, enabled : Bool) : Void
  fun widget_set_device_events = gtk_widget_set_device_events(this : Widget*, device : LibGdk::Device*, events : LibGdk::EventMask) : Void
  fun widget_set_direction = gtk_widget_set_direction(this : Widget*, dir : LibGtk::TextDirection) : Void
  fun widget_set_double_buffered = gtk_widget_set_double_buffered(this : Widget*, double_buffered : Bool) : Void
  fun widget_set_events = gtk_widget_set_events(this : Widget*, events : Int32) : Void
  fun widget_set_focus_on_click = gtk_widget_set_focus_on_click(this : Widget*, focus_on_click : Bool) : Void
  fun widget_set_font_map = gtk_widget_set_font_map(this : Widget*, font_map : LibPango::FontMap*) : Void
  fun widget_set_font_options = gtk_widget_set_font_options(this : Widget*, options : LibCairo::FontOptions*) : Void
  fun widget_set_halign = gtk_widget_set_halign(this : Widget*, align : LibGtk::Align) : Void
  fun widget_set_has_tooltip = gtk_widget_set_has_tooltip(this : Widget*, has_tooltip : Bool) : Void
  fun widget_set_has_window = gtk_widget_set_has_window(this : Widget*, has_window : Bool) : Void
  fun widget_set_hexpand = gtk_widget_set_hexpand(this : Widget*, expand : Bool) : Void
  fun widget_set_hexpand_set = gtk_widget_set_hexpand_set(this : Widget*, set : Bool) : Void
  fun widget_set_mapped = gtk_widget_set_mapped(this : Widget*, mapped : Bool) : Void
  fun widget_set_margin_bottom = gtk_widget_set_margin_bottom(this : Widget*, margin : Int32) : Void
  fun widget_set_margin_end = gtk_widget_set_margin_end(this : Widget*, margin : Int32) : Void
  fun widget_set_margin_left = gtk_widget_set_margin_left(this : Widget*, margin : Int32) : Void
  fun widget_set_margin_right = gtk_widget_set_margin_right(this : Widget*, margin : Int32) : Void
  fun widget_set_margin_start = gtk_widget_set_margin_start(this : Widget*, margin : Int32) : Void
  fun widget_set_margin_top = gtk_widget_set_margin_top(this : Widget*, margin : Int32) : Void
  fun widget_set_name = gtk_widget_set_name(this : Widget*, name : UInt8*) : Void
  fun widget_set_no_show_all = gtk_widget_set_no_show_all(this : Widget*, no_show_all : Bool) : Void
  fun widget_set_opacity = gtk_widget_set_opacity(this : Widget*, opacity : Float64) : Void
  fun widget_set_parent = gtk_widget_set_parent(this : Widget*, parent : LibGtk::Widget*) : Void
  fun widget_set_parent_window = gtk_widget_set_parent_window(this : Widget*, parent_window : LibGdk::Window*) : Void
  fun widget_set_realized = gtk_widget_set_realized(this : Widget*, realized : Bool) : Void
  fun widget_set_receives_default = gtk_widget_set_receives_default(this : Widget*, receives_default : Bool) : Void
  fun widget_set_redraw_on_allocate = gtk_widget_set_redraw_on_allocate(this : Widget*, redraw_on_allocate : Bool) : Void
  fun widget_set_sensitive = gtk_widget_set_sensitive(this : Widget*, sensitive : Bool) : Void
  fun widget_set_size_request = gtk_widget_set_size_request(this : Widget*, width : Int32, height : Int32) : Void
  fun widget_set_state = gtk_widget_set_state(this : Widget*, state : LibGtk::StateType) : Void
  fun widget_set_state_flags = gtk_widget_set_state_flags(this : Widget*, flags : LibGtk::StateFlags, clear : Bool) : Void
  fun widget_set_style = gtk_widget_set_style(this : Widget*, style : LibGtk::Style*) : Void
  fun widget_set_support_multidevice = gtk_widget_set_support_multidevice(this : Widget*, support_multidevice : Bool) : Void
  fun widget_set_tooltip_markup = gtk_widget_set_tooltip_markup(this : Widget*, markup : UInt8*) : Void
  fun widget_set_tooltip_text = gtk_widget_set_tooltip_text(this : Widget*, text : UInt8*) : Void
  fun widget_set_tooltip_window = gtk_widget_set_tooltip_window(this : Widget*, custom_window : LibGtk::Window*) : Void
  fun widget_set_valign = gtk_widget_set_valign(this : Widget*, align : LibGtk::Align) : Void
  fun widget_set_vexpand = gtk_widget_set_vexpand(this : Widget*, expand : Bool) : Void
  fun widget_set_vexpand_set = gtk_widget_set_vexpand_set(this : Widget*, set : Bool) : Void
  fun widget_set_visible = gtk_widget_set_visible(this : Widget*, visible : Bool) : Void
  fun widget_set_visual = gtk_widget_set_visual(this : Widget*, visual : LibGdk::Visual*) : Void
  fun widget_set_window = gtk_widget_set_window(this : Widget*, window : LibGdk::Window*) : Void
  fun widget_shape_combine_region = gtk_widget_shape_combine_region(this : Widget*, region : LibCairo::Region*) : Void
  fun widget_show = gtk_widget_show(this : Widget*) : Void
  fun widget_show_all = gtk_widget_show_all(this : Widget*) : Void
  fun widget_show_now = gtk_widget_show_now(this : Widget*) : Void
  fun widget_size_allocate = gtk_widget_size_allocate(this : Widget*, allocation : LibGdk::Rectangle*) : Void
  fun widget_size_allocate_with_baseline = gtk_widget_size_allocate_with_baseline(this : Widget*, allocation : LibGdk::Rectangle*, baseline : Int32) : Void
  fun widget_size_request = gtk_widget_size_request(this : Widget*, requisition : LibGtk::Requisition*) : Void
  fun widget_style_attach = gtk_widget_style_attach(this : Widget*) : Void
  fun widget_style_get_property = gtk_widget_style_get_property(this : Widget*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun widget_thaw_child_notify = gtk_widget_thaw_child_notify(this : Widget*) : Void
  fun widget_translate_coordinates = gtk_widget_translate_coordinates(this : Widget*, dest_widget : LibGtk::Widget*, src_x : Int32, src_y : Int32, dest_x : Int32*, dest_y : Int32*) : Bool
  fun widget_trigger_tooltip_query = gtk_widget_trigger_tooltip_query(this : Widget*) : Void
  fun widget_unmap = gtk_widget_unmap(this : Widget*) : Void
  fun widget_unparent = gtk_widget_unparent(this : Widget*) : Void
  fun widget_unrealize = gtk_widget_unrealize(this : Widget*) : Void
  fun widget_unregister_window = gtk_widget_unregister_window(this : Widget*, window : LibGdk::Window*) : Void
  fun widget_unset_state_flags = gtk_widget_unset_state_flags(this : Widget*, flags : LibGtk::StateFlags) : Void

  struct WidgetAccessible # object
    parent : LibGtk::Accessible*
    priv : LibGtk::WidgetAccessiblePrivate*
  end

  struct Window # object
    bin : LibGtk::Bin*
    priv : LibGtk::WindowPrivate*
    # Signal activate-default
    # Signal activate-focus
    # Signal enable-debugging
    # Signal keys-changed
    # Signal set-focus
    # Virtual function activate_default
    # Virtual function activate_focus
    # Virtual function enable_debugging
    # Virtual function keys_changed
    # Virtual function set_focus
    # Property accept_focus : Bool
    # Property application : LibGtk::Application*
    # Property attached_to : LibGtk::Widget*
    # Property decorated : Bool
    # Property default_height : Int32
    # Property default_width : Int32
    # Property deletable : Bool
    # Property destroy_with_parent : Bool
    # Property focus_on_map : Bool
    # Property focus_visible : Bool
    # Property gravity : LibGdk::Gravity
    # Property has_resize_grip : Bool
    # Property has_toplevel_focus : Bool
    # Property hide_titlebar_when_maximized : Bool
    # Property icon : LibGdkPixbuf::Pixbuf*
    # Property icon_name : UInt8*
    # Property is_active : Bool
    # Property is_maximized : Bool
    # Property mnemonics_visible : Bool
    # Property modal : Bool
    # Property resizable : Bool
    # Property resize_grip_visible : Bool
    # Property role : UInt8*
    # Property screen : LibGdk::Screen*
    # Property skip_pager_hint : Bool
    # Property skip_taskbar_hint : Bool
    # Property startup_id : UInt8*
    # Property title : UInt8*
    # Property transient_for : LibGtk::Window*
    # Property type : LibGtk::WindowType
    # Property type_hint : LibGdk::WindowTypeHint
    # Property urgency_hint : Bool
    # Property window_position : LibGtk::WindowPosition
  end
  fun window_new = gtk_window_new(type : LibGtk::WindowType) : LibGtk::Widget*
  fun window_get_default_icon_list = gtk_window_get_default_icon_list() : Void**
  fun window_get_default_icon_name = gtk_window_get_default_icon_name() : UInt8*
  fun window_list_toplevels = gtk_window_list_toplevels() : Void**
  fun window_set_auto_startup_notification = gtk_window_set_auto_startup_notification(setting : Bool) : Void
  fun window_set_default_icon = gtk_window_set_default_icon(icon : LibGdkPixbuf::Pixbuf*) : Void
  fun window_set_default_icon_from_file = gtk_window_set_default_icon_from_file(filename : UInt8*, error : LibGLib::Error**) : Bool
  fun window_set_default_icon_list = gtk_window_set_default_icon_list(list : Void**) : Void
  fun window_set_default_icon_name = gtk_window_set_default_icon_name(name : UInt8*) : Void
  fun window_set_interactive_debugging = gtk_window_set_interactive_debugging(enable : Bool) : Void
  fun window_activate_default = gtk_window_activate_default(this : Window*) : Bool
  fun window_activate_focus = gtk_window_activate_focus(this : Window*) : Bool
  fun window_activate_key = gtk_window_activate_key(this : Window*, event : LibGdk::EventKey*) : Bool
  fun window_add_accel_group = gtk_window_add_accel_group(this : Window*, accel_group : LibGtk::AccelGroup*) : Void
  fun window_add_mnemonic = gtk_window_add_mnemonic(this : Window*, keyval : UInt32, target : LibGtk::Widget*) : Void
  fun window_begin_move_drag = gtk_window_begin_move_drag(this : Window*, button : Int32, root_x : Int32, root_y : Int32, timestamp : UInt32) : Void
  fun window_begin_resize_drag = gtk_window_begin_resize_drag(this : Window*, edge : LibGdk::WindowEdge, button : Int32, root_x : Int32, root_y : Int32, timestamp : UInt32) : Void
  fun window_close = gtk_window_close(this : Window*) : Void
  fun window_deiconify = gtk_window_deiconify(this : Window*) : Void
  fun window_fullscreen = gtk_window_fullscreen(this : Window*) : Void
  fun window_fullscreen_on_monitor = gtk_window_fullscreen_on_monitor(this : Window*, screen : LibGdk::Screen*, monitor : Int32) : Void
  fun window_get_accept_focus = gtk_window_get_accept_focus(this : Window*) : Bool
  fun window_get_application = gtk_window_get_application(this : Window*) : LibGtk::Application*
  fun window_get_attached_to = gtk_window_get_attached_to(this : Window*) : LibGtk::Widget*
  fun window_get_decorated = gtk_window_get_decorated(this : Window*) : Bool
  fun window_get_default_size = gtk_window_get_default_size(this : Window*, width : Int32*, height : Int32*) : Void
  fun window_get_default_widget = gtk_window_get_default_widget(this : Window*) : LibGtk::Widget*
  fun window_get_deletable = gtk_window_get_deletable(this : Window*) : Bool
  fun window_get_destroy_with_parent = gtk_window_get_destroy_with_parent(this : Window*) : Bool
  fun window_get_focus = gtk_window_get_focus(this : Window*) : LibGtk::Widget*
  fun window_get_focus_on_map = gtk_window_get_focus_on_map(this : Window*) : Bool
  fun window_get_focus_visible = gtk_window_get_focus_visible(this : Window*) : Bool
  fun window_get_gravity = gtk_window_get_gravity(this : Window*) : LibGdk::Gravity
  fun window_get_group = gtk_window_get_group(this : Window*) : LibGtk::WindowGroup*
  fun window_get_has_resize_grip = gtk_window_get_has_resize_grip(this : Window*) : Bool
  fun window_get_hide_titlebar_when_maximized = gtk_window_get_hide_titlebar_when_maximized(this : Window*) : Bool
  fun window_get_icon = gtk_window_get_icon(this : Window*) : LibGdkPixbuf::Pixbuf*
  fun window_get_icon_list = gtk_window_get_icon_list(this : Window*) : Void**
  fun window_get_icon_name = gtk_window_get_icon_name(this : Window*) : UInt8*
  fun window_get_mnemonic_modifier = gtk_window_get_mnemonic_modifier(this : Window*) : LibGdk::ModifierType
  fun window_get_mnemonics_visible = gtk_window_get_mnemonics_visible(this : Window*) : Bool
  fun window_get_modal = gtk_window_get_modal(this : Window*) : Bool
  fun window_get_opacity = gtk_window_get_opacity(this : Window*) : Float64
  fun window_get_position = gtk_window_get_position(this : Window*, root_x : Int32*, root_y : Int32*) : Void
  fun window_get_resizable = gtk_window_get_resizable(this : Window*) : Bool
  fun window_get_resize_grip_area = gtk_window_get_resize_grip_area(this : Window*, rect : LibGdk::Rectangle*) : Bool
  fun window_get_role = gtk_window_get_role(this : Window*) : UInt8*
  fun window_get_screen = gtk_window_get_screen(this : Window*) : LibGdk::Screen*
  fun window_get_size = gtk_window_get_size(this : Window*, width : Int32*, height : Int32*) : Void
  fun window_get_skip_pager_hint = gtk_window_get_skip_pager_hint(this : Window*) : Bool
  fun window_get_skip_taskbar_hint = gtk_window_get_skip_taskbar_hint(this : Window*) : Bool
  fun window_get_title = gtk_window_get_title(this : Window*) : UInt8*
  fun window_get_titlebar = gtk_window_get_titlebar(this : Window*) : LibGtk::Widget*
  fun window_get_transient_for = gtk_window_get_transient_for(this : Window*) : LibGtk::Window*
  fun window_get_type_hint = gtk_window_get_type_hint(this : Window*) : LibGdk::WindowTypeHint
  fun window_get_urgency_hint = gtk_window_get_urgency_hint(this : Window*) : Bool
  fun window_get_window_type = gtk_window_get_window_type(this : Window*) : LibGtk::WindowType
  fun window_has_group = gtk_window_has_group(this : Window*) : Bool
  fun window_has_toplevel_focus = gtk_window_has_toplevel_focus(this : Window*) : Bool
  fun window_iconify = gtk_window_iconify(this : Window*) : Void
  fun window_is_active = gtk_window_is_active(this : Window*) : Bool
  fun window_is_maximized = gtk_window_is_maximized(this : Window*) : Bool
  fun window_maximize = gtk_window_maximize(this : Window*) : Void
  fun window_mnemonic_activate = gtk_window_mnemonic_activate(this : Window*, keyval : UInt32, modifier : LibGdk::ModifierType) : Bool
  fun window_move = gtk_window_move(this : Window*, x : Int32, y : Int32) : Void
  fun window_parse_geometry = gtk_window_parse_geometry(this : Window*, geometry : UInt8*) : Bool
  fun window_present = gtk_window_present(this : Window*) : Void
  fun window_present_with_time = gtk_window_present_with_time(this : Window*, timestamp : UInt32) : Void
  fun window_propagate_key_event = gtk_window_propagate_key_event(this : Window*, event : LibGdk::EventKey*) : Bool
  fun window_remove_accel_group = gtk_window_remove_accel_group(this : Window*, accel_group : LibGtk::AccelGroup*) : Void
  fun window_remove_mnemonic = gtk_window_remove_mnemonic(this : Window*, keyval : UInt32, target : LibGtk::Widget*) : Void
  fun window_reshow_with_initial_size = gtk_window_reshow_with_initial_size(this : Window*) : Void
  fun window_resize = gtk_window_resize(this : Window*, width : Int32, height : Int32) : Void
  fun window_resize_grip_is_visible = gtk_window_resize_grip_is_visible(this : Window*) : Bool
  fun window_resize_to_geometry = gtk_window_resize_to_geometry(this : Window*, width : Int32, height : Int32) : Void
  fun window_set_accept_focus = gtk_window_set_accept_focus(this : Window*, setting : Bool) : Void
  fun window_set_application = gtk_window_set_application(this : Window*, application : LibGtk::Application*) : Void
  fun window_set_attached_to = gtk_window_set_attached_to(this : Window*, attach_widget : LibGtk::Widget*) : Void
  fun window_set_decorated = gtk_window_set_decorated(this : Window*, setting : Bool) : Void
  fun window_set_default = gtk_window_set_default(this : Window*, default_widget : LibGtk::Widget*) : Void
  fun window_set_default_geometry = gtk_window_set_default_geometry(this : Window*, width : Int32, height : Int32) : Void
  fun window_set_default_size = gtk_window_set_default_size(this : Window*, width : Int32, height : Int32) : Void
  fun window_set_deletable = gtk_window_set_deletable(this : Window*, setting : Bool) : Void
  fun window_set_destroy_with_parent = gtk_window_set_destroy_with_parent(this : Window*, setting : Bool) : Void
  fun window_set_focus = gtk_window_set_focus(this : Window*, focus : LibGtk::Widget*) : Void
  fun window_set_focus_on_map = gtk_window_set_focus_on_map(this : Window*, setting : Bool) : Void
  fun window_set_focus_visible = gtk_window_set_focus_visible(this : Window*, setting : Bool) : Void
  fun window_set_geometry_hints = gtk_window_set_geometry_hints(this : Window*, geometry_widget : LibGtk::Widget*, geometry : LibGdk::Geometry*, geom_mask : LibGdk::WindowHints) : Void
  fun window_set_gravity = gtk_window_set_gravity(this : Window*, gravity : LibGdk::Gravity) : Void
  fun window_set_has_resize_grip = gtk_window_set_has_resize_grip(this : Window*, value : Bool) : Void
  fun window_set_has_user_ref_count = gtk_window_set_has_user_ref_count(this : Window*, setting : Bool) : Void
  fun window_set_hide_titlebar_when_maximized = gtk_window_set_hide_titlebar_when_maximized(this : Window*, setting : Bool) : Void
  fun window_set_icon = gtk_window_set_icon(this : Window*, icon : LibGdkPixbuf::Pixbuf*) : Void
  fun window_set_icon_from_file = gtk_window_set_icon_from_file(this : Window*, filename : UInt8*, error : LibGLib::Error**) : Bool
  fun window_set_icon_list = gtk_window_set_icon_list(this : Window*, list : Void**) : Void
  fun window_set_icon_name = gtk_window_set_icon_name(this : Window*, name : UInt8*) : Void
  fun window_set_keep_above = gtk_window_set_keep_above(this : Window*, setting : Bool) : Void
  fun window_set_keep_below = gtk_window_set_keep_below(this : Window*, setting : Bool) : Void
  fun window_set_mnemonic_modifier = gtk_window_set_mnemonic_modifier(this : Window*, modifier : LibGdk::ModifierType) : Void
  fun window_set_mnemonics_visible = gtk_window_set_mnemonics_visible(this : Window*, setting : Bool) : Void
  fun window_set_modal = gtk_window_set_modal(this : Window*, modal : Bool) : Void
  fun window_set_opacity = gtk_window_set_opacity(this : Window*, opacity : Float64) : Void
  fun window_set_position = gtk_window_set_position(this : Window*, position : LibGtk::WindowPosition) : Void
  fun window_set_resizable = gtk_window_set_resizable(this : Window*, resizable : Bool) : Void
  fun window_set_role = gtk_window_set_role(this : Window*, role : UInt8*) : Void
  fun window_set_screen = gtk_window_set_screen(this : Window*, screen : LibGdk::Screen*) : Void
  fun window_set_skip_pager_hint = gtk_window_set_skip_pager_hint(this : Window*, setting : Bool) : Void
  fun window_set_skip_taskbar_hint = gtk_window_set_skip_taskbar_hint(this : Window*, setting : Bool) : Void
  fun window_set_startup_id = gtk_window_set_startup_id(this : Window*, startup_id : UInt8*) : Void
  fun window_set_title = gtk_window_set_title(this : Window*, title : UInt8*) : Void
  fun window_set_titlebar = gtk_window_set_titlebar(this : Window*, titlebar : LibGtk::Widget*) : Void
  fun window_set_transient_for = gtk_window_set_transient_for(this : Window*, parent : LibGtk::Window*) : Void
  fun window_set_type_hint = gtk_window_set_type_hint(this : Window*, hint : LibGdk::WindowTypeHint) : Void
  fun window_set_urgency_hint = gtk_window_set_urgency_hint(this : Window*, setting : Bool) : Void
  fun window_set_wmclass = gtk_window_set_wmclass(this : Window*, wmclass_name : UInt8*, wmclass_class : UInt8*) : Void
  fun window_stick = gtk_window_stick(this : Window*) : Void
  fun window_unfullscreen = gtk_window_unfullscreen(this : Window*) : Void
  fun window_unmaximize = gtk_window_unmaximize(this : Window*) : Void
  fun window_unstick = gtk_window_unstick(this : Window*) : Void

  struct WindowAccessible # object
    parent : LibGtk::ContainerAccessible*
    priv : LibGtk::WindowAccessiblePrivate*
  end

  struct WindowGroup # object
    parent_instance : LibGObject::Object*
    priv : LibGtk::WindowGroupPrivate*
  end
  fun window_group_new = gtk_window_group_new() : LibGtk::WindowGroup*
  fun window_group_add_window = gtk_window_group_add_window(this : WindowGroup*, window : LibGtk::Window*) : Void
  fun window_group_get_current_device_grab = gtk_window_group_get_current_device_grab(this : WindowGroup*, device : LibGdk::Device*) : LibGtk::Widget*
  fun window_group_get_current_grab = gtk_window_group_get_current_grab(this : WindowGroup*) : LibGtk::Widget*
  fun window_group_list_windows = gtk_window_group_list_windows(this : WindowGroup*) : Void**
  fun window_group_remove_window = gtk_window_group_remove_window(this : WindowGroup*, window : LibGtk::Window*) : Void


  ###########################################
  ##    Structs
  ###########################################

  struct AboutDialogPrivate # struct
    _data : UInt8[0]
  end

  struct AccelGroupEntry # struct
    key : LibGtk::AccelKey
    closure : LibGObject::Closure*
    accel_path_quark : UInt32
  end

  struct AccelGroupPrivate # struct
    _data : UInt8[0]
  end

  struct AccelKey # struct
    accel_key : UInt32
    accel_mods : LibGdk::ModifierType
    accel_flags : UInt32
  end

  struct AccelLabelPrivate # struct
    _data : UInt8[0]
  end

  struct AccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ActionBarPrivate # struct
    _data : UInt8[0]
  end

  struct ActionEntry # struct
    name : UInt8*
    stock_id : UInt8*
    label : UInt8*
    accelerator : UInt8*
    tooltip : UInt8*
    callback : LibGObject::Callback
  end

  struct ActionGroupPrivate # struct
    _data : UInt8[0]
  end

  struct ActionPrivate # struct
    _data : UInt8[0]
  end

  struct AdjustmentPrivate # struct
    _data : UInt8[0]
  end

  struct AlignmentPrivate # struct
    _data : UInt8[0]
  end

  struct AppChooserButtonPrivate # struct
    _data : UInt8[0]
  end

  struct AppChooserDialogPrivate # struct
    _data : UInt8[0]
  end

  struct AppChooserWidgetPrivate # struct
    _data : UInt8[0]
  end

  struct ApplicationPrivate # struct
    _data : UInt8[0]
  end

  struct ApplicationWindowPrivate # struct
    _data : UInt8[0]
  end

  struct ArrowAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ArrowPrivate # struct
    _data : UInt8[0]
  end

  struct AspectFramePrivate # struct
    _data : UInt8[0]
  end

  struct AssistantPrivate # struct
    _data : UInt8[0]
  end

  struct BinPrivate # struct
    _data : UInt8[0]
  end

  struct BindingArg # struct
    arg_type : UInt64
  end

  struct BindingEntry # struct
    keyval : UInt32
    modifiers : LibGdk::ModifierType
    binding_set : LibGtk::BindingSet*
    destroyed : UInt32
    in_emission : UInt32
    marks_unbound : UInt32
    set_next : LibGtk::BindingEntry*
    hash_next : LibGtk::BindingEntry*
    signals : LibGtk::BindingSignal*
  end
  fun binding_entry_add_signal_from_string = gtk_binding_entry_add_signal_from_string(binding_set : LibGtk::BindingSet*, signal_desc : UInt8*) : LibGLib::TokenType
  fun binding_entry_add_signall = gtk_binding_entry_add_signall(binding_set : LibGtk::BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType, signal_name : UInt8*, binding_args : Void**) : Void
  fun binding_entry_remove = gtk_binding_entry_remove(binding_set : LibGtk::BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType) : Void
  fun binding_entry_skip = gtk_binding_entry_skip(binding_set : LibGtk::BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType) : Void

  struct BindingSet # struct
    set_name : UInt8*
    priority : Int32
    widget_path_pspecs : Void**
    widget_class_pspecs : Void**
    class_branch_pspecs : Void**
    entries : LibGtk::BindingEntry*
    current : LibGtk::BindingEntry*
    parsed : UInt32
  end
  fun binding_set_activate = gtk_binding_set_activate(this : BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType, object : LibGObject::Object*) : Bool
  fun binding_set_add_path = gtk_binding_set_add_path(this : BindingSet*, path_type : LibGtk::PathType, path_pattern : UInt8*, priority : LibGtk::PathPriorityType) : Void
  fun binding_set_find = gtk_binding_set_find(set_name : UInt8*) : LibGtk::BindingSet*

  struct BindingSignal # struct
    next_ : LibGtk::BindingSignal*
    signal_name : UInt8*
    n_args : UInt32
    args : LibGtk::BindingArg*
  end

  struct BooleanCellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct Border # struct
    left : Int16
    right : Int16
    top : Int16
    bottom : Int16
  end
  fun border_new = gtk_border_new() : LibGtk::Border*
  fun border_copy = gtk_border_copy(this : Border*) : LibGtk::Border*
  fun border_free = gtk_border_free(this : Border*) : Void

  struct BoxPrivate # struct
    _data : UInt8[0]
  end

  struct BuilderPrivate # struct
    _data : UInt8[0]
  end

  struct ButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ButtonBoxPrivate # struct
    _data : UInt8[0]
  end

  struct ButtonPrivate # struct
    _data : UInt8[0]
  end

  struct CalendarPrivate # struct
    _data : UInt8[0]
  end

  struct CellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct CellAreaBoxPrivate # struct
    _data : UInt8[0]
  end

  struct CellAreaContextPrivate # struct
    _data : UInt8[0]
  end

  struct CellAreaPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererAccelPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererClassPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererComboPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererPixbufPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererProgressPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererSpinPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererSpinnerPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererTextPrivate # struct
    _data : UInt8[0]
  end

  struct CellRendererTogglePrivate # struct
    _data : UInt8[0]
  end

  struct CellViewPrivate # struct
    _data : UInt8[0]
  end

  struct CheckMenuItemAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct CheckMenuItemPrivate # struct
    _data : UInt8[0]
  end

  struct ColorButtonPrivate # struct
    _data : UInt8[0]
  end

  struct ColorChooserDialogPrivate # struct
    _data : UInt8[0]
  end

  struct ColorChooserWidgetPrivate # struct
    _data : UInt8[0]
  end

  struct ColorSelectionDialogPrivate # struct
    _data : UInt8[0]
  end

  struct ColorSelectionPrivate # struct
    _data : UInt8[0]
  end

  struct ComboBoxAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ComboBoxPrivate # struct
    _data : UInt8[0]
  end

  struct ComboBoxTextPrivate # struct
    _data : UInt8[0]
  end

  struct ContainerAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ContainerCellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ContainerPrivate # struct
    _data : UInt8[0]
  end

  struct CssProviderPrivate # struct
    _data : UInt8[0]
  end

  struct CssSection # struct
    _data : UInt8[0]
  end
  fun css_section_get_end_line = gtk_css_section_get_end_line(this : CssSection*) : UInt32
  fun css_section_get_end_position = gtk_css_section_get_end_position(this : CssSection*) : UInt32
  fun css_section_get_file = gtk_css_section_get_file(this : CssSection*) : LibGio::File*
  fun css_section_get_parent = gtk_css_section_get_parent(this : CssSection*) : LibGtk::CssSection*
  fun css_section_get_section_type = gtk_css_section_get_section_type(this : CssSection*) : LibGtk::CssSectionType
  fun css_section_get_start_line = gtk_css_section_get_start_line(this : CssSection*) : UInt32
  fun css_section_get_start_position = gtk_css_section_get_start_position(this : CssSection*) : UInt32
  fun css_section_ref = gtk_css_section_ref(this : CssSection*) : LibGtk::CssSection*
  fun css_section_unref = gtk_css_section_unref(this : CssSection*) : Void

  struct DialogPrivate # struct
    _data : UInt8[0]
  end

  struct EntryAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct EntryBufferPrivate # struct
    _data : UInt8[0]
  end

  struct EntryCompletionPrivate # struct
    _data : UInt8[0]
  end

  struct EntryPrivate # struct
    _data : UInt8[0]
  end

  struct EventBoxPrivate # struct
    _data : UInt8[0]
  end

  struct ExpanderAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ExpanderPrivate # struct
    _data : UInt8[0]
  end

  struct FileChooserButtonPrivate # struct
    _data : UInt8[0]
  end

  struct FileChooserDialogPrivate # struct
    _data : UInt8[0]
  end

  struct FileChooserWidgetPrivate # struct
    _data : UInt8[0]
  end

  struct FileFilterInfo # struct
    contains : LibGtk::FileFilterFlags
    filename : UInt8*
    uri : UInt8*
    display_name : UInt8*
    mime_type : UInt8*
  end

  struct FixedChild # struct
    widget : LibGtk::Widget*
    x : Int32
    y : Int32
  end

  struct FixedPrivate # struct
    _data : UInt8[0]
  end

  struct FlowBoxAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct FontButtonPrivate # struct
    _data : UInt8[0]
  end

  struct FontChooserDialogPrivate # struct
    _data : UInt8[0]
  end

  struct FontChooserWidgetPrivate # struct
    _data : UInt8[0]
  end

  struct FontSelectionDialogPrivate # struct
    _data : UInt8[0]
  end

  struct FontSelectionPrivate # struct
    _data : UInt8[0]
  end

  struct FrameAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct FramePrivate # struct
    _data : UInt8[0]
  end

  struct Gradient # struct
    _data : UInt8[0]
  end
  fun gradient_new_linear = gtk_gradient_new_linear(x0 : Float64, y0 : Float64, x1 : Float64, y1 : Float64) : LibGtk::Gradient*
  fun gradient_new_radial = gtk_gradient_new_radial(x0 : Float64, y0 : Float64, radius0 : Float64, x1 : Float64, y1 : Float64, radius1 : Float64) : LibGtk::Gradient*
  fun gradient_add_color_stop = gtk_gradient_add_color_stop(this : Gradient*, offset : Float64, color : LibGtk::SymbolicColor*) : Void
  fun gradient_ref = gtk_gradient_ref(this : Gradient*) : LibGtk::Gradient*
  fun gradient_resolve = gtk_gradient_resolve(this : Gradient*, props : LibGtk::StyleProperties*, resolved_gradient : LibCairo::Pattern**) : Bool
  fun gradient_resolve_for_context = gtk_gradient_resolve_for_context(this : Gradient*, context : LibGtk::StyleContext*) : LibCairo::Pattern*
  fun gradient_to_string = gtk_gradient_to_string(this : Gradient*) : UInt8*
  fun gradient_unref = gtk_gradient_unref(this : Gradient*) : Void

  struct GridPrivate # struct
    _data : UInt8[0]
  end

  struct HSVPrivate # struct
    _data : UInt8[0]
  end

  struct HandleBoxPrivate # struct
    _data : UInt8[0]
  end

  struct HeaderBarPrivate # struct
    _data : UInt8[0]
  end

  struct IMContextInfo # struct
    context_id : UInt8*
    context_name : UInt8*
    domain : UInt8*
    domain_dirname : UInt8*
    default_locales : UInt8*
  end

  struct IMContextSimplePrivate # struct
    _data : UInt8[0]
  end

  struct IMMulticontextPrivate # struct
    _data : UInt8[0]
  end

  struct IconFactoryPrivate # struct
    _data : UInt8[0]
  end

  struct IconSet # struct
    _data : UInt8[0]
  end
  fun icon_set_new = gtk_icon_set_new() : LibGtk::IconSet*
  fun icon_set_new_from_pixbuf = gtk_icon_set_new_from_pixbuf(pixbuf : LibGdkPixbuf::Pixbuf*) : LibGtk::IconSet*
  fun icon_set_add_source = gtk_icon_set_add_source(this : IconSet*, source : LibGtk::IconSource*) : Void
  fun icon_set_copy = gtk_icon_set_copy(this : IconSet*) : LibGtk::IconSet*
  fun icon_set_get_sizes = gtk_icon_set_get_sizes(this : IconSet*, sizes : Int32**, n_sizes : Int32*) : Void
  fun icon_set_ref = gtk_icon_set_ref(this : IconSet*) : LibGtk::IconSet*
  fun icon_set_render_icon = gtk_icon_set_render_icon(this : IconSet*, style : LibGtk::Style*, direction : LibGtk::TextDirection, state : LibGtk::StateType, size : Int32, widget : LibGtk::Widget*, detail : UInt8*) : LibGdkPixbuf::Pixbuf*
  fun icon_set_render_icon_pixbuf = gtk_icon_set_render_icon_pixbuf(this : IconSet*, context : LibGtk::StyleContext*, size : Int32) : LibGdkPixbuf::Pixbuf*
  fun icon_set_render_icon_surface = gtk_icon_set_render_icon_surface(this : IconSet*, context : LibGtk::StyleContext*, size : Int32, scale : Int32, for_window : LibGdk::Window*) : LibCairo::Surface*
  fun icon_set_unref = gtk_icon_set_unref(this : IconSet*) : Void

  struct IconSource # struct
    _data : UInt8[0]
  end
  fun icon_source_new = gtk_icon_source_new() : LibGtk::IconSource*
  fun icon_source_copy = gtk_icon_source_copy(this : IconSource*) : LibGtk::IconSource*
  fun icon_source_free = gtk_icon_source_free(this : IconSource*) : Void
  fun icon_source_get_direction = gtk_icon_source_get_direction(this : IconSource*) : LibGtk::TextDirection
  fun icon_source_get_direction_wildcarded = gtk_icon_source_get_direction_wildcarded(this : IconSource*) : Bool
  fun icon_source_get_filename = gtk_icon_source_get_filename(this : IconSource*) : UInt8*
  fun icon_source_get_icon_name = gtk_icon_source_get_icon_name(this : IconSource*) : UInt8*
  fun icon_source_get_pixbuf = gtk_icon_source_get_pixbuf(this : IconSource*) : LibGdkPixbuf::Pixbuf*
  fun icon_source_get_size = gtk_icon_source_get_size(this : IconSource*) : Int32
  fun icon_source_get_size_wildcarded = gtk_icon_source_get_size_wildcarded(this : IconSource*) : Bool
  fun icon_source_get_state = gtk_icon_source_get_state(this : IconSource*) : LibGtk::StateType
  fun icon_source_get_state_wildcarded = gtk_icon_source_get_state_wildcarded(this : IconSource*) : Bool
  fun icon_source_set_direction = gtk_icon_source_set_direction(this : IconSource*, direction : LibGtk::TextDirection) : Void
  fun icon_source_set_direction_wildcarded = gtk_icon_source_set_direction_wildcarded(this : IconSource*, setting : Bool) : Void
  fun icon_source_set_filename = gtk_icon_source_set_filename(this : IconSource*, filename : UInt8*) : Void
  fun icon_source_set_icon_name = gtk_icon_source_set_icon_name(this : IconSource*, icon_name : UInt8*) : Void
  fun icon_source_set_pixbuf = gtk_icon_source_set_pixbuf(this : IconSource*, pixbuf : LibGdkPixbuf::Pixbuf*) : Void
  fun icon_source_set_size = gtk_icon_source_set_size(this : IconSource*, size : Int32) : Void
  fun icon_source_set_size_wildcarded = gtk_icon_source_set_size_wildcarded(this : IconSource*, setting : Bool) : Void
  fun icon_source_set_state = gtk_icon_source_set_state(this : IconSource*, state : LibGtk::StateType) : Void
  fun icon_source_set_state_wildcarded = gtk_icon_source_set_state_wildcarded(this : IconSource*, setting : Bool) : Void

  struct IconThemePrivate # struct
    _data : UInt8[0]
  end

  struct IconViewAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct IconViewPrivate # struct
    _data : UInt8[0]
  end

  struct ImageAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ImageCellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ImageMenuItemPrivate # struct
    _data : UInt8[0]
  end

  struct ImagePrivate # struct
    _data : UInt8[0]
  end

  struct InfoBarPrivate # struct
    _data : UInt8[0]
  end

  struct InvisiblePrivate # struct
    _data : UInt8[0]
  end

  struct LabelAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct LabelPrivate # struct
    _data : UInt8[0]
  end

  struct LabelSelectionInfo # struct
    _data : UInt8[0]
  end

  struct LayoutPrivate # struct
    _data : UInt8[0]
  end

  struct LevelBarAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct LevelBarPrivate # struct
    _data : UInt8[0]
  end

  struct LinkButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct LinkButtonPrivate # struct
    _data : UInt8[0]
  end

  struct ListBoxAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ListStorePrivate # struct
    _data : UInt8[0]
  end

  struct LockButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct LockButtonPrivate # struct
    _data : UInt8[0]
  end

  struct MenuAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct MenuBarPrivate # struct
    _data : UInt8[0]
  end

  struct MenuButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct MenuButtonPrivate # struct
    _data : UInt8[0]
  end

  struct MenuItemAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct MenuItemPrivate # struct
    _data : UInt8[0]
  end

  struct MenuPrivate # struct
    _data : UInt8[0]
  end

  struct MenuShellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct MenuShellPrivate # struct
    _data : UInt8[0]
  end

  struct MenuToolButtonPrivate # struct
    _data : UInt8[0]
  end

  struct MessageDialogPrivate # struct
    _data : UInt8[0]
  end

  struct MiscPrivate # struct
    _data : UInt8[0]
  end

  struct MountOperationPrivate # struct
    _data : UInt8[0]
  end

  struct NotebookAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct NotebookPageAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct NotebookPrivate # struct
    _data : UInt8[0]
  end

  struct NumerableIconPrivate # struct
    _data : UInt8[0]
  end

  struct OverlayPrivate # struct
    _data : UInt8[0]
  end

  struct PadActionEntry # struct
    type : LibGtk::PadActionType
    index : Int32
    mode : Int32
    label : UInt8*
    action_name : UInt8*
  end

  struct PageRange # struct
    start : Int32
    end_ : Int32
  end

  struct PanedAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct PanedPrivate # struct
    _data : UInt8[0]
  end

  struct PaperSize # struct
    _data : UInt8[0]
  end
  fun paper_size_new = gtk_paper_size_new(name : UInt8*) : LibGtk::PaperSize*
  fun paper_size_new_custom = gtk_paper_size_new_custom(name : UInt8*, display_name : UInt8*, width : Float64, height : Float64, unit : LibGtk::Unit) : LibGtk::PaperSize*
  fun paper_size_new_from_gvariant = gtk_paper_size_new_from_gvariant(variant : LibGLib::Variant*) : LibGtk::PaperSize*
  fun paper_size_new_from_ipp = gtk_paper_size_new_from_ipp(ipp_name : UInt8*, width : Float64, height : Float64) : LibGtk::PaperSize*
  fun paper_size_new_from_key_file = gtk_paper_size_new_from_key_file(key_file : LibGLib::KeyFile*, group_name : UInt8*, error : LibGLib::Error**) : LibGtk::PaperSize*
  fun paper_size_new_from_ppd = gtk_paper_size_new_from_ppd(ppd_name : UInt8*, ppd_display_name : UInt8*, width : Float64, height : Float64) : LibGtk::PaperSize*
  fun paper_size_copy = gtk_paper_size_copy(this : PaperSize*) : LibGtk::PaperSize*
  fun paper_size_free = gtk_paper_size_free(this : PaperSize*) : Void
  fun paper_size_get_default_bottom_margin = gtk_paper_size_get_default_bottom_margin(this : PaperSize*, unit : LibGtk::Unit) : Float64
  fun paper_size_get_default_left_margin = gtk_paper_size_get_default_left_margin(this : PaperSize*, unit : LibGtk::Unit) : Float64
  fun paper_size_get_default_right_margin = gtk_paper_size_get_default_right_margin(this : PaperSize*, unit : LibGtk::Unit) : Float64
  fun paper_size_get_default_top_margin = gtk_paper_size_get_default_top_margin(this : PaperSize*, unit : LibGtk::Unit) : Float64
  fun paper_size_get_display_name = gtk_paper_size_get_display_name(this : PaperSize*) : UInt8*
  fun paper_size_get_height = gtk_paper_size_get_height(this : PaperSize*, unit : LibGtk::Unit) : Float64
  fun paper_size_get_name = gtk_paper_size_get_name(this : PaperSize*) : UInt8*
  fun paper_size_get_ppd_name = gtk_paper_size_get_ppd_name(this : PaperSize*) : UInt8*
  fun paper_size_get_width = gtk_paper_size_get_width(this : PaperSize*, unit : LibGtk::Unit) : Float64
  fun paper_size_is_custom = gtk_paper_size_is_custom(this : PaperSize*) : Bool
  fun paper_size_is_equal = gtk_paper_size_is_equal(this : PaperSize*, size2 : LibGtk::PaperSize*) : Bool
  fun paper_size_is_ipp = gtk_paper_size_is_ipp(this : PaperSize*) : Bool
  fun paper_size_set_size = gtk_paper_size_set_size(this : PaperSize*, width : Float64, height : Float64, unit : LibGtk::Unit) : Void
  fun paper_size_to_gvariant = gtk_paper_size_to_gvariant(this : PaperSize*) : LibGLib::Variant*
  fun paper_size_to_key_file = gtk_paper_size_to_key_file(this : PaperSize*, key_file : LibGLib::KeyFile*, group_name : UInt8*) : Void
  fun paper_size_get_default = gtk_paper_size_get_default() : UInt8*
  fun paper_size_get_paper_sizes = gtk_paper_size_get_paper_sizes(include_custom : Bool) : Void**

  struct PlugPrivate # struct
    _data : UInt8[0]
  end

  struct PopoverPrivate # struct
    _data : UInt8[0]
  end

  struct PrintOperationPrivate # struct
    _data : UInt8[0]
  end

  struct ProgressBarAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ProgressBarPrivate # struct
    _data : UInt8[0]
  end

  struct RadioActionEntry # struct
    name : UInt8*
    stock_id : UInt8*
    label : UInt8*
    accelerator : UInt8*
    tooltip : UInt8*
    value : Int32
  end

  struct RadioActionPrivate # struct
    _data : UInt8[0]
  end

  struct RadioButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct RadioButtonPrivate # struct
    _data : UInt8[0]
  end

  struct RadioMenuItemAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct RadioMenuItemPrivate # struct
    _data : UInt8[0]
  end

  struct RangeAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct RangePrivate # struct
    _data : UInt8[0]
  end

  struct RcContext # struct
    _data : UInt8[0]
  end

  struct RcProperty # struct
    type_name : UInt32
    property_name : UInt32
    origin : UInt8*
    value : LibGObject::Value
  end
  fun rc_property_parse_border = gtk_rc_property_parse_border(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_color = gtk_rc_property_parse_color(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_enum = gtk_rc_property_parse_enum(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_flags = gtk_rc_property_parse_flags(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_requisition = gtk_rc_property_parse_requisition(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool

  struct RecentActionPrivate # struct
    _data : UInt8[0]
  end

  struct RecentChooserDialogPrivate # struct
    _data : UInt8[0]
  end

  struct RecentChooserMenuPrivate # struct
    _data : UInt8[0]
  end

  struct RecentChooserWidgetPrivate # struct
    _data : UInt8[0]
  end

  struct RecentData # struct
    display_name : UInt8*
    description : UInt8*
    mime_type : UInt8*
    app_name : UInt8*
    app_exec : UInt8*
    groups : UInt8**
    is_private : Bool
  end

  struct RecentFilterInfo # struct
    contains : LibGtk::RecentFilterFlags
    uri : UInt8*
    display_name : UInt8*
    mime_type : UInt8*
    applications : UInt8**
    groups : UInt8**
    age : Int32
  end

  struct RecentInfo # struct
    _data : UInt8[0]
  end
  fun recent_info_create_app_info = gtk_recent_info_create_app_info(this : RecentInfo*, app_name : UInt8*, error : LibGLib::Error**) : LibGio::AppInfo*
  fun recent_info_exists = gtk_recent_info_exists(this : RecentInfo*) : Bool
  fun recent_info_get_added = gtk_recent_info_get_added(this : RecentInfo*) : Int64
  fun recent_info_get_age = gtk_recent_info_get_age(this : RecentInfo*) : Int32
  fun recent_info_get_application_info = gtk_recent_info_get_application_info(this : RecentInfo*, app_name : UInt8*, app_exec : UInt8**, count : UInt32*, time : Int64*) : Bool
  fun recent_info_get_applications = gtk_recent_info_get_applications(this : RecentInfo*, length : UInt64*) : UInt8**
  fun recent_info_get_description = gtk_recent_info_get_description(this : RecentInfo*) : UInt8*
  fun recent_info_get_display_name = gtk_recent_info_get_display_name(this : RecentInfo*) : UInt8*
  fun recent_info_get_gicon = gtk_recent_info_get_gicon(this : RecentInfo*) : LibGio::Icon*
  fun recent_info_get_groups = gtk_recent_info_get_groups(this : RecentInfo*, length : UInt64*) : UInt8**
  fun recent_info_get_icon = gtk_recent_info_get_icon(this : RecentInfo*, size : Int32) : LibGdkPixbuf::Pixbuf*
  fun recent_info_get_mime_type = gtk_recent_info_get_mime_type(this : RecentInfo*) : UInt8*
  fun recent_info_get_modified = gtk_recent_info_get_modified(this : RecentInfo*) : Int64
  fun recent_info_get_private_hint = gtk_recent_info_get_private_hint(this : RecentInfo*) : Bool
  fun recent_info_get_short_name = gtk_recent_info_get_short_name(this : RecentInfo*) : UInt8*
  fun recent_info_get_uri = gtk_recent_info_get_uri(this : RecentInfo*) : UInt8*
  fun recent_info_get_uri_display = gtk_recent_info_get_uri_display(this : RecentInfo*) : UInt8*
  fun recent_info_get_visited = gtk_recent_info_get_visited(this : RecentInfo*) : Int64
  fun recent_info_has_application = gtk_recent_info_has_application(this : RecentInfo*, app_name : UInt8*) : Bool
  fun recent_info_has_group = gtk_recent_info_has_group(this : RecentInfo*, group_name : UInt8*) : Bool
  fun recent_info_is_local = gtk_recent_info_is_local(this : RecentInfo*) : Bool
  fun recent_info_last_application = gtk_recent_info_last_application(this : RecentInfo*) : UInt8*
  fun recent_info_match = gtk_recent_info_match(this : RecentInfo*, info_b : LibGtk::RecentInfo*) : Bool
  fun recent_info_ref = gtk_recent_info_ref(this : RecentInfo*) : LibGtk::RecentInfo*
  fun recent_info_unref = gtk_recent_info_unref(this : RecentInfo*) : Void

  struct RecentManagerPrivate # struct
    _data : UInt8[0]
  end

  struct RendererCellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct RequestedSize # struct
    data : Void*
    minimum_size : Int32
    natural_size : Int32
  end

  struct Requisition # struct
    width : Int32
    height : Int32
  end
  fun requisition_new = gtk_requisition_new() : LibGtk::Requisition*
  fun requisition_copy = gtk_requisition_copy(this : Requisition*) : LibGtk::Requisition*
  fun requisition_free = gtk_requisition_free(this : Requisition*) : Void

  struct ScaleAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ScaleButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ScaleButtonPrivate # struct
    _data : UInt8[0]
  end

  struct ScalePrivate # struct
    _data : UInt8[0]
  end

  struct ScrolledWindowAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ScrolledWindowPrivate # struct
    _data : UInt8[0]
  end

  struct SelectionData # struct
    _data : UInt8[0]
  end
  fun selection_data_copy = gtk_selection_data_copy(this : SelectionData*) : LibGtk::SelectionData*
  fun selection_data_free = gtk_selection_data_free(this : SelectionData*) : Void
  fun selection_data_get_data_type = gtk_selection_data_get_data_type(this : SelectionData*) : LibGdk::Atom*
  fun selection_data_get_data = gtk_selection_data_get_data_with_length(this : SelectionData*, length : Int32*) : UInt8*
  fun selection_data_get_display = gtk_selection_data_get_display(this : SelectionData*) : LibGdk::Display*
  fun selection_data_get_format = gtk_selection_data_get_format(this : SelectionData*) : Int32
  fun selection_data_get_length = gtk_selection_data_get_length(this : SelectionData*) : Int32
  fun selection_data_get_pixbuf = gtk_selection_data_get_pixbuf(this : SelectionData*) : LibGdkPixbuf::Pixbuf*
  fun selection_data_get_selection = gtk_selection_data_get_selection(this : SelectionData*) : LibGdk::Atom*
  fun selection_data_get_target = gtk_selection_data_get_target(this : SelectionData*) : LibGdk::Atom*
  fun selection_data_get_targets = gtk_selection_data_get_targets(this : SelectionData*, targets : LibGdk::Atom***, n_atoms : Int32*) : Bool
  fun selection_data_get_text = gtk_selection_data_get_text(this : SelectionData*) : UInt8*
  fun selection_data_get_uris = gtk_selection_data_get_uris(this : SelectionData*) : UInt8**
  fun selection_data_set = gtk_selection_data_set(this : SelectionData*, type : LibGdk::Atom*, format : Int32, data : UInt8*, length : Int32) : Void
  fun selection_data_set_pixbuf = gtk_selection_data_set_pixbuf(this : SelectionData*, pixbuf : LibGdkPixbuf::Pixbuf*) : Bool
  fun selection_data_set_text = gtk_selection_data_set_text(this : SelectionData*, str : UInt8*, len : Int32) : Bool
  fun selection_data_set_uris = gtk_selection_data_set_uris(this : SelectionData*, uris : UInt8**) : Bool
  fun selection_data_targets_include_image = gtk_selection_data_targets_include_image(this : SelectionData*, writable : Bool) : Bool
  fun selection_data_targets_include_rich_text = gtk_selection_data_targets_include_rich_text(this : SelectionData*, buffer : LibGtk::TextBuffer*) : Bool
  fun selection_data_targets_include_text = gtk_selection_data_targets_include_text(this : SelectionData*) : Bool
  fun selection_data_targets_include_uri = gtk_selection_data_targets_include_uri(this : SelectionData*) : Bool

  struct SeparatorPrivate # struct
    _data : UInt8[0]
  end

  struct SeparatorToolItemPrivate # struct
    _data : UInt8[0]
  end

  struct SettingsPrivate # struct
    _data : UInt8[0]
  end

  struct SettingsValue # struct
    origin : UInt8*
    value : LibGObject::Value
  end

  struct SizeGroupPrivate # struct
    _data : UInt8[0]
  end

  struct SocketPrivate # struct
    _data : UInt8[0]
  end

  struct SpinButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct SpinButtonPrivate # struct
    _data : UInt8[0]
  end

  struct SpinnerAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct SpinnerPrivate # struct
    _data : UInt8[0]
  end

  struct StackSidebarPrivate # struct
    _data : UInt8[0]
  end

  struct StatusIconPrivate # struct
    _data : UInt8[0]
  end

  struct StatusbarAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct StatusbarPrivate # struct
    _data : UInt8[0]
  end

  struct StockItem # struct
    stock_id : UInt8*
    label : UInt8*
    modifier : LibGdk::ModifierType
    keyval : UInt32
    translation_domain : UInt8*
  end
  fun stock_item_free = gtk_stock_item_free(this : StockItem*) : Void

  struct StyleContextPrivate # struct
    _data : UInt8[0]
  end

  struct StylePropertiesPrivate # struct
    _data : UInt8[0]
  end

  struct SwitchAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct SwitchPrivate # struct
    _data : UInt8[0]
  end

  struct SymbolicColor # struct
    _data : UInt8[0]
  end
  fun symbolic_color_new_alpha = gtk_symbolic_color_new_alpha(color : LibGtk::SymbolicColor*, factor : Float64) : LibGtk::SymbolicColor*
  fun symbolic_color_new_literal = gtk_symbolic_color_new_literal(color : LibGdk::RGBA*) : LibGtk::SymbolicColor*
  fun symbolic_color_new_mix = gtk_symbolic_color_new_mix(color1 : LibGtk::SymbolicColor*, color2 : LibGtk::SymbolicColor*, factor : Float64) : LibGtk::SymbolicColor*
  fun symbolic_color_new_name = gtk_symbolic_color_new_name(name : UInt8*) : LibGtk::SymbolicColor*
  fun symbolic_color_new_shade = gtk_symbolic_color_new_shade(color : LibGtk::SymbolicColor*, factor : Float64) : LibGtk::SymbolicColor*
  fun symbolic_color_new_win32 = gtk_symbolic_color_new_win32(theme_class : UInt8*, id : Int32) : LibGtk::SymbolicColor*
  fun symbolic_color_ref = gtk_symbolic_color_ref(this : SymbolicColor*) : LibGtk::SymbolicColor*
  fun symbolic_color_resolve = gtk_symbolic_color_resolve(this : SymbolicColor*, props : LibGtk::StyleProperties*, resolved_color : LibGdk::RGBA*) : Bool
  fun symbolic_color_to_string = gtk_symbolic_color_to_string(this : SymbolicColor*) : UInt8*
  fun symbolic_color_unref = gtk_symbolic_color_unref(this : SymbolicColor*) : Void

  struct TableChild # struct
    widget : LibGtk::Widget*
    left_attach : UInt16
    right_attach : UInt16
    top_attach : UInt16
    bottom_attach : UInt16
    xpadding : UInt16
    ypadding : UInt16
    xexpand : UInt32
    yexpand : UInt32
    xshrink : UInt32
    yshrink : UInt32
    xfill : UInt32
    yfill : UInt32
  end

  struct TablePrivate # struct
    _data : UInt8[0]
  end

  struct TableRowCol # struct
    requisition : UInt16
    allocation : UInt16
    spacing : UInt16
    need_expand : UInt32
    need_shrink : UInt32
    expand : UInt32
    shrink : UInt32
    empty : UInt32
  end

  struct TargetEntry # struct
    target : UInt8*
    flags : UInt32
    info : UInt32
  end
  fun target_entry_new = gtk_target_entry_new(target : UInt8*, flags : UInt32, info : UInt32) : LibGtk::TargetEntry*
  fun target_entry_copy = gtk_target_entry_copy(this : TargetEntry*) : LibGtk::TargetEntry*
  fun target_entry_free = gtk_target_entry_free(this : TargetEntry*) : Void

  struct TargetList # struct
    _data : UInt8[0]
  end
  fun target_list_new = gtk_target_list_new(targets : LibGtk::TargetEntry*, ntargets : UInt32) : LibGtk::TargetList*
  fun target_list_add = gtk_target_list_add(this : TargetList*, target : LibGdk::Atom*, flags : UInt32, info : UInt32) : Void
  fun target_list_add_image_targets = gtk_target_list_add_image_targets(this : TargetList*, info : UInt32, writable : Bool) : Void
  fun target_list_add_rich_text_targets = gtk_target_list_add_rich_text_targets(this : TargetList*, info : UInt32, deserializable : Bool, buffer : LibGtk::TextBuffer*) : Void
  fun target_list_add_table = gtk_target_list_add_table(this : TargetList*, targets : LibGtk::TargetEntry*, ntargets : UInt32) : Void
  fun target_list_add_text_targets = gtk_target_list_add_text_targets(this : TargetList*, info : UInt32) : Void
  fun target_list_add_uri_targets = gtk_target_list_add_uri_targets(this : TargetList*, info : UInt32) : Void
  fun target_list_find = gtk_target_list_find(this : TargetList*, target : LibGdk::Atom*, info : UInt32*) : Bool
  fun target_list_ref = gtk_target_list_ref(this : TargetList*) : LibGtk::TargetList*
  fun target_list_remove = gtk_target_list_remove(this : TargetList*, target : LibGdk::Atom*) : Void
  fun target_list_unref = gtk_target_list_unref(this : TargetList*) : Void

  struct TargetPair # struct
    target : LibGdk::Atom*
    flags : UInt32
    info : UInt32
  end

  struct TearoffMenuItemPrivate # struct
    _data : UInt8[0]
  end

  struct TextAppearance # struct
    bg_color : LibGdk::Color
    fg_color : LibGdk::Color
    rise : Int32
    underline : UInt32
    strikethrough : UInt32
    draw_bg : UInt32
    inside_selection : UInt32
    is_text : UInt32
  end

  struct TextAttributes # struct
    refcount : UInt32
    appearance : LibGtk::TextAppearance
    justification : LibGtk::Justification
    direction : LibGtk::TextDirection
    font : LibPango::FontDescription*
    font_scale : Float64
    left_margin : Int32
    right_margin : Int32
    indent : Int32
    pixels_above_lines : Int32
    pixels_below_lines : Int32
    pixels_inside_wrap : Int32
    tabs : LibPango::TabArray*
    wrap_mode : LibGtk::WrapMode
    language : LibPango::Language*
    pg_bg_color : LibGdk::Color*
    invisible : UInt32
    bg_full_height : UInt32
    editable : UInt32
    no_fallback : UInt32
    pg_bg_rgba : LibGdk::RGBA*
    letter_spacing : Int32
  end
  fun text_attributes_new = gtk_text_attributes_new() : LibGtk::TextAttributes*
  fun text_attributes_copy = gtk_text_attributes_copy(this : TextAttributes*) : LibGtk::TextAttributes*
  fun text_attributes_copy_values = gtk_text_attributes_copy_values(this : TextAttributes*, dest : LibGtk::TextAttributes*) : Void
  fun text_attributes_ref = gtk_text_attributes_ref(this : TextAttributes*) : LibGtk::TextAttributes*
  fun text_attributes_unref = gtk_text_attributes_unref(this : TextAttributes*) : Void

  struct TextBTree # struct
    _data : UInt8[0]
  end

  struct TextBufferPrivate # struct
    _data : UInt8[0]
  end

  struct TextCellAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct TextIter # struct
    dummy1 : Void*
    dummy2 : Void*
    dummy3 : Int32
    dummy4 : Int32
    dummy5 : Int32
    dummy6 : Int32
    dummy7 : Int32
    dummy8 : Int32
    dummy9 : Void*
    dummy10 : Void*
    dummy11 : Int32
    dummy12 : Int32
    dummy13 : Int32
    dummy14 : Void*
  end
  fun text_iter_assign = gtk_text_iter_assign(this : TextIter*, other : LibGtk::TextIter*) : Void
  fun text_iter_backward_char = gtk_text_iter_backward_char(this : TextIter*) : Bool
  fun text_iter_backward_chars = gtk_text_iter_backward_chars(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_cursor_position = gtk_text_iter_backward_cursor_position(this : TextIter*) : Bool
  fun text_iter_backward_cursor_positions = gtk_text_iter_backward_cursor_positions(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_find_char = gtk_text_iter_backward_find_char(this : TextIter*, pred : LibGtk::TextCharPredicate, user_data : Void*, limit : LibGtk::TextIter*) : Bool
  fun text_iter_backward_line = gtk_text_iter_backward_line(this : TextIter*) : Bool
  fun text_iter_backward_lines = gtk_text_iter_backward_lines(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_search = gtk_text_iter_backward_search(this : TextIter*, str : UInt8*, flags : LibGtk::TextSearchFlags, match_start : LibGtk::TextIter*, match_end : LibGtk::TextIter*, limit : LibGtk::TextIter*) : Bool
  fun text_iter_backward_sentence_start = gtk_text_iter_backward_sentence_start(this : TextIter*) : Bool
  fun text_iter_backward_sentence_starts = gtk_text_iter_backward_sentence_starts(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_to_tag_toggle = gtk_text_iter_backward_to_tag_toggle(this : TextIter*, tag : LibGtk::TextTag*) : Bool
  fun text_iter_backward_visible_cursor_position = gtk_text_iter_backward_visible_cursor_position(this : TextIter*) : Bool
  fun text_iter_backward_visible_cursor_positions = gtk_text_iter_backward_visible_cursor_positions(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_visible_line = gtk_text_iter_backward_visible_line(this : TextIter*) : Bool
  fun text_iter_backward_visible_lines = gtk_text_iter_backward_visible_lines(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_visible_word_start = gtk_text_iter_backward_visible_word_start(this : TextIter*) : Bool
  fun text_iter_backward_visible_word_starts = gtk_text_iter_backward_visible_word_starts(this : TextIter*, count : Int32) : Bool
  fun text_iter_backward_word_start = gtk_text_iter_backward_word_start(this : TextIter*) : Bool
  fun text_iter_backward_word_starts = gtk_text_iter_backward_word_starts(this : TextIter*, count : Int32) : Bool
  fun text_iter_begins_tag = gtk_text_iter_begins_tag(this : TextIter*, tag : LibGtk::TextTag*) : Bool
  fun text_iter_can_insert = gtk_text_iter_can_insert(this : TextIter*, default_editability : Bool) : Bool
  fun text_iter_compare = gtk_text_iter_compare(this : TextIter*, rhs : LibGtk::TextIter*) : Int32
  fun text_iter_copy = gtk_text_iter_copy(this : TextIter*) : LibGtk::TextIter*
  fun text_iter_editable = gtk_text_iter_editable(this : TextIter*, default_setting : Bool) : Bool
  fun text_iter_ends_line = gtk_text_iter_ends_line(this : TextIter*) : Bool
  fun text_iter_ends_sentence = gtk_text_iter_ends_sentence(this : TextIter*) : Bool
  fun text_iter_ends_tag = gtk_text_iter_ends_tag(this : TextIter*, tag : LibGtk::TextTag*) : Bool
  fun text_iter_ends_word = gtk_text_iter_ends_word(this : TextIter*) : Bool
  fun text_iter_equal = gtk_text_iter_equal(this : TextIter*, rhs : LibGtk::TextIter*) : Bool
  fun text_iter_forward_char = gtk_text_iter_forward_char(this : TextIter*) : Bool
  fun text_iter_forward_chars = gtk_text_iter_forward_chars(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_cursor_position = gtk_text_iter_forward_cursor_position(this : TextIter*) : Bool
  fun text_iter_forward_cursor_positions = gtk_text_iter_forward_cursor_positions(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_find_char = gtk_text_iter_forward_find_char(this : TextIter*, pred : LibGtk::TextCharPredicate, user_data : Void*, limit : LibGtk::TextIter*) : Bool
  fun text_iter_forward_line = gtk_text_iter_forward_line(this : TextIter*) : Bool
  fun text_iter_forward_lines = gtk_text_iter_forward_lines(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_search = gtk_text_iter_forward_search(this : TextIter*, str : UInt8*, flags : LibGtk::TextSearchFlags, match_start : LibGtk::TextIter*, match_end : LibGtk::TextIter*, limit : LibGtk::TextIter*) : Bool
  fun text_iter_forward_sentence_end = gtk_text_iter_forward_sentence_end(this : TextIter*) : Bool
  fun text_iter_forward_sentence_ends = gtk_text_iter_forward_sentence_ends(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_to_end = gtk_text_iter_forward_to_end(this : TextIter*) : Void
  fun text_iter_forward_to_line_end = gtk_text_iter_forward_to_line_end(this : TextIter*) : Bool
  fun text_iter_forward_to_tag_toggle = gtk_text_iter_forward_to_tag_toggle(this : TextIter*, tag : LibGtk::TextTag*) : Bool
  fun text_iter_forward_visible_cursor_position = gtk_text_iter_forward_visible_cursor_position(this : TextIter*) : Bool
  fun text_iter_forward_visible_cursor_positions = gtk_text_iter_forward_visible_cursor_positions(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_visible_line = gtk_text_iter_forward_visible_line(this : TextIter*) : Bool
  fun text_iter_forward_visible_lines = gtk_text_iter_forward_visible_lines(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_visible_word_end = gtk_text_iter_forward_visible_word_end(this : TextIter*) : Bool
  fun text_iter_forward_visible_word_ends = gtk_text_iter_forward_visible_word_ends(this : TextIter*, count : Int32) : Bool
  fun text_iter_forward_word_end = gtk_text_iter_forward_word_end(this : TextIter*) : Bool
  fun text_iter_forward_word_ends = gtk_text_iter_forward_word_ends(this : TextIter*, count : Int32) : Bool
  fun text_iter_free = gtk_text_iter_free(this : TextIter*) : Void
  fun text_iter_get_attributes = gtk_text_iter_get_attributes(this : TextIter*, values : LibGtk::TextAttributes*) : Bool
  fun text_iter_get_buffer = gtk_text_iter_get_buffer(this : TextIter*) : LibGtk::TextBuffer*
  fun text_iter_get_bytes_in_line = gtk_text_iter_get_bytes_in_line(this : TextIter*) : Int32
  fun text_iter_get_char = gtk_text_iter_get_char(this : TextIter*) : UInt8
  fun text_iter_get_chars_in_line = gtk_text_iter_get_chars_in_line(this : TextIter*) : Int32
  fun text_iter_get_child_anchor = gtk_text_iter_get_child_anchor(this : TextIter*) : LibGtk::TextChildAnchor*
  fun text_iter_get_language = gtk_text_iter_get_language(this : TextIter*) : LibPango::Language*
  fun text_iter_get_line = gtk_text_iter_get_line(this : TextIter*) : Int32
  fun text_iter_get_line_index = gtk_text_iter_get_line_index(this : TextIter*) : Int32
  fun text_iter_get_line_offset = gtk_text_iter_get_line_offset(this : TextIter*) : Int32
  fun text_iter_get_marks = gtk_text_iter_get_marks(this : TextIter*) : Void**
  fun text_iter_get_offset = gtk_text_iter_get_offset(this : TextIter*) : Int32
  fun text_iter_get_pixbuf = gtk_text_iter_get_pixbuf(this : TextIter*) : LibGdkPixbuf::Pixbuf*
  fun text_iter_get_slice = gtk_text_iter_get_slice(this : TextIter*, _end : LibGtk::TextIter*) : UInt8*
  fun text_iter_get_tags = gtk_text_iter_get_tags(this : TextIter*) : Void**
  fun text_iter_get_text = gtk_text_iter_get_text(this : TextIter*, _end : LibGtk::TextIter*) : UInt8*
  fun text_iter_get_toggled_tags = gtk_text_iter_get_toggled_tags(this : TextIter*, toggled_on : Bool) : Void**
  fun text_iter_get_visible_line_index = gtk_text_iter_get_visible_line_index(this : TextIter*) : Int32
  fun text_iter_get_visible_line_offset = gtk_text_iter_get_visible_line_offset(this : TextIter*) : Int32
  fun text_iter_get_visible_slice = gtk_text_iter_get_visible_slice(this : TextIter*, _end : LibGtk::TextIter*) : UInt8*
  fun text_iter_get_visible_text = gtk_text_iter_get_visible_text(this : TextIter*, _end : LibGtk::TextIter*) : UInt8*
  fun text_iter_has_tag = gtk_text_iter_has_tag(this : TextIter*, tag : LibGtk::TextTag*) : Bool
  fun text_iter_in_range = gtk_text_iter_in_range(this : TextIter*, start : LibGtk::TextIter*, _end : LibGtk::TextIter*) : Bool
  fun text_iter_inside_sentence = gtk_text_iter_inside_sentence(this : TextIter*) : Bool
  fun text_iter_inside_word = gtk_text_iter_inside_word(this : TextIter*) : Bool
  fun text_iter_is_cursor_position = gtk_text_iter_is_cursor_position(this : TextIter*) : Bool
  fun text_iter_is_end = gtk_text_iter_is_end(this : TextIter*) : Bool
  fun text_iter_is_start = gtk_text_iter_is_start(this : TextIter*) : Bool
  fun text_iter_order = gtk_text_iter_order(this : TextIter*, second : LibGtk::TextIter*) : Void
  fun text_iter_set_line = gtk_text_iter_set_line(this : TextIter*, line_number : Int32) : Void
  fun text_iter_set_line_index = gtk_text_iter_set_line_index(this : TextIter*, byte_on_line : Int32) : Void
  fun text_iter_set_line_offset = gtk_text_iter_set_line_offset(this : TextIter*, char_on_line : Int32) : Void
  fun text_iter_set_offset = gtk_text_iter_set_offset(this : TextIter*, char_offset : Int32) : Void
  fun text_iter_set_visible_line_index = gtk_text_iter_set_visible_line_index(this : TextIter*, byte_on_line : Int32) : Void
  fun text_iter_set_visible_line_offset = gtk_text_iter_set_visible_line_offset(this : TextIter*, char_on_line : Int32) : Void
  fun text_iter_starts_line = gtk_text_iter_starts_line(this : TextIter*) : Bool
  fun text_iter_starts_sentence = gtk_text_iter_starts_sentence(this : TextIter*) : Bool
  fun text_iter_starts_tag = gtk_text_iter_starts_tag(this : TextIter*, tag : LibGtk::TextTag*) : Bool
  fun text_iter_starts_word = gtk_text_iter_starts_word(this : TextIter*) : Bool
  fun text_iter_toggles_tag = gtk_text_iter_toggles_tag(this : TextIter*, tag : LibGtk::TextTag*) : Bool

  struct TextTagPrivate # struct
    _data : UInt8[0]
  end

  struct TextTagTablePrivate # struct
    _data : UInt8[0]
  end

  struct TextViewAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct TextViewPrivate # struct
    _data : UInt8[0]
  end

  struct ThemeEngine # struct
    _data : UInt8[0]
  end

  struct ThemingEnginePrivate # struct
    _data : UInt8[0]
  end

  struct ToggleActionEntry # struct
    name : UInt8*
    stock_id : UInt8*
    label : UInt8*
    accelerator : UInt8*
    tooltip : UInt8*
    callback : LibGObject::Callback
    is_active : Bool
  end

  struct ToggleActionPrivate # struct
    _data : UInt8[0]
  end

  struct ToggleButtonAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct ToggleButtonPrivate # struct
    _data : UInt8[0]
  end

  struct ToggleToolButtonPrivate # struct
    _data : UInt8[0]
  end

  struct ToolButtonPrivate # struct
    _data : UInt8[0]
  end

  struct ToolItemGroupPrivate # struct
    _data : UInt8[0]
  end

  struct ToolItemPrivate # struct
    _data : UInt8[0]
  end

  struct ToolPalettePrivate # struct
    _data : UInt8[0]
  end

  struct ToolbarPrivate # struct
    _data : UInt8[0]
  end

  struct ToplevelAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct TreeIter # struct
    stamp : Int32
    user_data : Void*
    user_data2 : Void*
    user_data3 : Void*
  end
  fun tree_iter_copy = gtk_tree_iter_copy(this : TreeIter*) : LibGtk::TreeIter*
  fun tree_iter_free = gtk_tree_iter_free(this : TreeIter*) : Void

  struct TreeModelFilterPrivate # struct
    _data : UInt8[0]
  end

  struct TreeModelSortPrivate # struct
    _data : UInt8[0]
  end

  struct TreePath # struct
    _data : UInt8[0]
  end
  fun tree_path_new = gtk_tree_path_new() : LibGtk::TreePath*
  fun tree_path_new_first = gtk_tree_path_new_first() : LibGtk::TreePath*
  fun tree_path_new_from_indices = gtk_tree_path_new_from_indicesv(indices : Int32*, length : UInt64) : LibGtk::TreePath*
  fun tree_path_new_from_string = gtk_tree_path_new_from_string(path : UInt8*) : LibGtk::TreePath*
  fun tree_path_append_index = gtk_tree_path_append_index(this : TreePath*, index : Int32) : Void
  fun tree_path_compare = gtk_tree_path_compare(this : TreePath*, b : LibGtk::TreePath*) : Int32
  fun tree_path_copy = gtk_tree_path_copy(this : TreePath*) : LibGtk::TreePath*
  fun tree_path_down = gtk_tree_path_down(this : TreePath*) : Void
  fun tree_path_free = gtk_tree_path_free(this : TreePath*) : Void
  fun tree_path_get_depth = gtk_tree_path_get_depth(this : TreePath*) : Int32
  fun tree_path_get_indices = gtk_tree_path_get_indices_with_depth(this : TreePath*, depth : Int32*) : Int32*
  fun tree_path_is_ancestor = gtk_tree_path_is_ancestor(this : TreePath*, descendant : LibGtk::TreePath*) : Bool
  fun tree_path_is_descendant = gtk_tree_path_is_descendant(this : TreePath*, ancestor : LibGtk::TreePath*) : Bool
  fun tree_path_next = gtk_tree_path_next(this : TreePath*) : Void
  fun tree_path_prepend_index = gtk_tree_path_prepend_index(this : TreePath*, index : Int32) : Void
  fun tree_path_prev = gtk_tree_path_prev(this : TreePath*) : Bool
  fun tree_path_to_string = gtk_tree_path_to_string(this : TreePath*) : UInt8*
  fun tree_path_up = gtk_tree_path_up(this : TreePath*) : Bool

  struct TreeRowReference # struct
    _data : UInt8[0]
  end
  fun tree_row_reference_new = gtk_tree_row_reference_new(model : LibGtk::TreeModel*, path : LibGtk::TreePath*) : LibGtk::TreeRowReference*
  fun tree_row_reference_new_proxy = gtk_tree_row_reference_new_proxy(proxy : LibGObject::Object*, model : LibGtk::TreeModel*, path : LibGtk::TreePath*) : LibGtk::TreeRowReference*
  fun tree_row_reference_copy = gtk_tree_row_reference_copy(this : TreeRowReference*) : LibGtk::TreeRowReference*
  fun tree_row_reference_free = gtk_tree_row_reference_free(this : TreeRowReference*) : Void
  fun tree_row_reference_get_model = gtk_tree_row_reference_get_model(this : TreeRowReference*) : LibGtk::TreeModel*
  fun tree_row_reference_get_path = gtk_tree_row_reference_get_path(this : TreeRowReference*) : LibGtk::TreePath*
  fun tree_row_reference_valid = gtk_tree_row_reference_valid(this : TreeRowReference*) : Bool
  fun tree_row_reference_deleted = gtk_tree_row_reference_deleted(proxy : LibGObject::Object*, path : LibGtk::TreePath*) : Void
  fun tree_row_reference_inserted = gtk_tree_row_reference_inserted(proxy : LibGObject::Object*, path : LibGtk::TreePath*) : Void

  struct TreeSelectionPrivate # struct
    _data : UInt8[0]
  end

  struct TreeStorePrivate # struct
    _data : UInt8[0]
  end

  struct TreeViewAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct TreeViewColumnPrivate # struct
    _data : UInt8[0]
  end

  struct TreeViewPrivate # struct
    _data : UInt8[0]
  end

  struct UIManagerPrivate # struct
    _data : UInt8[0]
  end

  struct ViewportPrivate # struct
    _data : UInt8[0]
  end

  struct WidgetAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct WidgetClassPrivate # struct
    _data : UInt8[0]
  end

  struct WidgetPath # struct
    _data : UInt8[0]
  end
  fun widget_path_new = gtk_widget_path_new() : LibGtk::WidgetPath*
  fun widget_path_append_for_widget = gtk_widget_path_append_for_widget(this : WidgetPath*, widget : LibGtk::Widget*) : Int32
  fun widget_path_append_type = gtk_widget_path_append_type(this : WidgetPath*, type : UInt64) : Int32
  fun widget_path_append_with_siblings = gtk_widget_path_append_with_siblings(this : WidgetPath*, siblings : LibGtk::WidgetPath*, sibling_index : UInt32) : Int32
  fun widget_path_copy = gtk_widget_path_copy(this : WidgetPath*) : LibGtk::WidgetPath*
  fun widget_path_free = gtk_widget_path_free(this : WidgetPath*) : Void
  fun widget_path_get_object_type = gtk_widget_path_get_object_type(this : WidgetPath*) : UInt64
  fun widget_path_has_parent = gtk_widget_path_has_parent(this : WidgetPath*, type : UInt64) : Bool
  fun widget_path_is_type = gtk_widget_path_is_type(this : WidgetPath*, type : UInt64) : Bool
  fun widget_path_iter_add_class = gtk_widget_path_iter_add_class(this : WidgetPath*, pos : Int32, name : UInt8*) : Void
  fun widget_path_iter_add_region = gtk_widget_path_iter_add_region(this : WidgetPath*, pos : Int32, name : UInt8*, flags : LibGtk::RegionFlags) : Void
  fun widget_path_iter_clear_classes = gtk_widget_path_iter_clear_classes(this : WidgetPath*, pos : Int32) : Void
  fun widget_path_iter_clear_regions = gtk_widget_path_iter_clear_regions(this : WidgetPath*, pos : Int32) : Void
  fun widget_path_iter_get_name = gtk_widget_path_iter_get_name(this : WidgetPath*, pos : Int32) : UInt8*
  fun widget_path_iter_get_object_name = gtk_widget_path_iter_get_object_name(this : WidgetPath*, pos : Int32) : UInt8*
  fun widget_path_iter_get_object_type = gtk_widget_path_iter_get_object_type(this : WidgetPath*, pos : Int32) : UInt64
  fun widget_path_iter_get_sibling_index = gtk_widget_path_iter_get_sibling_index(this : WidgetPath*, pos : Int32) : UInt32
  fun widget_path_iter_get_siblings = gtk_widget_path_iter_get_siblings(this : WidgetPath*, pos : Int32) : LibGtk::WidgetPath*
  fun widget_path_iter_get_state = gtk_widget_path_iter_get_state(this : WidgetPath*, pos : Int32) : LibGtk::StateFlags
  fun widget_path_iter_has_class = gtk_widget_path_iter_has_class(this : WidgetPath*, pos : Int32, name : UInt8*) : Bool
  fun widget_path_iter_has_name = gtk_widget_path_iter_has_name(this : WidgetPath*, pos : Int32, name : UInt8*) : Bool
  fun widget_path_iter_has_qclass = gtk_widget_path_iter_has_qclass(this : WidgetPath*, pos : Int32, qname : UInt32) : Bool
  fun widget_path_iter_has_qname = gtk_widget_path_iter_has_qname(this : WidgetPath*, pos : Int32, qname : UInt32) : Bool
  fun widget_path_iter_has_qregion = gtk_widget_path_iter_has_qregion(this : WidgetPath*, pos : Int32, qname : UInt32, flags : LibGtk::RegionFlags*) : Bool
  fun widget_path_iter_has_region = gtk_widget_path_iter_has_region(this : WidgetPath*, pos : Int32, name : UInt8*, flags : LibGtk::RegionFlags*) : Bool
  fun widget_path_iter_list_classes = gtk_widget_path_iter_list_classes(this : WidgetPath*, pos : Int32) : Void**
  fun widget_path_iter_list_regions = gtk_widget_path_iter_list_regions(this : WidgetPath*, pos : Int32) : Void**
  fun widget_path_iter_remove_class = gtk_widget_path_iter_remove_class(this : WidgetPath*, pos : Int32, name : UInt8*) : Void
  fun widget_path_iter_remove_region = gtk_widget_path_iter_remove_region(this : WidgetPath*, pos : Int32, name : UInt8*) : Void
  fun widget_path_iter_set_name = gtk_widget_path_iter_set_name(this : WidgetPath*, pos : Int32, name : UInt8*) : Void
  fun widget_path_iter_set_object_name = gtk_widget_path_iter_set_object_name(this : WidgetPath*, pos : Int32, name : UInt8*) : Void
  fun widget_path_iter_set_object_type = gtk_widget_path_iter_set_object_type(this : WidgetPath*, pos : Int32, type : UInt64) : Void
  fun widget_path_iter_set_state = gtk_widget_path_iter_set_state(this : WidgetPath*, pos : Int32, state : LibGtk::StateFlags) : Void
  fun widget_path_length = gtk_widget_path_length(this : WidgetPath*) : Int32
  fun widget_path_prepend_type = gtk_widget_path_prepend_type(this : WidgetPath*, type : UInt64) : Void
  fun widget_path_ref = gtk_widget_path_ref(this : WidgetPath*) : LibGtk::WidgetPath*
  fun widget_path_to_string = gtk_widget_path_to_string(this : WidgetPath*) : UInt8*
  fun widget_path_unref = gtk_widget_path_unref(this : WidgetPath*) : Void

  struct WidgetPrivate # struct
    _data : UInt8[0]
  end

  struct WindowAccessiblePrivate # struct
    _data : UInt8[0]
  end

  struct WindowGeometryInfo # struct
    _data : UInt8[0]
  end

  struct WindowGroupPrivate # struct
    _data : UInt8[0]
  end

  struct WindowPrivate # struct
    _data : UInt8[0]
  end


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum AccelFlags : UInt32
    ZERO_NONE = 0
    VISIBLE = 1
    LOCKED = 2
    MASK = 7
  end

  @[Flags]
  enum ApplicationInhibitFlags : UInt32
    ZERO_NONE = 0
    LOGOUT = 1
    SWITCH = 2
    SUSPEND = 4
    IDLE = 8
  end

  @[Flags]
  enum AttachOptions : UInt32
    ZERO_NONE = 0
    EXPAND = 1
    SHRINK = 2
    FILL = 4
  end

  @[Flags]
  enum CalendarDisplayOptions : UInt32
    ZERO_NONE = 0
    SHOW_HEADING = 1
    SHOW_DAY_NAMES = 2
    NO_MONTH_CHANGE = 4
    SHOW_WEEK_NUMBERS = 8
    SHOW_DETAILS = 32
  end

  @[Flags]
  enum CellRendererState : UInt32
    ZERO_NONE = 0
    SELECTED = 1
    PRELIT = 2
    INSENSITIVE = 4
    SORTED = 8
    FOCUSED = 16
    EXPANDABLE = 32
    EXPANDED = 64
  end

  @[Flags]
  enum DebugFlag : UInt32
    ZERO_NONE = 0
    MISC = 1
    PLUGSOCKET = 2
    TEXT = 4
    TREE = 8
    UPDATES = 16
    KEYBINDINGS = 32
    MULTIHEAD = 64
    MODULES = 128
    GEOMETRY = 256
    ICONTHEME = 512
    PRINTING = 1024
    BUILDER = 2048
    SIZE_REQUEST = 4096
    NO_CSS_CACHE = 8192
    BASELINES = 16384
    PIXEL_CACHE = 32768
    NO_PIXEL_CACHE = 65536
    INTERACTIVE = 131072
    TOUCHSCREEN = 262144
    ACTIONS = 524288
    RESIZE = 1048576
    LAYOUT = 2097152
  end

  @[Flags]
  enum DestDefaults : UInt32
    ZERO_NONE = 0
    MOTION = 1
    HIGHLIGHT = 2
    DROP = 4
    ALL = 7
  end

  @[Flags]
  enum DialogFlags : UInt32
    ZERO_NONE = 0
    MODAL = 1
    DESTROY_WITH_PARENT = 2
    USE_HEADER_BAR = 4
  end

  @[Flags]
  enum EventControllerScrollFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    VERTICAL = 1
    HORIZONTAL = 2
    DISCRETE = 4
    KINETIC = 8
    BOTH_AXES = 3
  end

  @[Flags]
  enum FileFilterFlags : UInt32
    ZERO_NONE = 0
    FILENAME = 1
    URI = 2
    DISPLAY_NAME = 4
    MIME_TYPE = 8
  end

  @[Flags]
  enum FontChooserLevel : UInt32
    ZERO_NONE = 0
    FAMILY = 0
    STYLE = 1
    SIZE = 2
    VARIATIONS = 4
    FEATURES = 8
  end

  @[Flags]
  enum IconLookupFlags : UInt32
    ZERO_NONE = 0
    NO_SVG = 1
    FORCE_SVG = 2
    USE_BUILTIN = 4
    GENERIC_FALLBACK = 8
    FORCE_SIZE = 16
    FORCE_REGULAR = 32
    FORCE_SYMBOLIC = 64
    DIR_LTR = 128
    DIR_RTL = 256
  end

  @[Flags]
  enum InputHints : UInt32
    ZERO_NONE = 0
    NONE = 0
    SPELLCHECK = 1
    NO_SPELLCHECK = 2
    WORD_COMPLETION = 4
    LOWERCASE = 8
    UPPERCASE_CHARS = 16
    UPPERCASE_WORDS = 32
    UPPERCASE_SENTENCES = 64
    INHIBIT_OSK = 128
    VERTICAL_WRITING = 256
    EMOJI = 512
    NO_EMOJI = 1024
  end

  @[Flags]
  enum JunctionSides : UInt32
    ZERO_NONE = 0
    NONE = 0
    CORNER_TOPLEFT = 1
    CORNER_TOPRIGHT = 2
    CORNER_BOTTOMLEFT = 4
    CORNER_BOTTOMRIGHT = 8
    TOP = 3
    BOTTOM = 12
    LEFT = 5
    RIGHT = 10
  end

  @[Flags]
  enum PlacesOpenFlags : UInt32
    ZERO_NONE = 0
    NORMAL = 1
    NEW_TAB = 2
    NEW_WINDOW = 4
  end

  @[Flags]
  enum RcFlags : UInt32
    ZERO_NONE = 0
    FG = 1
    BG = 2
    TEXT = 4
    BASE = 8
  end

  @[Flags]
  enum RecentFilterFlags : UInt32
    ZERO_NONE = 0
    URI = 1
    DISPLAY_NAME = 2
    MIME_TYPE = 4
    APPLICATION = 8
    GROUP = 16
    AGE = 32
  end

  @[Flags]
  enum RegionFlags : UInt32
    ZERO_NONE = 0
    EVEN = 1
    ODD = 2
    FIRST = 4
    LAST = 8
    ONLY = 16
    SORTED = 32
  end

  @[Flags]
  enum StateFlags : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    ACTIVE = 1
    PRELIGHT = 2
    SELECTED = 4
    INSENSITIVE = 8
    INCONSISTENT = 16
    FOCUSED = 32
    BACKDROP = 64
    DIR_LTR = 128
    DIR_RTL = 256
    LINK = 512
    VISITED = 1024
    CHECKED = 2048
    DROP_ACTIVE = 4096
  end

  @[Flags]
  enum StyleContextPrintFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    RECURSE = 1
    SHOW_STYLE = 2
  end

  @[Flags]
  enum TargetFlags : UInt32
    ZERO_NONE = 0
    SAME_APP = 1
    SAME_WIDGET = 2
    OTHER_APP = 4
    OTHER_WIDGET = 8
  end

  @[Flags]
  enum TextSearchFlags : UInt32
    ZERO_NONE = 0
    VISIBLE_ONLY = 1
    TEXT_ONLY = 2
    CASE_INSENSITIVE = 4
  end

  @[Flags]
  enum ToolPaletteDragTargets : UInt32
    ZERO_NONE = 0
    ITEMS = 1
    GROUPS = 2
  end

  @[Flags]
  enum TreeModelFlags : UInt32
    ZERO_NONE = 0
    ITERS_PERSIST = 1
    LIST_ONLY = 2
  end

  @[Flags]
  enum UIManagerItemType : UInt32
    ZERO_NONE = 0
    AUTO = 0
    MENUBAR = 1
    MENU = 2
    TOOLBAR = 4
    PLACEHOLDER = 8
    POPUP = 16
    MENUITEM = 32
    TOOLITEM = 64
    SEPARATOR = 128
    ACCELERATOR = 256
    POPUP_WITH_ACCELS = 512
  end


  ###########################################
  ##    Interfaces
  ###########################################

  struct Actionable # interface
    g_iface : LibGObject::TypeInterface
    get_action_name : -> Void
    set_action_name : -> Void
    get_action_target_value : -> Void
    set_action_target_value : -> Void
  # Requires Widget
    # Virtual function get_action_name
    # Virtual function get_action_target_value
    # Virtual function set_action_name
    # Virtual function set_action_target_value
    # Property action_name : UInt8*
    # Property action_target : LibGLib::Variant
  end
  fun actionable_get_action_name = gtk_actionable_get_action_name(this : Actionable*) : UInt8*
  fun actionable_get_action_target_value = gtk_actionable_get_action_target_value(this : Actionable*) : LibGLib::Variant*
  fun actionable_set_action_name = gtk_actionable_set_action_name(this : Actionable*, action_name : UInt8*) : Void
  fun actionable_set_action_target_value = gtk_actionable_set_action_target_value(this : Actionable*, target_value : LibGLib::Variant*) : Void
  fun actionable_set_detailed_action_name = gtk_actionable_set_detailed_action_name(this : Actionable*, detailed_action_name : UInt8*) : Void

  struct Activatable # interface
    g_iface : LibGObject::TypeInterface
    update : -> Void
    sync_action_properties : -> Void
    # Virtual function sync_action_properties
    # Virtual function update
    # Property related_action : LibGtk::Action*
    # Property use_action_appearance : Bool
  end
  fun activatable_do_set_related_action = gtk_activatable_do_set_related_action(this : Activatable*, action : LibGtk::Action*) : Void
  fun activatable_get_related_action = gtk_activatable_get_related_action(this : Activatable*) : LibGtk::Action*
  fun activatable_get_use_action_appearance = gtk_activatable_get_use_action_appearance(this : Activatable*) : Bool
  fun activatable_set_related_action = gtk_activatable_set_related_action(this : Activatable*, action : LibGtk::Action*) : Void
  fun activatable_set_use_action_appearance = gtk_activatable_set_use_action_appearance(this : Activatable*, use_appearance : Bool) : Void
  fun activatable_sync_action_properties = gtk_activatable_sync_action_properties(this : Activatable*, action : LibGtk::Action*) : Void

  struct AppChooser # interface
    _data : UInt8[0]
  # Requires Widget
    # Property content_type : UInt8*
  end
  fun app_chooser_get_app_info = gtk_app_chooser_get_app_info(this : AppChooser*) : LibGio::AppInfo*
  fun app_chooser_get_content_type = gtk_app_chooser_get_content_type(this : AppChooser*) : UInt8*
  fun app_chooser_refresh = gtk_app_chooser_refresh(this : AppChooser*) : Void

  struct Buildable # interface
    g_iface : LibGObject::TypeInterface
    set_name : -> Void
    get_name : -> Void
    add_child : -> Void
    set_buildable_property : -> Void
    construct_child : -> Void
    custom_tag_start : -> Void
    custom_tag_end : -> Void
    custom_finished : -> Void
    parser_finished : -> Void
    get_internal_child : -> Void
    # Virtual function add_child
    # Virtual function construct_child
    # Virtual function custom_finished
    # Virtual function custom_tag_end
    # Virtual function custom_tag_start
    # Virtual function get_internal_child
    # Virtual function get_name
    # Virtual function parser_finished
    # Virtual function set_buildable_property
    # Virtual function set_name
  end
  fun buildable_add_child = gtk_buildable_add_child(this : Buildable*, builder : LibGtk::Builder*, child : LibGObject::Object*, type : UInt8*) : Void
  fun buildable_construct_child = gtk_buildable_construct_child(this : Buildable*, builder : LibGtk::Builder*, name : UInt8*) : LibGObject::Object*
  fun buildable_custom_finished = gtk_buildable_custom_finished(this : Buildable*, builder : LibGtk::Builder*, child : LibGObject::Object*, tagname : UInt8*, data : Void*) : Void
  fun buildable_custom_tag_end = gtk_buildable_custom_tag_end(this : Buildable*, builder : LibGtk::Builder*, child : LibGObject::Object*, tagname : UInt8*, data : Void*) : Void
  fun buildable_custom_tag_start = gtk_buildable_custom_tag_start(this : Buildable*, builder : LibGtk::Builder*, child : LibGObject::Object*, tagname : UInt8*, parser : LibGLib::MarkupParser*, data : Void**) : Bool
  fun buildable_get_internal_child = gtk_buildable_get_internal_child(this : Buildable*, builder : LibGtk::Builder*, childname : UInt8*) : LibGObject::Object*
  fun buildable_get_name = gtk_buildable_get_name(this : Buildable*) : UInt8*
  fun buildable_parser_finished = gtk_buildable_parser_finished(this : Buildable*, builder : LibGtk::Builder*) : Void
  fun buildable_set_buildable_property = gtk_buildable_set_buildable_property(this : Buildable*, builder : LibGtk::Builder*, name : UInt8*, value : LibGObject::Value*) : Void
  fun buildable_set_name = gtk_buildable_set_name(this : Buildable*, name : UInt8*) : Void

  struct CellAccessibleParent # interface
    parent : LibGObject::TypeInterface
    get_cell_extents : -> Void
    get_cell_area : -> Void
    grab_focus : -> Void
    get_child_index : -> Void
    get_renderer_state : -> Void
    expand_collapse : -> Void
    activate : -> Void
    edit : -> Void
    update_relationset : -> Void
    # Virtual function activate
    # Virtual function edit
    # Virtual function expand_collapse
    # Virtual function get_cell_area
    # Virtual function get_cell_extents
    # Virtual function get_child_index
    # Virtual function get_renderer_state
    # Virtual function grab_focus
    # Virtual function update_relationset
  end
  fun cell_accessible_parent_activate = gtk_cell_accessible_parent_activate(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*) : Void
  fun cell_accessible_parent_edit = gtk_cell_accessible_parent_edit(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*) : Void
  fun cell_accessible_parent_expand_collapse = gtk_cell_accessible_parent_expand_collapse(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*) : Void
  fun cell_accessible_parent_get_cell_area = gtk_cell_accessible_parent_get_cell_area(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*, cell_rect : LibGdk::Rectangle*) : Void
  fun cell_accessible_parent_get_cell_extents = gtk_cell_accessible_parent_get_cell_extents(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*, x : Int32*, y : Int32*, width : Int32*, height : Int32*, coord_type : LibAtk::CoordType) : Void
  fun cell_accessible_parent_get_child_index = gtk_cell_accessible_parent_get_child_index(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*) : Int32
  fun cell_accessible_parent_get_renderer_state = gtk_cell_accessible_parent_get_renderer_state(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*) : LibGtk::CellRendererState
  fun cell_accessible_parent_grab_focus = gtk_cell_accessible_parent_grab_focus(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*) : Bool
  fun cell_accessible_parent_update_relationset = gtk_cell_accessible_parent_update_relationset(this : CellAccessibleParent*, cell : LibGtk::CellAccessible*, relationset : LibAtk::RelationSet*) : Void

  struct CellEditable # interface
    g_iface : LibGObject::TypeInterface
    editing_done : -> Void
    remove_widget : -> Void
    start_editing : -> Void
  # Requires Widget
    # Signal editing-done
    # Signal remove-widget
    # Virtual function editing_done
    # Virtual function remove_widget
    # Virtual function start_editing
    # Property editing_canceled : Bool
  end
  fun cell_editable_editing_done = gtk_cell_editable_editing_done(this : CellEditable*) : Void
  fun cell_editable_remove_widget = gtk_cell_editable_remove_widget(this : CellEditable*) : Void
  fun cell_editable_start_editing = gtk_cell_editable_start_editing(this : CellEditable*, event : LibGdk::Event*) : Void

  struct CellLayout # interface
    g_iface : LibGObject::TypeInterface
    pack_start : -> Void
    pack_end : -> Void
    clear : -> Void
    add_attribute : -> Void
    set_cell_data_func : -> Void
    clear_attributes : -> Void
    reorder : -> Void
    get_cells : -> Void
    get_area : -> Void
    # Virtual function add_attribute
    # Virtual function clear
    # Virtual function clear_attributes
    # Virtual function get_area
    # Virtual function get_cells
    # Virtual function pack_end
    # Virtual function pack_start
    # Virtual function reorder
    # Virtual function set_cell_data_func
  end
  fun cell_layout_add_attribute = gtk_cell_layout_add_attribute(this : CellLayout*, cell : LibGtk::CellRenderer*, attribute : UInt8*, column : Int32) : Void
  fun cell_layout_clear = gtk_cell_layout_clear(this : CellLayout*) : Void
  fun cell_layout_clear_attributes = gtk_cell_layout_clear_attributes(this : CellLayout*, cell : LibGtk::CellRenderer*) : Void
  fun cell_layout_get_area = gtk_cell_layout_get_area(this : CellLayout*) : LibGtk::CellArea*
  fun cell_layout_get_cells = gtk_cell_layout_get_cells(this : CellLayout*) : Void**
  fun cell_layout_pack_end = gtk_cell_layout_pack_end(this : CellLayout*, cell : LibGtk::CellRenderer*, expand : Bool) : Void
  fun cell_layout_pack_start = gtk_cell_layout_pack_start(this : CellLayout*, cell : LibGtk::CellRenderer*, expand : Bool) : Void
  fun cell_layout_reorder = gtk_cell_layout_reorder(this : CellLayout*, cell : LibGtk::CellRenderer*, position : Int32) : Void
  fun cell_layout_set_cell_data_func = gtk_cell_layout_set_cell_data_func(this : CellLayout*, cell : LibGtk::CellRenderer*, func : LibGtk::CellLayoutDataFunc, func_data : Void*, destroy : LibGLib::DestroyNotify) : Void

  struct ColorChooser # interface
    base_interface : LibGObject::TypeInterface
    get_rgba : -> Void
    set_rgba : -> Void
    add_palette : -> Void
    color_activated : -> Void
    padding : Void*
    # Signal color-activated
    # Virtual function add_palette
    # Virtual function color_activated
    # Virtual function get_rgba
    # Virtual function set_rgba
    # Property rgba : LibGdk::RGBA
    # Property use_alpha : Bool
  end
  fun color_chooser_add_palette = gtk_color_chooser_add_palette(this : ColorChooser*, orientation : LibGtk::Orientation, colors_per_line : Int32, n_colors : Int32, colors : LibGdk::RGBA*) : Void
  fun color_chooser_get_rgba = gtk_color_chooser_get_rgba(this : ColorChooser*, color : LibGdk::RGBA*) : Void
  fun color_chooser_get_use_alpha = gtk_color_chooser_get_use_alpha(this : ColorChooser*) : Bool
  fun color_chooser_set_rgba = gtk_color_chooser_set_rgba(this : ColorChooser*, color : LibGdk::RGBA*) : Void
  fun color_chooser_set_use_alpha = gtk_color_chooser_set_use_alpha(this : ColorChooser*, use_alpha : Bool) : Void

  struct Editable # interface
    base_iface : LibGObject::TypeInterface
    insert_text : -> Void
    delete_text : -> Void
    changed : -> Void
    do_insert_text : -> Void
    do_delete_text : -> Void
    get_chars : -> Void
    set_selection_bounds : -> Void
    get_selection_bounds : -> Void
    set_position : -> Void
    get_position : -> Void
    # Signal changed
    # Signal delete-text
    # Signal insert-text
    # Virtual function changed
    # Virtual function delete_text
    # Virtual function do_delete_text
    # Virtual function do_insert_text
    # Virtual function get_chars
    # Virtual function get_position
    # Virtual function get_selection_bounds
    # Virtual function insert_text
    # Virtual function set_position
    # Virtual function set_selection_bounds
  end
  fun editable_copy_clipboard = gtk_editable_copy_clipboard(this : Editable*) : Void
  fun editable_cut_clipboard = gtk_editable_cut_clipboard(this : Editable*) : Void
  fun editable_delete_selection = gtk_editable_delete_selection(this : Editable*) : Void
  fun editable_delete_text = gtk_editable_delete_text(this : Editable*, start_pos : Int32, end_pos : Int32) : Void
  fun editable_get_chars = gtk_editable_get_chars(this : Editable*, start_pos : Int32, end_pos : Int32) : UInt8*
  fun editable_get_editable = gtk_editable_get_editable(this : Editable*) : Bool
  fun editable_get_position = gtk_editable_get_position(this : Editable*) : Int32
  fun editable_get_selection_bounds = gtk_editable_get_selection_bounds(this : Editable*, start_pos : Int32*, end_pos : Int32*) : Bool
  fun editable_insert_text = gtk_editable_insert_text(this : Editable*, new_text : UInt8*, new_text_length : Int32, position : Int32*) : Void
  fun editable_paste_clipboard = gtk_editable_paste_clipboard(this : Editable*) : Void
  fun editable_select_region = gtk_editable_select_region(this : Editable*, start_pos : Int32, end_pos : Int32) : Void
  fun editable_set_editable = gtk_editable_set_editable(this : Editable*, is_editable : Bool) : Void
  fun editable_set_position = gtk_editable_set_position(this : Editable*, position : Int32) : Void

  struct FileChooser # interface
    _data : UInt8[0]
    # Signal confirm-overwrite
    # Signal current-folder-changed
    # Signal file-activated
    # Signal selection-changed
    # Signal update-preview
    # Property action : LibGtk::FileChooserAction
    # Property create_folders : Bool
    # Property do_overwrite_confirmation : Bool
    # Property extra_widget : LibGtk::Widget*
    # Property filter : LibGtk::FileFilter*
    # Property local_only : Bool
    # Property preview_widget : LibGtk::Widget*
    # Property preview_widget_active : Bool
    # Property select_multiple : Bool
    # Property show_hidden : Bool
    # Property use_preview_label : Bool
  end
  fun file_chooser_add_choice = gtk_file_chooser_add_choice(this : FileChooser*, id : UInt8*, label : UInt8*, options : UInt8**, option_labels : UInt8**) : Void
  fun file_chooser_add_filter = gtk_file_chooser_add_filter(this : FileChooser*, filter : LibGtk::FileFilter*) : Void
  fun file_chooser_add_shortcut_folder = gtk_file_chooser_add_shortcut_folder(this : FileChooser*, folder : UInt8*, error : LibGLib::Error**) : Bool
  fun file_chooser_add_shortcut_folder_uri = gtk_file_chooser_add_shortcut_folder_uri(this : FileChooser*, uri : UInt8*, error : LibGLib::Error**) : Bool
  fun file_chooser_get_action = gtk_file_chooser_get_action(this : FileChooser*) : LibGtk::FileChooserAction
  fun file_chooser_get_choice = gtk_file_chooser_get_choice(this : FileChooser*, id : UInt8*) : UInt8*
  fun file_chooser_get_create_folders = gtk_file_chooser_get_create_folders(this : FileChooser*) : Bool
  fun file_chooser_get_current_folder = gtk_file_chooser_get_current_folder(this : FileChooser*) : UInt8*
  fun file_chooser_get_current_folder_file = gtk_file_chooser_get_current_folder_file(this : FileChooser*) : LibGio::File*
  fun file_chooser_get_current_folder_uri = gtk_file_chooser_get_current_folder_uri(this : FileChooser*) : UInt8*
  fun file_chooser_get_current_name = gtk_file_chooser_get_current_name(this : FileChooser*) : UInt8*
  fun file_chooser_get_do_overwrite_confirmation = gtk_file_chooser_get_do_overwrite_confirmation(this : FileChooser*) : Bool
  fun file_chooser_get_extra_widget = gtk_file_chooser_get_extra_widget(this : FileChooser*) : LibGtk::Widget*
  fun file_chooser_get_file = gtk_file_chooser_get_file(this : FileChooser*) : LibGio::File*
  fun file_chooser_get_filename = gtk_file_chooser_get_filename(this : FileChooser*) : UInt8*
  fun file_chooser_get_filenames = gtk_file_chooser_get_filenames(this : FileChooser*) : Void**
  fun file_chooser_get_files = gtk_file_chooser_get_files(this : FileChooser*) : Void**
  fun file_chooser_get_filter = gtk_file_chooser_get_filter(this : FileChooser*) : LibGtk::FileFilter*
  fun file_chooser_get_local_only = gtk_file_chooser_get_local_only(this : FileChooser*) : Bool
  fun file_chooser_get_preview_file = gtk_file_chooser_get_preview_file(this : FileChooser*) : LibGio::File*
  fun file_chooser_get_preview_filename = gtk_file_chooser_get_preview_filename(this : FileChooser*) : UInt8*
  fun file_chooser_get_preview_uri = gtk_file_chooser_get_preview_uri(this : FileChooser*) : UInt8*
  fun file_chooser_get_preview_widget = gtk_file_chooser_get_preview_widget(this : FileChooser*) : LibGtk::Widget*
  fun file_chooser_get_preview_widget_active = gtk_file_chooser_get_preview_widget_active(this : FileChooser*) : Bool
  fun file_chooser_get_select_multiple = gtk_file_chooser_get_select_multiple(this : FileChooser*) : Bool
  fun file_chooser_get_show_hidden = gtk_file_chooser_get_show_hidden(this : FileChooser*) : Bool
  fun file_chooser_get_uri = gtk_file_chooser_get_uri(this : FileChooser*) : UInt8*
  fun file_chooser_get_uris = gtk_file_chooser_get_uris(this : FileChooser*) : Void**
  fun file_chooser_get_use_preview_label = gtk_file_chooser_get_use_preview_label(this : FileChooser*) : Bool
  fun file_chooser_list_filters = gtk_file_chooser_list_filters(this : FileChooser*) : Void**
  fun file_chooser_list_shortcut_folder_uris = gtk_file_chooser_list_shortcut_folder_uris(this : FileChooser*) : Void**
  fun file_chooser_list_shortcut_folders = gtk_file_chooser_list_shortcut_folders(this : FileChooser*) : Void**
  fun file_chooser_remove_choice = gtk_file_chooser_remove_choice(this : FileChooser*, id : UInt8*) : Void
  fun file_chooser_remove_filter = gtk_file_chooser_remove_filter(this : FileChooser*, filter : LibGtk::FileFilter*) : Void
  fun file_chooser_remove_shortcut_folder = gtk_file_chooser_remove_shortcut_folder(this : FileChooser*, folder : UInt8*, error : LibGLib::Error**) : Bool
  fun file_chooser_remove_shortcut_folder_uri = gtk_file_chooser_remove_shortcut_folder_uri(this : FileChooser*, uri : UInt8*, error : LibGLib::Error**) : Bool
  fun file_chooser_select_all = gtk_file_chooser_select_all(this : FileChooser*) : Void
  fun file_chooser_select_file = gtk_file_chooser_select_file(this : FileChooser*, file : LibGio::File*, error : LibGLib::Error**) : Bool
  fun file_chooser_select_filename = gtk_file_chooser_select_filename(this : FileChooser*, filename : UInt8*) : Bool
  fun file_chooser_select_uri = gtk_file_chooser_select_uri(this : FileChooser*, uri : UInt8*) : Bool
  fun file_chooser_set_action = gtk_file_chooser_set_action(this : FileChooser*, action : LibGtk::FileChooserAction) : Void
  fun file_chooser_set_choice = gtk_file_chooser_set_choice(this : FileChooser*, id : UInt8*, option : UInt8*) : Void
  fun file_chooser_set_create_folders = gtk_file_chooser_set_create_folders(this : FileChooser*, create_folders : Bool) : Void
  fun file_chooser_set_current_folder = gtk_file_chooser_set_current_folder(this : FileChooser*, filename : UInt8*) : Bool
  fun file_chooser_set_current_folder_file = gtk_file_chooser_set_current_folder_file(this : FileChooser*, file : LibGio::File*, error : LibGLib::Error**) : Bool
  fun file_chooser_set_current_folder_uri = gtk_file_chooser_set_current_folder_uri(this : FileChooser*, uri : UInt8*) : Bool
  fun file_chooser_set_current_name = gtk_file_chooser_set_current_name(this : FileChooser*, name : UInt8*) : Void
  fun file_chooser_set_do_overwrite_confirmation = gtk_file_chooser_set_do_overwrite_confirmation(this : FileChooser*, do_overwrite_confirmation : Bool) : Void
  fun file_chooser_set_extra_widget = gtk_file_chooser_set_extra_widget(this : FileChooser*, extra_widget : LibGtk::Widget*) : Void
  fun file_chooser_set_file = gtk_file_chooser_set_file(this : FileChooser*, file : LibGio::File*, error : LibGLib::Error**) : Bool
  fun file_chooser_set_filename = gtk_file_chooser_set_filename(this : FileChooser*, filename : UInt8*) : Bool
  fun file_chooser_set_filter = gtk_file_chooser_set_filter(this : FileChooser*, filter : LibGtk::FileFilter*) : Void
  fun file_chooser_set_local_only = gtk_file_chooser_set_local_only(this : FileChooser*, local_only : Bool) : Void
  fun file_chooser_set_preview_widget = gtk_file_chooser_set_preview_widget(this : FileChooser*, preview_widget : LibGtk::Widget*) : Void
  fun file_chooser_set_preview_widget_active = gtk_file_chooser_set_preview_widget_active(this : FileChooser*, active : Bool) : Void
  fun file_chooser_set_select_multiple = gtk_file_chooser_set_select_multiple(this : FileChooser*, select_multiple : Bool) : Void
  fun file_chooser_set_show_hidden = gtk_file_chooser_set_show_hidden(this : FileChooser*, show_hidden : Bool) : Void
  fun file_chooser_set_uri = gtk_file_chooser_set_uri(this : FileChooser*, uri : UInt8*) : Bool
  fun file_chooser_set_use_preview_label = gtk_file_chooser_set_use_preview_label(this : FileChooser*, use_label : Bool) : Void
  fun file_chooser_unselect_all = gtk_file_chooser_unselect_all(this : FileChooser*) : Void
  fun file_chooser_unselect_file = gtk_file_chooser_unselect_file(this : FileChooser*, file : LibGio::File*) : Void
  fun file_chooser_unselect_filename = gtk_file_chooser_unselect_filename(this : FileChooser*, filename : UInt8*) : Void
  fun file_chooser_unselect_uri = gtk_file_chooser_unselect_uri(this : FileChooser*, uri : UInt8*) : Void

  struct FontChooser # interface
    base_iface : LibGObject::TypeInterface
    get_font_family : -> Void
    get_font_face : -> Void
    get_font_size : -> Void
    set_filter_func : -> Void
    font_activated : -> Void
    set_font_map : -> Void
    get_font_map : -> Void
    padding : Void*
    # Signal font-activated
    # Virtual function font_activated
    # Virtual function get_font_face
    # Virtual function get_font_family
    # Virtual function get_font_map
    # Virtual function get_font_size
    # Virtual function set_filter_func
    # Virtual function set_font_map
    # Property font : UInt8*
    # Property font_desc : LibPango::FontDescription
    # Property font_features : UInt8*
    # Property language : UInt8*
    # Property level : LibGtk::FontChooserLevel
    # Property preview_text : UInt8*
    # Property show_preview_entry : Bool
  end
  fun font_chooser_get_font = gtk_font_chooser_get_font(this : FontChooser*) : UInt8*
  fun font_chooser_get_font_desc = gtk_font_chooser_get_font_desc(this : FontChooser*) : LibPango::FontDescription*
  fun font_chooser_get_font_face = gtk_font_chooser_get_font_face(this : FontChooser*) : LibPango::FontFace*
  fun font_chooser_get_font_family = gtk_font_chooser_get_font_family(this : FontChooser*) : LibPango::FontFamily*
  fun font_chooser_get_font_features = gtk_font_chooser_get_font_features(this : FontChooser*) : UInt8*
  fun font_chooser_get_font_map = gtk_font_chooser_get_font_map(this : FontChooser*) : LibPango::FontMap*
  fun font_chooser_get_font_size = gtk_font_chooser_get_font_size(this : FontChooser*) : Int32
  fun font_chooser_get_language = gtk_font_chooser_get_language(this : FontChooser*) : UInt8*
  fun font_chooser_get_level = gtk_font_chooser_get_level(this : FontChooser*) : LibGtk::FontChooserLevel
  fun font_chooser_get_preview_text = gtk_font_chooser_get_preview_text(this : FontChooser*) : UInt8*
  fun font_chooser_get_show_preview_entry = gtk_font_chooser_get_show_preview_entry(this : FontChooser*) : Bool
  fun font_chooser_set_filter_func = gtk_font_chooser_set_filter_func(this : FontChooser*, filter : LibGtk::FontFilterFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun font_chooser_set_font = gtk_font_chooser_set_font(this : FontChooser*, fontname : UInt8*) : Void
  fun font_chooser_set_font_desc = gtk_font_chooser_set_font_desc(this : FontChooser*, font_desc : LibPango::FontDescription*) : Void
  fun font_chooser_set_font_map = gtk_font_chooser_set_font_map(this : FontChooser*, fontmap : LibPango::FontMap*) : Void
  fun font_chooser_set_language = gtk_font_chooser_set_language(this : FontChooser*, language : UInt8*) : Void
  fun font_chooser_set_level = gtk_font_chooser_set_level(this : FontChooser*, level : LibGtk::FontChooserLevel) : Void
  fun font_chooser_set_preview_text = gtk_font_chooser_set_preview_text(this : FontChooser*, text : UInt8*) : Void
  fun font_chooser_set_show_preview_entry = gtk_font_chooser_set_show_preview_entry(this : FontChooser*, show_preview_entry : Bool) : Void

  struct Orientable # interface
    base_iface : LibGObject::TypeInterface
    # Property orientation : LibGtk::Orientation
  end
  fun orientable_get_orientation = gtk_orientable_get_orientation(this : Orientable*) : LibGtk::Orientation
  fun orientable_set_orientation = gtk_orientable_set_orientation(this : Orientable*, orientation : LibGtk::Orientation) : Void

  struct PrintOperationPreview # interface
    g_iface : LibGObject::TypeInterface
    ready : -> Void
    got_page_size : -> Void
    render_page : -> Void
    is_selected : -> Void
    end_preview : -> Void
    _gtk_reserved1 : Void*
    _gtk_reserved2 : Void*
    _gtk_reserved3 : Void*
    _gtk_reserved4 : Void*
    _gtk_reserved5 : Void*
    _gtk_reserved6 : Void*
    _gtk_reserved7 : Void*
    _gtk_reserved8 : Void*
    # Signal got-page-size
    # Signal ready
    # Virtual function end_preview
    # Virtual function got_page_size
    # Virtual function is_selected
    # Virtual function ready
    # Virtual function render_page
  end
  fun print_operation_preview_end_preview = gtk_print_operation_preview_end_preview(this : PrintOperationPreview*) : Void
  fun print_operation_preview_is_selected = gtk_print_operation_preview_is_selected(this : PrintOperationPreview*, page_nr : Int32) : Bool
  fun print_operation_preview_render_page = gtk_print_operation_preview_render_page(this : PrintOperationPreview*, page_nr : Int32) : Void

  struct RecentChooser # interface
    base_iface : LibGObject::TypeInterface
    set_current_uri : -> Void
    get_current_uri : -> Void
    select_uri : -> Void
    unselect_uri : -> Void
    select_all : -> Void
    unselect_all : -> Void
    get_items : -> Void
    get_recent_manager : Void*
    add_filter : -> Void
    remove_filter : -> Void
    list_filters : -> Void
    set_sort_func : -> Void
    item_activated : -> Void
    selection_changed : -> Void
    # Signal item-activated
    # Signal selection-changed
    # Virtual function add_filter
    # Virtual function get_current_uri
    # Virtual function get_items
    # Virtual function item_activated
    # Virtual function list_filters
    # Virtual function remove_filter
    # Virtual function select_all
    # Virtual function select_uri
    # Virtual function selection_changed
    # Virtual function set_current_uri
    # Virtual function set_sort_func
    # Virtual function unselect_all
    # Virtual function unselect_uri
    # Property filter : LibGtk::RecentFilter*
    # Property limit : Int32
    # Property local_only : Bool
    # Property recent_manager : LibGtk::RecentManager*
    # Property select_multiple : Bool
    # Property show_icons : Bool
    # Property show_not_found : Bool
    # Property show_private : Bool
    # Property show_tips : Bool
    # Property sort_type : LibGtk::RecentSortType
  end
  fun recent_chooser_add_filter = gtk_recent_chooser_add_filter(this : RecentChooser*, filter : LibGtk::RecentFilter*) : Void
  fun recent_chooser_get_current_item = gtk_recent_chooser_get_current_item(this : RecentChooser*) : LibGtk::RecentInfo*
  fun recent_chooser_get_current_uri = gtk_recent_chooser_get_current_uri(this : RecentChooser*) : UInt8*
  fun recent_chooser_get_filter = gtk_recent_chooser_get_filter(this : RecentChooser*) : LibGtk::RecentFilter*
  fun recent_chooser_get_items = gtk_recent_chooser_get_items(this : RecentChooser*) : Void**
  fun recent_chooser_get_limit = gtk_recent_chooser_get_limit(this : RecentChooser*) : Int32
  fun recent_chooser_get_local_only = gtk_recent_chooser_get_local_only(this : RecentChooser*) : Bool
  fun recent_chooser_get_select_multiple = gtk_recent_chooser_get_select_multiple(this : RecentChooser*) : Bool
  fun recent_chooser_get_show_icons = gtk_recent_chooser_get_show_icons(this : RecentChooser*) : Bool
  fun recent_chooser_get_show_not_found = gtk_recent_chooser_get_show_not_found(this : RecentChooser*) : Bool
  fun recent_chooser_get_show_private = gtk_recent_chooser_get_show_private(this : RecentChooser*) : Bool
  fun recent_chooser_get_show_tips = gtk_recent_chooser_get_show_tips(this : RecentChooser*) : Bool
  fun recent_chooser_get_sort_type = gtk_recent_chooser_get_sort_type(this : RecentChooser*) : LibGtk::RecentSortType
  fun recent_chooser_get_uris = gtk_recent_chooser_get_uris(this : RecentChooser*, length : UInt64*) : UInt8**
  fun recent_chooser_list_filters = gtk_recent_chooser_list_filters(this : RecentChooser*) : Void**
  fun recent_chooser_remove_filter = gtk_recent_chooser_remove_filter(this : RecentChooser*, filter : LibGtk::RecentFilter*) : Void
  fun recent_chooser_select_all = gtk_recent_chooser_select_all(this : RecentChooser*) : Void
  fun recent_chooser_select_uri = gtk_recent_chooser_select_uri(this : RecentChooser*, uri : UInt8*, error : LibGLib::Error**) : Bool
  fun recent_chooser_set_current_uri = gtk_recent_chooser_set_current_uri(this : RecentChooser*, uri : UInt8*, error : LibGLib::Error**) : Bool
  fun recent_chooser_set_filter = gtk_recent_chooser_set_filter(this : RecentChooser*, filter : LibGtk::RecentFilter*) : Void
  fun recent_chooser_set_limit = gtk_recent_chooser_set_limit(this : RecentChooser*, limit : Int32) : Void
  fun recent_chooser_set_local_only = gtk_recent_chooser_set_local_only(this : RecentChooser*, local_only : Bool) : Void
  fun recent_chooser_set_select_multiple = gtk_recent_chooser_set_select_multiple(this : RecentChooser*, select_multiple : Bool) : Void
  fun recent_chooser_set_show_icons = gtk_recent_chooser_set_show_icons(this : RecentChooser*, show_icons : Bool) : Void
  fun recent_chooser_set_show_not_found = gtk_recent_chooser_set_show_not_found(this : RecentChooser*, show_not_found : Bool) : Void
  fun recent_chooser_set_show_private = gtk_recent_chooser_set_show_private(this : RecentChooser*, show_private : Bool) : Void
  fun recent_chooser_set_show_tips = gtk_recent_chooser_set_show_tips(this : RecentChooser*, show_tips : Bool) : Void
  fun recent_chooser_set_sort_func = gtk_recent_chooser_set_sort_func(this : RecentChooser*, sort_func : LibGtk::RecentSortFunc, sort_data : Void*, data_destroy : LibGLib::DestroyNotify) : Void
  fun recent_chooser_set_sort_type = gtk_recent_chooser_set_sort_type(this : RecentChooser*, sort_type : LibGtk::RecentSortType) : Void
  fun recent_chooser_unselect_all = gtk_recent_chooser_unselect_all(this : RecentChooser*) : Void
  fun recent_chooser_unselect_uri = gtk_recent_chooser_unselect_uri(this : RecentChooser*, uri : UInt8*) : Void

  struct Scrollable # interface
    base_iface : LibGObject::TypeInterface
    get_border : -> Void
    # Virtual function get_border
    # Property hadjustment : LibGtk::Adjustment*
    # Property hscroll_policy : LibGtk::ScrollablePolicy
    # Property vadjustment : LibGtk::Adjustment*
    # Property vscroll_policy : LibGtk::ScrollablePolicy
  end
  fun scrollable_get_border = gtk_scrollable_get_border(this : Scrollable*, border : LibGtk::Border*) : Bool
  fun scrollable_get_hadjustment = gtk_scrollable_get_hadjustment(this : Scrollable*) : LibGtk::Adjustment*
  fun scrollable_get_hscroll_policy = gtk_scrollable_get_hscroll_policy(this : Scrollable*) : LibGtk::ScrollablePolicy
  fun scrollable_get_vadjustment = gtk_scrollable_get_vadjustment(this : Scrollable*) : LibGtk::Adjustment*
  fun scrollable_get_vscroll_policy = gtk_scrollable_get_vscroll_policy(this : Scrollable*) : LibGtk::ScrollablePolicy
  fun scrollable_set_hadjustment = gtk_scrollable_set_hadjustment(this : Scrollable*, hadjustment : LibGtk::Adjustment*) : Void
  fun scrollable_set_hscroll_policy = gtk_scrollable_set_hscroll_policy(this : Scrollable*, policy : LibGtk::ScrollablePolicy) : Void
  fun scrollable_set_vadjustment = gtk_scrollable_set_vadjustment(this : Scrollable*, vadjustment : LibGtk::Adjustment*) : Void
  fun scrollable_set_vscroll_policy = gtk_scrollable_set_vscroll_policy(this : Scrollable*, policy : LibGtk::ScrollablePolicy) : Void

  struct StyleProvider # interface
    g_iface : LibGObject::TypeInterface
    get_style : -> Void
    get_style_property : -> Void
    get_icon_factory : -> Void
    # Virtual function get_icon_factory
    # Virtual function get_style
    # Virtual function get_style_property
  end
  fun style_provider_get_icon_factory = gtk_style_provider_get_icon_factory(this : StyleProvider*, path : LibGtk::WidgetPath*) : LibGtk::IconFactory*
  fun style_provider_get_style = gtk_style_provider_get_style(this : StyleProvider*, path : LibGtk::WidgetPath*) : LibGtk::StyleProperties*
  fun style_provider_get_style_property = gtk_style_provider_get_style_property(this : StyleProvider*, path : LibGtk::WidgetPath*, state : LibGtk::StateFlags, pspec : LibGObject::ParamSpec*, value : LibGObject::Value*) : Bool

  struct ToolShell # interface
    g_iface : LibGObject::TypeInterface
    get_icon_size : -> Void
    get_orientation : -> Void
    get_style : -> Void
    get_relief_style : -> Void
    rebuild_menu : -> Void
    get_text_orientation : -> Void
    get_text_alignment : -> Void
    get_ellipsize_mode : -> Void
    get_text_size_group : -> Void
  # Requires Widget
    # Virtual function get_ellipsize_mode
    # Virtual function get_icon_size
    # Virtual function get_orientation
    # Virtual function get_relief_style
    # Virtual function get_style
    # Virtual function get_text_alignment
    # Virtual function get_text_orientation
    # Virtual function get_text_size_group
    # Virtual function rebuild_menu
  end
  fun tool_shell_get_ellipsize_mode = gtk_tool_shell_get_ellipsize_mode(this : ToolShell*) : LibPango::EllipsizeMode
  fun tool_shell_get_icon_size = gtk_tool_shell_get_icon_size(this : ToolShell*) : Int32
  fun tool_shell_get_orientation = gtk_tool_shell_get_orientation(this : ToolShell*) : LibGtk::Orientation
  fun tool_shell_get_relief_style = gtk_tool_shell_get_relief_style(this : ToolShell*) : LibGtk::ReliefStyle
  fun tool_shell_get_style = gtk_tool_shell_get_style(this : ToolShell*) : LibGtk::ToolbarStyle
  fun tool_shell_get_text_alignment = gtk_tool_shell_get_text_alignment(this : ToolShell*) : Float32
  fun tool_shell_get_text_orientation = gtk_tool_shell_get_text_orientation(this : ToolShell*) : LibGtk::Orientation
  fun tool_shell_get_text_size_group = gtk_tool_shell_get_text_size_group(this : ToolShell*) : LibGtk::SizeGroup*
  fun tool_shell_rebuild_menu = gtk_tool_shell_rebuild_menu(this : ToolShell*) : Void

  struct TreeDragDest # interface
    g_iface : LibGObject::TypeInterface
    drag_data_received : -> Void
    row_drop_possible : -> Void
    # Virtual function drag_data_received
    # Virtual function row_drop_possible
  end
  fun tree_drag_dest_drag_data_received = gtk_tree_drag_dest_drag_data_received(this : TreeDragDest*, dest : LibGtk::TreePath*, selection_data : LibGtk::SelectionData*) : Bool
  fun tree_drag_dest_row_drop_possible = gtk_tree_drag_dest_row_drop_possible(this : TreeDragDest*, dest_path : LibGtk::TreePath*, selection_data : LibGtk::SelectionData*) : Bool

  struct TreeDragSource # interface
    g_iface : LibGObject::TypeInterface
    row_draggable : -> Void
    drag_data_get : -> Void
    drag_data_delete : -> Void
    # Virtual function drag_data_delete
    # Virtual function drag_data_get
    # Virtual function row_draggable
  end
  fun tree_drag_source_drag_data_delete = gtk_tree_drag_source_drag_data_delete(this : TreeDragSource*, path : LibGtk::TreePath*) : Bool
  fun tree_drag_source_drag_data_get = gtk_tree_drag_source_drag_data_get(this : TreeDragSource*, path : LibGtk::TreePath*, selection_data : LibGtk::SelectionData*) : Bool
  fun tree_drag_source_row_draggable = gtk_tree_drag_source_row_draggable(this : TreeDragSource*, path : LibGtk::TreePath*) : Bool

  struct TreeModel # interface
    g_iface : LibGObject::TypeInterface
    row_changed : -> Void
    row_inserted : -> Void
    row_has_child_toggled : -> Void
    row_deleted : -> Void
    rows_reordered : -> Void
    get_flags : -> Void
    get_n_columns : -> Void
    get_column_type : -> Void
    get_iter : -> Void
    get_path : -> Void
    get_value : -> Void
    iter_next : -> Void
    iter_previous : -> Void
    iter_children : -> Void
    iter_has_child : -> Void
    iter_n_children : -> Void
    iter_nth_child : -> Void
    iter_parent : -> Void
    ref_node : -> Void
    unref_node : -> Void
    # Signal row-changed
    # Signal row-deleted
    # Signal row-has-child-toggled
    # Signal row-inserted
    # Virtual function get_column_type
    # Virtual function get_flags
    # Virtual function get_iter
    # Virtual function get_n_columns
    # Virtual function get_path
    # Virtual function get_value
    # Virtual function iter_children
    # Virtual function iter_has_child
    # Virtual function iter_n_children
    # Virtual function iter_next
    # Virtual function iter_nth_child
    # Virtual function iter_parent
    # Virtual function iter_previous
    # Virtual function ref_node
    # Virtual function row_changed
    # Virtual function row_deleted
    # Virtual function row_has_child_toggled
    # Virtual function row_inserted
    # Virtual function unref_node
  end
  fun tree_model_filter_new = gtk_tree_model_filter_new(this : TreeModel*, root : LibGtk::TreePath*) : LibGtk::TreeModel*
  fun tree_model_foreach = gtk_tree_model_foreach(this : TreeModel*, func : LibGtk::TreeModelForeachFunc, user_data : Void*) : Void
  fun tree_model_get_column_type = gtk_tree_model_get_column_type(this : TreeModel*, index : Int32) : UInt64
  fun tree_model_get_flags = gtk_tree_model_get_flags(this : TreeModel*) : LibGtk::TreeModelFlags
  fun tree_model_get_iter = gtk_tree_model_get_iter(this : TreeModel*, iter : LibGtk::TreeIter*, path : LibGtk::TreePath*) : Bool
  fun tree_model_get_iter_first = gtk_tree_model_get_iter_first(this : TreeModel*, iter : LibGtk::TreeIter*) : Bool
  fun tree_model_get_iter_from_string = gtk_tree_model_get_iter_from_string(this : TreeModel*, iter : LibGtk::TreeIter*, path_string : UInt8*) : Bool
  fun tree_model_get_n_columns = gtk_tree_model_get_n_columns(this : TreeModel*) : Int32
  fun tree_model_get_path = gtk_tree_model_get_path(this : TreeModel*, iter : LibGtk::TreeIter*) : LibGtk::TreePath*
  fun tree_model_get_string_from_iter = gtk_tree_model_get_string_from_iter(this : TreeModel*, iter : LibGtk::TreeIter*) : UInt8*
  fun tree_model_get_value = gtk_tree_model_get_value(this : TreeModel*, iter : LibGtk::TreeIter*, column : Int32, value : LibGObject::Value*) : Void
  fun tree_model_iter_children = gtk_tree_model_iter_children(this : TreeModel*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*) : Bool
  fun tree_model_iter_has_child = gtk_tree_model_iter_has_child(this : TreeModel*, iter : LibGtk::TreeIter*) : Bool
  fun tree_model_iter_n_children = gtk_tree_model_iter_n_children(this : TreeModel*, iter : LibGtk::TreeIter*) : Int32
  fun tree_model_iter_next = gtk_tree_model_iter_next(this : TreeModel*, iter : LibGtk::TreeIter*) : Bool
  fun tree_model_iter_nth_child = gtk_tree_model_iter_nth_child(this : TreeModel*, iter : LibGtk::TreeIter*, parent : LibGtk::TreeIter*, n : Int32) : Bool
  fun tree_model_iter_parent = gtk_tree_model_iter_parent(this : TreeModel*, iter : LibGtk::TreeIter*, child : LibGtk::TreeIter*) : Bool
  fun tree_model_iter_previous = gtk_tree_model_iter_previous(this : TreeModel*, iter : LibGtk::TreeIter*) : Bool
  fun tree_model_ref_node = gtk_tree_model_ref_node(this : TreeModel*, iter : LibGtk::TreeIter*) : Void
  fun tree_model_row_changed = gtk_tree_model_row_changed(this : TreeModel*, path : LibGtk::TreePath*, iter : LibGtk::TreeIter*) : Void
  fun tree_model_row_deleted = gtk_tree_model_row_deleted(this : TreeModel*, path : LibGtk::TreePath*) : Void
  fun tree_model_row_has_child_toggled = gtk_tree_model_row_has_child_toggled(this : TreeModel*, path : LibGtk::TreePath*, iter : LibGtk::TreeIter*) : Void
  fun tree_model_row_inserted = gtk_tree_model_row_inserted(this : TreeModel*, path : LibGtk::TreePath*, iter : LibGtk::TreeIter*) : Void
  fun tree_model_rows_reordered = gtk_tree_model_rows_reordered_with_length(this : TreeModel*, path : LibGtk::TreePath*, iter : LibGtk::TreeIter*, new_order : Int32*, length : Int32) : Void
  fun tree_model_sort_new_with_model = gtk_tree_model_sort_new_with_model(this : TreeModel*) : LibGtk::TreeModel*
  fun tree_model_unref_node = gtk_tree_model_unref_node(this : TreeModel*, iter : LibGtk::TreeIter*) : Void

  struct TreeSortable # interface
    g_iface : LibGObject::TypeInterface
    sort_column_changed : -> Void
    get_sort_column_id : -> Void
    set_sort_column_id : -> Void
    set_sort_func : -> Void
    set_default_sort_func : -> Void
    has_default_sort_func : -> Void
  # Requires TreeModel
    # Signal sort-column-changed
    # Virtual function get_sort_column_id
    # Virtual function has_default_sort_func
    # Virtual function set_default_sort_func
    # Virtual function set_sort_column_id
    # Virtual function set_sort_func
    # Virtual function sort_column_changed
  end
  fun tree_sortable_get_sort_column_id = gtk_tree_sortable_get_sort_column_id(this : TreeSortable*, sort_column_id : Int32*, order : LibGtk::SortType*) : Bool
  fun tree_sortable_has_default_sort_func = gtk_tree_sortable_has_default_sort_func(this : TreeSortable*) : Bool
  fun tree_sortable_set_default_sort_func = gtk_tree_sortable_set_default_sort_func(this : TreeSortable*, sort_func : LibGtk::TreeIterCompareFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_sortable_set_sort_column_id = gtk_tree_sortable_set_sort_column_id(this : TreeSortable*, sort_column_id : Int32, order : LibGtk::SortType) : Void
  fun tree_sortable_set_sort_func = gtk_tree_sortable_set_sort_func(this : TreeSortable*, sort_column_id : Int32, sort_func : LibGtk::TreeIterCompareFunc, user_data : Void*, destroy : LibGLib::DestroyNotify) : Void
  fun tree_sortable_sort_column_changed = gtk_tree_sortable_sort_column_changed(this : TreeSortable*) : Void


  ###########################################
  ##    Enums
  ###########################################

  enum Align : UInt32
    ZERO_NONE = 0
    FILL = 0
    START = 1
    END = 2
    CENTER = 3
    BASELINE = 4
  end

  enum ArrowPlacement : UInt32
    ZERO_NONE = 0
    BOTH = 0
    START = 1
    END = 2
  end

  enum ArrowType : UInt32
    ZERO_NONE = 0
    UP = 0
    DOWN = 1
    LEFT = 2
    RIGHT = 3
    NONE = 4
  end

  enum AssistantPageType : UInt32
    ZERO_NONE = 0
    CONTENT = 0
    INTRO = 1
    CONFIRM = 2
    SUMMARY = 3
    PROGRESS = 4
    CUSTOM = 5
  end

  enum BaselinePosition : UInt32
    ZERO_NONE = 0
    TOP = 0
    CENTER = 1
    BOTTOM = 2
  end

  enum BorderStyle : UInt32
    ZERO_NONE = 0
    NONE = 0
    SOLID = 1
    INSET = 2
    OUTSET = 3
    HIDDEN = 4
    DOTTED = 5
    DASHED = 6
    DOUBLE = 7
    GROOVE = 8
    RIDGE = 9
  end

  enum BuilderError : UInt32
    ZERO_NONE = 0
    INVALID_TYPE_FUNCTION = 0
    UNHANDLED_TAG = 1
    MISSING_ATTRIBUTE = 2
    INVALID_ATTRIBUTE = 3
    INVALID_TAG = 4
    MISSING_PROPERTY_VALUE = 5
    INVALID_VALUE = 6
    VERSION_MISMATCH = 7
    DUPLICATE_ID = 8
    OBJECT_TYPE_REFUSED = 9
    TEMPLATE_MISMATCH = 10
    INVALID_PROPERTY = 11
    INVALID_SIGNAL = 12
    INVALID_ID = 13
  end
  fun builder_error_quark = gtk_builder_error_quark() : UInt32

  enum ButtonBoxStyle : UInt32
    ZERO_NONE = 0
    SPREAD = 1
    EDGE = 2
    START = 3
    END = 4
    CENTER = 5
    EXPAND = 6
  end

  enum ButtonRole : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    CHECK = 1
    RADIO = 2
  end

  enum ButtonsType : UInt32
    ZERO_NONE = 0
    NONE = 0
    OK = 1
    CLOSE = 2
    CANCEL = 3
    YES_NO = 4
    OK_CANCEL = 5
  end

  enum CellRendererAccelMode : UInt32
    ZERO_NONE = 0
    GTK = 0
    OTHER = 1
  end

  enum CellRendererMode : UInt32
    ZERO_NONE = 0
    INERT = 0
    ACTIVATABLE = 1
    EDITABLE = 2
  end

  enum CornerType : UInt32
    ZERO_NONE = 0
    TOP_LEFT = 0
    BOTTOM_LEFT = 1
    TOP_RIGHT = 2
    BOTTOM_RIGHT = 3
  end

  enum CssProviderError : UInt32
    ZERO_NONE = 0
    FAILED = 0
    SYNTAX = 1
    IMPORT = 2
    NAME = 3
    DEPRECATED = 4
    UNKNOWN_VALUE = 5
  end
  fun css_provider_error_quark = gtk_css_provider_error_quark() : UInt32

  enum CssSectionType : UInt32
    ZERO_NONE = 0
    DOCUMENT = 0
    IMPORT = 1
    COLOR_DEFINITION = 2
    BINDING_SET = 3
    RULESET = 4
    SELECTOR = 5
    DECLARATION = 6
    VALUE = 7
    KEYFRAMES = 8
  end

  enum DeleteType : UInt32
    ZERO_NONE = 0
    CHARS = 0
    WORD_ENDS = 1
    WORDS = 2
    DISPLAY_LINES = 3
    DISPLAY_LINE_ENDS = 4
    PARAGRAPH_ENDS = 5
    PARAGRAPHS = 6
    WHITESPACE = 7
  end

  enum DirectionType : UInt32
    ZERO_NONE = 0
    TAB_FORWARD = 0
    TAB_BACKWARD = 1
    UP = 2
    DOWN = 3
    LEFT = 4
    RIGHT = 5
  end

  enum DragResult : UInt32
    ZERO_NONE = 0
    SUCCESS = 0
    NO_TARGET = 1
    USER_CANCELLED = 2
    TIMEOUT_EXPIRED = 3
    GRAB_BROKEN = 4
    ERROR = 5
  end

  enum EntryIconPosition : UInt32
    ZERO_NONE = 0
    PRIMARY = 0
    SECONDARY = 1
  end

  enum EventSequenceState : UInt32
    ZERO_NONE = 0
    NONE = 0
    CLAIMED = 1
    DENIED = 2
  end

  enum ExpanderStyle : UInt32
    ZERO_NONE = 0
    COLLAPSED = 0
    SEMI_COLLAPSED = 1
    SEMI_EXPANDED = 2
    EXPANDED = 3
  end

  enum FileChooserAction : UInt32
    ZERO_NONE = 0
    OPEN = 0
    SAVE = 1
    SELECT_FOLDER = 2
    CREATE_FOLDER = 3
  end

  enum FileChooserConfirmation : UInt32
    ZERO_NONE = 0
    CONFIRM = 0
    ACCEPT_FILENAME = 1
    SELECT_AGAIN = 2
  end

  enum FileChooserError : UInt32
    ZERO_NONE = 0
    NONEXISTENT = 0
    BAD_FILENAME = 1
    ALREADY_EXISTS = 2
    INCOMPLETE_HOSTNAME = 3
  end
  fun file_chooser_error_quark = gtk_file_chooser_error_quark() : UInt32

  enum IMPreeditStyle : UInt32
    ZERO_NONE = 0
    NOTHING = 0
    CALLBACK = 1
    NONE = 2
  end

  enum IMStatusStyle : UInt32
    ZERO_NONE = 0
    NOTHING = 0
    CALLBACK = 1
    NONE = 2
  end

  enum IconSize : UInt32
    ZERO_NONE = 0
    INVALID = 0
    MENU = 1
    SMALL_TOOLBAR = 2
    LARGE_TOOLBAR = 3
    BUTTON = 4
    DND = 5
    DIALOG = 6
  end
  fun icon_size_from_name = gtk_icon_size_from_name(name : UInt8*) : Int32
  fun icon_size_get_name = gtk_icon_size_get_name(size : Int32) : UInt8*
  fun icon_size_lookup = gtk_icon_size_lookup(size : Int32, width : Int32*, height : Int32*) : Bool
  fun icon_size_lookup_for_settings = gtk_icon_size_lookup_for_settings(settings : LibGtk::Settings*, size : Int32, width : Int32*, height : Int32*) : Bool
  fun icon_size_register = gtk_icon_size_register(name : UInt8*, width : Int32, height : Int32) : Int32
  fun icon_size_register_alias = gtk_icon_size_register_alias(_alias : UInt8*, target : Int32) : Void

  enum IconThemeError : UInt32
    ZERO_NONE = 0
    NOT_FOUND = 0
    FAILED = 1
  end
  fun icon_theme_error_quark = gtk_icon_theme_error_quark() : UInt32

  enum IconViewDropPosition : UInt32
    ZERO_NONE = 0
    NO_DROP = 0
    DROP_INTO = 1
    DROP_LEFT = 2
    DROP_RIGHT = 3
    DROP_ABOVE = 4
    DROP_BELOW = 5
  end

  enum ImageType : UInt32
    ZERO_NONE = 0
    EMPTY = 0
    PIXBUF = 1
    STOCK = 2
    ICON_SET = 3
    ANIMATION = 4
    ICON_NAME = 5
    GICON = 6
    SURFACE = 7
  end

  enum InputPurpose : UInt32
    ZERO_NONE = 0
    FREE_FORM = 0
    ALPHA = 1
    DIGITS = 2
    NUMBER = 3
    PHONE = 4
    URL = 5
    EMAIL = 6
    NAME = 7
    PASSWORD = 8
    PIN = 9
  end

  enum Justification : UInt32
    ZERO_NONE = 0
    LEFT = 0
    RIGHT = 1
    CENTER = 2
    FILL = 3
  end

  enum LevelBarMode : UInt32
    ZERO_NONE = 0
    CONTINUOUS = 0
    DISCRETE = 1
  end

  enum License : UInt32
    ZERO_NONE = 0
    UNKNOWN = 0
    CUSTOM = 1
    GPL_2_0 = 2
    GPL_3_0 = 3
    LGPL_2_1 = 4
    LGPL_3_0 = 5
    BSD = 6
    MIT_X11 = 7
    ARTISTIC = 8
    GPL_2_0_ONLY = 9
    GPL_3_0_ONLY = 10
    LGPL_2_1_ONLY = 11
    LGPL_3_0_ONLY = 12
    AGPL_3_0 = 13
    AGPL_3_0_ONLY = 14
  end

  enum MenuDirectionType : UInt32
    ZERO_NONE = 0
    PARENT = 0
    CHILD = 1
    NEXT = 2
    PREV = 3
  end

  enum MessageType : UInt32
    ZERO_NONE = 0
    INFO = 0
    WARNING = 1
    QUESTION = 2
    ERROR = 3
    OTHER = 4
  end

  enum MovementStep : UInt32
    ZERO_NONE = 0
    LOGICAL_POSITIONS = 0
    VISUAL_POSITIONS = 1
    WORDS = 2
    DISPLAY_LINES = 3
    DISPLAY_LINE_ENDS = 4
    PARAGRAPHS = 5
    PARAGRAPH_ENDS = 6
    PAGES = 7
    BUFFER_ENDS = 8
    HORIZONTAL_PAGES = 9
  end

  enum NotebookTab : UInt32
    ZERO_NONE = 0
    FIRST = 0
    LAST = 1
  end

  enum NumberUpLayout : UInt32
    ZERO_NONE = 0
    LRTB = 0
    LRBT = 1
    RLTB = 2
    RLBT = 3
    TBLR = 4
    TBRL = 5
    BTLR = 6
    BTRL = 7
  end

  enum Orientation : UInt32
    ZERO_NONE = 0
    HORIZONTAL = 0
    VERTICAL = 1
  end

  enum PackDirection : UInt32
    ZERO_NONE = 0
    LTR = 0
    RTL = 1
    TTB = 2
    BTT = 3
  end

  enum PackType : UInt32
    ZERO_NONE = 0
    START = 0
    END = 1
  end

  enum PadActionType : UInt32
    ZERO_NONE = 0
    BUTTON = 0
    RING = 1
    STRIP = 2
  end

  enum PageOrientation : UInt32
    ZERO_NONE = 0
    PORTRAIT = 0
    LANDSCAPE = 1
    REVERSE_PORTRAIT = 2
    REVERSE_LANDSCAPE = 3
  end

  enum PageSet : UInt32
    ZERO_NONE = 0
    ALL = 0
    EVEN = 1
    ODD = 2
  end

  enum PanDirection : UInt32
    ZERO_NONE = 0
    LEFT = 0
    RIGHT = 1
    UP = 2
    DOWN = 3
  end

  enum PathPriorityType : UInt32
    ZERO_NONE = 0
    LOWEST = 0
    GTK = 4
    APPLICATION = 8
    THEME = 10
    RC = 12
    HIGHEST = 15
  end

  enum PathType : UInt32
    ZERO_NONE = 0
    WIDGET = 0
    WIDGET_CLASS = 1
    CLASS = 2
  end

  enum PolicyType : UInt32
    ZERO_NONE = 0
    ALWAYS = 0
    AUTOMATIC = 1
    NEVER = 2
    EXTERNAL = 3
  end

  enum PopoverConstraint : UInt32
    ZERO_NONE = 0
    NONE = 0
    WINDOW = 1
  end

  enum PositionType : UInt32
    ZERO_NONE = 0
    LEFT = 0
    RIGHT = 1
    TOP = 2
    BOTTOM = 3
  end

  enum PrintDuplex : UInt32
    ZERO_NONE = 0
    SIMPLEX = 0
    HORIZONTAL = 1
    VERTICAL = 2
  end

  enum PrintError : UInt32
    ZERO_NONE = 0
    GENERAL = 0
    INTERNAL_ERROR = 1
    NOMEM = 2
    INVALID_FILE = 3
  end
  fun print_error_quark = gtk_print_error_quark() : UInt32

  enum PrintOperationAction : UInt32
    ZERO_NONE = 0
    PRINT_DIALOG = 0
    PRINT = 1
    PREVIEW = 2
    EXPORT = 3
  end

  enum PrintOperationResult : UInt32
    ZERO_NONE = 0
    ERROR = 0
    APPLY = 1
    CANCEL = 2
    IN_PROGRESS = 3
  end

  enum PrintPages : UInt32
    ZERO_NONE = 0
    ALL = 0
    CURRENT = 1
    RANGES = 2
    SELECTION = 3
  end

  enum PrintQuality : UInt32
    ZERO_NONE = 0
    LOW = 0
    NORMAL = 1
    HIGH = 2
    DRAFT = 3
  end

  enum PrintStatus : UInt32
    ZERO_NONE = 0
    INITIAL = 0
    PREPARING = 1
    GENERATING_DATA = 2
    SENDING_DATA = 3
    PENDING = 4
    PENDING_ISSUE = 5
    PRINTING = 6
    FINISHED = 7
    FINISHED_ABORTED = 8
  end

  enum PropagationPhase : UInt32
    ZERO_NONE = 0
    NONE = 0
    CAPTURE = 1
    BUBBLE = 2
    TARGET = 3
  end

  enum RcTokenType : UInt32
    ZERO_NONE = 0
    INVALID = 270
    INCLUDE = 271
    NORMAL = 272
    ACTIVE = 273
    PRELIGHT = 274
    SELECTED = 275
    INSENSITIVE = 276
    FG = 277
    BG = 278
    TEXT = 279
    BASE = 280
    XTHICKNESS = 281
    YTHICKNESS = 282
    FONT = 283
    FONTSET = 284
    FONT_NAME = 285
    BG_PIXMAP = 286
    PIXMAP_PATH = 287
    STYLE = 288
    BINDING = 289
    BIND = 290
    WIDGET = 291
    WIDGET_CLASS = 292
    CLASS = 293
    LOWEST = 294
    GTK = 295
    APPLICATION = 296
    THEME = 297
    RC = 298
    HIGHEST = 299
    ENGINE = 300
    MODULE_PATH = 301
    IM_MODULE_PATH = 302
    IM_MODULE_FILE = 303
    STOCK = 304
    LTR = 305
    RTL = 306
    COLOR = 307
    UNBIND = 308
    LAST = 309
  end

  enum RecentChooserError : UInt32
    ZERO_NONE = 0
    NOT_FOUND = 0
    INVALID_URI = 1
  end
  fun recent_chooser_error_quark = gtk_recent_chooser_error_quark() : UInt32

  enum RecentManagerError : UInt32
    ZERO_NONE = 0
    NOT_FOUND = 0
    INVALID_URI = 1
    INVALID_ENCODING = 2
    NOT_REGISTERED = 3
    READ = 4
    WRITE = 5
    UNKNOWN = 6
  end
  fun recent_manager_error_quark = gtk_recent_manager_error_quark() : UInt32

  enum RecentSortType : UInt32
    ZERO_NONE = 0
    NONE = 0
    MRU = 1
    LRU = 2
    CUSTOM = 3
  end

  enum ReliefStyle : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    HALF = 1
    NONE = 2
  end

  enum ResizeMode : UInt32
    ZERO_NONE = 0
    PARENT = 0
    QUEUE = 1
    IMMEDIATE = 2
  end

  enum ResponseType : Int32
    ZERO_NONE = 0
    NONE = -1
    REJECT = -2
    ACCEPT = -3
    DELETE_EVENT = -4
    OK = -5
    CANCEL = -6
    CLOSE = -7
    YES = -8
    NO = -9
    APPLY = -10
    HELP = -11
  end

  enum RevealerTransitionType : UInt32
    ZERO_NONE = 0
    NONE = 0
    CROSSFADE = 1
    SLIDE_RIGHT = 2
    SLIDE_LEFT = 3
    SLIDE_UP = 4
    SLIDE_DOWN = 5
  end

  enum ScrollStep : UInt32
    ZERO_NONE = 0
    STEPS = 0
    PAGES = 1
    ENDS = 2
    HORIZONTAL_STEPS = 3
    HORIZONTAL_PAGES = 4
    HORIZONTAL_ENDS = 5
  end

  enum ScrollType : UInt32
    ZERO_NONE = 0
    NONE = 0
    JUMP = 1
    STEP_BACKWARD = 2
    STEP_FORWARD = 3
    PAGE_BACKWARD = 4
    PAGE_FORWARD = 5
    STEP_UP = 6
    STEP_DOWN = 7
    PAGE_UP = 8
    PAGE_DOWN = 9
    STEP_LEFT = 10
    STEP_RIGHT = 11
    PAGE_LEFT = 12
    PAGE_RIGHT = 13
    START = 14
    END = 15
  end

  enum ScrollablePolicy : UInt32
    ZERO_NONE = 0
    MINIMUM = 0
    NATURAL = 1
  end

  enum SelectionMode : UInt32
    ZERO_NONE = 0
    NONE = 0
    SINGLE = 1
    BROWSE = 2
    MULTIPLE = 3
  end

  enum SensitivityType : UInt32
    ZERO_NONE = 0
    AUTO = 0
    ON = 1
    OFF = 2
  end

  enum ShadowType : UInt32
    ZERO_NONE = 0
    NONE = 0
    IN = 1
    OUT = 2
    ETCHED_IN = 3
    ETCHED_OUT = 4
  end

  enum ShortcutType : UInt32
    ZERO_NONE = 0
    ACCELERATOR = 0
    GESTURE_PINCH = 1
    GESTURE_STRETCH = 2
    GESTURE_ROTATE_CLOCKWISE = 3
    GESTURE_ROTATE_COUNTERCLOCKWISE = 4
    GESTURE_TWO_FINGER_SWIPE_LEFT = 5
    GESTURE_TWO_FINGER_SWIPE_RIGHT = 6
    GESTURE = 7
  end

  enum SizeGroupMode : UInt32
    ZERO_NONE = 0
    NONE = 0
    HORIZONTAL = 1
    VERTICAL = 2
    BOTH = 3
  end

  enum SizeRequestMode : UInt32
    ZERO_NONE = 0
    HEIGHT_FOR_WIDTH = 0
    WIDTH_FOR_HEIGHT = 1
    CONSTANT_SIZE = 2
  end

  enum SortType : UInt32
    ZERO_NONE = 0
    ASCENDING = 0
    DESCENDING = 1
  end

  enum SpinButtonUpdatePolicy : UInt32
    ZERO_NONE = 0
    ALWAYS = 0
    IF_VALID = 1
  end

  enum SpinType : UInt32
    ZERO_NONE = 0
    STEP_FORWARD = 0
    STEP_BACKWARD = 1
    PAGE_FORWARD = 2
    PAGE_BACKWARD = 3
    HOME = 4
    END = 5
    USER_DEFINED = 6
  end

  enum StackTransitionType : UInt32
    ZERO_NONE = 0
    NONE = 0
    CROSSFADE = 1
    SLIDE_RIGHT = 2
    SLIDE_LEFT = 3
    SLIDE_UP = 4
    SLIDE_DOWN = 5
    SLIDE_LEFT_RIGHT = 6
    SLIDE_UP_DOWN = 7
    OVER_UP = 8
    OVER_DOWN = 9
    OVER_LEFT = 10
    OVER_RIGHT = 11
    UNDER_UP = 12
    UNDER_DOWN = 13
    UNDER_LEFT = 14
    UNDER_RIGHT = 15
    OVER_UP_DOWN = 16
    OVER_DOWN_UP = 17
    OVER_LEFT_RIGHT = 18
    OVER_RIGHT_LEFT = 19
  end

  enum StateType : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    ACTIVE = 1
    PRELIGHT = 2
    SELECTED = 3
    INSENSITIVE = 4
    INCONSISTENT = 5
    FOCUSED = 6
  end

  enum TextBufferTargetInfo : Int32
    ZERO_NONE = 0
    BUFFER_CONTENTS = -1
    RICH_TEXT = -2
    TEXT = -3
  end

  enum TextDirection : UInt32
    ZERO_NONE = 0
    NONE = 0
    LTR = 1
    RTL = 2
  end

  enum TextExtendSelection : UInt32
    ZERO_NONE = 0
    WORD = 0
    LINE = 1
  end

  enum TextViewLayer : UInt32
    ZERO_NONE = 0
    BELOW = 0
    ABOVE = 1
    BELOW_TEXT = 2
    ABOVE_TEXT = 3
  end

  enum TextWindowType : UInt32
    ZERO_NONE = 0
    PRIVATE = 0
    WIDGET = 1
    TEXT = 2
    LEFT = 3
    RIGHT = 4
    TOP = 5
    BOTTOM = 6
  end

  enum ToolbarSpaceStyle : UInt32
    ZERO_NONE = 0
    EMPTY = 0
    LINE = 1
  end

  enum ToolbarStyle : UInt32
    ZERO_NONE = 0
    ICONS = 0
    TEXT = 1
    BOTH = 2
    BOTH_HORIZ = 3
  end

  enum TreeViewColumnSizing : UInt32
    ZERO_NONE = 0
    GROW_ONLY = 0
    AUTOSIZE = 1
    FIXED = 2
  end

  enum TreeViewDropPosition : UInt32
    ZERO_NONE = 0
    BEFORE = 0
    AFTER = 1
    INTO_OR_BEFORE = 2
    INTO_OR_AFTER = 3
  end

  enum TreeViewGridLines : UInt32
    ZERO_NONE = 0
    NONE = 0
    HORIZONTAL = 1
    VERTICAL = 2
    BOTH = 3
  end

  enum Unit : UInt32
    ZERO_NONE = 0
    NONE = 0
    POINTS = 1
    INCH = 2
    MM = 3
  end

  enum WidgetHelpType : UInt32
    ZERO_NONE = 0
    TOOLTIP = 0
    WHATS_THIS = 1
  end

  enum WindowPosition : UInt32
    ZERO_NONE = 0
    NONE = 0
    CENTER = 1
    MOUSE = 2
    CENTER_ALWAYS = 3
    CENTER_ON_PARENT = 4
  end

  enum WindowType : UInt32
    ZERO_NONE = 0
    TOPLEVEL = 0
    POPUP = 1
  end

  enum WrapMode : UInt32
    ZERO_NONE = 0
    NONE = 0
    CHAR = 1
    WORD = 2
    WORD_CHAR = 3
  end


  ###########################################
  ##    Constants
  ###########################################

  BINARY_AGE = 2401 # : Int32
  INPUT_ERROR = -1 # : Int32
  INTERFACE_AGE = 1 # : Int32
  LEVEL_BAR_OFFSET_FULL = "full" # : UInt8*
  LEVEL_BAR_OFFSET_HIGH = "high" # : UInt8*
  LEVEL_BAR_OFFSET_LOW = "low" # : UInt8*
  MAJOR_VERSION = 3 # : Int32
  MAX_COMPOSE_LEN = 7 # : Int32
  MICRO_VERSION = 1 # : Int32
  MINOR_VERSION = 24 # : Int32
  PAPER_NAME_A3 = "iso_a3" # : UInt8*
  PAPER_NAME_A4 = "iso_a4" # : UInt8*
  PAPER_NAME_A5 = "iso_a5" # : UInt8*
  PAPER_NAME_B5 = "iso_b5" # : UInt8*
  PAPER_NAME_EXECUTIVE = "na_executive" # : UInt8*
  PAPER_NAME_LEGAL = "na_legal" # : UInt8*
  PAPER_NAME_LETTER = "na_letter" # : UInt8*
  PATH_PRIO_MASK = 15 # : Int32
  PRINT_SETTINGS_COLLATE = "collate" # : UInt8*
  PRINT_SETTINGS_DEFAULT_SOURCE = "default-source" # : UInt8*
  PRINT_SETTINGS_DITHER = "dither" # : UInt8*
  PRINT_SETTINGS_DUPLEX = "duplex" # : UInt8*
  PRINT_SETTINGS_FINISHINGS = "finishings" # : UInt8*
  PRINT_SETTINGS_MEDIA_TYPE = "media-type" # : UInt8*
  PRINT_SETTINGS_NUMBER_UP = "number-up" # : UInt8*
  PRINT_SETTINGS_NUMBER_UP_LAYOUT = "number-up-layout" # : UInt8*
  PRINT_SETTINGS_N_COPIES = "n-copies" # : UInt8*
  PRINT_SETTINGS_ORIENTATION = "orientation" # : UInt8*
  PRINT_SETTINGS_OUTPUT_BASENAME = "output-basename" # : UInt8*
  PRINT_SETTINGS_OUTPUT_BIN = "output-bin" # : UInt8*
  PRINT_SETTINGS_OUTPUT_DIR = "output-dir" # : UInt8*
  PRINT_SETTINGS_OUTPUT_FILE_FORMAT = "output-file-format" # : UInt8*
  PRINT_SETTINGS_OUTPUT_URI = "output-uri" # : UInt8*
  PRINT_SETTINGS_PAGE_RANGES = "page-ranges" # : UInt8*
  PRINT_SETTINGS_PAGE_SET = "page-set" # : UInt8*
  PRINT_SETTINGS_PAPER_FORMAT = "paper-format" # : UInt8*
  PRINT_SETTINGS_PAPER_HEIGHT = "paper-height" # : UInt8*
  PRINT_SETTINGS_PAPER_WIDTH = "paper-width" # : UInt8*
  PRINT_SETTINGS_PRINTER = "printer" # : UInt8*
  PRINT_SETTINGS_PRINTER_LPI = "printer-lpi" # : UInt8*
  PRINT_SETTINGS_PRINT_PAGES = "print-pages" # : UInt8*
  PRINT_SETTINGS_QUALITY = "quality" # : UInt8*
  PRINT_SETTINGS_RESOLUTION = "resolution" # : UInt8*
  PRINT_SETTINGS_RESOLUTION_X = "resolution-x" # : UInt8*
  PRINT_SETTINGS_RESOLUTION_Y = "resolution-y" # : UInt8*
  PRINT_SETTINGS_REVERSE = "reverse" # : UInt8*
  PRINT_SETTINGS_SCALE = "scale" # : UInt8*
  PRINT_SETTINGS_USE_COLOR = "use-color" # : UInt8*
  PRINT_SETTINGS_WIN32_DRIVER_EXTRA = "win32-driver-extra" # : UInt8*
  PRINT_SETTINGS_WIN32_DRIVER_VERSION = "win32-driver-version" # : UInt8*
  PRIORITY_RESIZE = 10 # : Int32
  STOCK_ABOUT = "gtk-about" # : UInt8*
  STOCK_ADD = "gtk-add" # : UInt8*
  STOCK_APPLY = "gtk-apply" # : UInt8*
  STOCK_BOLD = "gtk-bold" # : UInt8*
  STOCK_CANCEL = "gtk-cancel" # : UInt8*
  STOCK_CAPS_LOCK_WARNING = "gtk-caps-lock-warning" # : UInt8*
  STOCK_CDROM = "gtk-cdrom" # : UInt8*
  STOCK_CLEAR = "gtk-clear" # : UInt8*
  STOCK_CLOSE = "gtk-close" # : UInt8*
  STOCK_COLOR_PICKER = "gtk-color-picker" # : UInt8*
  STOCK_CONNECT = "gtk-connect" # : UInt8*
  STOCK_CONVERT = "gtk-convert" # : UInt8*
  STOCK_COPY = "gtk-copy" # : UInt8*
  STOCK_CUT = "gtk-cut" # : UInt8*
  STOCK_DELETE = "gtk-delete" # : UInt8*
  STOCK_DIALOG_AUTHENTICATION = "gtk-dialog-authentication" # : UInt8*
  STOCK_DIALOG_ERROR = "gtk-dialog-error" # : UInt8*
  STOCK_DIALOG_INFO = "gtk-dialog-info" # : UInt8*
  STOCK_DIALOG_QUESTION = "gtk-dialog-question" # : UInt8*
  STOCK_DIALOG_WARNING = "gtk-dialog-warning" # : UInt8*
  STOCK_DIRECTORY = "gtk-directory" # : UInt8*
  STOCK_DISCARD = "gtk-discard" # : UInt8*
  STOCK_DISCONNECT = "gtk-disconnect" # : UInt8*
  STOCK_DND = "gtk-dnd" # : UInt8*
  STOCK_DND_MULTIPLE = "gtk-dnd-multiple" # : UInt8*
  STOCK_EDIT = "gtk-edit" # : UInt8*
  STOCK_EXECUTE = "gtk-execute" # : UInt8*
  STOCK_FILE = "gtk-file" # : UInt8*
  STOCK_FIND = "gtk-find" # : UInt8*
  STOCK_FIND_AND_REPLACE = "gtk-find-and-replace" # : UInt8*
  STOCK_FLOPPY = "gtk-floppy" # : UInt8*
  STOCK_FULLSCREEN = "gtk-fullscreen" # : UInt8*
  STOCK_GOTO_BOTTOM = "gtk-goto-bottom" # : UInt8*
  STOCK_GOTO_FIRST = "gtk-goto-first" # : UInt8*
  STOCK_GOTO_LAST = "gtk-goto-last" # : UInt8*
  STOCK_GOTO_TOP = "gtk-goto-top" # : UInt8*
  STOCK_GO_BACK = "gtk-go-back" # : UInt8*
  STOCK_GO_DOWN = "gtk-go-down" # : UInt8*
  STOCK_GO_FORWARD = "gtk-go-forward" # : UInt8*
  STOCK_GO_UP = "gtk-go-up" # : UInt8*
  STOCK_HARDDISK = "gtk-harddisk" # : UInt8*
  STOCK_HELP = "gtk-help" # : UInt8*
  STOCK_HOME = "gtk-home" # : UInt8*
  STOCK_INDENT = "gtk-indent" # : UInt8*
  STOCK_INDEX = "gtk-index" # : UInt8*
  STOCK_INFO = "gtk-info" # : UInt8*
  STOCK_ITALIC = "gtk-italic" # : UInt8*
  STOCK_JUMP_TO = "gtk-jump-to" # : UInt8*
  STOCK_JUSTIFY_CENTER = "gtk-justify-center" # : UInt8*
  STOCK_JUSTIFY_FILL = "gtk-justify-fill" # : UInt8*
  STOCK_JUSTIFY_LEFT = "gtk-justify-left" # : UInt8*
  STOCK_JUSTIFY_RIGHT = "gtk-justify-right" # : UInt8*
  STOCK_LEAVE_FULLSCREEN = "gtk-leave-fullscreen" # : UInt8*
  STOCK_MEDIA_FORWARD = "gtk-media-forward" # : UInt8*
  STOCK_MEDIA_NEXT = "gtk-media-next" # : UInt8*
  STOCK_MEDIA_PAUSE = "gtk-media-pause" # : UInt8*
  STOCK_MEDIA_PLAY = "gtk-media-play" # : UInt8*
  STOCK_MEDIA_PREVIOUS = "gtk-media-previous" # : UInt8*
  STOCK_MEDIA_RECORD = "gtk-media-record" # : UInt8*
  STOCK_MEDIA_REWIND = "gtk-media-rewind" # : UInt8*
  STOCK_MEDIA_STOP = "gtk-media-stop" # : UInt8*
  STOCK_MISSING_IMAGE = "gtk-missing-image" # : UInt8*
  STOCK_NETWORK = "gtk-network" # : UInt8*
  STOCK_NEW = "gtk-new" # : UInt8*
  STOCK_NO = "gtk-no" # : UInt8*
  STOCK_OK = "gtk-ok" # : UInt8*
  STOCK_OPEN = "gtk-open" # : UInt8*
  STOCK_ORIENTATION_LANDSCAPE = "gtk-orientation-landscape" # : UInt8*
  STOCK_ORIENTATION_PORTRAIT = "gtk-orientation-portrait" # : UInt8*
  STOCK_ORIENTATION_REVERSE_LANDSCAPE = "gtk-orientation-reverse-landscape" # : UInt8*
  STOCK_ORIENTATION_REVERSE_PORTRAIT = "gtk-orientation-reverse-portrait" # : UInt8*
  STOCK_PAGE_SETUP = "gtk-page-setup" # : UInt8*
  STOCK_PASTE = "gtk-paste" # : UInt8*
  STOCK_PREFERENCES = "gtk-preferences" # : UInt8*
  STOCK_PRINT = "gtk-print" # : UInt8*
  STOCK_PRINT_ERROR = "gtk-print-error" # : UInt8*
  STOCK_PRINT_PAUSED = "gtk-print-paused" # : UInt8*
  STOCK_PRINT_PREVIEW = "gtk-print-preview" # : UInt8*
  STOCK_PRINT_REPORT = "gtk-print-report" # : UInt8*
  STOCK_PRINT_WARNING = "gtk-print-warning" # : UInt8*
  STOCK_PROPERTIES = "gtk-properties" # : UInt8*
  STOCK_QUIT = "gtk-quit" # : UInt8*
  STOCK_REDO = "gtk-redo" # : UInt8*
  STOCK_REFRESH = "gtk-refresh" # : UInt8*
  STOCK_REMOVE = "gtk-remove" # : UInt8*
  STOCK_REVERT_TO_SAVED = "gtk-revert-to-saved" # : UInt8*
  STOCK_SAVE = "gtk-save" # : UInt8*
  STOCK_SAVE_AS = "gtk-save-as" # : UInt8*
  STOCK_SELECT_ALL = "gtk-select-all" # : UInt8*
  STOCK_SELECT_COLOR = "gtk-select-color" # : UInt8*
  STOCK_SELECT_FONT = "gtk-select-font" # : UInt8*
  STOCK_SORT_ASCENDING = "gtk-sort-ascending" # : UInt8*
  STOCK_SORT_DESCENDING = "gtk-sort-descending" # : UInt8*
  STOCK_SPELL_CHECK = "gtk-spell-check" # : UInt8*
  STOCK_STOP = "gtk-stop" # : UInt8*
  STOCK_STRIKETHROUGH = "gtk-strikethrough" # : UInt8*
  STOCK_UNDELETE = "gtk-undelete" # : UInt8*
  STOCK_UNDERLINE = "gtk-underline" # : UInt8*
  STOCK_UNDO = "gtk-undo" # : UInt8*
  STOCK_UNINDENT = "gtk-unindent" # : UInt8*
  STOCK_YES = "gtk-yes" # : UInt8*
  STOCK_ZOOM_100 = "gtk-zoom-100" # : UInt8*
  STOCK_ZOOM_FIT = "gtk-zoom-fit" # : UInt8*
  STOCK_ZOOM_IN = "gtk-zoom-in" # : UInt8*
  STOCK_ZOOM_OUT = "gtk-zoom-out" # : UInt8*
  STYLE_CLASS_ACCELERATOR = "accelerator" # : UInt8*
  STYLE_CLASS_ARROW = "arrow" # : UInt8*
  STYLE_CLASS_BACKGROUND = "background" # : UInt8*
  STYLE_CLASS_BOTTOM = "bottom" # : UInt8*
  STYLE_CLASS_BUTTON = "button" # : UInt8*
  STYLE_CLASS_CALENDAR = "calendar" # : UInt8*
  STYLE_CLASS_CELL = "cell" # : UInt8*
  STYLE_CLASS_CHECK = "check" # : UInt8*
  STYLE_CLASS_COMBOBOX_ENTRY = "combobox-entry" # : UInt8*
  STYLE_CLASS_CONTEXT_MENU = "context-menu" # : UInt8*
  STYLE_CLASS_CSD = "csd" # : UInt8*
  STYLE_CLASS_CURSOR_HANDLE = "cursor-handle" # : UInt8*
  STYLE_CLASS_DEFAULT = "default" # : UInt8*
  STYLE_CLASS_DESTRUCTIVE_ACTION = "destructive-action" # : UInt8*
  STYLE_CLASS_DIM_LABEL = "dim-label" # : UInt8*
  STYLE_CLASS_DND = "dnd" # : UInt8*
  STYLE_CLASS_DOCK = "dock" # : UInt8*
  STYLE_CLASS_ENTRY = "entry" # : UInt8*
  STYLE_CLASS_ERROR = "error" # : UInt8*
  STYLE_CLASS_EXPANDER = "expander" # : UInt8*
  STYLE_CLASS_FLAT = "flat" # : UInt8*
  STYLE_CLASS_FRAME = "frame" # : UInt8*
  STYLE_CLASS_GRIP = "grip" # : UInt8*
  STYLE_CLASS_HEADER = "header" # : UInt8*
  STYLE_CLASS_HIGHLIGHT = "highlight" # : UInt8*
  STYLE_CLASS_HORIZONTAL = "horizontal" # : UInt8*
  STYLE_CLASS_IMAGE = "image" # : UInt8*
  STYLE_CLASS_INFO = "info" # : UInt8*
  STYLE_CLASS_INLINE_TOOLBAR = "inline-toolbar" # : UInt8*
  STYLE_CLASS_INSERTION_CURSOR = "insertion-cursor" # : UInt8*
  STYLE_CLASS_LABEL = "label" # : UInt8*
  STYLE_CLASS_LEFT = "left" # : UInt8*
  STYLE_CLASS_LEVEL_BAR = "level-bar" # : UInt8*
  STYLE_CLASS_LINKED = "linked" # : UInt8*
  STYLE_CLASS_LIST = "list" # : UInt8*
  STYLE_CLASS_LIST_ROW = "list-row" # : UInt8*
  STYLE_CLASS_MARK = "mark" # : UInt8*
  STYLE_CLASS_MENU = "menu" # : UInt8*
  STYLE_CLASS_MENUBAR = "menubar" # : UInt8*
  STYLE_CLASS_MENUITEM = "menuitem" # : UInt8*
  STYLE_CLASS_MESSAGE_DIALOG = "message-dialog" # : UInt8*
  STYLE_CLASS_MONOSPACE = "monospace" # : UInt8*
  STYLE_CLASS_NEEDS_ATTENTION = "needs-attention" # : UInt8*
  STYLE_CLASS_NOTEBOOK = "notebook" # : UInt8*
  STYLE_CLASS_OSD = "osd" # : UInt8*
  STYLE_CLASS_OVERSHOOT = "overshoot" # : UInt8*
  STYLE_CLASS_PANE_SEPARATOR = "pane-separator" # : UInt8*
  STYLE_CLASS_PAPER = "paper" # : UInt8*
  STYLE_CLASS_POPOVER = "popover" # : UInt8*
  STYLE_CLASS_POPUP = "popup" # : UInt8*
  STYLE_CLASS_PRIMARY_TOOLBAR = "primary-toolbar" # : UInt8*
  STYLE_CLASS_PROGRESSBAR = "progressbar" # : UInt8*
  STYLE_CLASS_PULSE = "pulse" # : UInt8*
  STYLE_CLASS_QUESTION = "question" # : UInt8*
  STYLE_CLASS_RADIO = "radio" # : UInt8*
  STYLE_CLASS_RAISED = "raised" # : UInt8*
  STYLE_CLASS_READ_ONLY = "read-only" # : UInt8*
  STYLE_CLASS_RIGHT = "right" # : UInt8*
  STYLE_CLASS_RUBBERBAND = "rubberband" # : UInt8*
  STYLE_CLASS_SCALE = "scale" # : UInt8*
  STYLE_CLASS_SCALE_HAS_MARKS_ABOVE = "scale-has-marks-above" # : UInt8*
  STYLE_CLASS_SCALE_HAS_MARKS_BELOW = "scale-has-marks-below" # : UInt8*
  STYLE_CLASS_SCROLLBAR = "scrollbar" # : UInt8*
  STYLE_CLASS_SCROLLBARS_JUNCTION = "scrollbars-junction" # : UInt8*
  STYLE_CLASS_SEPARATOR = "separator" # : UInt8*
  STYLE_CLASS_SIDEBAR = "sidebar" # : UInt8*
  STYLE_CLASS_SLIDER = "slider" # : UInt8*
  STYLE_CLASS_SPINBUTTON = "spinbutton" # : UInt8*
  STYLE_CLASS_SPINNER = "spinner" # : UInt8*
  STYLE_CLASS_STATUSBAR = "statusbar" # : UInt8*
  STYLE_CLASS_SUBTITLE = "subtitle" # : UInt8*
  STYLE_CLASS_SUGGESTED_ACTION = "suggested-action" # : UInt8*
  STYLE_CLASS_TITLE = "title" # : UInt8*
  STYLE_CLASS_TITLEBAR = "titlebar" # : UInt8*
  STYLE_CLASS_TOOLBAR = "toolbar" # : UInt8*
  STYLE_CLASS_TOOLTIP = "tooltip" # : UInt8*
  STYLE_CLASS_TOP = "top" # : UInt8*
  STYLE_CLASS_TOUCH_SELECTION = "touch-selection" # : UInt8*
  STYLE_CLASS_TROUGH = "trough" # : UInt8*
  STYLE_CLASS_UNDERSHOOT = "undershoot" # : UInt8*
  STYLE_CLASS_VERTICAL = "vertical" # : UInt8*
  STYLE_CLASS_VIEW = "view" # : UInt8*
  STYLE_CLASS_WARNING = "warning" # : UInt8*
  STYLE_CLASS_WIDE = "wide" # : UInt8*
  STYLE_PROPERTY_BACKGROUND_COLOR = "background-color" # : UInt8*
  STYLE_PROPERTY_BACKGROUND_IMAGE = "background-image" # : UInt8*
  STYLE_PROPERTY_BORDER_COLOR = "border-color" # : UInt8*
  STYLE_PROPERTY_BORDER_RADIUS = "border-radius" # : UInt8*
  STYLE_PROPERTY_BORDER_STYLE = "border-style" # : UInt8*
  STYLE_PROPERTY_BORDER_WIDTH = "border-width" # : UInt8*
  STYLE_PROPERTY_COLOR = "color" # : UInt8*
  STYLE_PROPERTY_FONT = "font" # : UInt8*
  STYLE_PROPERTY_MARGIN = "margin" # : UInt8*
  STYLE_PROPERTY_PADDING = "padding" # : UInt8*
  STYLE_PROVIDER_PRIORITY_APPLICATION = 600 # : Int32
  STYLE_PROVIDER_PRIORITY_FALLBACK = 1 # : Int32
  STYLE_PROVIDER_PRIORITY_SETTINGS = 400 # : Int32
  STYLE_PROVIDER_PRIORITY_THEME = 200 # : Int32
  STYLE_PROVIDER_PRIORITY_USER = 800 # : Int32
  STYLE_REGION_COLUMN = "column" # : UInt8*
  STYLE_REGION_COLUMN_HEADER = "column-header" # : UInt8*
  STYLE_REGION_ROW = "row" # : UInt8*
  STYLE_REGION_TAB = "tab" # : UInt8*
  TEXT_VIEW_PRIORITY_VALIDATE = 5 # : Int32
  TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = -1 # : Int32
  TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = -2 # : Int32

  ###########################################
  ##    Functions
  ###########################################

  fun accel_groups_activate = gtk_accel_groups_activate(object : LibGObject::Object*, accel_key : UInt32, accel_mods : LibGdk::ModifierType) : Bool
  fun accel_groups_from_object = gtk_accel_groups_from_object(object : LibGObject::Object*) : Void**
  fun accelerator_get_default_mod_mask = gtk_accelerator_get_default_mod_mask() : LibGdk::ModifierType
  fun accelerator_get_label = gtk_accelerator_get_label(accelerator_key : UInt32, accelerator_mods : LibGdk::ModifierType) : UInt8*
  fun accelerator_get_label_with_keycode = gtk_accelerator_get_label_with_keycode(display : LibGdk::Display*, accelerator_key : UInt32, keycode : UInt32, accelerator_mods : LibGdk::ModifierType) : UInt8*
  fun accelerator_name = gtk_accelerator_name(accelerator_key : UInt32, accelerator_mods : LibGdk::ModifierType) : UInt8*
  fun accelerator_name_with_keycode = gtk_accelerator_name_with_keycode(display : LibGdk::Display*, accelerator_key : UInt32, keycode : UInt32, accelerator_mods : LibGdk::ModifierType) : UInt8*
  fun accelerator_parse = gtk_accelerator_parse(accelerator : UInt8*, accelerator_key : UInt32*, accelerator_mods : LibGdk::ModifierType*) : Void
  fun accelerator_parse_with_keycode = gtk_accelerator_parse_with_keycode(accelerator : UInt8*, accelerator_key : UInt32*, accelerator_codes : UInt32**, accelerator_mods : LibGdk::ModifierType*) : Void
  fun accelerator_set_default_mod_mask = gtk_accelerator_set_default_mod_mask(default_mod_mask : LibGdk::ModifierType) : Void
  fun accelerator_valid = gtk_accelerator_valid(keyval : UInt32, modifiers : LibGdk::ModifierType) : Bool
  fun alternative_dialog_button_order = gtk_alternative_dialog_button_order(screen : LibGdk::Screen*) : Bool
  fun binding_entry_add_signal_from_string = gtk_binding_entry_add_signal_from_string(binding_set : LibGtk::BindingSet*, signal_desc : UInt8*) : LibGLib::TokenType
  fun binding_entry_add_signall = gtk_binding_entry_add_signall(binding_set : LibGtk::BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType, signal_name : UInt8*, binding_args : Void**) : Void
  fun binding_entry_remove = gtk_binding_entry_remove(binding_set : LibGtk::BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType) : Void
  fun binding_entry_skip = gtk_binding_entry_skip(binding_set : LibGtk::BindingSet*, keyval : UInt32, modifiers : LibGdk::ModifierType) : Void
  fun binding_set_find = gtk_binding_set_find(set_name : UInt8*) : LibGtk::BindingSet*
  fun bindings_activate = gtk_bindings_activate(object : LibGObject::Object*, keyval : UInt32, modifiers : LibGdk::ModifierType) : Bool
  fun bindings_activate_event = gtk_bindings_activate_event(object : LibGObject::Object*, event : LibGdk::EventKey*) : Bool
  fun builder_error_quark = gtk_builder_error_quark() : UInt32
  fun cairo_should_draw_window = gtk_cairo_should_draw_window(cr : LibCairo::Context*, window : LibGdk::Window*) : Bool
  fun cairo_transform_to_window = gtk_cairo_transform_to_window(cr : LibCairo::Context*, widget : LibGtk::Widget*, window : LibGdk::Window*) : Void
  fun check_version = gtk_check_version(required_major : UInt32, required_minor : UInt32, required_micro : UInt32) : UInt8*
  fun css_provider_error_quark = gtk_css_provider_error_quark() : UInt32
  fun device_grab_add = gtk_device_grab_add(widget : LibGtk::Widget*, device : LibGdk::Device*, block_others : Bool) : Void
  fun device_grab_remove = gtk_device_grab_remove(widget : LibGtk::Widget*, device : LibGdk::Device*) : Void
  fun disable_setlocale = gtk_disable_setlocale() : Void
  fun distribute_natural_allocation = gtk_distribute_natural_allocation(extra_space : Int32, n_requested_sizes : UInt32, sizes : LibGtk::RequestedSize*) : Int32
  fun drag_cancel = gtk_drag_cancel(context : LibGdk::DragContext*) : Void
  fun drag_finish = gtk_drag_finish(context : LibGdk::DragContext*, success : Bool, del : Bool, time : UInt32) : Void
  fun drag_get_source_widget = gtk_drag_get_source_widget(context : LibGdk::DragContext*) : LibGtk::Widget*
  fun drag_set_icon_default = gtk_drag_set_icon_default(context : LibGdk::DragContext*) : Void
  fun drag_set_icon_gicon = gtk_drag_set_icon_gicon(context : LibGdk::DragContext*, icon : LibGio::Icon*, hot_x : Int32, hot_y : Int32) : Void
  fun drag_set_icon_name = gtk_drag_set_icon_name(context : LibGdk::DragContext*, icon_name : UInt8*, hot_x : Int32, hot_y : Int32) : Void
  fun drag_set_icon_pixbuf = gtk_drag_set_icon_pixbuf(context : LibGdk::DragContext*, pixbuf : LibGdkPixbuf::Pixbuf*, hot_x : Int32, hot_y : Int32) : Void
  fun drag_set_icon_stock = gtk_drag_set_icon_stock(context : LibGdk::DragContext*, stock_id : UInt8*, hot_x : Int32, hot_y : Int32) : Void
  fun drag_set_icon_surface = gtk_drag_set_icon_surface(context : LibGdk::DragContext*, surface : LibCairo::Surface*) : Void
  fun drag_set_icon_widget = gtk_drag_set_icon_widget(context : LibGdk::DragContext*, widget : LibGtk::Widget*, hot_x : Int32, hot_y : Int32) : Void
  fun draw_insertion_cursor = gtk_draw_insertion_cursor(widget : LibGtk::Widget*, cr : LibCairo::Context*, location : LibGdk::Rectangle*, is_primary : Bool, direction : LibGtk::TextDirection, draw_arrow : Bool) : Void
  fun events_pending = gtk_events_pending() : Bool
  fun false = gtk_false() : Bool
  fun file_chooser_error_quark = gtk_file_chooser_error_quark() : UInt32
  fun get_binary_age = gtk_get_binary_age() : UInt32
  fun get_current_event = gtk_get_current_event() : LibGdk::Event*
  fun get_current_event_device = gtk_get_current_event_device() : LibGdk::Device*
  fun get_current_event_state = gtk_get_current_event_state(state : LibGdk::ModifierType*) : Bool
  fun get_current_event_time = gtk_get_current_event_time() : UInt32
  fun get_debug_flags = gtk_get_debug_flags() : UInt32
  fun get_default_language = gtk_get_default_language() : LibPango::Language*
  fun get_event_widget = gtk_get_event_widget(event : LibGdk::Event*) : LibGtk::Widget*
  fun get_interface_age = gtk_get_interface_age() : UInt32
  fun get_locale_direction = gtk_get_locale_direction() : LibGtk::TextDirection
  fun get_major_version = gtk_get_major_version() : UInt32
  fun get_micro_version = gtk_get_micro_version() : UInt32
  fun get_minor_version = gtk_get_minor_version() : UInt32
  fun get_option_group = gtk_get_option_group(open_default_display : Bool) : LibGLib::OptionGroup*
  fun grab_get_current = gtk_grab_get_current() : LibGtk::Widget*
  fun icon_size_from_name = gtk_icon_size_from_name(name : UInt8*) : Int32
  fun icon_size_get_name = gtk_icon_size_get_name(size : Int32) : UInt8*
  fun icon_size_lookup = gtk_icon_size_lookup(size : Int32, width : Int32*, height : Int32*) : Bool
  fun icon_size_lookup_for_settings = gtk_icon_size_lookup_for_settings(settings : LibGtk::Settings*, size : Int32, width : Int32*, height : Int32*) : Bool
  fun icon_size_register = gtk_icon_size_register(name : UInt8*, width : Int32, height : Int32) : Int32
  fun icon_size_register_alias = gtk_icon_size_register_alias(_alias : UInt8*, target : Int32) : Void
  fun icon_theme_error_quark = gtk_icon_theme_error_quark() : UInt32
  fun init = gtk_init(argc : Int32*, argv : UInt8***) : Void
  fun init_check = gtk_init_check(argc : Int32*, argv : UInt8***) : Bool
  fun init_with_args = gtk_init_with_args(argc : Int32*, argv : UInt8***, parameter_string : UInt8*, entries : LibGLib::OptionEntry*, translation_domain : UInt8*, error : LibGLib::Error**) : Bool
  fun key_snooper_remove = gtk_key_snooper_remove(snooper_handler_id : UInt32) : Void
  fun main = gtk_main() : Void
  fun main_do_event = gtk_main_do_event(event : LibGdk::Event*) : Void
  fun main_iteration = gtk_main_iteration() : Bool
  fun main_iteration_do = gtk_main_iteration_do(blocking : Bool) : Bool
  fun main_level = gtk_main_level() : UInt32
  fun main_quit = gtk_main_quit() : Void
  fun paint_arrow = gtk_paint_arrow(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, arrow_type : LibGtk::ArrowType, fill : Bool, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_box = gtk_paint_box(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_box_gap = gtk_paint_box_gap(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32, gap_side : LibGtk::PositionType, gap_x : Int32, gap_width : Int32) : Void
  fun paint_check = gtk_paint_check(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_diamond = gtk_paint_diamond(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_expander = gtk_paint_expander(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, expander_style : LibGtk::ExpanderStyle) : Void
  fun paint_extension = gtk_paint_extension(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32, gap_side : LibGtk::PositionType) : Void
  fun paint_flat_box = gtk_paint_flat_box(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_focus = gtk_paint_focus(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_handle = gtk_paint_handle(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32, orientation : LibGtk::Orientation) : Void
  fun paint_hline = gtk_paint_hline(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, widget : LibGtk::Widget*, detail : UInt8*, x1 : Int32, x2 : Int32, y : Int32) : Void
  fun paint_layout = gtk_paint_layout(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, use_text : Bool, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, layout : LibPango::Layout*) : Void
  fun paint_option = gtk_paint_option(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_resize_grip = gtk_paint_resize_grip(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, widget : LibGtk::Widget*, detail : UInt8*, edge : LibGdk::WindowEdge, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_shadow = gtk_paint_shadow(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_shadow_gap = gtk_paint_shadow_gap(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32, gap_side : LibGtk::PositionType, gap_x : Int32, gap_width : Int32) : Void
  fun paint_slider = gtk_paint_slider(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32, orientation : LibGtk::Orientation) : Void
  fun paint_spinner = gtk_paint_spinner(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, widget : LibGtk::Widget*, detail : UInt8*, step : UInt32, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_tab = gtk_paint_tab(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, shadow_type : LibGtk::ShadowType, widget : LibGtk::Widget*, detail : UInt8*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun paint_vline = gtk_paint_vline(style : LibGtk::Style*, cr : LibCairo::Context*, state_type : LibGtk::StateType, widget : LibGtk::Widget*, detail : UInt8*, y1 : Int32, y2 : Int32, x : Int32) : Void
  fun paper_size_get_default = gtk_paper_size_get_default() : UInt8*
  fun paper_size_get_paper_sizes = gtk_paper_size_get_paper_sizes(include_custom : Bool) : Void**
  fun parse_args = gtk_parse_args(argc : Int32*, argv : UInt8***) : Bool
  fun print_error_quark = gtk_print_error_quark() : UInt32
  fun print_run_page_setup_dialog = gtk_print_run_page_setup_dialog(parent : LibGtk::Window*, page_setup : LibGtk::PageSetup*, settings : LibGtk::PrintSettings*) : LibGtk::PageSetup*
  fun print_run_page_setup_dialog_async = gtk_print_run_page_setup_dialog_async(parent : LibGtk::Window*, page_setup : LibGtk::PageSetup*, settings : LibGtk::PrintSettings*, done_cb : LibGtk::PageSetupDoneFunc, data : Void*) : Void
  fun propagate_event = gtk_propagate_event(widget : LibGtk::Widget*, event : LibGdk::Event*) : Void
  fun rc_add_default_file = gtk_rc_add_default_file(filename : UInt8*) : Void
  fun rc_find_module_in_path = gtk_rc_find_module_in_path(module_file : UInt8*) : UInt8*
  fun rc_find_pixmap_in_path = gtk_rc_find_pixmap_in_path(settings : LibGtk::Settings*, scanner : LibGLib::Scanner*, pixmap_file : UInt8*) : UInt8*
  fun rc_get_default_files = gtk_rc_get_default_files() : UInt8**
  fun rc_get_im_module_file = gtk_rc_get_im_module_file() : UInt8*
  fun rc_get_im_module_path = gtk_rc_get_im_module_path() : UInt8*
  fun rc_get_module_dir = gtk_rc_get_module_dir() : UInt8*
  fun rc_get_style = gtk_rc_get_style(widget : LibGtk::Widget*) : LibGtk::Style*
  fun rc_get_style_by_paths = gtk_rc_get_style_by_paths(settings : LibGtk::Settings*, widget_path : UInt8*, class_path : UInt8*, type : UInt64) : LibGtk::Style*
  fun rc_get_theme_dir = gtk_rc_get_theme_dir() : UInt8*
  fun rc_parse = gtk_rc_parse(filename : UInt8*) : Void
  fun rc_parse_color = gtk_rc_parse_color(scanner : LibGLib::Scanner*, color : LibGdk::Color*) : UInt32
  fun rc_parse_color_full = gtk_rc_parse_color_full(scanner : LibGLib::Scanner*, style : LibGtk::RcStyle*, color : LibGdk::Color*) : UInt32
  fun rc_parse_priority = gtk_rc_parse_priority(scanner : LibGLib::Scanner*, priority : LibGtk::PathPriorityType*) : UInt32
  fun rc_parse_state = gtk_rc_parse_state(scanner : LibGLib::Scanner*, state : LibGtk::StateType*) : UInt32
  fun rc_parse_string = gtk_rc_parse_string(rc_string : UInt8*) : Void
  fun rc_property_parse_border = gtk_rc_property_parse_border(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_color = gtk_rc_property_parse_color(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_enum = gtk_rc_property_parse_enum(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_flags = gtk_rc_property_parse_flags(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_property_parse_requisition = gtk_rc_property_parse_requisition(pspec : LibGObject::ParamSpec*, gstring : LibGLib::String*, property_value : LibGObject::Value*) : Bool
  fun rc_reparse_all = gtk_rc_reparse_all() : Bool
  fun rc_reparse_all_for_settings = gtk_rc_reparse_all_for_settings(settings : LibGtk::Settings*, force_load : Bool) : Bool
  fun rc_reset_styles = gtk_rc_reset_styles(settings : LibGtk::Settings*) : Void
  fun rc_set_default_files = gtk_rc_set_default_files(filenames : UInt8**) : Void
  fun recent_chooser_error_quark = gtk_recent_chooser_error_quark() : UInt32
  fun recent_manager_error_quark = gtk_recent_manager_error_quark() : UInt32
  fun render_activity = gtk_render_activity(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_arrow = gtk_render_arrow(context : LibGtk::StyleContext*, cr : LibCairo::Context*, angle : Float64, x : Float64, y : Float64, size : Float64) : Void
  fun render_background = gtk_render_background(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_background_get_clip = gtk_render_background_get_clip(context : LibGtk::StyleContext*, x : Float64, y : Float64, width : Float64, height : Float64, out_clip : LibGdk::Rectangle*) : Void
  fun render_check = gtk_render_check(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_expander = gtk_render_expander(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_extension = gtk_render_extension(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64, gap_side : LibGtk::PositionType) : Void
  fun render_focus = gtk_render_focus(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_frame = gtk_render_frame(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_frame_gap = gtk_render_frame_gap(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64, gap_side : LibGtk::PositionType, xy0_gap : Float64, xy1_gap : Float64) : Void
  fun render_handle = gtk_render_handle(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_icon = gtk_render_icon(context : LibGtk::StyleContext*, cr : LibCairo::Context*, pixbuf : LibGdkPixbuf::Pixbuf*, x : Float64, y : Float64) : Void
  fun render_icon_pixbuf = gtk_render_icon_pixbuf(context : LibGtk::StyleContext*, source : LibGtk::IconSource*, size : Int32) : LibGdkPixbuf::Pixbuf*
  fun render_icon_surface = gtk_render_icon_surface(context : LibGtk::StyleContext*, cr : LibCairo::Context*, surface : LibCairo::Surface*, x : Float64, y : Float64) : Void
  fun render_insertion_cursor = gtk_render_insertion_cursor(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, layout : LibPango::Layout*, index : Int32, direction : LibPango::Direction) : Void
  fun render_layout = gtk_render_layout(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, layout : LibPango::Layout*) : Void
  fun render_line = gtk_render_line(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x0 : Float64, y0 : Float64, x1 : Float64, y1 : Float64) : Void
  fun render_option = gtk_render_option(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64) : Void
  fun render_slider = gtk_render_slider(context : LibGtk::StyleContext*, cr : LibCairo::Context*, x : Float64, y : Float64, width : Float64, height : Float64, orientation : LibGtk::Orientation) : Void
  fun rgb_to_hsv = gtk_rgb_to_hsv(r : Float64, g : Float64, b : Float64, h : Float64*, s : Float64*, v : Float64*) : Void
  fun selection_add_target = gtk_selection_add_target(widget : LibGtk::Widget*, selection : LibGdk::Atom*, target : LibGdk::Atom*, info : UInt32) : Void
  fun selection_add_targets = gtk_selection_add_targets(widget : LibGtk::Widget*, selection : LibGdk::Atom*, targets : LibGtk::TargetEntry*, ntargets : UInt32) : Void
  fun selection_clear_targets = gtk_selection_clear_targets(widget : LibGtk::Widget*, selection : LibGdk::Atom*) : Void
  fun selection_convert = gtk_selection_convert(widget : LibGtk::Widget*, selection : LibGdk::Atom*, target : LibGdk::Atom*, time : UInt32) : Bool
  fun selection_owner_set = gtk_selection_owner_set(widget : LibGtk::Widget*, selection : LibGdk::Atom*, time : UInt32) : Bool
  fun selection_owner_set_for_display = gtk_selection_owner_set_for_display(display : LibGdk::Display*, widget : LibGtk::Widget*, selection : LibGdk::Atom*, time : UInt32) : Bool
  fun selection_remove_all = gtk_selection_remove_all(widget : LibGtk::Widget*) : Void
  fun set_debug_flags = gtk_set_debug_flags(flags : UInt32) : Void
  fun show_uri = gtk_show_uri(screen : LibGdk::Screen*, uri : UInt8*, timestamp : UInt32, error : LibGLib::Error**) : Bool
  fun show_uri_on_window = gtk_show_uri_on_window(parent : LibGtk::Window*, uri : UInt8*, timestamp : UInt32, error : LibGLib::Error**) : Bool
  fun stock_add = gtk_stock_add(items : LibGtk::StockItem*, n_items : UInt32) : Void
  fun stock_add_static = gtk_stock_add_static(items : LibGtk::StockItem*, n_items : UInt32) : Void
  fun stock_list_ids = gtk_stock_list_ids() : Void**
  fun stock_lookup = gtk_stock_lookup(stock_id : UInt8*, item : LibGtk::StockItem*) : Bool
  fun stock_set_translate_func = gtk_stock_set_translate_func(domain : UInt8*, func : LibGtk::TranslateFunc, data : Void*, notify : LibGLib::DestroyNotify) : Void
  fun target_table_free = gtk_target_table_free(targets : LibGtk::TargetEntry*, n_targets : Int32) : Void
  fun target_table_new_from_list = gtk_target_table_new_from_list(list : LibGtk::TargetList*, n_targets : Int32*) : LibGtk::TargetEntry*
  fun targets_include_image = gtk_targets_include_image(targets : LibGdk::Atom**, n_targets : Int32, writable : Bool) : Bool
  fun targets_include_rich_text = gtk_targets_include_rich_text(targets : LibGdk::Atom**, n_targets : Int32, buffer : LibGtk::TextBuffer*) : Bool
  fun targets_include_text = gtk_targets_include_text(targets : LibGdk::Atom**, n_targets : Int32) : Bool
  fun targets_include_uri = gtk_targets_include_uri(targets : LibGdk::Atom**, n_targets : Int32) : Bool
  fun test_create_simple_window = gtk_test_create_simple_window(window_title : UInt8*, dialog_text : UInt8*) : LibGtk::Widget*
  fun test_find_label = gtk_test_find_label(widget : LibGtk::Widget*, label_pattern : UInt8*) : LibGtk::Widget*
  fun test_find_sibling = gtk_test_find_sibling(base_widget : LibGtk::Widget*, widget_type : UInt64) : LibGtk::Widget*
  fun test_find_widget = gtk_test_find_widget(widget : LibGtk::Widget*, label_pattern : UInt8*, widget_type : UInt64) : LibGtk::Widget*
  fun test_list_all_types = gtk_test_list_all_types(n_types : UInt32*) : UInt64*
  fun test_register_all_types = gtk_test_register_all_types() : Void
  fun test_slider_get_value = gtk_test_slider_get_value(widget : LibGtk::Widget*) : Float64
  fun test_slider_set_perc = gtk_test_slider_set_perc(widget : LibGtk::Widget*, percentage : Float64) : Void
  fun test_spin_button_click = gtk_test_spin_button_click(spinner : LibGtk::SpinButton*, button : UInt32, upwards : Bool) : Bool
  fun test_text_get = gtk_test_text_get(widget : LibGtk::Widget*) : UInt8*
  fun test_text_set = gtk_test_text_set(widget : LibGtk::Widget*, string : UInt8*) : Void
  fun test_widget_click = gtk_test_widget_click(widget : LibGtk::Widget*, button : UInt32, modifiers : LibGdk::ModifierType) : Bool
  fun test_widget_send_key = gtk_test_widget_send_key(widget : LibGtk::Widget*, keyval : UInt32, modifiers : LibGdk::ModifierType) : Bool
  fun test_widget_wait_for_draw = gtk_test_widget_wait_for_draw(widget : LibGtk::Widget*) : Void
  fun tree_get_row_drag_data = gtk_tree_get_row_drag_data(selection_data : LibGtk::SelectionData*, tree_model : LibGtk::TreeModel**, path : LibGtk::TreePath**) : Bool
  fun tree_row_reference_deleted = gtk_tree_row_reference_deleted(proxy : LibGObject::Object*, path : LibGtk::TreePath*) : Void
  fun tree_row_reference_inserted = gtk_tree_row_reference_inserted(proxy : LibGObject::Object*, path : LibGtk::TreePath*) : Void
  fun tree_set_row_drag_data = gtk_tree_set_row_drag_data(selection_data : LibGtk::SelectionData*, tree_model : LibGtk::TreeModel*, path : LibGtk::TreePath*) : Bool
  fun true = gtk_true() : Bool

  ###########################################
  ##    Callbacks
  ###########################################

 alias AccelGroupActivate = LibGtk::AccelGroup*, LibGObject::Object*, UInt32, LibGdk::ModifierType -> Bool
 alias AccelGroupFindFunc = LibGtk::AccelKey*, LibGObject::Closure*, Void* -> Bool
 alias AccelMapForeach = Void*, UInt8*, UInt32, LibGdk::ModifierType, Bool -> Void
 alias AssistantPageFunc = Int32, Void* -> Int32
 alias BuilderConnectFunc = LibGtk::Builder*, LibGObject::Object*, UInt8*, UInt8*, LibGObject::Object*, LibGObject::ConnectFlags, Void* -> Void
 alias CalendarDetailFunc = LibGtk::Calendar*, UInt32, UInt32, UInt32, Void* -> UInt8*
 alias Callback = LibGtk::Widget*, Void* -> Void
 alias CellAllocCallback = LibGtk::CellRenderer*, LibGdk::Rectangle*, LibGdk::Rectangle*, Void* -> Bool
 alias CellCallback = LibGtk::CellRenderer*, Void* -> Bool
 alias CellLayoutDataFunc = LibGtk::CellLayout*, LibGtk::CellRenderer*, LibGtk::TreeModel*, LibGtk::TreeIter*, Void* -> Void
 alias ClipboardClearFunc = LibGtk::Clipboard*, Void* -> Void
 alias ClipboardGetFunc = LibGtk::Clipboard*, LibGtk::SelectionData*, UInt32, Void* -> Void
 alias ClipboardImageReceivedFunc = LibGtk::Clipboard*, LibGdkPixbuf::Pixbuf*, Void* -> Void
 alias ClipboardReceivedFunc = LibGtk::Clipboard*, LibGtk::SelectionData*, Void* -> Void
 alias ClipboardRichTextReceivedFunc = LibGtk::Clipboard*, LibGdk::Atom*, UInt8*, UInt64, Void* -> Void
 alias ClipboardTargetsReceivedFunc = LibGtk::Clipboard*, LibGdk::Atom**, Int32, Void* -> Void
 alias ClipboardTextReceivedFunc = LibGtk::Clipboard*, UInt8*, Void* -> Void
 alias ClipboardURIReceivedFunc = LibGtk::Clipboard*, UInt8**, Void* -> Void
 alias ColorSelectionChangePaletteFunc = LibGdk::Color*, Int32 -> Void
 alias ColorSelectionChangePaletteWithScreenFunc = LibGdk::Screen*, LibGdk::Color*, Int32 -> Void
 alias EntryCompletionMatchFunc = LibGtk::EntryCompletion*, UInt8*, LibGtk::TreeIter*, Void* -> Bool
 alias FileFilterFunc = LibGtk::FileFilterInfo*, Void* -> Bool
 alias FlowBoxCreateWidgetFunc = LibGObject::Object*, Void* -> LibGtk::Widget*
 alias FlowBoxFilterFunc = LibGtk::FlowBoxChild*, Void* -> Bool
 alias FlowBoxForeachFunc = LibGtk::FlowBox*, LibGtk::FlowBoxChild*, Void* -> Void
 alias FlowBoxSortFunc = LibGtk::FlowBoxChild*, LibGtk::FlowBoxChild*, Void* -> Int32
 alias FontFilterFunc = LibPango::FontFamily*, LibPango::FontFace*, Void* -> Bool
 alias IconViewForeachFunc = LibGtk::IconView*, LibGtk::TreePath*, Void* -> Void
 alias KeySnoopFunc = LibGtk::Widget*, LibGdk::EventKey*, Void* -> Int32
 alias ListBoxCreateWidgetFunc = LibGObject::Object*, Void* -> LibGtk::Widget*
 alias ListBoxFilterFunc = LibGtk::ListBoxRow*, Void* -> Bool
 alias ListBoxForeachFunc = LibGtk::ListBox*, LibGtk::ListBoxRow*, Void* -> Void
 alias ListBoxSortFunc = LibGtk::ListBoxRow*, LibGtk::ListBoxRow*, Void* -> Int32
 alias ListBoxUpdateHeaderFunc = LibGtk::ListBoxRow*, LibGtk::ListBoxRow*, Void* -> Void
 alias MenuDetachFunc = LibGtk::Widget*, LibGtk::Menu* -> Void
 alias MenuPositionFunc = LibGtk::Menu*, Int32, Int32, Bool, Void* -> Void
 alias ModuleDisplayInitFunc = LibGdk::Display* -> Void
 alias ModuleInitFunc = Int32*, UInt8** -> Void
 alias PageSetupDoneFunc = LibGtk::PageSetup*, Void* -> Void
 alias PrintSettingsFunc = UInt8*, UInt8*, Void* -> Void
 alias RcPropertyParser = LibGObject::ParamSpec*, LibGLib::String*, LibGObject::Value* -> Bool
 alias RecentFilterFunc = LibGtk::RecentFilterInfo*, Void* -> Bool
 alias RecentSortFunc = LibGtk::RecentInfo*, LibGtk::RecentInfo*, Void* -> Int32
 alias StylePropertyParser = UInt8*, LibGObject::Value*, LibGLib::Error** -> Bool
 alias TextBufferDeserializeFunc = LibGtk::TextBuffer*, LibGtk::TextBuffer*, LibGtk::TextIter*, UInt8*, UInt64, Bool, Void*, LibGLib::Error** -> Bool
 alias TextBufferSerializeFunc = LibGtk::TextBuffer*, LibGtk::TextBuffer*, LibGtk::TextIter*, LibGtk::TextIter*, UInt64*, Void* -> UInt8*
 alias TextCharPredicate = UInt8, Void* -> Bool
 alias TextTagTableForeach = LibGtk::TextTag*, Void* -> Void
 alias TickCallback = LibGtk::Widget*, LibGdk::FrameClock*, Void* -> Bool
 alias TranslateFunc = UInt8*, Void* -> UInt8*
 alias TreeCellDataFunc = LibGtk::TreeViewColumn*, LibGtk::CellRenderer*, LibGtk::TreeModel*, LibGtk::TreeIter*, Void* -> Void
 alias TreeDestroyCountFunc = LibGtk::TreeView*, LibGtk::TreePath*, Int32, Void* -> Void
 alias TreeIterCompareFunc = LibGtk::TreeModel*, LibGtk::TreeIter*, LibGtk::TreeIter*, Void* -> Int32
 alias TreeModelFilterModifyFunc = LibGtk::TreeModel*, LibGtk::TreeIter*, LibGObject::Value, Int32, Void* -> Void
 alias TreeModelFilterVisibleFunc = LibGtk::TreeModel*, LibGtk::TreeIter*, Void* -> Bool
 alias TreeModelForeachFunc = LibGtk::TreeModel*, LibGtk::TreePath*, LibGtk::TreeIter*, Void* -> Bool
 alias TreeSelectionForeachFunc = LibGtk::TreeModel*, LibGtk::TreePath*, LibGtk::TreeIter*, Void* -> Void
 alias TreeSelectionFunc = LibGtk::TreeSelection*, LibGtk::TreeModel*, LibGtk::TreePath*, Bool, Void* -> Bool
 alias TreeViewColumnDropFunc = LibGtk::TreeView*, LibGtk::TreeViewColumn*, LibGtk::TreeViewColumn*, LibGtk::TreeViewColumn*, Void* -> Bool
 alias TreeViewMappingFunc = LibGtk::TreeView*, LibGtk::TreePath*, Void* -> Void
 alias TreeViewRowSeparatorFunc = LibGtk::TreeModel*, LibGtk::TreeIter*, Void* -> Bool
 alias TreeViewSearchEqualFunc = LibGtk::TreeModel*, Int32, UInt8*, LibGtk::TreeIter*, Void* -> Bool
 alias TreeViewSearchPositionFunc = LibGtk::TreeView*, LibGtk::Widget*, Void* -> Void
end

