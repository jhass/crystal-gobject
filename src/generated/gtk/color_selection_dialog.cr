require "./dialog"

module Gtk
  class ColorSelectionDialog < Dialog
    @gtk_color_selection_dialog : LibGtk::ColorSelectionDialog*?
    def initialize(@gtk_color_selection_dialog : LibGtk::ColorSelectionDialog*)
    end

    def to_unsafe
      @gtk_color_selection_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def cancel_button
      __return_value = LibGtk.color_selection_dialog_get_cancel_button(to_unsafe.as(LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def color_selection
      __return_value = LibGtk.color_selection_dialog_get_color_selection(to_unsafe.as(LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def help_button
      __return_value = LibGtk.color_selection_dialog_get_help_button(to_unsafe.as(LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def ok_button
      __return_value = LibGtk.color_selection_dialog_get_ok_button(to_unsafe.as(LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def self.new(title) : self
      __return_value = LibGtk.color_selection_dialog_new(title.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def color_selection
      __return_value = LibGtk.color_selection_dialog_get_color_selection(to_unsafe.as(LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

  end
end

