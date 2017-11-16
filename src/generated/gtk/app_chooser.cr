module Gtk
  module AppChooser
    def app_info
      __return_value = LibGtk.app_chooser_get_app_info(@pointer.as(LibGtk::AppChooser*))
      __return_value if __return_value
    end

    def content_type
      __return_value = LibGtk.app_chooser_get_content_type(@pointer.as(LibGtk::AppChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def refresh
      LibGtk.app_chooser_refresh(@pointer.as(LibGtk::AppChooser*))
      nil
    end

  end
end

