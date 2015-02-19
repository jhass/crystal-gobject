module Gtk
  module AppChooser
    def app_info
      __return_value = LibGtk.app_chooser_get_app_info((to_unsafe as LibGtk::AppChooser*))
      __return_value
    end

    def content_type
      __return_value = LibGtk.app_chooser_get_content_type((to_unsafe as LibGtk::AppChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def refresh
      __return_value = LibGtk.app_chooser_refresh((to_unsafe as LibGtk::AppChooser*))
      __return_value
    end

  end
end

