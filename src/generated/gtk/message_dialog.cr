require "./dialog"

module Gtk
  class MessageDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::MessageDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MessageDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable

    def image
      __return_value = LibGtk.message_dialog_get_image(to_unsafe.as(LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def message_area
      __return_value = LibGtk.message_dialog_get_message_area(to_unsafe.as(LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def message_type
      __return_value = LibGtk.message_dialog_get_message_type(to_unsafe.as(LibGtk::MessageDialog*))
      __return_value
    end

    def secondary_text
      __return_value = LibGtk.message_dialog_get_secondary_text(to_unsafe.as(LibGtk::MessageDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def secondary_use_markup
      __return_value = LibGtk.message_dialog_get_secondary_use_markup(to_unsafe.as(LibGtk::MessageDialog*))
      __return_value
    end

    def text
      __return_value = LibGtk.message_dialog_get_text(to_unsafe.as(LibGtk::MessageDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def use_markup
      __return_value = LibGtk.message_dialog_get_use_markup(to_unsafe.as(LibGtk::MessageDialog*))
      __return_value
    end

    def image
      __return_value = LibGtk.message_dialog_get_image(@pointer.as(LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def message_area
      __return_value = LibGtk.message_dialog_get_message_area(@pointer.as(LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def image=(image)
      LibGtk.message_dialog_set_image(@pointer.as(LibGtk::MessageDialog*), image.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def markup=(str)
      LibGtk.message_dialog_set_markup(@pointer.as(LibGtk::MessageDialog*), str.to_unsafe)
      nil
    end

  end
end

