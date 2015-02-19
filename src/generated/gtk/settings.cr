module Gtk
  class Settings < GObject::Object
    def initialize @gtk_settings
    end

    def to_unsafe
      @gtk_settings.not_nil!
    end

    # Implements StyleProvider

    def gtk_alternative_button_order=(__value)
      LibGtk.settings_set_gtk_alternative_button_order((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_alternative_sort_arrows=(__value)
      LibGtk.settings_set_gtk_alternative_sort_arrows((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_application_prefer_dark_theme=(__value)
      LibGtk.settings_set_gtk_application_prefer_dark_theme((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_auto_mnemonics=(__value)
      LibGtk.settings_set_gtk_auto_mnemonics((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_button_images=(__value)
      LibGtk.settings_set_gtk_button_images((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_can_change_accels=(__value)
      LibGtk.settings_set_gtk_can_change_accels((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_color_palette=(__value)
      LibGtk.settings_set_gtk_color_palette((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_color_scheme=(__value)
      LibGtk.settings_set_gtk_color_scheme((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_cursor_blink=(__value)
      LibGtk.settings_set_gtk_cursor_blink((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_cursor_blink_time=(__value)
      LibGtk.settings_set_gtk_cursor_blink_time((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_cursor_blink_timeout=(__value)
      LibGtk.settings_set_gtk_cursor_blink_timeout((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_cursor_theme_name=(__value)
      LibGtk.settings_set_gtk_cursor_theme_name((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_cursor_theme_size=(__value)
      LibGtk.settings_set_gtk_cursor_theme_size((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_decoration_layout=(__value)
      LibGtk.settings_set_gtk_decoration_layout((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_dialogs_use_header=(__value)
      LibGtk.settings_set_gtk_dialogs_use_header((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_dnd_drag_threshold=(__value)
      LibGtk.settings_set_gtk_dnd_drag_threshold((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_double_click_distance=(__value)
      LibGtk.settings_set_gtk_double_click_distance((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_double_click_time=(__value)
      LibGtk.settings_set_gtk_double_click_time((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_enable_accels=(__value)
      LibGtk.settings_set_gtk_enable_accels((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_enable_animations=(__value)
      LibGtk.settings_set_gtk_enable_animations((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_enable_event_sounds=(__value)
      LibGtk.settings_set_gtk_enable_event_sounds((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_enable_input_feedback_sounds=(__value)
      LibGtk.settings_set_gtk_enable_input_feedback_sounds((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_enable_mnemonics=(__value)
      LibGtk.settings_set_gtk_enable_mnemonics((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_enable_primary_paste=(__value)
      LibGtk.settings_set_gtk_enable_primary_paste((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_enable_tooltips=(__value)
      LibGtk.settings_set_gtk_enable_tooltips((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_entry_password_hint_timeout=(__value)
      LibGtk.settings_set_gtk_entry_password_hint_timeout((to_unsafe as LibGtk::Settings*), UInt32.cast(__value))
    end

    def gtk_entry_select_on_focus=(__value)
      LibGtk.settings_set_gtk_entry_select_on_focus((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_error_bell=(__value)
      LibGtk.settings_set_gtk_error_bell((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_fallback_icon_theme=(__value)
      LibGtk.settings_set_gtk_fallback_icon_theme((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_file_chooser_backend=(__value)
      LibGtk.settings_set_gtk_file_chooser_backend((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_font_name=(__value)
      LibGtk.settings_set_gtk_font_name((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_fontconfig_timestamp=(__value)
      LibGtk.settings_set_gtk_fontconfig_timestamp((to_unsafe as LibGtk::Settings*), UInt32.cast(__value))
    end

    def gtk_icon_sizes=(__value)
      LibGtk.settings_set_gtk_icon_sizes((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_icon_theme_name=(__value)
      LibGtk.settings_set_gtk_icon_theme_name((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_im_module=(__value)
      LibGtk.settings_set_gtk_im_module((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_im_preedit_style=(__value)
      LibGtk.settings_set_gtk_im_preedit_style((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_im_status_style=(__value)
      LibGtk.settings_set_gtk_im_status_style((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_key_theme_name=(__value)
      LibGtk.settings_set_gtk_key_theme_name((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_keynav_cursor_only=(__value)
      LibGtk.settings_set_gtk_keynav_cursor_only((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_keynav_wrap_around=(__value)
      LibGtk.settings_set_gtk_keynav_wrap_around((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_label_select_on_focus=(__value)
      LibGtk.settings_set_gtk_label_select_on_focus((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_long_press_time=(__value)
      LibGtk.settings_set_gtk_long_press_time((to_unsafe as LibGtk::Settings*), UInt32.cast(__value))
    end

    def gtk_menu_bar_accel=(__value)
      LibGtk.settings_set_gtk_menu_bar_accel((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_menu_bar_popup_delay=(__value)
      LibGtk.settings_set_gtk_menu_bar_popup_delay((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_menu_images=(__value)
      LibGtk.settings_set_gtk_menu_images((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_menu_popdown_delay=(__value)
      LibGtk.settings_set_gtk_menu_popdown_delay((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_menu_popup_delay=(__value)
      LibGtk.settings_set_gtk_menu_popup_delay((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_modules=(__value)
      LibGtk.settings_set_gtk_modules((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_primary_button_warps_slider=(__value)
      LibGtk.settings_set_gtk_primary_button_warps_slider((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_print_backends=(__value)
      LibGtk.settings_set_gtk_print_backends((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_print_preview_command=(__value)
      LibGtk.settings_set_gtk_print_preview_command((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_recent_files_enabled=(__value)
      LibGtk.settings_set_gtk_recent_files_enabled((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_recent_files_limit=(__value)
      LibGtk.settings_set_gtk_recent_files_limit((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_recent_files_max_age=(__value)
      LibGtk.settings_set_gtk_recent_files_max_age((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_scrolled_window_placement=(__value)
      LibGtk.settings_set_gtk_scrolled_window_placement((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_shell_shows_app_menu=(__value)
      LibGtk.settings_set_gtk_shell_shows_app_menu((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_shell_shows_desktop=(__value)
      LibGtk.settings_set_gtk_shell_shows_desktop((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_shell_shows_menubar=(__value)
      LibGtk.settings_set_gtk_shell_shows_menubar((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_show_input_method_menu=(__value)
      LibGtk.settings_set_gtk_show_input_method_menu((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_show_unicode_menu=(__value)
      LibGtk.settings_set_gtk_show_unicode_menu((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_sound_theme_name=(__value)
      LibGtk.settings_set_gtk_sound_theme_name((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_split_cursor=(__value)
      LibGtk.settings_set_gtk_split_cursor((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_theme_name=(__value)
      LibGtk.settings_set_gtk_theme_name((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_timeout_expand=(__value)
      LibGtk.settings_set_gtk_timeout_expand((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_timeout_initial=(__value)
      LibGtk.settings_set_gtk_timeout_initial((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_timeout_repeat=(__value)
      LibGtk.settings_set_gtk_timeout_repeat((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_titlebar_double_click=(__value)
      LibGtk.settings_set_gtk_titlebar_double_click((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_titlebar_middle_click=(__value)
      LibGtk.settings_set_gtk_titlebar_middle_click((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_titlebar_right_click=(__value)
      LibGtk.settings_set_gtk_titlebar_right_click((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_toolbar_icon_size=(__value)
      LibGtk.settings_set_gtk_toolbar_icon_size((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_toolbar_style=(__value)
      LibGtk.settings_set_gtk_toolbar_style((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_tooltip_browse_mode_timeout=(__value)
      LibGtk.settings_set_gtk_tooltip_browse_mode_timeout((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_tooltip_browse_timeout=(__value)
      LibGtk.settings_set_gtk_tooltip_browse_timeout((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_tooltip_timeout=(__value)
      LibGtk.settings_set_gtk_tooltip_timeout((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_touchscreen_mode=(__value)
      LibGtk.settings_set_gtk_touchscreen_mode((to_unsafe as LibGtk::Settings*), Bool.cast(__value))
    end

    def gtk_visible_focus=(__value)
      LibGtk.settings_set_gtk_visible_focus((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_xft_antialias=(__value)
      LibGtk.settings_set_gtk_xft_antialias((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_xft_dpi=(__value)
      LibGtk.settings_set_gtk_xft_dpi((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_xft_hinting=(__value)
      LibGtk.settings_set_gtk_xft_hinting((to_unsafe as LibGtk::Settings*), Int32.cast(__value))
    end

    def gtk_xft_hintstyle=(__value)
      LibGtk.settings_set_gtk_xft_hintstyle((to_unsafe as LibGtk::Settings*), __value)
    end

    def gtk_xft_rgba=(__value)
      LibGtk.settings_set_gtk_xft_rgba((to_unsafe as LibGtk::Settings*), __value)
    end

    def self.default
      __return_value = LibGtk.settings_get_default
      Gtk::Settings.new(__return_value)
    end

    def self.for_screen(screen)
      __return_value = LibGtk.settings_get_for_screen((screen.to_unsafe as LibGdk::Screen*))
      Gtk::Settings.new(__return_value)
    end

    def self.install_property(pspec)
      __return_value = LibGtk.settings_install_property((pspec.to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def self.install_property_parser(pspec, parser)
      __return_value = LibGtk.settings_install_property_parser((pspec.to_unsafe as LibGObject::ParamSpec*), parser)
      __return_value
    end

    def double_property=(name, v_double, origin)
      __return_value = LibGtk.settings_set_double_property((to_unsafe as LibGtk::Settings*), name, Float64.cast(v_double), origin)
      __return_value
    end

    def long_property=(name, v_long, origin)
      __return_value = LibGtk.settings_set_long_property((to_unsafe as LibGtk::Settings*), name, Int64.cast(v_long), origin)
      __return_value
    end

    def property_value=(name, svalue)
      __return_value = LibGtk.settings_set_property_value((to_unsafe as LibGtk::Settings*), name, (svalue.to_unsafe as LibGtk::SettingsValue*))
      __return_value
    end

    def string_property=(name, v_string, origin)
      __return_value = LibGtk.settings_set_string_property((to_unsafe as LibGtk::Settings*), name, v_string, origin)
      __return_value
    end

  end
end

