require "./dialog"

module Gtk
  class MessageDialog < Dialog
    def initialize @gtk_message_dialog
    end

    def to_unsafe
      @gtk_message_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

    def image=(__value)
      LibGtk.message_dialog_set_image((to_unsafe as LibGtk::MessageDialog*), __value)
    end



    def secondary_text=(__value)
      LibGtk.message_dialog_set_secondary_text((to_unsafe as LibGtk::MessageDialog*), __value)
    end

    def secondary_use_markup=(__value)
      LibGtk.message_dialog_set_secondary_use_markup((to_unsafe as LibGtk::MessageDialog*), Bool.cast(__value))
    end

    def text=(__value)
      LibGtk.message_dialog_set_text((to_unsafe as LibGtk::MessageDialog*), __value)
    end

    def use_markup=(__value)
      LibGtk.message_dialog_set_use_markup((to_unsafe as LibGtk::MessageDialog*), Bool.cast(__value))
    end

    def image
      __return_value = LibGtk.message_dialog_get_image((to_unsafe as LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def message_area
      __return_value = LibGtk.message_dialog_get_message_area((to_unsafe as LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def image=(image)
      __return_value = LibGtk.message_dialog_set_image((to_unsafe as LibGtk::MessageDialog*), (image.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def markup=(str)
      __return_value = LibGtk.message_dialog_set_markup((to_unsafe as LibGtk::MessageDialog*), str)
      __return_value
    end

  end
end

