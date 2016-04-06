require "./dialog"

module Gtk
  class FontChooserDialog < Dialog
    def initialize(@gtk_font_chooser_dialog)
    end

    def to_unsafe
      @gtk_font_chooser_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FontChooser
    def self.new_internal(title, parent)
      __return_value = LibGtk.font_chooser_dialog_new(title && title, parent && (parent.to_unsafe as LibGtk::Window*))
      Gtk::Widget.new(__return_value)
    end

  end
end

