require "./native_dialog"

module Gtk
  class FileChooserNative < NativeDialog
    @pointer : Void*
    def initialize(pointer : LibGtk::FileChooserNative*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FileChooserNative*)
    end

    # Implements FileChooser
    def accept_label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accept_label", gvalue)
      gvalue.string
    end

    def cancel_label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cancel_label", gvalue)
      gvalue.string
    end

    def self.new(title, parent, action : Gtk::FileChooserAction, accept_label, cancel_label) : self
      __return_value = LibGtk.file_chooser_native_new(title ? title.to_unsafe : nil, parent ? parent.to_unsafe.as(LibGtk::Window*) : nil, action, accept_label ? accept_label.to_unsafe : nil, cancel_label ? cancel_label.to_unsafe : nil)
      cast Gtk::FileChooserNative.new(__return_value)
    end

    def accept_label
      __return_value = LibGtk.file_chooser_native_get_accept_label(@pointer.as(LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def cancel_label
      __return_value = LibGtk.file_chooser_native_get_cancel_label(@pointer.as(LibGtk::FileChooserNative*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def accept_label=(accept_label)
      LibGtk.file_chooser_native_set_accept_label(@pointer.as(LibGtk::FileChooserNative*), accept_label ? accept_label.to_unsafe : nil)
      nil
    end

    def cancel_label=(cancel_label)
      LibGtk.file_chooser_native_set_cancel_label(@pointer.as(LibGtk::FileChooserNative*), cancel_label ? cancel_label.to_unsafe : nil)
      nil
    end

  end
end

