require "./dialog"

module Gtk
  class FontSelectionDialog < Dialog
    def initialize(@gtk_font_selection_dialog)
    end

    def to_unsafe
      @gtk_font_selection_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal(title)
      __return_value = LibGtk.font_selection_dialog_new(title)
      Gtk::Widget.new(__return_value)
    end

    def cancel_button
      __return_value = LibGtk.font_selection_dialog_get_cancel_button((to_unsafe as LibGtk::FontSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def font_name
      __return_value = LibGtk.font_selection_dialog_get_font_name((to_unsafe as LibGtk::FontSelectionDialog*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def font_selection
      __return_value = LibGtk.font_selection_dialog_get_font_selection((to_unsafe as LibGtk::FontSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def ok_button
      __return_value = LibGtk.font_selection_dialog_get_ok_button((to_unsafe as LibGtk::FontSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def preview_text
      __return_value = LibGtk.font_selection_dialog_get_preview_text((to_unsafe as LibGtk::FontSelectionDialog*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def font_name=(fontname)
      __return_value = LibGtk.font_selection_dialog_set_font_name((to_unsafe as LibGtk::FontSelectionDialog*), fontname)
      __return_value
    end

    def preview_text=(text)
      __return_value = LibGtk.font_selection_dialog_set_preview_text((to_unsafe as LibGtk::FontSelectionDialog*), text)
      __return_value
    end

  end
end

