require "./dialog"

module Gtk
  class ColorChooserDialog < Dialog
    @gtk_color_chooser_dialog : LibGtk::ColorChooserDialog*?
    def initialize(@gtk_color_chooser_dialog : LibGtk::ColorChooserDialog*)
    end

    def to_unsafe
      @gtk_color_chooser_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser

    def self.new(title, parent) : self
      __return_value = LibGtk.color_chooser_dialog_new(title && title, parent && parent.to_unsafe.as(LibGtk::Window*))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

