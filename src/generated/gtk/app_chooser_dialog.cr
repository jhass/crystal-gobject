require "./dialog"

module Gtk
  class AppChooserDialog < Dialog
    def initialize(@gtk_app_chooser_dialog)
    end

    def to_unsafe
      @gtk_app_chooser_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable


    def self.new_internal(parent, flags, file)
      __return_value = LibGtk.app_chooser_dialog_new(parent && (parent.to_unsafe as LibGtk::Window*), flags, (file.to_unsafe as LibGio::File*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_content_type(parent, flags, content_type)
      __return_value = LibGtk.app_chooser_dialog_new_for_content_type(parent && (parent.to_unsafe as LibGtk::Window*), flags, content_type)
      Gtk::Widget.new(__return_value)
    end

    def heading
      __return_value = LibGtk.app_chooser_dialog_get_heading((to_unsafe as LibGtk::AppChooserDialog*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def widget
      __return_value = LibGtk.app_chooser_dialog_get_widget((to_unsafe as LibGtk::AppChooserDialog*))
      Gtk::Widget.new(__return_value)
    end

    def heading=(heading)
      __return_value = LibGtk.app_chooser_dialog_set_heading((to_unsafe as LibGtk::AppChooserDialog*), heading)
      __return_value
    end

  end
end

