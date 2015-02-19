require "./dialog"

module Gtk
  class ColorChooserDialog < Dialog
    def initialize @gtk_color_chooser_dialog
    end

    def to_unsafe
      @gtk_color_chooser_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    def show_editor=(__value)
      LibGtk.color_chooser_dialog_set_show_editor((to_unsafe as LibGtk::ColorChooserDialog*), Bool.cast(__value))
    end

    def self.new_internal(title, parent)
      __return_value = LibGtk.color_chooser_dialog_new(title, (parent.to_unsafe as LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

  end
end

