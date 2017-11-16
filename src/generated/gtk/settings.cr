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
      __return_value = LibGtk.settings_get_color_hash(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_alternative_button_order
      __return_value = LibGtk.settings_get_gtk_alternative_button_order(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_alternative_sort_arrows
      __return_value = LibGtk.settings_get_gtk_alternative_sort_arrows(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_application_prefer_dark_theme
      __return_value = LibGtk.settings_get_gtk_application_prefer_dark_theme(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_auto_mnemonics
      __return_value = LibGtk.settings_get_gtk_auto_mnemonics(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_button_images
      __return_value = LibGtk.settings_get_gtk_button_images(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_can_change_accels
      __return_value = LibGtk.settings_get_gtk_can_change_accels(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_color_palette
      __return_value = LibGtk.settings_get_gtk_color_palette(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_color_scheme
      __return_value = LibGtk.settings_get_gtk_color_scheme(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_cursor_blink
      __return_value = LibGtk.settings_get_gtk_cursor_blink(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_cursor_blink_time
      __return_value = LibGtk.settings_get_gtk_cursor_blink_time(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_cursor_blink_timeout
      __return_value = LibGtk.settings_get_gtk_cursor_blink_timeout(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_cursor_theme_name
      __return_value = LibGtk.settings_get_gtk_cursor_theme_name(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_cursor_theme_size
      __return_value = LibGtk.settings_get_gtk_cursor_theme_size(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_decoration_layout
      __return_value = LibGtk.settings_get_gtk_decoration_layout(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_dialogs_use_header
      __return_value = LibGtk.settings_get_gtk_dialogs_use_header(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_dnd_drag_threshold
      __return_value = LibGtk.settings_get_gtk_dnd_drag_threshold(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_double_click_distance
      __return_value = LibGtk.settings_get_gtk_double_click_distance(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_double_click_time
      __return_value = LibGtk.settings_get_gtk_double_click_time(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_accels
      __return_value = LibGtk.settings_get_gtk_enable_accels(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_animations
      __return_value = LibGtk.settings_get_gtk_enable_animations(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_event_sounds
      __return_value = LibGtk.settings_get_gtk_enable_event_sounds(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_input_feedback_sounds
      __return_value = LibGtk.settings_get_gtk_enable_input_feedback_sounds(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_mnemonics
      __return_value = LibGtk.settings_get_gtk_enable_mnemonics(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_primary_paste
      __return_value = LibGtk.settings_get_gtk_enable_primary_paste(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_enable_tooltips
      __return_value = LibGtk.settings_get_gtk_enable_tooltips(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_entry_password_hint_timeout
      __return_value = LibGtk.settings_get_gtk_entry_password_hint_timeout(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_entry_select_on_focus
      __return_value = LibGtk.settings_get_gtk_entry_select_on_focus(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_error_bell
      __return_value = LibGtk.settings_get_gtk_error_bell(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_fallback_icon_theme
      __return_value = LibGtk.settings_get_gtk_fallback_icon_theme(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_file_chooser_backend
      __return_value = LibGtk.settings_get_gtk_file_chooser_backend(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_font_name
      __return_value = LibGtk.settings_get_gtk_font_name(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_fontconfig_timestamp
      __return_value = LibGtk.settings_get_gtk_fontconfig_timestamp(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_icon_sizes
      __return_value = LibGtk.settings_get_gtk_icon_sizes(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_icon_theme_name
      __return_value = LibGtk.settings_get_gtk_icon_theme_name(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_im_module
      __return_value = LibGtk.settings_get_gtk_im_module(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_im_preedit_style
      __return_value = LibGtk.settings_get_gtk_im_preedit_style(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_im_status_style
      __return_value = LibGtk.settings_get_gtk_im_status_style(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_key_theme_name
      __return_value = LibGtk.settings_get_gtk_key_theme_name(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_keynav_cursor_only
      __return_value = LibGtk.settings_get_gtk_keynav_cursor_only(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_keynav_use_caret
      __return_value = LibGtk.settings_get_gtk_keynav_use_caret(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_keynav_wrap_around
      __return_value = LibGtk.settings_get_gtk_keynav_wrap_around(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_label_select_on_focus
      __return_value = LibGtk.settings_get_gtk_label_select_on_focus(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_long_press_time
      __return_value = LibGtk.settings_get_gtk_long_press_time(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_menu_bar_accel
      __return_value = LibGtk.settings_get_gtk_menu_bar_accel(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_menu_bar_popup_delay
      __return_value = LibGtk.settings_get_gtk_menu_bar_popup_delay(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_menu_images
      __return_value = LibGtk.settings_get_gtk_menu_images(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_menu_popdown_delay
      __return_value = LibGtk.settings_get_gtk_menu_popdown_delay(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_menu_popup_delay
      __return_value = LibGtk.settings_get_gtk_menu_popup_delay(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_modules
      __return_value = LibGtk.settings_get_gtk_modules(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_primary_button_warps_slider
      __return_value = LibGtk.settings_get_gtk_primary_button_warps_slider(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_print_backends
      __return_value = LibGtk.settings_get_gtk_print_backends(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_print_preview_command
      __return_value = LibGtk.settings_get_gtk_print_preview_command(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_recent_files_enabled
      __return_value = LibGtk.settings_get_gtk_recent_files_enabled(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_recent_files_limit
      __return_value = LibGtk.settings_get_gtk_recent_files_limit(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_recent_files_max_age
      __return_value = LibGtk.settings_get_gtk_recent_files_max_age(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_scrolled_window_placement
      __return_value = LibGtk.settings_get_gtk_scrolled_window_placement(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_shell_shows_app_menu
      __return_value = LibGtk.settings_get_gtk_shell_shows_app_menu(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_shell_shows_desktop
      __return_value = LibGtk.settings_get_gtk_shell_shows_desktop(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_shell_shows_menubar
      __return_value = LibGtk.settings_get_gtk_shell_shows_menubar(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_show_input_method_menu
      __return_value = LibGtk.settings_get_gtk_show_input_method_menu(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_show_unicode_menu
      __return_value = LibGtk.settings_get_gtk_show_unicode_menu(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_sound_theme_name
      __return_value = LibGtk.settings_get_gtk_sound_theme_name(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_split_cursor
      __return_value = LibGtk.settings_get_gtk_split_cursor(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_theme_name
      __return_value = LibGtk.settings_get_gtk_theme_name(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_timeout_expand
      __return_value = LibGtk.settings_get_gtk_timeout_expand(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_timeout_initial
      __return_value = LibGtk.settings_get_gtk_timeout_initial(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_timeout_repeat
      __return_value = LibGtk.settings_get_gtk_timeout_repeat(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_titlebar_double_click
      __return_value = LibGtk.settings_get_gtk_titlebar_double_click(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_titlebar_middle_click
      __return_value = LibGtk.settings_get_gtk_titlebar_middle_click(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_titlebar_right_click
      __return_value = LibGtk.settings_get_gtk_titlebar_right_click(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_toolbar_icon_size
      __return_value = LibGtk.settings_get_gtk_toolbar_icon_size(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_toolbar_style
      __return_value = LibGtk.settings_get_gtk_toolbar_style(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_tooltip_browse_mode_timeout
      __return_value = LibGtk.settings_get_gtk_tooltip_browse_mode_timeout(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_tooltip_browse_timeout
      __return_value = LibGtk.settings_get_gtk_tooltip_browse_timeout(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_tooltip_timeout
      __return_value = LibGtk.settings_get_gtk_tooltip_timeout(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_touchscreen_mode
      __return_value = LibGtk.settings_get_gtk_touchscreen_mode(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_visible_focus
      __return_value = LibGtk.settings_get_gtk_visible_focus(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_xft_antialias
      __return_value = LibGtk.settings_get_gtk_xft_antialias(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_xft_dpi
      __return_value = LibGtk.settings_get_gtk_xft_dpi(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_xft_hinting
      __return_value = LibGtk.settings_get_gtk_xft_hinting(to_unsafe.as(LibGtk::Settings*))
      __return_value
    end

    def gtk_xft_hintstyle
      __return_value = LibGtk.settings_get_gtk_xft_hintstyle(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gtk_xft_rgba
      __return_value = LibGtk.settings_get_gtk_xft_rgba(to_unsafe.as(LibGtk::Settings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
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

