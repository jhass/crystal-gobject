require "./native_dialog"

module Gtk
  class FileChooserNative < NativeDialog
    @gtk_file_chooser_native : LibGtk::FileChooserNative*?
    def initialize(@gtk_file_chooser_native : LibGtk::FileChooserNative*)
    end

    def to_unsafe
      @gtk_file_chooser_native.not_nil!
    end

    # Implements FileChooser
    def accept_label
      __return_value = LibGtk.file_chooser_native_get_accept_label(to_unsafe.as(LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def cancel_label
      __return_value = LibGtk.file_chooser_native_get_cancel_label(to_unsafe.as(LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(title, parent, action : Gtk::FileChooserAction, accept_label, cancel_label) : self
      __return_value = LibGtk.file_chooser_native_new(title ? title.to_unsafe : nil, parent ? parent.to_unsafe.as(LibGtk::Window*) : nil, action, accept_label ? accept_label.to_unsafe : nil, cancel_label ? cancel_label.to_unsafe : nil)
      cast Gtk::FileChooserNative.new(__return_value)
    end

    def accept_label
      __return_value = LibGtk.file_chooser_native_get_accept_label(to_unsafe.as(LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def cancel_label
      __return_value = LibGtk.file_chooser_native_get_cancel_label(to_unsafe.as(LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def accept_label=(accept_label)
      __return_value = LibGtk.file_chooser_native_set_accept_label(to_unsafe.as(LibGtk::FileChooserNative*), accept_label ? accept_label.to_unsafe : nil)
      __return_value
    end

    def cancel_label=(cancel_label)
      __return_value = LibGtk.file_chooser_native_set_cancel_label(to_unsafe.as(LibGtk::FileChooserNative*), cancel_label ? cancel_label.to_unsafe : nil)
      __return_value
    end

  end
end

