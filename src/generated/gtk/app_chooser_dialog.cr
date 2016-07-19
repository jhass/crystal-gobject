require "./dialog"

module Gtk
  class AppChooserDialog < Dialog
    @gtk_app_chooser_dialog : LibGtk::AppChooserDialog*?
    def initialize(@gtk_app_chooser_dialog : LibGtk::AppChooserDialog*)
    end

    def to_unsafe
      @gtk_app_chooser_dialog.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable


    def self.new(parent, flags : Gtk::DialogFlags, file) : self
      __return_value = LibGtk.app_chooser_dialog_new(parent && parent.to_unsafe.as(LibGtk::Window*), flags, file.to_unsafe.as(LibGio::File*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_content_type(parent, flags : Gtk::DialogFlags, content_type) : self
      __return_value = LibGtk.app_chooser_dialog_new_for_content_type(parent && parent.to_unsafe.as(LibGtk::Window*), flags, content_type.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def heading
      __return_value = LibGtk.app_chooser_dialog_get_heading(to_unsafe.as(LibGtk::AppChooserDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def widget
      __return_value = LibGtk.app_chooser_dialog_get_widget(to_unsafe.as(LibGtk::AppChooserDialog*))
      Gtk::Widget.new(__return_value)
    end

    def heading=(heading)
      __return_value = LibGtk.app_chooser_dialog_set_heading(to_unsafe.as(LibGtk::AppChooserDialog*), heading.to_unsafe)
      __return_value
    end

  end
end

