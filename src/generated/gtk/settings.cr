module Gtk
  class Settings < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Settings*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Settings*)
    end

    # Implements StyleProvider
    def color_hash
      gvalue = GObject::Value.new(GObject::Type::GHASH)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "color_hash", gvalue)
      gvalue
    end

    def gtk_alternative_button_order
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_alternative_button_order", gvalue)
      gvalue.boolean
    end

    def gtk_alternative_sort_arrows
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_alternative_sort_arrows", gvalue)
      gvalue.boolean
    end

    def gtk_application_prefer_dark_theme
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_application_prefer_dark_theme", gvalue)
      gvalue.boolean
    end

    def gtk_auto_mnemonics
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_auto_mnemonics", gvalue)
      gvalue.boolean
    end

    def gtk_button_images
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_button_images", gvalue)
      gvalue.boolean
    end

    def gtk_can_change_accels
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_can_change_accels", gvalue)
      gvalue.boolean
    end

    def gtk_color_palette
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_color_palette", gvalue)
      gvalue.string
    end

    def gtk_color_scheme
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_color_scheme", gvalue)
      gvalue.string
    end

    def gtk_cursor_blink
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_cursor_blink", gvalue)
      gvalue.boolean
    end

    def gtk_cursor_blink_time
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_cursor_blink_time", gvalue)
      gvalue
    end

    def gtk_cursor_blink_timeout
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_cursor_blink_timeout", gvalue)
      gvalue
    end

    def gtk_cursor_theme_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_cursor_theme_name", gvalue)
      gvalue.string
    end

    def gtk_cursor_theme_size
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_cursor_theme_size", gvalue)
      gvalue
    end

    def gtk_decoration_layout
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_decoration_layout", gvalue)
      gvalue.string
    end

    def gtk_dialogs_use_header
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_dialogs_use_header", gvalue)
      gvalue.boolean
    end

    def gtk_dnd_drag_threshold
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_dnd_drag_threshold", gvalue)
      gvalue
    end

    def gtk_double_click_distance
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_double_click_distance", gvalue)
      gvalue
    end

    def gtk_double_click_time
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_double_click_time", gvalue)
      gvalue
    end

    def gtk_enable_accels
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_accels", gvalue)
      gvalue.boolean
    end

    def gtk_enable_animations
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_animations", gvalue)
      gvalue.boolean
    end

    def gtk_enable_event_sounds
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_event_sounds", gvalue)
      gvalue.boolean
    end

    def gtk_enable_input_feedback_sounds
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_input_feedback_sounds", gvalue)
      gvalue.boolean
    end

    def gtk_enable_mnemonics
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_mnemonics", gvalue)
      gvalue.boolean
    end

    def gtk_enable_primary_paste
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_primary_paste", gvalue)
      gvalue.boolean
    end

    def gtk_enable_tooltips
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_enable_tooltips", gvalue)
      gvalue.boolean
    end

    def gtk_entry_password_hint_timeout
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_entry_password_hint_timeout", gvalue)
      gvalue
    end

    def gtk_entry_select_on_focus
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_entry_select_on_focus", gvalue)
      gvalue.boolean
    end

    def gtk_error_bell
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_error_bell", gvalue)
      gvalue.boolean
    end

    def gtk_fallback_icon_theme
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_fallback_icon_theme", gvalue)
      gvalue.string
    end

    def gtk_file_chooser_backend
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_file_chooser_backend", gvalue)
      gvalue.string
    end

    def gtk_font_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_font_name", gvalue)
      gvalue.string
    end

    def gtk_fontconfig_timestamp
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_fontconfig_timestamp", gvalue)
      gvalue
    end

    def gtk_icon_sizes
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_icon_sizes", gvalue)
      gvalue.string
    end

    def gtk_icon_theme_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_icon_theme_name", gvalue)
      gvalue.string
    end

    def gtk_im_module
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_im_module", gvalue)
      gvalue.string
    end

    def gtk_im_preedit_style
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_im_preedit_style", gvalue)
      gvalue.enum
    end

    def gtk_im_status_style
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_im_status_style", gvalue)
      gvalue.enum
    end

    def gtk_key_theme_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_key_theme_name", gvalue)
      gvalue.string
    end

    def gtk_keynav_cursor_only
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_keynav_cursor_only", gvalue)
      gvalue.boolean
    end

    def gtk_keynav_use_caret
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_keynav_use_caret", gvalue)
      gvalue.boolean
    end

    def gtk_keynav_wrap_around
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_keynav_wrap_around", gvalue)
      gvalue.boolean
    end

    def gtk_label_select_on_focus
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_label_select_on_focus", gvalue)
      gvalue.boolean
    end

    def gtk_long_press_time
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_long_press_time", gvalue)
      gvalue
    end

    def gtk_menu_bar_accel
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_menu_bar_accel", gvalue)
      gvalue.string
    end

    def gtk_menu_bar_popup_delay
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_menu_bar_popup_delay", gvalue)
      gvalue
    end

    def gtk_menu_images
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_menu_images", gvalue)
      gvalue.boolean
    end

    def gtk_menu_popdown_delay
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_menu_popdown_delay", gvalue)
      gvalue
    end

    def gtk_menu_popup_delay
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_menu_popup_delay", gvalue)
      gvalue
    end

    def gtk_modules
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_modules", gvalue)
      gvalue.string
    end

    def gtk_primary_button_warps_slider
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_primary_button_warps_slider", gvalue)
      gvalue.boolean
    end

    def gtk_print_backends
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_print_backends", gvalue)
      gvalue.string
    end

    def gtk_print_preview_command
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_print_preview_command", gvalue)
      gvalue.string
    end

    def gtk_recent_files_enabled
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_recent_files_enabled", gvalue)
      gvalue.boolean
    end

    def gtk_recent_files_limit
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_recent_files_limit", gvalue)
      gvalue
    end

    def gtk_recent_files_max_age
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_recent_files_max_age", gvalue)
      gvalue
    end

    def gtk_scrolled_window_placement
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_scrolled_window_placement", gvalue)
      gvalue.enum
    end

    def gtk_shell_shows_app_menu
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_shell_shows_app_menu", gvalue)
      gvalue.boolean
    end

    def gtk_shell_shows_desktop
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_shell_shows_desktop", gvalue)
      gvalue.boolean
    end

    def gtk_shell_shows_menubar
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_shell_shows_menubar", gvalue)
      gvalue.boolean
    end

    def gtk_show_input_method_menu
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_show_input_method_menu", gvalue)
      gvalue.boolean
    end

    def gtk_show_unicode_menu
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_show_unicode_menu", gvalue)
      gvalue.boolean
    end

    def gtk_sound_theme_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_sound_theme_name", gvalue)
      gvalue.string
    end

    def gtk_split_cursor
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_split_cursor", gvalue)
      gvalue.boolean
    end

    def gtk_theme_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_theme_name", gvalue)
      gvalue.string
    end

    def gtk_timeout_expand
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_timeout_expand", gvalue)
      gvalue
    end

    def gtk_timeout_initial
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_timeout_initial", gvalue)
      gvalue
    end

    def gtk_timeout_repeat
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_timeout_repeat", gvalue)
      gvalue
    end

    def gtk_titlebar_double_click
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_titlebar_double_click", gvalue)
      gvalue.string
    end

    def gtk_titlebar_middle_click
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_titlebar_middle_click", gvalue)
      gvalue.string
    end

    def gtk_titlebar_right_click
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_titlebar_right_click", gvalue)
      gvalue.string
    end

    def gtk_toolbar_icon_size
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_toolbar_icon_size", gvalue)
      gvalue.enum
    end

    def gtk_toolbar_style
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_toolbar_style", gvalue)
      gvalue.enum
    end

    def gtk_tooltip_browse_mode_timeout
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_tooltip_browse_mode_timeout", gvalue)
      gvalue
    end

    def gtk_tooltip_browse_timeout
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_tooltip_browse_timeout", gvalue)
      gvalue
    end

    def gtk_tooltip_timeout
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_tooltip_timeout", gvalue)
      gvalue
    end

    def gtk_touchscreen_mode
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_touchscreen_mode", gvalue)
      gvalue.boolean
    end

    def gtk_visible_focus
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_visible_focus", gvalue)
      gvalue.enum
    end

    def gtk_xft_antialias
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_xft_antialias", gvalue)
      gvalue
    end

    def gtk_xft_dpi
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_xft_dpi", gvalue)
      gvalue
    end

    def gtk_xft_hinting
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_xft_hinting", gvalue)
      gvalue
    end

    def gtk_xft_hintstyle
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_xft_hintstyle", gvalue)
      gvalue.string
    end

    def gtk_xft_rgba
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gtk_xft_rgba", gvalue)
      gvalue.string
    end

    def self.default
      __return_value = LibGtk.settings_get_default
      Gtk::Settings.new(__return_value) if __return_value
    end

    def self.for_screen(screen)
      __return_value = LibGtk.settings_get_for_screen(screen.to_unsafe.as(LibGdk::Screen*))
      Gtk::Settings.new(__return_value)
    end

    def self.install_property(pspec)
      LibGtk.settings_install_property(pspec.to_unsafe.as(LibGObject::ParamSpec*))
      nil
    end

    def self.install_property_parser(pspec, parser)
      LibGtk.settings_install_property_parser(pspec.to_unsafe.as(LibGObject::ParamSpec*), parser)
      nil
    end

    def reset_property(name)
      LibGtk.settings_reset_property(@pointer.as(LibGtk::Settings*), name.to_unsafe)
      nil
    end

    def set_double_property(name, v_double, origin)
      LibGtk.settings_set_double_property(@pointer.as(LibGtk::Settings*), name.to_unsafe, Float64.new(v_double), origin.to_unsafe)
      nil
    end

    def set_long_property(name, v_long, origin)
      LibGtk.settings_set_long_property(@pointer.as(LibGtk::Settings*), name.to_unsafe, Int64.new(v_long), origin.to_unsafe)
      nil
    end

    def set_property_value(name, svalue)
      LibGtk.settings_set_property_value(@pointer.as(LibGtk::Settings*), name.to_unsafe, svalue.to_unsafe.as(LibGtk::SettingsValue*))
      nil
    end

    def set_string_property(name, v_string, origin)
      LibGtk.settings_set_string_property(@pointer.as(LibGtk::Settings*), name.to_unsafe, v_string.to_unsafe, origin.to_unsafe)
      nil
    end

  end
end

