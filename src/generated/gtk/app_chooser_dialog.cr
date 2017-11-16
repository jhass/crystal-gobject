require "./dialog"

module Gtk
  class AppChooserDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::AppChooserDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AppChooserDialog*)
    end

    # Implements ImplementorIface
    # Implements AppChooser
    # Implements Buildable
    def gfile
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gfile", gvalue)
      gvalue
    end

    def heading
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "heading", gvalue)
      gvalue.string
    end

    def self.new(parent, flags : Gtk::DialogFlags, file) : self
      __return_value = LibGtk.app_chooser_dialog_new(parent ? parent.to_unsafe.as(LibGtk::Window*) : nil, flags, file.to_unsafe.as(LibGio::File*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_content_type(parent, flags : Gtk::DialogFlags, content_type) : self
      __return_value = LibGtk.app_chooser_dialog_new_for_content_type(parent ? parent.to_unsafe.as(LibGtk::Window*) : nil, flags, content_type.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def heading
      __return_value = LibGtk.app_chooser_dialog_get_heading(@pointer.as(LibGtk::AppChooserDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def widget
      __return_value = LibGtk.app_chooser_dialog_get_widget(@pointer.as(LibGtk::AppChooserDialog*))
      Gtk::Widget.new(__return_value)
    end

    def heading=(heading)
      LibGtk.app_chooser_dialog_set_heading(@pointer.as(LibGtk::AppChooserDialog*), heading.to_unsafe)
      nil
    end

  end
end

