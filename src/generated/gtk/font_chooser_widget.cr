require "./box"

module Gtk
  class FontChooserWidget < Box
    @gtk_font_chooser_widget : LibGtk::FontChooserWidget*?
    def initialize(@gtk_font_chooser_widget : LibGtk::FontChooserWidget*)
    end

    def to_unsafe
      @gtk_font_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FontChooser
    # Implements Orientable
    def self.new
      __return_value = LibGtk.font_chooser_widget_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

