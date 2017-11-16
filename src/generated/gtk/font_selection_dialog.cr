require "./dialog"

module Gtk
  class FontSelectionDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::FontSelectionDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontSelectionDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new(title) : self
      __return_value = LibGtk.font_selection_dialog_new(title.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def cancel_button
      __return_value = LibGtk.font_selection_dialog_get_cancel_button(@pointer.as(LibGtk::FontSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def font_name
      __return_value = LibGtk.font_selection_dialog_get_font_name(@pointer.as(LibGtk::FontSelectionDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def font_selection
      __return_value = LibGtk.font_selection_dialog_get_font_selection(@pointer.as(LibGtk::FontSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def ok_button
      __return_value = LibGtk.font_selection_dialog_get_ok_button(@pointer.as(LibGtk::FontSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

    def preview_text
      __return_value = LibGtk.font_selection_dialog_get_preview_text(@pointer.as(LibGtk::FontSelectionDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def font_name=(fontname)
      __return_value = LibGtk.font_selection_dialog_set_font_name(@pointer.as(LibGtk::FontSelectionDialog*), fontname.to_unsafe)
      __return_value
    end

    def preview_text=(text)
      LibGtk.font_selection_dialog_set_preview_text(@pointer.as(LibGtk::FontSelectionDialog*), text.to_unsafe)
      nil
    end

  end
end

