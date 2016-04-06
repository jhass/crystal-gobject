require "./dialog"

module Gtk
  class ColorSelectionDialog < Dialog
    def initialize(@gtk_color_selection_dialog)
    end

    def to_unsafe
      @gtk_color_selection_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable




    def self.new_internal(title)
      __return_value = LibGtk.color_selection_dialog_new(title)
      Gtk::Widget.new(__return_value)
    end

    def color_selection
      __return_value = LibGtk.color_selection_dialog_get_color_selection((to_unsafe as LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

  end
end

