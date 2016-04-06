require "./box"

module Gtk
  class FileChooserButton < Box
    def initialize(@gtk_file_chooser_button)
    end

    def to_unsafe
      @gtk_file_chooser_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
    # Implements Orientable




    def self.new_internal(title, action)
      __return_value = LibGtk.file_chooser_button_new(title, action)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_dialog(dialog)
      __return_value = LibGtk.file_chooser_button_new_with_dialog((dialog.to_unsafe as LibGtk::Dialog*))
      Gtk::Widget.new(__return_value)
    end

    def focus_on_click
      __return_value = LibGtk.file_chooser_button_get_focus_on_click((to_unsafe as LibGtk::FileChooserButton*))
      __return_value
    end

    def title
      __return_value = LibGtk.file_chooser_button_get_title((to_unsafe as LibGtk::FileChooserButton*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def width_chars
      __return_value = LibGtk.file_chooser_button_get_width_chars((to_unsafe as LibGtk::FileChooserButton*))
      __return_value
    end

    def focus_on_click=(focus_on_click)
      __return_value = LibGtk.file_chooser_button_set_focus_on_click((to_unsafe as LibGtk::FileChooserButton*), focus_on_click)
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.file_chooser_button_set_title((to_unsafe as LibGtk::FileChooserButton*), title)
      __return_value
    end

    def width_chars=(n_chars)
      __return_value = LibGtk.file_chooser_button_set_width_chars((to_unsafe as LibGtk::FileChooserButton*), Int32.new(n_chars))
      __return_value
    end

    alias FileSetSignal = FileChooserButton -> 
    def on_file_set(&__block : FileSetSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserButton*) {
       __return_value = __block.call(FileChooserButton.new(_arg0))
       __return_value
      }
      connect("file-set", __callback)
    end

  end
end

