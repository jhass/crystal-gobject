require "./native_dialog"

module Gtk
  class FileChooserNative < NativeDialog
    def initialize(@gtk_file_chooser_native)
    end

    def to_unsafe
      @gtk_file_chooser_native.not_nil!
    end

    # Implements FileChooser


    def self.new_internal(title, parent, action, accept_label, cancel_label)
      __return_value = LibGtk.file_chooser_native_new(title && title, parent && (parent.to_unsafe as LibGtk::Window*), action, accept_label && accept_label, cancel_label && cancel_label)
      cast Gtk::FileChooserNative.new(__return_value)
    end

    def accept_label
      __return_value = LibGtk.file_chooser_native_get_accept_label((to_unsafe as LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def cancel_label
      __return_value = LibGtk.file_chooser_native_get_cancel_label((to_unsafe as LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def accept_label=(accept_label)
      __return_value = LibGtk.file_chooser_native_set_accept_label((to_unsafe as LibGtk::FileChooserNative*), accept_label && accept_label)
      __return_value
    end

    def cancel_label=(cancel_label)
      __return_value = LibGtk.file_chooser_native_set_cancel_label((to_unsafe as LibGtk::FileChooserNative*), cancel_label && cancel_label)
      __return_value
    end

  end
end

