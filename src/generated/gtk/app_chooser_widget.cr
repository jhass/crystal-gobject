require "./box"

module Gtk
  class AppChooserWidget < Box
    def initialize @gtk_app_chooser_widget
    end

    def to_unsafe
      @gtk_app_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable
    # Implements Orientable






    def self.new_internal(content_type)
      __return_value = LibGtk.app_chooser_widget_new(content_type)
      Gtk::Widget.new(__return_value)
    end

    def default_text
      __return_value = LibGtk.app_chooser_widget_get_default_text((to_unsafe as LibGtk::AppChooserWidget*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def show_all
      __return_value = LibGtk.app_chooser_widget_get_show_all((to_unsafe as LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_default
      __return_value = LibGtk.app_chooser_widget_get_show_default((to_unsafe as LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_fallback
      __return_value = LibGtk.app_chooser_widget_get_show_fallback((to_unsafe as LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_other
      __return_value = LibGtk.app_chooser_widget_get_show_other((to_unsafe as LibGtk::AppChooserWidget*))
      __return_value
    end

    def show_recommended
      __return_value = LibGtk.app_chooser_widget_get_show_recommended((to_unsafe as LibGtk::AppChooserWidget*))
      __return_value
    end

    def default_text=(text)
      __return_value = LibGtk.app_chooser_widget_set_default_text((to_unsafe as LibGtk::AppChooserWidget*), text)
      __return_value
    end

    def show_all=(setting)
      __return_value = LibGtk.app_chooser_widget_set_show_all((to_unsafe as LibGtk::AppChooserWidget*), Bool.cast(setting))
      __return_value
    end

    def show_default=(setting)
      __return_value = LibGtk.app_chooser_widget_set_show_default((to_unsafe as LibGtk::AppChooserWidget*), Bool.cast(setting))
      __return_value
    end

    def show_fallback=(setting)
      __return_value = LibGtk.app_chooser_widget_set_show_fallback((to_unsafe as LibGtk::AppChooserWidget*), Bool.cast(setting))
      __return_value
    end

    def show_other=(setting)
      __return_value = LibGtk.app_chooser_widget_set_show_other((to_unsafe as LibGtk::AppChooserWidget*), Bool.cast(setting))
      __return_value
    end

    def show_recommended=(setting)
      __return_value = LibGtk.app_chooser_widget_set_show_recommended((to_unsafe as LibGtk::AppChooserWidget*), Bool.cast(setting))
      __return_value
    end

  end
end

